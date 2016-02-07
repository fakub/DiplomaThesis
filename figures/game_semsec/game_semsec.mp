verbatimtex
%&latex
\documentclass{minimal}
\usepackage{amsmath, amsthm, amssymb}
\begin{document}
etex
prologues:=3;
outputtemplate:="%j-%c.eps";

beginfig(1)
	
	label.top(btex Challenger etex, (2cm, 0cm));
	label.top(btex Adversary etex, (10cm, 0cm));
	
	pair chall[];
	pair adv[];
	pair arrs[];
	
	chall[0]:=(0cm, 0cm);
	chall[1]:=(4cm, 0cm);
	chall[2]:=(4cm, -7.5cm);
	chall[3]:=(0cm, -7.5cm);
	chall[4]:=(0cm, -1cm);
	chall[5]:=(4cm, -1cm);
	
	adv[0]:=(8cm, 0cm);
	adv[1]:=(12cm, 0cm);
	adv[2]:=(12cm, -7.5cm);
	adv[3]:=(8cm, -7.5cm);
	
	arrs[0]:=(8cm, -2cm);
	arrs[1]:=(4cm, -2cm);
	arrs[2]:=(4cm, -3cm);
	arrs[3]:=(8cm, -3cm);
	arrs[4]:=(8cm, -5cm);
	arrs[5]:=(4cm, -5cm);
	arrs[6]:=(4cm, -6cm);
	arrs[7]:=(8cm, -6cm);
	arrs[8]:=(12cm, -7cm);
	arrs[9]:=(14cm, -7cm);
	
	fill chall[0]--chall[1]--chall[2]--chall[3]--cycle withcolor .9 white;
	draw chall[0]--chall[1]--chall[2]--chall[3]--cycle;
	fill adv[0]--adv[1]--adv[2]--adv[3]--cycle withcolor .9 white;
	draw adv[0]--adv[1]--adv[2]--adv[3]--cycle;
	
	label(btex $k\xleftarrow{R} K$, $b\xleftarrow{R} \{0,1\}$ etex, (2cm, -.5cm));
	draw chall[4]--chall[5] dashed evenly;
	
	%%%   G A M E   %%%
	
	label(btex Choose $m_0^{(1)}$, $m_1^{(1)}$ etex, (10cm, -1.5cm));
	
	label.top(btex $m_0^{(1)}$, $m_1^{(1)}$ etex, (6cm, -2cm));
	drawarrow arrs[0]--arrs[1];
	
	label(btex $c^{(1)} = E(k,m_b^{(1)})$ etex, (2cm,-2.5cm));
	
	label.top(btex $c^{(1)}$ etex, (6cm,-3cm));
	drawarrow arrs[2]--arrs[3];
	
	label(btex $\vdots$ etex, (2cm,-3.5cm));
	label(btex $\vdots$ etex, (6cm,-3.5cm));
	label(btex $\vdots$ etex, (10cm,-3.5cm));
	
	label(btex Choose $m_0^{(n)}$, $m_1^{(n)}$ etex, (10cm, -4.5cm));
	
	label.top(btex $m_0^{(n)}$, $m_1^{(n)}$ etex, (6cm, -5cm));
	drawarrow arrs[4]--arrs[5];
	
	label(btex $c^{(n)} = E(k,m_b^{(n)})$ etex, (2cm,-5.5cm));
	
	label.top(btex $c^{(n)}$ etex, (6cm,-6cm));
	drawarrow arrs[6]--arrs[7];
	
	label(btex Guess $b$ as $b'$ etex, (10cm, -6.5cm));
	
	label.top(btex $b'$ etex, (13cm,-7cm));
	drawarrow arrs[8]--arrs[9];
	
endfig;

end;
