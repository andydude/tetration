./autopng "gen-inftet" '\\begin{align}\\notag {}^{\\infty}x \\end{align}'
./autopng "ap-lambert-inftet" '\\begin{align}\\notag W(x) = {}^{\\infty}(\\ee^{-x})x = -\\ln\\left( {}^{\\infty}(\\ee^{-x}) \\right) \\end{align}'
./autopng "ap-inftet-lambert" '\\begin{align}\\notag {}^{\\infty}x = \\frac{W(-\\ln(x))}{-\\ln(x)} = \\exp(-W(-\\ln(x))) \\end{align}'
./autopng "ap-topcnj" '\\begin{align}\\notag f(x) = \\ee^{-x} \\end{align}'
./autopng "ap-topcnj-inv" '\\begin{align}\\notag f^{-1}(x) = -\\ln(x) \\end{align}'
./autopng "id-notation-01" '\\begin{align}\\notag x{\\U}{\\U}n \\end{align}'
./autopng "id-notation-02" '\\begin{align}\\notag \\iter{f}{n}(x) \\end{align}'
./autopng "id-notation-07" '\\begin{align}\\notag (/*) \\end{align}'
./autopng "id-notation-08" '\\begin{align}\\notag (*{\\backslash{}}) \\end{align}'
./autopng "id-notation-03" '\\begin{align}\\notag (x*) \\end{align}'
./autopng "id-notation-04" '\\begin{align}\\notag (*y) \\end{align}'
./autopng "id-notation-05" '\\begin{align}\\notag \\bigT_{k=1}^{n}a_k \\end{align}'
./autopng "id-not-tow" '\\begin{align}\\notag \\bigT^{n}a \\end{align}'
./autopng "id-notation-01" '\\begin{align}\\notag x{\\U}{\\U}n \\end{align}'
./autopng "id-axiom-tet" '\\begin{align}\\notag a \\U\\U n = a \\U {\\left( a \\U\\U (n-1) \\right)} \\end{align}'
./autopng "id-axiom-slog" '\\begin{align}\\notag (a{\\U\\U})^{-1}(a^z) = (a{\\U\\U})^{-1}(z) + 1 \\end{align}'
./autopng "id-table-inftet" '\\begin{align}\\notag 
{}^{\\infty}x & = \\frac{W(-\\ln(x))}{-\\ln(x)} = \\exp(-W(-\\ln(x))) = \\frac{1}{\\ssqrt{1/x}} \\\\\\notag
\\frac{1}{{}^{\\infty}(1/x)} & = \\frac{\\ln(x)}{W(\\ln(x))} = \\exp(W(\\ln(x))) = \\ssqrt{x} \\\\\\notag
{}^{\\infty}(\\ee^{-x})x & = W(x) = x\\exp(-W(x)) = \\frac{x}{\\ssqrt{\\ee^x}} \\\\\\notag
 \\end{align}'
./autopng "id-table-pos1" '\\begin{align}\\notag 
{}^{-2}a & = \\frac{-\\infty}{\\ln(a)} \\\\\\notag
{}^{-1}a & = 0 \\\\\\notag
{}^{0}a & = 1 \\\\\\notag
{}^{1}a & = a \\\\\\notag
{}^{2}a & = a^a \\\\\\notag
{}^{3}a & = a^{a^a} \\\\\\notag
 \\end{align}'
./autopng "id-table-pminf" '\\begin{align}\\notag 
{}^{{-}\\infty}x & = \\frac{W_{-1}(-\\ln(x))}{-\\ln(x)} \\quad\\text{for all } x>\\ee^{1/\\ee}\\\\\\notag
{}^{{-}\\infty}x & = \\frac{W(-\\ln(x))}{-\\ln(x)} \\quad\\quad\\text{for all } x<\\ee^{-\\ee} \\\\\\notag
{}^{\\infty}x & = \\frac{W(-\\ln(x))}{-\\ln(x)} \\quad\\quad\\text{for all } \\ee^{-\\ee} \\le x \\le \\ee^{1/\\ee}
 \\end{align}'
