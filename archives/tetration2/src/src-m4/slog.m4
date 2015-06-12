HTMLBEGIN(Home of Tetration - Super-logarithms)
SITENAV()
FLOW(   [[Previous Page:]], 
        [[Tetration]], tetra,
        [[Next Page:]], 
        [[Super-root]], sroot)
<div class="darkness">
<h1>About Super-logarithms</h1>
<p>
A EM(super-logarithm) is an inverse function of tetration, 
specifically the inverse of a tetrational function. Some have called super-logarithms EM(anti-tetrational) functions [?] because of this relationship. There are several interpretations of super-logarithms that stem from this definition:
</p>
LS(
LI([[slog]]SUB(V(x))(V(z)) = V(y) if and only if V(z) = SUP(V(y))V(x),
	[[A super-logarithm is an inverse of a tetrational function.]])
LI([[slog]]SUB(V(x))(V(z)) = V(A)SUB(V(z))[V(x)SUP(V(z))](V(z)),
	[[A super-logarithm is the Abel function of an exponential function.]])
LI([[log]]SUP([[[slog]](V(z))])(V(z)) = 1,
	[[A super-logarithm represents how many times a logarithm must be applied to a number before a result of one is obtained.]])
LI(V(C)(V(n)) = ceiling( [[slog]]SUB(10)(V(n)) - [[slog]]SUB(10)(6) ),
	[[Super-logarithms are related to Munafo's <a href="#munafo">number class system</a>.]])
)
</div>
<hr/>
<div class="darkness">
<h1>Integer Super-logarithms</h1>
<p>
</p>
</div>
<hr/>
<div class="darkness">
<a name="munafo"/>
<h1>Munafo's number class system</h1>
<p>
In Munafo's website about
<a href="http://home.earthlink.net/~mrob/pub/math/largenum.html"
>Large Numbers</a>,
he describes a number class system. Munafo's EM(number class system) begins with defining class-0 numbers as 1 through 6. He then gives an upper-bound for class-1 at about [[10]]SUP(6), and for class-2 numbers at about 10^(10^6). This is a super-logarithmic scale, so we can use the super-logarithm to simplify this description. 
</p>
<p>
Let the BIG(Munafo number) of V(n) be denoted V(C)(V(n)).
All numbers in the class V(C)(V(n)) satisfy:
\begin{equation}
\exp^{C(n) - 1}_{10}(6) < n \le \exp^{C(n)}_{10}(6)
\end{equation}
Replace 6 with $\exp^{\slog_{10}(6)}_{10}(1)$, and add hyper-exponents:
\begin{align}
\exp^{C(n) - 1}_{10}{\left(\exp^{\slog_{10}(6)}_{10}(1)\right)}
& < n \le \exp^{C(n)}_{10}{\left(\exp^{\slog_{10}(6)}_{10}(1)\right)} \\
\exp^{C(n) - 1 + \slog_{10}(6)}_{10}(1) 
& < n \le \exp^{C(n) + \slog_{10}(6)}_{10}(1)
\end{align}
Take the super-logarithm of each side, then subtract $C(n) + \slog_{10}(6)$ from each side:
\begin{align}
C(n) - 1 + \slog_{10}(6) < \slog_{10}(n) \le C(n) &{} + \slog_{10}(6) \\
- 1 < \slog_{10}(n) -  \slog_{10}(6) - C(n) &{} \le 0 \\
\lceil \slog_{10}(n) -  \slog_{10}(6) - C(n) &{} \rceil = 0
\end{align}
</p>
</div>
FLOW(   [[Previous Page:]], 
        [[Tetration]], tetra,
        [[Next Page:]], 
        [[Super-root]], sroot)
HTMLEND()
