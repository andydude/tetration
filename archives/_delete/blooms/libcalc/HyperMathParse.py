#
#  File: HyperMathParse.py
#  Author: Andrew Robbins
#  Description:
#       This contains the grammatical rules for transforming
#       the tokens from the lexical patterns (also in this file)
#       into a meaningful expression for the other classes.
#       Since the rules are sometimes hard to read within
#       the documentation strings of the functions, a
#       summary of the grammar is reproduced here:
#
#  start   : expr1 ';'  # the semi-colon is added automatically
#          ;
#  
#  expr1   : expr1 '+' expr2
#          | expr1 '-' expr2
#          | expr2
#          ;
#  
#  expr2   : expr2 '*' expr3
#          | expr2 '/' expr3
#          | expr3
#          ;
#  
#  expr3   : expr4 '^' expr3
#          | expr4
#          ;
#  
#  expr4   : expr5 '^^' expr4
#          | expr5
#          ;
#  
#  PLOT    = 'plot' '(' 
#  FUNDEF  = ')' '=' ...
#
#  expr5   : LID '(' expr1 ')'
#          | LID '(' expr1 ',' expr1 ')'
#          | LID '_' expr6 '(' expr1 ')'
#          | 'plot' '(' ... '|' UID '=' expr1 ':' expr1 ')'
#          | 'plot' '(' ... '|' UID '=' expr1 ':' expr1 ',' expr1 ':' expr1 ')'
#          | '$' LID '(' UID ')' '=' ...  # not sure about this yet
#          | '$' LID '(' UID ',' UID ')' '=' ...  # not sure about this yet
#          | '$' UID '=' expr1
#          | '-' expr6
#          | expr6
#          ;
#  
#  expr6   : NUM
#          | UID
#          | '(' expr1 ')'
#          ;
#

import lex
import yacc
import math
import HyperMath

class HyperMathParse:

    def __init__(self, **kw):
        self.debug = kw.get('debug', 0)
        self.ID0 = { # they take no arguments
            'E'     : math.e,
            'Pi'    : math.pi,
            'Phi'   : ((1 + math.sqrt(5))/2),
            'Gamma' : 0.57721566490153286061,
            'Omega' : 0.56714329040978387300,
        }
        self.ID1 = { # they take one argument
            'ln'    : math.log,
            'exp'   : math.exp,
            'sqrt'  : math.sqrt,
            'sln'   : HyperMath.sln,
            'sqsrt' : HyperMath.sqsrt,
            'texp'  : HyperMath.texp,
            'sin'   : math.sin,
            'cos'   : math.cos,
            'tan'   : math.tan,
        }
        self.ID2 = { # they take two arguments
            'rt'    : HyperMath.root,
            'log'   : HyperMath.logb, # math.log has args in reverse order
            'srt'   : HyperMath.srt,
            'slog'  : HyperMath.slog,
            'tet'   : HyperMath.tet,
            'twr'   : HyperMath.twr,
        }

        try:
            modname = os.path.split(os.path.splitext(__file__)[0])[1] 
            modname = modname + "_" + self.__class__.__name__
        except:
            modname = self.__class__.__name__ + '_auto'
        self.debugfile = modname + ".dbg"
        self.tabmodule = modname + "_" + "parsetab"

        # Build the lexer and parser
        self.mylexer = lex.lex(module=self, debug=self.debug)
        self.myparse = yacc.yacc(module=self,
                  debug=self.debug,
                  debugfile=self.debugfile,
                  tabmodule=self.tabmodule,
                  start='start')

    def run(self, expr):
        return self.myparse.parse(expr + ';', lexer=self.mylexer)

    def main(self):
        while True:
            try:
                expr = raw_input('math> ')
            except EOFError:
                print '\n'
                break
            print self.run(expr)

    # LEX stuff

    tokens = (
        'PLOT', # special plotting token
        'EOE', # end-of-expression
        'ADD', # addition
        'SUB', # subtraction
        'MUL', # multiplication
        'DIV', # division
        'POW', # powers
        'TET', # tetration
        'NUM', # numbers
        'LID', # lower-case identifiers
        'UID', # upper-case identifiers
        'UND', # underscore
        'COM', # comma
        #'DEF', # definition, '$'
        #'BAR', # vertical bar '|'
        'COL', # colon ':'
        'EQ',  # assignment, equals
        'LP',  # left parenthesis
        'RP',  # right parenthesis
    )
    
    t_EOE   = r';+'
    t_ADD   = r'\+'
    t_SUB   = r'\-'
    t_MUL   = r'\*'
    t_DIV   = r'/'
    t_POW   = r'\^'
    t_TET   = r'\^\^'
    t_UND   = r'_'
    t_COM   = r','
    #t_DEF   = r'\$'
    #t_BAR   = r'\|'
    t_COL   = r':'
    t_EQ    = r'='
    t_LP    = r'\('
    t_RP    = r'\)'
    t_LID   = r'[a-z][A-Za-z0-9]*'
    t_UID   = r'[A-Z][A-Za-z0-9]*'
    t_NUM   = r'[0-9][0-9]*(\.[0-9][0-9]*)?([Ee][0-9][0-9]*)?'
    t_PLOT  = r'plot[\ \t\r\n]*\([^|]+\|'
    
    t_ignore = ' \t\r\n'

    def t_error(self, t):
        print "lex ERROR: " + t.value + "\n"
    
    # YACC stuff:
    
    def p_expr_start(self, p):
        'start : expr1 EOE'
        p[0] = p[1]
    
    def p_expr_ADD(self, p):
        'expr1 : expr1 ADD expr2'
        p[0] = p[1] + p[3]
    
    def p_expr_SUB(self, p):
        'expr1 : expr1 SUB expr2'
        p[0] = p[1] - p[3]
    
    def p_expr_1_2(self, p):
        'expr1 : expr2'
        p[0] = p[1]
    
    def p_expr_MUL(self, p):
        'expr2 : expr2 MUL expr3'
        p[0] = p[1] * p[3]
    
    def p_expr_DIV(self, p):
        'expr2 : expr2 DIV expr3'
        p[0] = p[1] / p[3]
    
    def p_expr_2_3(self, p):
        'expr2 : expr3'
        p[0] = p[1]
    
    def p_expr_POW(self, p):
        'expr3 : expr4 POW expr3'
        p[0] = p[1] ** p[3]
    
    def p_expr_3_4(self, p):
        'expr3 : expr4'
        p[0] = p[1]
    
    def p_expr_TET(self, p):
        'expr4 : expr5 TET expr4'
        p[0] = HyperMath.tet(p[1], p[3])
    
    def p_expr_4_5(self, p):
        'expr4 : expr5'
        p[0] = p[1]
    
    def p_expr_ident_1(self, p):
        'expr5 : LID LP expr1 RP'
        if self.ID1.has_key(p[1]):
            p[0] = self.ID1[p[1]] (p[3])
        else:
            print "ID1 error: no ", p[1]
    
    def p_expr_ident_2(self, p):
        """expr5 : LID LP expr1 COM expr1 RP
                 | LID UND expr6 LP expr1 RP """
        if self.ID2.has_key(p[1]):
            p[0] = self.ID2[p[1]] (p[3], p[5])
        else:
            print "ID2 error: no ", p[1]

    #def p_expr_func_def(self, p):
    #    'expr5 : DEF LID LP UID RP EQ expr1'
    #    if self.ID1.has_key(p[1]):
    #        p[0] = ['ID1', self.ID1[p[1]] (p[3])
    #    else:
    #        print "ID1 error: no ", p[1]