./autopng "id-table-anyx" '\\begin{align}\\notag 
\\exp_a^{-2}(z) & = \\log_a(\\log_a(z)) \\\\\\notag
\\exp_a^{-1}(z) & = \\log_a(z) \\\\\\notag
\\exp_a^{0}(z) & = z \\\\\\notag
\\exp_a^{1}(z) & = a^z \\\\\\notag
\\exp_a^{2}(z) & = a^{a^z} \\\\\\notag
\\exp_a^{3}(z) & = a^{a^{a^z}} \\\\\\notag
 \\end{align}'
./autopng "id-table-neg1" '\\begin{align}\\notag 
\\exp_a^{-2}({-}1) & = \\log_a(\\log_a(-1)) \\\\\\notag
\\exp_a^{-1}({-}1) & = \\frac{\\ii \\pi}{\\ln(a)} \\\\\\notag
\\exp_a^{0}({-}1) & = -1 \\\\\\notag
\\exp_a^{1}({-}1) & = \\frac{1}{a} \\\\\\notag
\\exp_a^{2}({-}1) & = a^{1/a} \\\\\\notag
\\exp_a^{3}({-}1) & = a^{a^{1/a}} \\\\\\notag
 \\end{align}'
./autopng "id-inverse-srt" '\\begin{align}\\notag ({\\U\\U}n)^{-1}(z) = \\boxhyperroot{4}{n}{z} = \\srt_n(z) \\end{align}'
./autopng "id-inverse-slog" '\\begin{align}\\notag (a{\\U\\U})^{-1}(z) = \\boxhyperlog{4}{a}{z} = \\slog_a(z) \\end{align}'
./autopng "id-exp-hy3" '\\begin{align}\\notag a^z = \\ee^{z\\ln(a)} \\end{align}'
./autopng "id-exp-hy4" '\\begin{align}\\notag a^z = a \\U\\U \\left(\\slog_a(z) + 1\\right) \\end{align}'
./autopng "id-iterexp-hy4" '\\begin{align}\\notag \\exp_a^y(z) = a \\U\\U \\left(\\slog_a(z) + y\\right) \\end{align}'
./autopng "gs-bell" '\\begin{align}\\notag B[f \\circ g] = B[g] B[f] \\end{align}'
./autopng "gs-carleman" '\\begin{align}\\notag M[f \\circ g] = M[f] M[g] \\end{align}'
./autopng "hy-frappier-def" '\\begin{align}\\notag 
  H\\!F_n(x, y) = (x \\mapsto H\\!F_{n-1}(x, x))^{\\log_2(y)}(x)
   \\end{align}'
./autopng "hy-frappier-enum" '\\begin{align}\\notag 
    H\\!F_1(x, y) & = x + y \\\\\\notag
    H\\!F_2(x, y) & = x y \\\\\\notag
    H\\!F_3(x, y) & = x^y \\\\\\notag
    H\\!F_4(x, y) & = (x \\mapsto x^x)^{\\log_2(y)}(x)
   \\end{align}'
./autopng "hy-frappier-bad" '\\begin{align}\\notag 
  x + 1 = H\\!F_1(x, 1) = (x \\mapsto H\\!F_0(x, x))^{0}(x) = x
   \\end{align}'
./autopng "hy-robbins-def" '\\begin{align}\\notag 
  H\\!R_n(x, y) = \\exp_b H\\!R_{n-1}\\left( \\log_b(x), \\exp_b^{n-3}(y) \\right)
   \\end{align}'
./autopng "hy-robbins-enum" '\\begin{align}\\notag 
    H\\!R_{(-1)}(x, y) & = \\log^2\\left(\\exp^7(y) + e^{e^x}\\right) \\\\\\notag
    H\\!R_0(x, y) & = \\log\\left(e^{e^{e^y}} + e^x\\right) \\\\\\notag
    H\\!R_1(x, y) & = x + y \\\\\\notag
    H\\!R_2(x, y) & = x y \\\\\\notag
    H\\!R_3(x, y) & = x^y \\\\\\notag
    H\\!R_4(x, y) & = e^{\\log(x)^{e^y}} \\\\\\notag
    H\\!R_5(x, y) & = e^{e^{\\log(\\log(x))^{\\exp^3(y)}}}
   \\end{align}'
