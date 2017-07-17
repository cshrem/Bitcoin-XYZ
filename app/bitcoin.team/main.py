#!/usr/bin/env python
# -*- coding: utf-8 -*-


import web
from htmlmin.minify import html_minify


urls = ('/(.*)', 'hello')
app = web.application(urls, globals())


class hello:
    def GET(self, name):
        if not name:
            name = 'World'
        return 'Hello, ' + name + '!'


if __name__ == "__main__":
    app.run()
