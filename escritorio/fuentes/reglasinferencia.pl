% Definiendo las reglas de inferencia
:- dynamic(reglaInferencia/6).

reglaInferencia(simetriaEquivalencia, Premisas, [A ≡ B], [N], B ≡ A, 0) :- 
		member(A ≡ B, Premisas, N).
reglaInferencia(simetriaEquivalencia, Premisas, [B ≡ A], [N], A ≡ B, 0) :- 
		member(B ≡ A, Premisas, N).

reglaInferencia(asociatividadEquivalencia, Premisas, [A ≡ (B ≡ C)], [N], (A ≡ B) ≡ C, 0) :- 
		member(A ≡ (B ≡ C), Premisas, N).
reglaInferencia(asociatividadEquivalencia, Premisas, [(A ≡ B) ≡ C], [N], A ≡ (B ≡ C), 0) :- 
		member((A ≡ B) ≡ C, Premisas, N).

reglaInferencia(dobleNegacion, Premisas, [¬ ¬ A], [N], A, 0) :- 
		member(¬ ¬ A, Premisas, N).
reglaInferencia(dobleNegacion, Premisas, [A], [N], ¬ ¬ A, 0) :- 
		member(A, Premisas, N).

reglaInferencia(idempotenciaDisyuncion, Premisas, [A ∨ A], [N], A, 0) :- 
		member(A ∨ A, Premisas, N).
reglaInferencia(idempotenciaDisyuncion, Premisas, [A], [N], A ∨ A, 0) :- 
		member(A, Premisas, N).

reglaInferencia(simetriaDisyuncion, Premisas, [A ∨ B], [N], B ∨ A, 0) :- 
		member(A ∨ B, Premisas, N).
reglaInferencia(simetriaDisyuncion, Premisas, [B ∨ A], [N], A ∨ B, 0) :- 
		member(B ∨ A, Premisas, N).

reglaInferencia(asociatividadDisyuncion, Premisas, [A ∨ (B ∨ C)], [N], (A ∨ B) ∨ C, 0) :- 
		member(A ∨ (B ∨ C), Premisas, N).
reglaInferencia(asociatividadDisyuncion, Premisas, [(A ∨ B) ∨ C], [N], A ∨ (B ∨ C), 0) :- 
		member((A ∨ B) ∨ C, Premisas, N).

reglaInferencia(conjuncion, Premisas, [A, B], [N1, N2], A ∧ B, 0) :- 
		member(A, Premisas, N1), 
		member(B, Premisas, N2).

reglaInferencia(reglaDorada, Premisas, [A ∨ B ≡ A ≡ B], [N], A ∧ B, 0) :- 
		member(A ∨ B ≡ A ≡ B, Premisas, N).
reglaInferencia(reglaDorada, Premisas, [A ∧ B], [N], A ∨ B ≡ A ≡ B, 0) :- 
		member(A ∧ B, Premisas, N).
reglaInferencia(reglaDorada, Premisas, [A ∧ B ≡ A ≡ B], [N], A ∨ B, 0) :- 
		member(A ∧ B ≡ A ≡ B, Premisas, N).
reglaInferencia(reglaDorada, Premisas, [A ∨ B], [N], A ∧ B ≡ A ≡ B, 0) :- 
		member(A ∨ B, Premisas, N).
reglaInferencia(reglaDorada, Premisas, [A ∨ B ≡ A ∧ B], [N], A ≡ B, 0) :- 
		member(A ∨ B ≡ A ∧ B, Premisas, N).
reglaInferencia(reglaDorada, Premisas, [A ≡ B], [N], A ∧ B ≡ A ∨ B, 0) :- 
		member(A ≡ B, Premisas, N).

reglaInferencia(idempotenciaConjuncion, Premisas, [A ∧ A], [N], A, 0) :- 
		member(A ∧ A, Premisas, N).
reglaInferencia(idempotenciaConjuncion, Premisas, [A], [N], A ∧ A, 0) :- 
		member(A, Premisas, N).