./autopng "hy-robbins-all" '\\begin{align}\\notag 
    H\\!R_n(x, y) = \\exp_b^{n-2}\\left(\\exp_b^{2-n}(x) \\exp_b^{\\binom{n-2}{2}}(y)\\right)
   \\end{align}'
./autopng "exp-mul-def" '\\begin{align}\\notag (a + \\ii b)(c + \\ii d) = (ac - bd) + \\ii (ad + bc) \\end{align}'
./autopng "exp-div-def" '\\begin{align}\\notag \\frac{(a + \\ii b)}{(c + \\ii d)} = \\frac{ac + bd}{c^2 + d^2} + \\ii \\frac{bc - ad}{c^2 + d^2} \\end{align}'
./autopng "exp-roots" '\\begin{align}\\notag \\sqrt{4} = \\pm 2 \\end{align}'
./autopng "hy-ext-ops" '\\begin{align}\\notag 
\\boxhyper{d}{b}{c} = \\begin{cases}
\\boxhyper{d+1}{b}{\\left(\\boxhyperlog{d+1}{b}{c} + 1\\right)} & \\text{if } d < d_0 \\\\
HD_{(b, d)}(c) & \\text{if } d_0 \\le d \\le d_1 \\\\
	{\\left\\{\\begin{array}{ll}
	\\boxhyperlog{d-1}{b}{\\boxhyper{d}{b}{(c+1)}}	& \\text{if } c < c_0 \\\\
	HC_{(b, d)}(c) 							& \\text{if } c_0 \\le c \\le c_1 \\\\
	\\boxhyper{d-1}{b}{(\\boxhyper{d}{b}{(c-1)})}	& \\text{if } c > c_1
	\\end{array}\\right\\}} & \\text{if } d > d_1
\\end{cases}
 \\end{align}'
./autopng "hy-ext-log" '\\begin{align}\\notag 
\\boxhyperlog{d}{b}{a} = \\begin{cases}
\\boxhyper{d+1}{b}{\\left(\\boxhyperlog{d+1}{b}{a} - 1\\right)} & \\text{if } d < d_0 \\\\
HD^{-1}_{(b, d)}(a) & \\text{if } d_0 \\le d \\le d_1 \\\\
	{\\left\\{\\begin{array}{ll}
	\\left(\\boxhyperlog{d}{b}{\\boxhyper{d-1}{b}{a}}\\right) - 1		& \\text{if } a < (\\boxhyper{d}{b}{c_0}) \\\\
	HC^{-1}_{(b, d)}(a) 									& \\text{if } (\\boxhyper{d}{b}{c_0}) \\le a \\le (\\boxhyper{d}{b}{c_1}) \\\\
	\\left(\\boxhyperlog{d}{b}{\\boxhyperlog{d-1}{b}{a}}\\right) + 1	& \\text{if } a > (\\boxhyper{d}{b}{c_1})
	\\end{array}\\right\\}} & \\text{if } d > d_1
\\end{cases}
 \\end{align}'
./autopng "ec-comp-all" '\\begin{align}\\notag H^{-1} \\circ H \\end{align}'
./autopng "ec-comp-some" '\\begin{align}\\notag H \\circ H^{-1} \\end{align}'
./autopng "ec-formal" '\\begin{align}\\notag 
  EC(x) = \\{ y \\text{ where } x^y = y^x \\text{ and } x \\ne y \\}
   \\end{align}'
./autopng "ec-closed" '\\begin{align}\\notag 
EC(x) = \\begin{cases}
H_{-1}(\\sqrt[x]{x})& \\text{if }x < \\boldsymbol{e}, \\\\
H_{0}(\\sqrt[x]{x}) & \\text{if }x > \\boldsymbol{e}.
\\end{cases}
   \\end{align}'
./autopng "ec-taylor" '\\begin{align}\\notag 
EC(x) 
& = \\ee - (x-\\ee) 
+ \\frac{5}{3\\ee} (x-\\ee)^2 
- \\frac{25}{9\\ee^2} (x-\\ee)^3
+ \\frac{1243}{270\\ee^3} (x-\\ee)^4 \\\\\\notag 
&- \\frac{1229}{162\\ee^4} (x-\\ee)^5 
 + \\frac{14107}{1134\\ee^5} (x-\\ee)^6 
