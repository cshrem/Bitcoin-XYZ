#!/usr/bin/env python
# -*- coding: utf-8 -*-

import web
from htmlmin.minify import html_minify

PATH   = '../../templates/bitcoin.team/'
urls   = ('/', 'home')
app    = web.application(urls, globals())
render = web.template.render(PATH)
render._add_global(render, 'render')

class home:
    def GET(self):
        return html_minify(str(render.index(data=None)))

if __name__ == "__main__":
    app.run()
