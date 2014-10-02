#!/usr/bin/env python

import click
from PIL import Image

hex = lambda rgb: "%02x%02x%02x" % rgb

@click.command()
@click.option('--count', default=20, help='Number colors to list.')
@click.argument('filename')
def make_image(count, filename):
    """Lists the most-represented colors in an image."""
    img = Image.open(filename)
    colors = img.convert('RGB').getcolors()
    colors.sort(key=lambda i: i[0], reverse=True)
    fields = "   Count"+" "*17+"RGB"+" "*8+"Hex"
    click.echo(fields)
    click.echo("-"*len(fields))
    for c in colors[:count]:
        count, rgb = c
        rgb_ = "rgb({0:3.0f},{1:3.0f},{2:3.0f})".format(*rgb)
        st = "{0:8.0f}    {1}    #{2}".format(count, rgb_, hex(rgb))
        click.echo(st)

if __name__ == '__main__':
    make_image()