- \\frac{575927}{28350\\ee^6} (x-\\ee)^7 \\\\\\notag 
& + \\frac{4217764}{127575\\ee^7} (x-\\ee)^8 
- \\frac{1408003}{26244\\ee^8} (x-\\ee)^9 
+ \\cdots
 \\end{align}'
./autopng "ec-at2-taylor" '\\begin{align}\\notag 
EC(x) 
& = 4 
+ \\frac{4(\\log(2)-1)}{2\\log(2)-1}(x-2) 
- \\frac{2\\log(2)^2 - 6\\log(2) + 3}{(2\\log(2)-1)^3} (x-2)^2 \\\\\\notag
& + \\frac{8\\log(2)^4 - 16 \\log(2)^3 - 36 \\log(2)^2 + 60 \\log(2) - 21}{6(2\\log(2)-1)^5} (x-2)^3
+ \\cdots
 \\end{align}'
./autopng "ec-at4-taylor" '\\begin{align}\\notag 
EC(x) 
& = 2
+ \\frac{\\log(2)-1}{4(\\log(2)-1}(x-4) 
+ \\frac{2\\log(2)^2 - 6\\log(2) + 3}{64(\\log(2)-1)^3} (x-4)^2 \\\\\\notag
& - \\frac{4\\log(2)^4 - 16 \\log(2)^3 + 18 \\log(2)^2 - 15 \\log(2) + 6}{1536(\\log(2)-1)^5} (x-4)^3
+ \\cdots
 \\end{align}'
./autopng "ec-deriv" '\\begin{align}\\notag 
EC\\prime(x) 
= \\frac{EC(x)^2 (1 - \\log(x))}{x^2 (1 - EC(x) \\log(x^{1/x}))}
 \\end{align}'
./autopng "xtothex-xneghalf" '\\begin{align}\\notag -\\ii\\sqrt{2} \\end{align}'
./autopng "xtothex-simple" '\\begin{align}\\notag x^x = 
\\ee^{x\\log(x)} = \\sum_{k=0}^{\\infty} \\frac{x^k \\log(x)^k}{k!} \\end{align}'
./autopng "xtothex-taylor" '\\begin{align}\\notag x^x = 
\\sum_{k=0}^{\\infty}\\frac{(x-1)^k}{k!}
\\sum_{j=0}^{k}\\stirfirst{k}{j}
\\sum_{i=0}^{j}\\binom{j}{i} i^{(j-i)}
 \\end{align}'
./autopng "xtothex-expexp" '\\begin{align}\\notag \\ee^{x \\ee^x} \\end{align}'
./autopng "xtothex-puiseux" '\\begin{align}\\notag x^x = 
\\sum_{k=0}^{\\infty}\\frac{\\log(x)^k}{k!}
\\sum_{j=0}^{k}\\binom{k}{j} j^{(k-j)}
 \\end{align}'
./autopng "xrootx-simple" '\\begin{align}\\notag x^{1/x} = 
\\ee^{\\log(x)/x} = \\sum_{k=0}^{\\infty} \\frac{\\log(x)^k x^{-k}}{k!} \\end{align}'
./autopng "xrootx-taylor" '\\begin{align}\\notag x^{1/x} = 
\\sum_{k=0}^{\\infty}\\frac{(x-1)^k}{k!}
\\sum_{j=0}^{k}\\stirfirst{k}{j}
\\sum_{i=0}^{j}\\binom{j}{i}(-i)^{(j-i)}
 \\end{align}'
./autopng "xrootx-puiseux" '\\begin{align}\\notag x^{1/x} = 
\\sum_{k=0}^{\\infty}\\frac{\\log(x)^k}{k!}
\\sum_{j=0}^{k}\\binom{k}{j}(-j)^{(k-j)}
 \\end{align}'
./autopng "lambert-taylor" '\\begin{align}\\notag W(x) = \\sum_{k=1}^{\\infty} \\frac{(-k)^{(k-1)} x^k}{k!} \\end{align}'
./autopng "tc-def" '\\begin{align}\\notag f \\circ h = h \\circ g \\end{align}'
./autopng "tc-cor" '\\begin{align}\\notag f = h \\circ g \\circ h^{-1} \\end{align}'
./autopng "tc-snd" '\\begin{align}\\notag f^2 = h \\circ g \\circ h^{-1} \\circ h \\circ g \\circ h^{-1} = h \\circ g^2 \\circ h^{-1} \\end{align}'
./autopng "tc-trd" '\\begin{align}\\notag f^n = h \\circ g^n \\circ h^{-1} \\end{align}'
./autopng "tc-general" '\\begin{diagram} 
A & \\rTo^{g} & A \\\\ 
\\dTo^{h} & & \\dTo_{h} \\\\ 
B & \\rTo^{f} & B
 \\end{diagram}'
./autopng "tc-general2" '\\begin{diagram} 
A & \\rTo^{g} & A & \\rTo^{g} & A \\\\ 
\\dTo^{h} & & \\dTo_{h} & & \\dTo_{h} \\\\ 
B & \\rTo^{f} & B & \\rTo^{f} & B
 \\end{diagram}'
./autopng "tc-exponent" '\\begin{diagram} 
(z+1)h & \\rTo^{h^{x/h}} & (h^{z+1}) \\\\ 
\\dTo^{x/h - 1} & & \\dTo_{x/h - 1} \\\\ 
(z) & \\rTo^{h^x - 1} & (h^{z} - 1)
 \\end{diagram}'
./autopng "tc-lambert" '\\begin{diagram} 
\\left(\\ee^{W(z)} = \\frac{z}{W(z)} \\right) & & & \\rTo^{x^x} & & & \\left(\\ee^{W(z)\\ee^{W(z)}} = \\ee^z\\right) \\\\ 
 & \\luTo^{\\ee^x} & & & & \\ruTo^{\\ee^x} & \\\\
\\dTo^{\\frac{1}{x}} & & W(z) & \\rTo^{x\\ee^x} & (z) & & \\dTo_{\\frac{1}{x}} \\\\
 & \\ldTo^{\\ee^{-x}} & & & & \\rdTo^{\\ee^{-x}} & \\\\
\\left(\\ee^{-W(z)} = \\frac{W(z)}{z} \\right) & & & \\rTo{x^{1/x}} & & & \\left(\\ee^{-W(z)\\ee^{W(z)}} = \\ee^{-z}\\right)
 \\end{diagram}'
./autopng "te-notation-01" '\\begin{align}\\notag {}^{n}{a}
      = a^{a^{\\cdot^{\\cdot^{a^{a}}}}} \\end{align}'
./autopng "te-notation-02" '\\begin{align}\\notag \\exp_a^{n}(z)
      = a^{a^{\\cdot^{\\cdot^{a^{z}}}}} \\end{align}'
./autopng "te-notation-srt" '\\begin{align}\\notag 
  x = \\asrt{y}{z} \\end{align}'
./autopng "te-notation-where" '\\begin{align}\\notag 
  z = {}^{y}x \\end{align}'
./autopng "te-notation-slog" '\\begin{align}\\notag 
  y = \\aslog{x}{z} \\end{align}'
./autopng "te-notation-where" '\\begin{align}\\notag 
  z = {}^{y}x \\end{align}'
./autopng "te-spow-notn" '\\begin{align}\\notag f(z) = {}^{n}z \\end{align}'
./autopng "ax-tet-spow" '\\begin{align}\\notag \\spow_{n+1}(z) = z \\U \\spow_n(z) \\end{align}'
./autopng "te-spow-assume" '\\begin{align}\\notag {}^{1/n}z = \\srt_n(z) \\end{align}'
./autopng "te-spow-limitl" '\\begin{align}\\notag \\lim_{n\\to\\infty}{}^{1/n}z = {}^{0}z = 1 \\end{align}'
./autopng "te-spow-limitr" '\\begin{align}\\notag \\lim_{n\\to\\infty}\\srt_n(z) = \\srt_{\\infty}(z) = z^{1/z} \\end{align}'
./autopng "te-spow-but" '\\begin{align}\\notag 1 \\ne z^{1/z} \\end{align}'
./autopng "te-spow-assume-not" '\\begin{align}\\notag {}^{1/n}z \\ne \\srt_n(z) \\end{align}'
./autopng "te-sexp-notn" '\\begin{align}\\notag f(z) = {}^{z}a \\end{align}'
./autopng "te-sexp-def" '\\begin{align}\\notag {}^{z}a = a \\U \\left( {}^{z-1}a \\right) \\end{align}'
./autopng "te-sexp-taylor" '\\begin{align}\\notag {}^{z}a = \\sum_{k=0}^{\\infty} t_k(a) (z - z_0)^k \\end{align}'
./autopng "te-sexp-taylog" '\\begin{align}\\notag {}^{z}a = \\log(z+2) + \\sum_{k=0}^{\\infty} u_k(a) (z - z_0)^k \\end{align}'
./autopng "id-inverse-slog" '\\begin{align}\\notag (a{\\U\\U})^{-1}(z) = \\boxhyperlog{4}{a}{z} = \\slog_a(z) \\end{align}'
./autopng "te-slog-def" '\\begin{align}\\notag \\slog_a(a^z) = \\slog_a(z) + 1 \\end{align}'
./autopng "te-slog-taylor" '\\begin{align}\\notag \\slog_a(z) = \\sum_{k=0}^{\\infty} s_k(a) (z - z_0)^k \\end{align}'
./autopng "te-slog-taylog" '\\begin{align}\\notag \\slog_a(z) = \\frac{1}{L}\\log(z - L) + \\frac{1}{L^{*}}\\log(z - L^{*}) + \\sum_{k=0}^{\\infty} r_k(a) (z - z_0)^k \\end{align}'
./autopng "fix-hi" '\\begin{align}\\notag L = H_{-1}(\\ee) \\end{align}'
./autopng "fix-lo" '\\begin{align}\\notag L^{*} = H_{0}(\\ee) \\end{align}'
./autopng "id-inverse-srt" '\\begin{align}\\notag ({\\U\\U}n)^{-1}(z) = \\boxhyperroot{4}{n}{z} = \\srt_n(z) \\end{align}'
./autopng "tw-define-01" '\\begin{align}\\notag b_k = a_k^{b_{k-1}} \\end{align}'
./autopng "tw-define-02" '\\begin{align}\\notag \\lim_{n\\to\\infty} c_n(1) \\end{align}'
./autopng "tw-define-03" '\\begin{align}\\notag c_k(z) = c_{k-1}(a_k^z) \\end{align}'
./autopng "tw-intro-01" '\\begin{align}\\notag a^{b^{\\cdot^{\\cdot^{y^z}}}} \\end{align}'
./autopng "tw-notation-01" '\\begin{align}\\notag \\BigT{k=1}{n}a_k
      = a_1^{a_2^{\\cdot^{\\cdot^{a_{n-1}^{a_n}}}}} \\end{align}'
./autopng "tw-notation-02" '\\begin{align}\\notag \\BigT{k=1}{n}(a_k; z)
      = a_1^{a_2^{\\cdot^{\\cdot^{a_{n}^{z}}}}} \\end{align}'
./autopng "tw-notation-03" '\\begin{align}\\notag \\bigT(a_1, a_2, a_3, \\cdots, a_n)
      = a_1^{a_2^{\\cdot^{\\cdot^{a_{n-1}^{a_n}}}}} \\end{align}'
./autopng "tw-notation-05" '\\begin{align}\\notag {\\rm T}^n(a; z) 
      = \\exp_a^{n}(z)
      = a^{a^{\\cdot^{\\cdot^{a^z}}}} \\end{align}'
./autopng "tw-notation-04" '\\begin{align}\\notag {\\rm T}^na 
      = {}^{n}a
      = a^{a^{\\cdot^{\\cdot^{a^a}}}} \\end{align}'
./autopng "tw-notation-06" '\\begin{align}\\notag c{\\rm T}^na \\end{align}'
./autopng "tw-prmfac-prmfac" '\\begin{align}\\notag n = p_1^{a_1} p_2^{a_2} \\cdots p_n^{a_n} \\end{align}'
./autopng "tw-prmfac-pn" '\\begin{align}\\notag p_n \\end{align}'
./autopng "tw-prmfac-an" '\\begin{align}\\notag a_n \\end{align}'
./autopng "tw-prmfac-an" '\\begin{align}\\notag a_n \\end{align}'
./autopng "tw-prmfac-def" '\\begin{align}\\notag D_n = \\lim_{N \\rightarrow \\infty} \\frac{1}{N} |\\{k \\le N \\text{ : } h(k) \\ge n \\}| \\end{align}'
./autopng "tw-prmfac-dn" '\\begin{align}\\notag D_n \\end{align}'
./autopng "tw-prmfac-d11" '\\begin{align}\\notag D_1 = 1 \\end{align}'
./autopng "tw-prmfac-show" '\\begin{align}\\notag \\frac{1}{2} < ({}^{n}2) D_n \\le 3 \\end{align}'
./autopng "tw-series" '\\begin{align}\\notag \\boxed{
\\BigT{k=1}{n}{a_k} = \\sum_{\\substack{k_j \\ge 0 \\\\ 1 \\le j \\le n}}
\\prod_{i=1}^{n}\\frac{(k_{i-1}\\log(a_i))^{k_i}}{(k_i)!}
} \\end{align}'
./autopng "tw-proof-01" '\\begin{align}\\notag a_k = \\ee^{b_k} \\end{align}'
./autopng "tw-proof-02" '\\begin{align}\\notag 
\\BigT{k=1}{1}(\\ee^{b_k}; z) = \\ee^{b_1 z} 
= \\sum_{k_1=0}^{\\infty}\\frac{(b_1 z)^{k_1}}{(k_1)!}
= \\sum_{k_1=0}^{\\infty} z^{k_1} \\frac{(b_1)^{k_1}}{(k_1)!}
 \\end{align}'
