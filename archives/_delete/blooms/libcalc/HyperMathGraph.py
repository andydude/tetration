#
#  File: HyperMathGraph.py
#  Author: Andrew Robbins
#  Description:
#       This file contains a class used to turn a set of points
#       into a graph of that set of points, this is used by
#       HyperMathCalc in the plotting of functions.
#

import sha
import math
import Image
import ImageDraw
from string import replace

# equations for globalize():
#{{A -> -((imgw - 2*mrgw)/(x0 - x1)), B -> -(((-imgw)*x0 + mrgw*x0 + mrgw*x1)/(x0 - x1))}}
#{{A -> -((imgh - 2*mrgh)/(-y0 + y1)), B -> -(((-mrgh)*y0 + imgh*y1 - mrgh*y1)/(y0 - y1))}}

class HyperMathGraph:
    def __init__(self, basedir="."):
        self.basedir = basedir
        self.ofile = ""
        self.imgw = 405
        self.imgh = 250
        self.mrgw = 5
        self.mrgh = 5
        self.opts = {
            'color'     : "#000",
            'coord'     : [(0, 0), (4, 16)],
            'points'    : 20,
            'var'       : "X"
        }


    # this should only be used internally
    def _globalize(self, data, coord):
        gdata = range(len(data))
        [(x0, y0), 
         (x1, y1)] = coord
        for i in range(len(data)):
            (xh, yh) = data[i]
            xg = 1.0 + xh*((self.imgw - 2*self.mrgw)/(x1 - x0) \
            ) - (((-self.imgw)*x0 + self.mrgw*x0 + self.mrgw*x1)/(x0 - x1))
            yg = 0.0 + yh*((self.imgh - 2*self.mrgh)/(y0 - y1) \
            ) - (((-self.mrgh)*y0 + self.imgh*y1 - self.mrgh*y1)/(y0 - y1))
            gdata[i] = (xg, yg)
        return gdata
    
    def graph(self, datals, opts = {}):
        if (opts == {}):
            opts = self.opts
        obase = "img/"
        obase += sha.new(repr([datals, opts])).hexdigest() 
        obase += ".png"
        self.ofile = self.basedir
        self.ofile += "/"
        self.ofile += obase
        try:
            file(self.ofile)
        except:
            coord = opts['coord']
            g = Image.new("RGB", (self.imgw, self.imgh), "#FFF")
            d = ImageDraw.Draw(g)
            d.line([
                (self.mrgw,             self.mrgh), 
                (self.mrgw,             self.imgh - self.mrgh),
                (self.imgw - self.mrgw, self.imgh - self.mrgh),
                (self.imgw - self.mrgw, self.mrgh),
                (self.mrgw,             self.mrgh)], fill="#CCC")
            if coord[0][0] < 0 and 0 < coord[1][0]:
                d.line(self._globalize([
                    (0, coord[0][1]), 
                    (0, coord[1][1])], 
                    coord), fill="#CCC")
            if coord[0][1] < 0 and 0 < coord[1][1]:
                d.line(self._globalize([
                    (coord[0][0], 0), 
                    (coord[1][0], 0)], 
                    coord), fill="#CCC")
            for data_set in datals:
                d.line(self._globalize(data_set, coord), fill=opts['color'])
            g.save(self.ofile)
        return obase
    
    # not used anymore
    def convert(self, expr, opts = {}):
        if (opts == {}):
            opts = self.opts
        [(x0, y0),
         (x1, y1)] = opts['coord']
        pts = opts['points']
        data = range(pts)
        factor = (0.0 + x1 - x0)/(pts - 1)
        for i in range(pts):
            data[i] = ((i*factor + x0), 
                eval(expr.replace(opts['var'], str((i*factor + x0)))))
        return data
    
    # not used anymore
    def plot(self, expr, opts = {}):
        if (opts == {}):
            opts = self.opts
        d = self.convert(expr, opts)
        self.graph([d], opts)
        return self.ofile

if __name__ == '__main__':
    pass
    #gm = GraphMaker()
    #print gm.plot("x**2")
    #d1 = gm.convert("math.cos(x)")
    #d2 = gm.convert("5+x/2")
    #graph_data([d1, d2], opts)
