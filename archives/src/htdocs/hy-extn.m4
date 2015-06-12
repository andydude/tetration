m4_include([htdocs/nav.m4])
ppNavHyper()
ppSep(std)

<div class="dark">
<h1>Extensions of Hyper-operators</h1>
<p>
For a general extension of hyper-operators:
ppTexCenter([hy-ext-ops], [[
\boxhyper{d}{b}{c} = \begin{cases}
\boxhyper{d+1}{b}{\left(\boxhyperlog{d+1}{b}{c} + 1\right)} & \text{if } d < d_0 \\
HD_{(b, d)}(c) & \text{if } d_0 \le d \le d_1 \\
	{\left\{\begin{array}{ll}
	\boxhyperlog{d-1}{b}{\boxhyper{d}{b}{(c+1)}}	& \text{if } c < c_0 \\
	HC_{(b, d)}(c) 							& \text{if } c_0 \le c \le c_1 \\
	\boxhyper{d-1}{b}{(\boxhyper{d}{b}{(c-1)})}	& \text{if } c > c_1
	\end{array}\right\}} & \text{if } d > d_1
\end{cases}
]])

For hyper-logarithms:
ppTexCenter([hy-ext-log], [[
\boxhyperlog{d}{b}{a} = \begin{cases}
\boxhyper{d+1}{b}{\left(\boxhyperlog{d+1}{b}{a} - 1\right)} & \text{if } d < d_0 \\
HD^{-1}_{(b, d)}(a) & \text{if } d_0 \le d \le d_1 \\
	{\left\{\begin{array}{ll}
	\left(\boxhyperlog{d}{b}{\boxhyper{d-1}{b}{a}}\right) - 1		& \text{if } a < (\boxhyper{d}{b}{c_0}) \\
	HC^{-1}_{(b, d)}(a) 									& \text{if } (\boxhyper{d}{b}{c_0}) \le a \le (\boxhyper{d}{b}{c_1}) \\
	\left(\boxhyperlog{d}{b}{\boxhyperlog{d-1}{b}{a}}\right) + 1	& \text{if } a > (\boxhyper{d}{b}{c_1})
	\end{array}\right\}} & \text{if } d > d_1
\end{cases}
]])
</p>
</div>
