HTMLBEGIN(Home of Tetration - Code)
SITENAV()
<hr/>
<div class="darkness">
<h1>About the Code</h1>
<h2>Functions</h2>
<p>
The following code, regardless of CAS or programming language, will
follow some structure, and will always have the following functions:
LS(
LI(BIG(FSolve),
    [[Finds an V(n)-th degree polynomial approximate solution to 
    a given functional equation.
    <br>
    BIG(Usage): FSolve[equation[[,]] f[x][[,]] {x[[,]] x0[[,]] n}[[,]] {coeff}] ]])
LI(BIG(Linearize),
    [[Prepares a list of power series coefficients from
    an V(n)-th degree Abel linearization of a function. 
    (Formerly known as BIG(prepare).) This function is equivalent
    to FSolve[a[f[x][[]]] == a[x] + 1[[,]] a[x][[,]] {x[[,]] x0[[,]] n}[[,]] {y0}]
    <br>
    BIG(Usage): Linearize[f[x][[,]] {x[[,]] x0[[,]] n}] ]])
LI(BIG(SuperLog), [[Finds the super-logarithm base V(x) of V(z) using the coefficients.]])
LI(BIG(Tetrate),  [[Finds the V(y)-th tetration of V(x) using inverse function methods.]])
)
</p>
<p>
Recently I have been using Mathematica more than Maple, so the most recent version of the code is available for Mathematica only. If I have time or get funding I may take the time to port it over to Maple someday. Until then I would recommend using my most recent package with a trial version of Mathematica if you cannot afford the full version.
</p>

<h2>New Code</h2>
<br/>TAB()
This page includes code that is very different than the code found in the paper. 
The code in the paper requires that preparation be done before-hand, whereas
the new code allows you to call the BIG(tetrate) and 
BIG(superlog) functions without any
preparation, because it does the preparation on the spot. 
This is very innacurate, but on the good side, it's fast.
<br/>TAB()
Another new feature is multiple preparation. You can now call 
BIG(prepare) (in Mathematica only) with a list describing the numbers of
V(n) you wish to prepare. Instead of solving the systems of equations
separately, it combines several steps so that it saves time. The way
that it does this, is through EM(partial row-reduction).
The EM(partial row-reduction) method could be the subject
of an entire paper, but simply put, it solves a V(m) by V(m) matrix
only upto row V(n) (assuming V(n) &lt; V(m)), 
thus being able to grab solutions from that
matrix <i>as if it were</i> an V(n) by V(n) matrix. Then continue
by row-reducing the V(m) by V(m) matrix that is already 
partially row-reduced. This
allows you to BIG(prepare)(V(n)), and BIG(prepare)(V(m)) at
the same time!
<br/>TAB()
The reason the EM(partial row-reduction) method is useful is
because the only way to determine the "accuracy" of the values you 
get with BIG(prepare)(V(n)) is to compare them to values at a higher
preparation, say maybe BIG(prepare)(2*V(n)). For small values of V(n),
this is trivial, but when comparing values prepared from
V(n)=200 to V(n)=400, every microsecond counts.
</div>
<hr/>
<div class="darkness">
<h1>Mathematica Code</h1>
<h2>Code from Paper (v1.0)</h2>
<br/>
<pre>
(*
** Usage:
**      prep = SuperLogPrepare[n, x];
**      SuperLog[prep, z]    -- gives n-th approx. of slog_x(z) 
**      Tetrate[prep, y]     -- gives n-th approx. of x^^y
**
** Copyright 2005 Andrew Robbins
*)

SuperLogPrepare[n_Integer, x_] := {x, LinearSolve[Table[
    k^j/k! - If[j == k, Log[x]^-k, 0], {j, 0, n - 1}, 
    {k, 1, n}], Table[If[k == 1, 1, 0], {k, 1, n}]]}