reglaInferencia(simetriaConjuncion, Premisas, [A ∧ B], [N], B ∧ A, 0) :- 
		member(A ∧ B, Premisas, N).
reglaInferencia(simetriaConjuncion, Premisas, [B ∧ A], [N], A ∧ B, 0) :- 
		member(B ∧ A, Premisas, N).

reglaInferencia(asociatividadConjuncion, Premisas, [A ∧ (B ∧ C)], [N], (A ∧ B) ∧ C, 0) :- 
		member(A ∧ (B ∧ C), Premisas, N).
reglaInferencia(asociatividadConjuncion, Premisas, [(A ∧ B) ∧ C], [N], A ∧ (B ∧ C), 0) :- 
		member((A ∧ B) ∧ C, Premisas, N).

reglaInferencia(definicionImplicacion, Premisas, [A → B], [N], A ∨ B ≡ B, 0) :- 
		member(A → B, Premisas, N).
reglaInferencia(definicionImplicacion, Premisas, [A ∨ B ≡ B], [N], A → B, 0) :- 
		member(A ∨ B ≡ B, Premisas, N).

reglaInferencia(definicionAlternativaImplicacion, Premisas, [A → B], [N], A ∧ B ≡ A, 0) :- 
		member(A → B, Premisas, N).
reglaInferencia(definicionAlternativaImplicacion, Premisas, [A ∧ B ≡ A], [N], A → B, 0) :- 
		member(A ∧ B ≡ A, Premisas, N).

reglaInferencia(definicionAlternativaImplicacion, Premisas, [A → B], [N], ¬ A ∨ B, 0) :- 
		member(A → B, Premisas, N).
reglaInferencia(definicionAlternativaImplicacion, Premisas, [¬ A ∨ B], [N], A → B, 0) :- 
		member(¬ A ∨ B, Premisas, N).

reglaInferencia(transitividadImplicacion, Premisas, [A → B, B → C], [N1, N2], A → C, 0) :- 
		member(A → B, Premisas, N1),
		member(B → C, Premisas, N2).
reglaInferencia(corte, Premisas, [¬ A ∨ B, ¬ B ∨ C], [N1, N2], ¬ A ∨ C, 0) :- 
		member(¬ A ∨ B, Premisas, N1),
		member(¬ B ∨ C, Premisas, N2).

reglaInferencia(modusPonens, Premisas, [A → B, B], [N1, N2], B, 0) :-  
		member(A → B, Premisas, N1), 
		member(A, Premisas, N2).
reglaInferencia(tollendoTollens, Premisas, [A → B, ¬ B], [N1, N2], ¬ A, 0) :- 
		member(A → B, Premisas, N1), 
		member(¬ B, Premisas, N2).

reglaInferencia(debilitamiento, Premisas, [A], [N], A ∨ B, 0) :- 
		member(A, Premisas, N), 
		member(B, [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]).
reglaInferencia(debilitamiento, Premisas, [A ∧ B], [N], X, 0) :- 
		member(A ∧ B, Premisas, N),
		member(X, [A, B]).
reglaInferencia(debilitamiento, Premisas, [A ∧ B], [N], A ∨ B, 0) :- 
		member(A ∧ B, Premisas, N).
reglaInferencia(debilitamiento, Premisas, [A ∨ (B ∧ C)], [N], A ∨ B, 0) :- 
		member(A ∨ (B ∧ C), Premisas, N).
reglaInferencia(debilitamiento, Premisas, [A ∧ B], [N], A ∧ (B ∨ C), 0) :- 
		member(A ∧ B, Premisas, N), 
		member(C, [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]).

reglaInferencia(fortalecimiento, Premisas, [A ∨ B], [N], X, 0) :- 
		member(A ∨ B, Premisas, N),
		member(X, [A, B]).
