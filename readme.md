#Markdown Server#

A simple little web app that will show you what your markdown and other
template engine files look like as html.

Run it from a directory, then point a browser at `http://localhost:4567/` for a
list of suitable files in that directory, or directly to a file in that
directory with `http://localhost:4567/my_file.md` to see `my_file.md` as html.

Requires rack, tilt and any gems needed for the template language you're
using.