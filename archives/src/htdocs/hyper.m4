m4_include([htdocs/nav.m4])
ppNavHyper()
ppSep(std)
<h1>Hyper-operator Terminology</h1>
<p>
  Hyper-operators are an increasingly general class of ppGloss(binary operation)s that include ppGloss(addition), ppGloss(multiplication), and ppGloss(exponentiation). There are many different kinds of hyper-operators that have successfully spanned these three operations, but unless otherwise specified, usually the first kind are implied.
</p>
<p>
  The different kinds of hyper-operators discussed on this site are:
  <ul>
    <li>ppIt(the) ppEm(hyper-operators) -- also known as:
      <ul>
        <li>ppEm(hyperops) -- since it is a single short word,</li>
        <li>ppEm(hyper-operations) -- since there is little distinction between an ppIt(operator) (symbol) and ppIt(operation) (function),</li>
        <li>higher hyper-operators -- since they generally produce values greater than other hyper-operators,</li>
        <li>right hyper-operators -- since they are defined by right-associative iteration (ppV(x)(ppV(x)(ppV(x)ppV(x)))),</li>
        <li>the Ackermann function -- since this was defined by Wilhelm Ackermann in 1928,</li>
        <li>the Grzegorczyk hierarchy -- since this was defined by Andrzej Grzegorczyk in 1953,</li>
      </ul>
    The term ppIt(Ackermann function) is more common than ppIt(Grzegorczyk hierarchy) in English, and 
    is by far the oldest term for these hyper-operators. These hyper-operators are what you get when 
    you evaluate a repeated right-associative ppGloss(binary operation) starting with addition.</il>
    ppLsSep()
    <li>ppEm(lower hyper-operators) -- also known as:
      <ul>
        <li>left hyper-operators -- since they are defined in terms of left-associative iteration (((ppV(x)ppV(x))ppV(x))ppV(x)),</li>
      </ul>
    These hyper-operators generally produce values less than other hyper-operators, hence the name.
    These are what you get when you evaluate a repeated left-associative ppGloss(binary operation) starting with addition.
    Although ppGloss(lower4) is expressible in ppGloss(hyper3), ppGloss(lower5) is not expressible 
    in standard ppGloss(closed form).</il>
    ppLsSep()
    <li>ppEm(mixed hyper-operators) -- also known as:
      <ul>
        <li>Bromer hyper-operators -- since Nick Bromer wrote [] about them in 1987,</li>
        <li>M&uuml;ller hyper-operators -- since Markus M&uuml;ller wrote [] about them in 1993,</li>
      </ul>
    Although Bromer's notation differ from Knuth's notation, his notation seems to have influenced both 
    M&uuml;ller and Snowden [], since they use his notation verbatim. None of these authors really develop 
    the theory of mixed hyper-operators, so it doesn't seem fitting to name them Bromer hyper-operators, for example.
    The nice thing about these is that they include both higher and lower hyper-operators as special cases, since
    instead of being a sequence as the first two are, mixed hyper-operators ppIt(form a binary tree).</il>
    ppLsSep()
    <li>ppEm(balanced hyper-operators) -- also known as:
      <ul>
        <li>balanced hyper-operators -- since they are balanced, and perfer neither left nor right associative iteration,</li>
        <li>centered hyper-operators -- since they generally produce values in the center of other hyper-operator values,</li>
      </ul>
    Frappier wrote an excellent article [] on the iteration of ppV(x)ppSupV(x) which is a difficult function to iterate.
    Although he only talked about the iteration of ppV(x)ppSupV(x), 
    he essentially paved the way for hyper-operators based on his approach, hence the name.</il>
    ppLsSep()
    <li>ppEm(commutative hyper-operators) -- not well-known. 
    I suggest if you want to know more about them, read his paper about them <a href="">here</a>. As far as I understand, he defines addition and multiplication ppIt(on binary trees), and iterates these operations instead. This is the most unique method I have seen to define hyper-operators. If only there was a conversion between binary trees and rationals...</il>
    ppLsSep()
    <li>ppEm(exponential hyper-operators) -- not known before, because I invented them.
    I know it is bad style to name things after yourself in math, but this is my website, so I can do what I want! :)
    These hyper-operators are defined in such a way as to include: addition, multiplication, and exponentiation, but not tetration, pentation, and so on.</il>
  </ul>
