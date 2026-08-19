#!/bin/sh
# Render the site from its sources. Run by the Run agent after editing
# src/*.t, repani.fact or AGENTS.md; the result is committed. No build
# runs on the host: Pages serves the committed files as they are.
#
#   pica text src/index.t  -> index.html   (body in <pre>, shell from docs/shell.html)
#   pica text src/legal.t  -> legal/index.html
#   site.txtar             <- every source, one file
set -e
cd "$(dirname "$0")/.."
fact validate repani.fact >/dev/null
render() { # $1 source, $2 target, $3 title
  pica check "$1"
  body=$(pica text "$1" | sed -E -e 's/&/\&amp;/g' -e 's/</\&lt;/g' -e 's/>/\&gt;/g' \
    -e 's#(https://[a-zA-Z0-9./_-]*[a-zA-Z0-9/])#<a href="\1">\1</a>#g' \
    -e 's#([^/"a-zA-Z])(github\.com/[a-zA-Z0-9./_-]*[a-zA-Z0-9])#\1<a href="https://\2">\2</a>#g' \
    -e 's#([^/"a-zA-Z>])(repani\.com/(AGENTS\.md|legal/|repani\.fact|site\.txtar))#\1<a href="https://\2">\2</a>#g' \
    -e 's#([^/"a-zA-Z>])(/repani\.fact|/legal/|/AGENTS\.md|/site\.txtar)#\1<a href="\2">\2</a>#g' \
    -e 's#([^/"a-zA-Z>])(docs\.github\.com/[a-zA-Z0-9./_-]*[a-zA-Z0-9])#\1<a href="https://\2">\2</a>#g' \
    -e 's#hello@repani\.com#<a href="mailto:hello@repani.com">hello@repani.com</a>#g' \
    -e '1s#^(.+)$#<b>\1</b>#' -e 's#^(\#+ .+)$#<b>\1</b>#')
  printf '%s' "$body" > "$2.body"
  awk -v title="$3" -v bodyfile="$2.body" '
    /@@BODY@@/ { printf "%s", "<pre>"; while ((getline line < bodyfile) > 0) print line; print "</pre>"; next }
    { gsub(/@@TITLE@@/, title); print }' docs/shell.html > "$2"
  rm -f "$2.body"
}
render src/index.t index.html "Repani Limited"
render src/legal.t legal/index.html "Legal · Repani Limited"
{
  for f in src/index.t src/legal.t repani.fact AGENTS.md llms.txt favicon.svg \
           docs/mark/mark-colour.stream docs/mark/mark-mono.stream docs/log.t docs/brief.t; do
    printf -- '-- %s --\n' "$f"; cat "$f"
  done
} > site.txtar
echo rendered