#          | 'plot' '(' expr1 '|' UID '=' expr1 ':' expr1 ')'

    def p_expr_const_def(self, p):
        'expr6 : UID EQ expr1'
        self.ID0[p[1]] = p[3]
        p[0] = p[3]

    def p_expr_plot(self, p):
        'expr6 : PLOT UID EQ expr1 COL expr1 RP'
        p[0] = ['plot', {
            'func'  : ('('.join(p[1].split('(')[1:])).split('|')[0],
            'var'   : p[2],
            'vmin'  : p[4],
            'vmax'  : p[6],
        }]

    def p_expr_plot_ext(self, p):
        'expr6 : PLOT UID EQ expr1 COL expr1 COM expr1 COL expr1 RP'
        p[0] = ['plot', {
            'func'  : ('('.join(p[1].split('(')[1:])).split('|')[0],
            'var'   : p[2],
            'vmin'  : p[4],
            'vmax'  : p[6],
            'omin'  : p[8],
            'omax'  : p[10]
        }]

    def p_expr_constant(self, p):
        'expr6 : UID'
        if self.ID0.has_key(p[1]):
            p[0] = self.ID0[p[1]]
        else:
            print "ID0 error: no ", p[1]

    def p_expr_NEG(self, p):
        'expr5 : SUB expr6'
        p[0] = 0 - p[2]
    
    def p_expr_5_6(self, p):
        'expr5 : expr6'
        p[0] = p[1]
    
    def p_expr_number(self, p):
        'expr6 : NUM'
        p[0] = float(p[1])
    
    def p_expr_group(self, p):
        'expr6 : LP expr1 RP'
        p[0] = p[2]
    
    def p_error(self, p):
        if hasattr(p, 'type'):
            print "yacc ERROR: ", p.type, "\n"
        else: print "yacc ERROR!"

if __name__ == '__main__':
    calc = HyperMathParse()
    calc.main()
