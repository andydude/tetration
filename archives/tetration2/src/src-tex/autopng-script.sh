./autopng "eqnestexp" "\\begin{align}\\notag 
a^{b^{\\cdot^{\\cdot^{y^{z}}}}}
 \\end{align}"
./autopng "eqiterexp" "\\begin{align}\\notag 
x^{x^{\\cdot^{\\cdot^{x^{z}}}}}
 \\end{align}"
./autopng "eqtetra" "\\begin{align}\\notag 
x^{x^{\\cdot^{\\cdot^{x^{x}}}}}
 \\end{align}"
./autopng "eqxtothex" "\\begin{align}\\notag 
x^x
 \\end{align}"
./autopng "eqhyperop" "\\begin{align}\\notag 
x {{\\uparrow}^n} y
 \\end{align}"
./autopng "eqmixedop" "\\begin{align}\\notag 
x {\\{{\\uparrow\\downarrow}\\}^n} y
 \\end{align}"
./autopng "eqlowerop" "\\begin{align}\\notag 
x {{\\downarrow}^n} y
 \\end{align}"
./autopng "knuth" "\\begin{align}\\notag x \\uparrow^{n} y = 
\\begin{cases}
x^y & \\text{if } n = 1\\\\
x & \\text{if } n > 1 \\text{ and }  y = 1\\\\
x \\uparrow^{n-1} (x \\uparrow^{n} (y-1)) & \\text{otherwise}
\\end{cases} \\end{align}"
./autopng "decexp" "\\begin{align}\\notag  & x      \\\\
+\\ & x^2    \\left(\\frac{1}{2}t\\right) \\notag\\\\
+\\ & x^3    \\left( -\\frac{1}{12}t + \\frac{1}{4}t^2\\right) \\notag\\\\
+\\ & x^4    \\left( \\frac{1}{48}t - \\frac{5}{48}t^2 + \\frac{1}{8}t^3\\right) \\notag\\\\
+\\ & x^5    \\left( -\\frac{1}{180}t + \\frac{1}{24}t^2 - \\frac{13}{144}t^3
+ \\frac{1}{16}t^4 \\right) \\notag\\\\
+\\ & x^6    \\left( \\frac{211}{1728}t + \\frac{89}{5760}t^2 - 
\\frac{1}{1728}t^3 - \\frac{41}{1152}t^4 + \\frac{1}{40}t^5\\right) \\notag\\\\
+\\ & \\cdots \\notag \\end{align}"
./autopng "woon" "\\begin{align}\\notag f^t(x) 
= w^t\\left(x + \\sum^{\\infty}_{n=1}\\frac{(-1)^n}{n!}
	\\left[\\prod^{n-1}_{k=0} (t-k)\\right]
	\\left[x + \\sum^{n}_{m=1} \\left(\\frac{-1}{w}\\right)^m 
	{n \\choose m} f^m(x)\\right]\\right) \\end{align}"
