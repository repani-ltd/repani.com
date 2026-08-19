The Repani mark as a PDF object
.rem How to embed the radish mark in a PDF. Source of truth for the drawing is the inline SVG in index.html; these streams are derived from it.
.date 2026-08-19

Two PDF content streams draw the mark with path operators only
(no images, no fonts): mark-colour.stream (navy line, red and
green offset fill, DeviceRGB) and mark-mono.stream (black line
only, DeviceGray, for grayscale writers). Each is the body of a
Form XObject:

.pre
<< /Type /XObject /Subtype /Form /BBox [0 0 64 70] /Length N >>
stream
...contents of mark-*.stream...
endstream
.end

The object's user space is 64 x 70 units, y up, origin bottom-left
(the stream carries its own flip from the SVG's y-down grid). To
place it H points tall at (x, y): scale s = H / 70, then

.pre
q s 0 0 s x y cm /Mark Do Q
.end

with /Mark bound in the page's /Resources /XObject dictionary.
mark-test.pdf is a hand-built A4 page showing the colour object at
12 mm and 24 mm and the mono object at 12 mm; regenerate it with
the script in log.t's entry for this date if the drawing changes.