</p>
ppSep(std)
<h1>Hyper-operator Notation</h1>
<p>
</p>

ppSep(std)
<a name="higher"></a>
<h1>Higher Hyper-operators</h1>
<p>
</p>

ppSep(std)
<a name="mixed"></a>
<h1>Mixed Hyper-operators</h1>
<p>
</p>

ppSep(std)
<a name="lower"></a>
<h1>Lower Hyper-operators</h1>
<p>
</p>

ppSep(std)
<a name="frappier"></a>
<h1>Frappier Hyper-operators</h1>
<p>
  Frappier hyper-operators are defined by the relation:
  ppTexCenter([hy-frappier-def], [
  H\!F_n(x, y) = (x \mapsto H\!F_{n-1}(x, x))^{\log_2(y)}(x)
  ])
</p>
<p>
  This definition has the following consequences:
  ppTexCenter([hy-frappier-enum], [
    H\!F_1(x, y) & = x + y \\\notag
    H\!F_2(x, y) & = x y \\\notag
    H\!F_3(x, y) & = x^y \\\notag
    H\!F_4(x, y) & = (x \mapsto x^x)^{\log_2(y)}(x)
  ])
</p>
<p>
  It can be shown that the zeroth Frappier hyper-operator cannot exist, because
  ppTexInline([hy-frappier-bad], [
  x + 1 = H\!F_1(x, 1) = (x \mapsto H\!F_0(x, x))^{0}(x) = x
  ]) by definition. Since this is a contradiction, 
  we cannot have a zeroth Frappier hyper-operator.
</p>

ppSep(std)
<a name="robbins"></a>
<h1>Robbins Hyper-operators</h1>
<p>
  Robbins hyper-operators are defined by the relation:
  ppTexCenter([hy-robbins-def], [
  H\!R_n(x, y) = \exp_b H\!R_{n-1}\left( \log_b(x), \exp_b^{n-3}(y) \right)
  ])
</p>
<p>
  This definition has the following consequences (for ppV(b) = ppE()):
  ppTexCenter([hy-robbins-enum], [[
    H\!R_{(-1)}(x, y) & = \log^2\left(\exp^7(y) + e^{e^x}\right) \\\notag
    H\!R_0(x, y) & = \log\left(e^{e^{e^y}} + e^x\right) \\\notag
    H\!R_1(x, y) & = x + y \\\notag
    H\!R_2(x, y) & = x y \\\notag
    H\!R_3(x, y) & = x^y \\\notag
    H\!R_4(x, y) & = e^{\log(x)^{e^y}} \\\notag
    H\!R_5(x, y) & = e^{e^{\log(\log(x))^{\exp^3(y)}}}
  ]])
</p>
<p>
  One of the first things to notice is that all my operators are expressible in ppGloss(closed form), unlike the the other hyper-operators. This means no hassle in their calculation, and no worries about how to write them. It also means no "new" operations. The second thing to notice is that the base ppV(b) does not "get involved" in addition, multiplication, and exponentiation, so ppBi(any base) will ppGloss(interpolate) these three operators. Another thing of note about them is that their extension to non-integer ppV(n) ppBi(is equivalent) to the corresponding extension of tetration! This means if we can define tetration in a logical, consistent manner, then all these operators automatically get interpolated. Once we can calculate continuously iterated exponentials, then we can express all my operators as:
  ppTexCenter([hy-robbins-all], [[
    H\!R_n(x, y) = \exp_b^{n-2}\left(\exp_b^{2-n}(x) \exp_b^{\binom{n-2}{2}}(y)\right)
  ]])
  where the continuously ppGloss(iterated exponential) would allow ppV(n) to be real or complex.
</p>