%reglaInferencia(fortalecimiento, Premisas, [A], [N], A ∧ B, 0) :- 
%		member(A, Premisas, N).
%reglaInferencia(fortalecimiento, Premisas, [A ∨ B], [N], A ∧ B, 0) :- 
%		member(A ∨ B, Premisas, N).
%reglaInferencia(fortalecimiento, Premisas, [A ∨ B], [N], A ∨ (B ∧ C), 0) :- 
%		member(A ∨ B, Premisas, N).
%reglaInferencia(fortalecimiento, Premisas, [A ∧ (B ∨ C)], [N], A ∧ B, 0) :- 
%		member(A ∧ (B ∨ C), Premisas, N).

reglaInferencia(distribucionConjuncionSobreDisyuncion, Premisas, [(A ∧ C) ∨ (A ∧ D)], [N], A ∧ (C ∨ D), 0) :- 
		member((A ∧ C) ∨ (A ∧ D), Premisas, N).
reglaInferencia(distribucionConjuncionSobreDisyuncion, Premisas, [A ∧ (C ∨ D)], [N], (A ∧ C) ∨ (A ∧ D), 0) :- 
		member(A ∧ (C ∨ D), Premisas, N).

reglaInferencia(distribucionDisyuncionSobreConjuncion, Premisas, [(A ∨ C) ∧ (A ∨ D)], [N], A ∨ (C ∧ D), 0) :- 
		member((A ∨ C) ∧ (A ∨ D), Premisas, N).
reglaInferencia(distribucionDisyuncionSobreConjuncion, Premisas, [A ∨ (C ∧ D)], [N], (A ∨ C) ∧ (A ∨ D), 0) :- 
		member(A ∨ (C ∧ D), Premisas, N).

reglaInferencia(dobleImplicacion, Premisas, [A ≡ B], [N], (A → B) ∧ (B → A), 0) :- 
		member(A ≡ B, Premisas, N).
reglaInferencia(dobleImplicacion, Premisas, [(A → B) ∧ (B → A)], [N], A ≡ B, 0) :- 
		member((A → B) ∧ (B → A), Premisas, N).

reglaInferencia(deMorganConjuntivo, Premisas, [¬ (A ∧ B)], [N], ¬ A ∨ ¬ B, 0) :- 
		member(¬ (A ∧ B), Premisas, N).
reglaInferencia(deMorganConjuntivo, Premisas, [¬ A ∨ ¬ B], [N], ¬ (A ∧ B), 0) :- 
		member(¬ A ∨ ¬ B, Premisas, N).

reglaInferencia(deMorganDisyuntivo, Premisas, [¬ (A ∨ B)], [N], ¬ A ∧ ¬ B, 0) :- 
		member(¬ (A ∨ B), Premisas, N).
reglaInferencia(deMorganDisyuntivo, Premisas, [¬ A ∧ ¬ B], [N], ¬ (A ∨ B), 0) :- 
		member(¬ A ∧ ¬ B, Premisas, N).

reglaInferencia(identidad, Premisas, [A], [N], A, 0) :- 
		member(A, Premisas, N).
reglaInferencia(premisa, Premisas, [], [0], A, 0) :- !.

% Extras.
form_O(Oper, For, [For]) :- 
		member(For,[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]), !.
form_O(Oper, For, [For]) :- 
		For =.. [Oper1, A, B],
		member(Oper, [≡, ∧, ∨, →]),
		not(Oper = Oper1).
form_O(Oper, For, [For]) :- 
		For =.. [¬, A].
form_O(Oper, For, Res) :- 
		For =.. [Oper, A, B],
		A = B, !,
		form_O(Oper, A, Res).
form_O(Oper, For, [A|Res]) :- 
		For =.. [Oper, A, B], 
		member(A,[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]), !,
		form_O(Oper, B, Res).
form_O(Oper, For, [B|Res]) :- 
		For =.. [Oper, A, B], 
		member(B,[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]),!,
		form_O(Oper,A,Res).