SuperLog[v_, z_?NumericQ] := Block[{(*SlogCrit*)}, 
    SlogCrit[zc_] := -1 + Sum[v[[2, k]]*zc^k/k!, {k, 1, Length[v[[2]]]}]; 
    Which[z ² 0, SlogCrit[v[[1]]^z] - 1, 0 &lt; z ² 1, SlogCrit[z], z &gt; 1, 
    Block[{i=-1}, SlogCrit[NestWhile[Log[v[[1]], #]&amp;, z, (i++;#&gt;1)&amp;]]+i]]]

Tetrate[v_, y_?NumericQ] := Block[{(*SlogCrit, TetCrit*)},
    SlogCrit[zc_] := -1 + Sum[v[[2, k]]*zc^k/k!, {k, 1, Length[v[[2]]]}];
    TetCrit[yc_] := FindRoot[SlogCrit[z] == yc, {z, 1}][[1, 2]]; If[y &gt; -1, 
    Nest[Power[v[[1]], #]&amp;, TetCrit[y - Ceiling[y]], Ceiling[y]],
    Nest[Log[v[[1]], #]&amp;, TetCrit[y - Ceiling[y]], -Ceiling[y]]]]
</pre>
<br/>
<h2>New Code (v1.1)</h2>
<br/>
<pre>
(* Usage:
** 
** prep = SuperLogPrepare[x, n];    -- Prepare for slog_x(z)_n
** SuperLog[x, z]                   -- Prepare fast (n=10)
** SuperLog[prep, z]                -- Use local prep
** SuperLog[z]                      -- Use global prep
*)
SuperLogPrepare[x_, n_Integer] := {x, LinearSolve[Table[
    k^j/k! - If[j == k, Log[x]^-k, 0], {j, 0, n - 1}, 
    {k, 1, n}], Table[If[k == 1, 1, 0], {k, 1, n}]]}
SuperLogPrepare[x_, {nMax_Integer}] := SuperLogPrepare[x, {1, nMax}]
SuperLogPrepare[x_, {nMin_Integer, nMax_Integer}] := 
    SuperLogPrepare[x, {nMin, nMax, 1}]
SuperLogPrepare[x_, {nMin_Integer, nMax_Integer, nStep_Integer}] := 
    Block[{m}, m = Table[If[k &lt;= nMax, 
        k^j/k! - If[j == k, Log[x]^-k, 0], If[j == 0, 1, 0]],
        {j, 0, nMax - 1}, {k, 1, nMax + 1}];
    Table[m[[[]][Range[i]]] = RowReduce[m[[[]][Range[i]]]];
        {x, m[[[]][Range[i], nMax + 1]]}, 
        {i, nMin, nMax, nStep}]]
SuperLogLinear[x_, z_] := SuperLog[{x, {}}, z, (#2-1)&amp;]
SuperLogCritical[{x_, terms_}, z_] := -1 + 
    Sum[terms[[[]][k]]*z^k/k!, {k, 1, Length[terms]}]
SuperLog[z_?NumericQ] := SuperLog[$SuperLogPrep, z]
SuperLog[{x_?NumericQ, terms_List}, z_?NumericQ] := 
    SuperLog[{x, terms}, z, SuperLogCritical]
SuperLog[{x_?NumericQ, terms_List}, z_?NumericQ, f_] := Which[
    z &lt; 0,      f[{x, terms}, x^z] - 1,
    z == 0,     -1,
    0 &lt; z &lt; 1,  f[{x, terms}, z],
    z == 1,     0,
    z &gt; 1,      Block[{i = -1}, f[{x, terms}, 
        NestWhile[Log[x,#]&amp;,z,(i++;#&gt;1)&amp;]]+i]]
InternalSLO2[x_, z_] := Block[{dec, mtx, y1, y2},
    mtx = Table[Table[If[k == 12, If[j == 0, 1, 0],
        k^j/k! - If[j == k, Log[x]^-k, 0]], {k, 1, 12}], {j, 0, 10}];
    mtx[[[]][Range[10]]] = RowReduce[mtx[[[]][Range[10]]]];
    y1 = SuperLog[{x, Most[mtx][[[]][All, 12]]}, z];
    y2 = SuperLog[{x, RowReduce[mtx][[[]][All, 12]]}, z];
    If[y1 != y2, dec = Floor[-Log[10, Abs[y2 - y1]]];
        Floor[y2*10^dec]/10^dec, y2]];
InternalSLO3 = Compile[{{x, _Real}, {z, _Real}}, InternalSLO2[x, z]];
SuperLog[x_?NumericQ, z_?NumericQ] /; (1.4 &lt;= x &lt;= 16) := InternalSLO3[x, z]

(* Usage:
**
** prep = SuperLogPrepare[x, n];    -- Prepare for tet_x(y)_n
** Tetrate[x, y]                    -- Prepare fast (n=10)
** Tetrate[prep, z]                 -- Use local prep
** Tetrate[z]                       -- Use global prep
*)
TetrateLinear[x_, y_] := Tetrate[{x, {}}, y, (#2+1)&amp;]
TetrateCritical[prep_, y_] :=
    FindRoot[SuperLogCritical[prep, z] == y, {z, 1}][[[]][1, 2]]
Tetrate[y_?NumericQ] := Tetrate[$SuperLogPrep, y]
Tetrate[{x_?NumericQ, terms_List}, y_?NumericQ] := 
    Tetrate[{x, terms}, y, TetrateCritical]
Tetrate[{x_?NumericQ, terms_List}, y_?NumericQ, f_] := If[y &gt; -1, 
    Nest[Power[x, #]&amp;, f[{x, terms}, y - Ceiling[y]], Ceiling[y]],
    Nest[Log[x, #]&amp;, f[{x, terms}, y - Ceiling[y]], -Ceiling[y]]]
InternalTEO2[x_, y_] := Block[{dec, mtx},
    mtx = Table[Table[If[k == 12, If[j == 0, 1, 0],
        k^j/k! - If[j == k, Log[x]^-k, 0]], {k, 1, 12}], {j, 0, 10}];
    mtx[[[]][Range[10]]] = RowReduce[mtx[[[]][Range[10]]]];
    z1 = FindRoot[SuperLog[{x, 
        Most[mtx][[[]][All, 12]]}, z] == y, {z, 1}][[[]][1, 2]];
    z2 = FindRoot[SuperLog[{x, 
        RowReduce[mtx][[[]][All, 12]]}, z] == y, {z, 1}][[[]][1, 2]];
    If[z1 != z2, dec = Floor[-Log[10, Abs[z2 - z1]]];
        Floor[z2*10^dec]/10^dec, z2]]
InternalTEO3 = Compile[{{x, _Real}, {y, _Real}}, InternalTEO2[x, y]];
Tetrate[x_?NumericQ, y_?NumericQ] /; (1.4 &lt;= x) := If[y &gt; -1, 
    Nest[Power[x, #]&amp;, InternalTEO3[x, y - Ceiling[y]], Ceiling[y]],
    Nest[Log[x, #]&amp;, InternalTEO3[x, y - Ceiling[y]], -Ceiling[y]]]

(* Fast Approximations:
**
** SuperRoot[y, z]  == srt_y(z)     (n=10)
** IterExp[x, y, a] == exp_x^y(a)   (n=10)
** IterLog[x, y, a] == log_x^y(a)   (n=10)
*)
SuperRoot[y_, z_] := FindRoot[Tetrate[x, y] == z, {x, 2}][[[]][1, 2]]
IterExp[x_, y_, a_] := Tetrate[x, y + SuperLog[x, a]]
IterLog[x_, y_, a_] := IterExp[x, -y, a]

(* Globals *)
$SuperLogPrep = SuperLogPrepare[[[E]], 10];
</pre>
</div>
<hr/>
<div class="darkness">
<h1>Maple Code</h1>
<h2>Code from Paper (v1.0)</h2>
<br/>
<pre>
## Usage:
##      prep := superlog_prepare(n, x):
##      superlog(prep, z);  -- gives n-th approx. of slog_x(z)
##      tetrate(prep, y);   -- gives n-th approx. of x^^y
##
## Copyright 2005 Andrew robbins
##

with(linalg):

superlog_prepare := proc(n::integer, x)	[x, linsolve(matrix([seq([seq(		k^j/k!-`if`(j=k,1,0)*log(x)^(-j), 		k=1..n)], j=0..(n - 1))]),		[seq(`if`(k=1,1,0),k=1..n)])];end proc;

superlog := proc(v, z) local slog_crit;    if not (z::numeric) then return 'procname'(args); end if;    slog_crit := proc(zc) -1 + sum(v[2][k]*zc^k/k!,         k=1..(vectdim(v[2]))); end proc;    piecewise(z = -infinity, -2,        z &lt; 0, slog_crit(v[1]^z) - 1, z = 0, -1,        0 &lt; z and z &lt; 1, slog_crit(z), z = 1, 0,        z &gt; 1, (proc() local a, i; a := evalf(z);            for i from 0 while (a &gt; 1) do a := evalf(log[v[1]](a)); end do;            slog_crit(a) + i; end proc)());end proc;

tetrate := proc(v, y) local tet_crit;    if not (y::numeric) then return 'procname'(args); end if;    tet_crit := proc(yc) local slog_crit;        slog_crit := proc(zc) -1 + sum(v[2][k]*zc^k/k!, 		k=1..(vectdim(v[2]))); end proc;        select((proc(a) evalb(Im(a) = 0 and 0 &lt;= Re(a) and Re(a) &lt;= 1) 		end proc), [solve(evalf(slog_crit(z)) = yc, z)])[1];    end proc;    piecewise(y = -2, -infinity,        -2 &lt; y and y &lt; -1, log[v[1]](tet_crit(y+1)),        y = -1, 0, -1 &lt; y and y &lt; 0, tet_crit(y),        y = 0, 1, y &gt; 0, (proc () local a, i;            a := tet_crit(y - ceil(y));            for i from 1 to ceil(y) do a := v[1]^a; end do;            evalf(a); end proc)());end proc;
</pre>
<br/>
<h2>New Code (v1.1)</h2>
<br/>
<pre>
## Usage:#### prep := superlog_prepare(x, n):  -- Prepares for slog_x(z)_n## superlog(x, z);                  -- Prepares fast (n=10)## superlog(prep, z);               -- Uses 'prep'## superlog(z);                     -- Uses 'Global_superlog_prep'##with(linalg):superlog_prepare := proc(x, n::integer)    [x, linsolve(matrix([seq([seq(        k^j/k!-`if`(j=k,1,0)*log(x)^(-j),         k=1..n)], j=0..(n - 1))]),        [seq(`if`(k=1,1,0),k=1..n)])];end proc;superlog_linear := proc(x, z)    superlog([x, []], z, (proc(v, z) z - 1; end proc));end proc;superlog_critical := proc(v, z)    -1 + sum(v[2][k]*z^k/k!, k=1..vectdim(v[2])); end proc;superlog := proc() local prep, x, z, f;    if (nops([args]) = 1) then        if not ([args][1]::numeric) then return 'procname'(args); end if;        superlog(Global_superlog_prep, args, superlog_critical);    elif (nops([args]) = 2) then        z := evalf([args][2]);        if not (z::numeric) then return 'procname'(args); end if;        if not ([args][1]::list) then            x := evalf([args][1]);            prep := [x, linsolve(matrix([seq([seq(                evalf(k^j/k!-`if`(j=k,1,0)*log(x)^(-j)),                 k=1..10)], j=0..9)]),                [seq(`if`(k=1,1,0),k=1..10)])];            superlog(prep, z, superlog_critical);        elif ([args][1]::list) then            superlog(args, superlog_critical);        else return 'procname'(args);        end if;    elif (nops([args]) = 3) then        z := [args][2];        f := [args][3];        if not (evalf(z)::numeric) then return 'procname'(args); end if;        if (([args][1])::list) then            prep := [args][1];            x := [args][1][1];            if not (evalf(x)::numeric) then return 'procname'(args); end if;        else return 'procname'(args); end if;        piecewise(            z &lt; 0,              f(prep, x^z) - 1,             z = 0,              -1,            0 &lt; z and z &lt; 1,    f(prep, z),             z = 1,              0,            z &gt; 1,              (proc()                    local a, i; a := evalf(z);                    for i from 0 while (a &gt; 1) do                         a := evalf(log[x](a));                    end do; f(prep, a) + i;                 end proc)())    else return 'procname'(args);    end if;end proc;## Usage:#### prep := superlog_prepare(x, n):  -- Prepares for slog_x(z)_n## tetrate(x, y);                   -- Prepares fast (n=10)## tetrate(prep, y);                -- Uses 'prep'## tetrate(y);                      -- Uses 'Global_superlog_prep'##tetrate_critical := proc(v, y) local slog_critical;    select((proc(a) evalb(Im(a) = 0 and 0 &lt;= Re(a) and Re(a) &lt;= 1)         end proc), [solve(evalf(superlog_critical(v, z)) = y, z)])[1];end proc;tetrate := proc() local prep, x, y, f;    if (nops([args]) = 1) then        if not ([args][1]::numeric) then return 'procname'(args); end if;        tetrate(Global_superlog_prep, args, tetrate_critical);    elif (nops([args]) = 2) then        y := evalf([args][2]);        if not (y::numeric) then return 'procname'(args); end if;        if not ([args][1]::list) then            x := evalf([args][1]);            prep := [x, linsolve(matrix([seq([seq(                evalf(k^j/k!-`if`(j=k,1,0)*log(x)^(-j)),                 k=1..10)], j=0..9)]),                [seq(`if`(k=1,1,0),k=1..10)])];            tetrate(prep, y, tetrate_critical);        elif ([args][1]::list) then            tetrate(args, tetrate_critical);        else return 'procname'(args);        end if;    elif (nops([args]) = 3) then        y := [args][2];        f := [args][3];        if not (evalf(y)::numeric) then return 'procname'(args); end if;        if (([args][1])::list) then            prep := [args][1];            x := [args][1][1];            if not (evalf(x)::numeric) then return 'procname'(args); end if;        else return 'procname'(args); end if;        piecewise(            y = -2,             -infinity,            -2 &lt; y and y &lt; -1,  log[x](tetrate_critical(prep, y + 1)),            y = -1,             0,             -1 &lt; y and y &lt; 0,   tetrate_critical(prep, y),            y = 0,              1,             y = 1,              x,            y &gt; 0,              (proc ()                     local a, i; a := tetrate_critical(prep, y - ceil(y));                    for i from 1 to ceil(y) do a := x^a; end do;                    evalf(a);                end proc)());    else return 'procname'(args);    end if;end proc;Global_superlog_prep := superlog_prepare(exp(1), 10):
</pre>
</div>
<hr/>
HTMLEND()