./autopng "tw-proof-03" '\\begin{align}\\notag 
\\BigT{k=1}{n}(\\ee^{b_k}; z) = \\sum_{\\substack{k_j \\ge 0 \\\\ 1 \\le j \\le n}}
z^{k_n} \\prod_{i=1}^{n}\\frac{(k_{i-1}b_i)^{k_i}}{(k_i)!}
 \\end{align}'
./autopng "tw-proof-big" '\\begin{align}\\notag 
\\BigT{k=1}{n+1}(\\ee^{b_k}; z) 
& = \\BigT{k=1}{n}(\\ee^{b_k}; \\ee^{b_{n+1}z})
\\\\\\notag & = \\sum_{\\substack{k_j \\ge 0 \\\\ 1 \\le j \\le n}}
{(\\ee^{b_{n+1}z})}^{k_n}
\\prod_{i=1}^{n}\\frac{(k_{i-1}b_i)^{k_i}}{(k_i)!}
\\\\\\notag & = \\sum_{\\substack{k_j \\ge 0 \\\\ 1 \\le j \\le n}}
\\ee^{k_nb_{n+1}z} \\prod_{i=1}^{n}\\frac{(k_{i-1}b_i)^{k_i}}{(k_i)!}
\\\\\\notag & = \\sum_{\\substack{k_j \\ge 0 \\\\ 1 \\le j \\le n}}
\\sum_{k_{n+1} \\ge 0} \\frac{{(k_nb_{n+1}z)}^{k_{n+1}}}{(k_{n+1})!}
\\prod_{i=1}^{n}\\frac{(k_{i-1}b_i)^{k_i}}{(k_i)!}
\\\\\\notag & = \\sum_{\\substack{k_j \\ge 0 \\\\ 1 \\le j \\le n}}
\\sum_{k_{n+1} \\ge 0} z^{k_{n+1}} \\frac{{(k_nb_{n+1})}^{k_{n+1}}}{(k_{n+1})!}
\\prod_{i=1}^{n}\\frac{(k_{i-1}b_i)^{k_i}}{(k_i)!}
\\\\\\notag & = \\sum_{\\substack{k_j \\ge 0 \\\\ 1 \\le j \\le (n+1)}}
z^{k_{n+1}} \\prod_{i=1}^{n+1}\\frac{(k_{i-1}b_i)^{k_i}}{(k_i)!}
 \\end{align}'
./autopng "tw-proof-05" '\\begin{align}\\notag b_k = \\log(a_k) \\end{align}'