form_O(Oper, For, Res) :- 
		For =.. [Oper, A, B], 
		form_O(Oper, A, Res1),
		form_O(Oper, B, Res2),
		append(Res1, Res2, Res).

colocar_O(Oper, [], T, T) :- !.
colocar_O(Oper, [X|Res], H, T) :- 
		E =.. [Oper, H, X],
		colocar_O(Oper, Res, E, T), !.
colocar_O(Oper, [X|Res], H, T) :- 
		E =.. [Oper, X, H],
		colocar_O(Oper, Res, E, T), !.

colocar_OO(Oper, [X|Res], Fr) :- 
		colocar_O(Oper, Res, X, Fr).

coloca_Asoc(Oper, For, P) :- 
		form_O(Oper, For, L),
		sort(L, L1),
		permutacion(L1, Lp),
		colocar_OO(Oper, Lp, P).

opuesto(A, B) :- 
		maxL(A, 40), 
		equiva(Nombre2, M2, A, A1),
		maxL(A1, 40),
		B =.. [¬, A1].
opuesto(A, C) :- 
		maxL(A, 40), 
		A =.. [¬, B], 
		equiva(Nombre2, M2, B, C),
		maxL(C, 30).

equiva(Nombre2, N, Expr, Expr2) :- 
		maxL(Expr, 50),
		Expr =.. [Oper , A, B],
		equiva(Nombre2, M1, A, A1),
		maxL(A1, 50),
		equiva(Nombre1, N2, B, B1),
		maxL(B1, 50),
		Expr2 =.. [Oper, A1, B1].
equiva(asoci_O, N, E, P) :- 
		maxL(E, 40),
		E =.. [∨, _, _],
		coloca_Asoc(∨, E, P),
		maxL(P, 40).
equiva(asoci_Y, N, E, P) :- 
		maxL(E, 40),
		E =.. [∧, _, _],
		coloca_Asoc(∧, E, P),
		maxL(P, 40).
equiva(asoci_Eq, N, E, P) :- 
		maxL(E, 40),
		E =.. [≡, _ ,_],
		coloca_Asoc(≡, E, P),
		maxL(P, 40).
equiva(ident, N, A, A) :- 
		member(A,[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]), !.
equiva(Nombre1, N, Expr, E) :- 
		maxL(Expr, 40),
		Expr =.. [Oper, A],
		equiva(Nombre2, M1, A, A1),
		E =.. [Oper, A1],
		maxL(A1, 40).
equiva(elimiNegacion, N, A, D) :- 
		maxL(A, 40),
		A =.. [¬, B], 
		B =.. [¬, C],
		coloca_Asoc(Oper, C, D).
equiva(adicioNegacion, N, A, C) :- 
		maxL(A, 40),
		coloca_Asoc(Oper, A, D),
		B =.. [¬, D], 
		C =.. [¬, B].
equiva(def_Equiva, N, Expr, Expr2) :- 
		maxL(Expr, 40), 
		Expr =.. [≡, A, B], 
		equiva(Nombre2, M1, A, A1),
		maxL(A1, 40),
		equiva(Nombre3, M3, B, B1), 
		maxL(B1, 40),
		Expr2 =.. [∧, A1 → B1, B1 → A1].
equiva(adic_Impl, N, E, Expr) :- 
		E =.. [∨, A, B],
		member(X, [A, B]),
		opuesto(X, A1),
		maxL(A1, 40),
		remove(X, [A, B], [Y]),
		Expr =.. [→, A1, Y].
equiva(deMorgan, N, Expr, Expr2) :- 
		Expr =.. [¬, A ∨ B],
		equiva(No1, M1, A, A1),
		equiva(No2, M2, B, B1),
		Expr2 =.. [∧, ¬ A1,¬ B1].
equiva(deMorgan, N, Expr, Expr2) :- 
		Expr =.. [¬, A ∧ B],
		equiva(No1, M1, A, A1),
		equiva(No2, M2, B, B1),
		Expr2 =.. [∨, ¬ A1, ¬ B1].
