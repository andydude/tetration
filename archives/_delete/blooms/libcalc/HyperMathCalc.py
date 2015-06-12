#
#  File: HyperMathCalc.py
#  Author: Andrew Robbins
#  Description:
#       This file is the high-level class-based interface for
#       the whole HyperMath package.
#
#  Usage:
#       calc = HyperMathCalc()
#       calc.evaluate("2+2")
#

import HyperMathGraph
import HyperMathParse

#def run(s, ctx=None):
#    if not s: return None
#    context = ctx
#    return myparse.parse(s + ';', lexer = mylex)
#    
#if __name__ == '__main__':
#    while True:
#        try: s = raw_input('math> ')
#        except EOFError:
#            print '\n'
#            break
#        if not s: continue
#        print run(s) #not good anymore


class HyperMathCalc:
    def __init__(self, basedir="."):
        self.parser = HyperMathParse.HyperMathParse()
        self.grapher = HyperMathGraph.HyperMathGraph(basedir)
        
    def run(self, expr):
        ret = self.parser.run(expr)
        if isinstance(ret, (int, float)):
          return ret
        elif isinstance(ret, list):
            if ret[0] == 'plot':
                code = "<img src='"
                code += self.plot(ret)
                code += "' />"
                return code
            else:
                print "calc run() list error! \n"
        elif isinstance(ret, str):
          return "String"
        else:
          print "calc run() error! \n"
    
    def main(self):
        while True:
            try:
                expr = raw_input('math> ')
            except EOFError:
                print '\n'
                break
            print self.run(expr)

    def plot(self, plotobj):
        if plotobj[0] != 'plot':
            print "plot error!\n"
            return None
        plotdict = plotobj[1]
        func = plotdict['func']
        var = plotdict['var']

        xmin = plotdict['vmin']
        xmax = plotdict['vmax']
        if plotdict.has_key('omin'):
            ymin = plotdict['omin']
            ymax = plotdict['omax']
        else:
            ymin = self.run(func.replace(var, str(xmin)))
            ymax = self.run(func.replace(var, str(xmax)))

        #print "plotting '%s' to file '%s'\n" % (
        #    func, "calc.png"
        #)

        numofpts = 50 # should be changeable
        factor = (0.0 + xmax - xmin)/(numofpts - 1)
        
        data = range(numofpts)
        for i in range(numofpts):
            data[i] = (
                (i*factor + xmin), 
                self.run(func.replace(var, str(i*factor + xmin)))
            )
        opts = {
            'color'     : "#000",
            'coord'     : [(xmin, ymin), (xmax, ymax)],
        }
        return self.grapher.graph([data], opts)
        
if __name__ == '__main__':
    calc = HyperMathCalc()
    calc.main()
