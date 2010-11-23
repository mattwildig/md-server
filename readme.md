#Markdown Server#

A simple little web app that will show you what your markdown files look like as html.

Run it from a directory, then point a browser at `http://localhost:4567/` for a
list of markdown files in that directory, or directly to a file in that directory with
`http://localhost:4567/my_file.md` to see `my_file.md` as html.

Requires sinatra and rdiscount.