equiva(deMorganY, N, Expr, Expr2) :- 
		Expr =.. [∧, A, B],
		opuesto(A, A1),
		opuesto(B, B1),
		Expr2 =.. [¬, A1 ∨ B1].
equiva(deMorganO, N, Expr, Expr2) :- 
		maxL(Expr, 40),
		Expr =.. [∨, A, B],
		opuesto(A, A1),
		opuesto(B, B1),
		Expr2 =.. [¬, A1 ∧ B1].
equiva(Nombre, Premisas, N, P, C) :- 
		member(P, Premisas), 
		equiva(Nombre, N, P, C).

regla(separacion, L, Expr, [N], X) :- 
		member(Expr, L, N),
		Expr =.. [ ∧ , A, B],
		member(X, [A, B]).
regla(corte, L, [E1, E2], [N2, N1], E) :- 
		maxL(E1, 40),
		maxL(E2, 40),
		member(E1, L, N2),
		member(E2,L,N1), E1 =.. [ ∨ ,A,B],E2 =.. [ ∨ ,C,D],
		member(X,[A,B]),member(Y,[C,D]),(opuesto(X,Y);opuesto(Y,X)),
		remove(X,[A,B],[A1]),
		remove(Y,[C,D],[B1]), (E =.. [ ∨ ,A1,B1];E =.. [ ∨ ,B1,A1]).
 
 
 
regla(corte,L,[E,C],[N2,N1],B1):-member(E,L,N2),member(C,L,N1), E =.. [ ∨ ,A,B],member(X,[A,B]),(opuesto(X,C);opuesto(C,X)),
                                 remove(X,[A,B],[B1]),!.
 
 
 
regla(modusPonens,L,[ A  →  B,C],[N1,N2],B1):-member(A  →  B,L,N1),member(C,L,N2),
                                          equiva(Nombre1,M1,A,A1), maxL(A1,40),equiva(Nombre2,M2,B,B1),maxL(B1,40),
                                          equiva(Nombre3,M3,C,A1).
 
 
 
regla(adición, L, [A],[N], A ∨ B):-member(A,L,N).
regla(conjunción,L, [A,B],[N1,N2], A ∧ B):-member(A,L,N1),member(B,L,N2).
 
regla(transitividad, L,[A → B,B → C],[N1,N2], A → C):-member(A → B,L,N1),member(B → C,L,N2).
 
regla(tolendoTol,L, [E,C],[N1,N2], D):-  member(E,L,N1),E =.. [ → ,A,B],member(C,L,N2),maxL(A2,40),
 
                                          (opuesto(B, C);opuesto(C,B)),opuesto( A,D).

 

regla(distrDeYsobO, L, [A ∧ (C ∨ D)],[N],A1 ∨ B1 ):-member(A ∧ (C ∨ D),L,N),
                                                 equiva(Nombre1,M1,(A ∧ C),A1),equiva(Nombre2,M2,(A ∧ D),B1).
 
  regla(distrDeYsobO, L, [(A ∧ C) ∨ (A ∧ D)],[N],A ∧ (C ∨ D) ):-member((A ∧ C) ∨ (A ∧ D),L,N).
  regla(distrDeOsobY, L,[A ∨ (C ∧ D)],[N],(A ∨ C) ∧ (A ∨ D) ):-member(A ∨ (C ∧ D),L,N).
  regla(distrDeOsobY, L,[(A ∨ C) ∧ (A ∨ D)],[N],A ∨ (C ∧ D) ):-member((A ∨ C) ∧ (A ∨ D),L,N).
  regla(equivDoble, L,[A ≡ B],[N],(A → B) ∧ (B → A) ):-member(A ≡ B,L,N).
  regla(dobelEquiva, L,[(A → B) ∧ (B → A)],[N],A ≡ B):-member((A → B) ∧ (B → A),L,N).
  regla(premisa,L,[],[0], A):-!.
