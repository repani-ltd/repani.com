#!/bin/bash
# SessionStart hook. In a cloud session (Claude Code on the web) the
# checkout stands alone: clone the public repani beside it, as on the
# Mac, and install pica from it, which renders the pages. On the Mac
# both already exist and this does nothing.
set -u
REPANI="$CLAUDE_PROJECT_DIR/../repani"
[ -d "$REPANI" ] || git clone -q --depth 1 https://github.com/repani-ltd/repani "$REPANI"
if ! command -v pica >/dev/null; then
    (cd "$REPANI" && go install ./pica/cmd/pica)
    # Later commands in the session read this file for their environment.
    [ -n "${CLAUDE_ENV_FILE:-}" ] && echo "export PATH=\"$(go env GOPATH)/bin:\$PATH\"" >>"$CLAUDE_ENV_FILE"
fi
exit 0
