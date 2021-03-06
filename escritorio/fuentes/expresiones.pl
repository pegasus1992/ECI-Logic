% Formulas para retos.
expresion(1, identidadEquivalencia, `(A≡true)≡A`).
expresion(2, asociatividadEquivalencia, `(A≡(B≡C))≡((A≡B)≡C)`).
expresion(3, simetriaEquivalencia, `(A≡B)≡(B≡A)`).
expresion(4, reflexividadEquivalencia, `A≡A`).
expresion(5, axiomaNegacion, `¬A≡(A≡false)`).
expresion(6, intercambioNegacion, `¬A≡B≡A≡¬B`).
expresion(7, dobleNegacion, `¬¬A≡A`).
expresion(8, definicionFalse, `false≡¬true`).
expresion(9, negacionFalse, `¬false≡true`).
expresion(10, negacionEquivalencia, `¬(A≡B)≡(¬A≡B)`).
expresion(11, simetriaDisyuncion, `A∨B≡B∨A`).
expresion(12, asociatividadDisyuncion, `(A∨B)∨C≡A∨(B∨C)`).
expresion(13, identidadDisyuncion, `A∨false≡A`).
expresion(14, idempotenciaDisyuncion, `A∨A≡A`).
expresion(15, distribucionDisyuncionSobreEquivalencia, `A∨(B≡C)≡A∨B≡A∨C`).
expresion(16, anuladorDisyuncion, `A∨true≡true`).
expresion(17, terceroExcluido, `A∨¬A`).
expresion(18, distribucionDisyuncionSobreDisyuncion, `A∨(B∨C)≡(A∨B)∨(A∨C)`).
expresion(19, alternacionDisyuncion, `A∨B≡A∨¬B≡A`).
expresion(20, axiomaReglaDorada, `A∧B≡(A∨B≡A≡B)`).
expresion(21, simetriaConjuncion, `A∧B≡B∧A`).
expresion(22, asociatividadConjuncion, `A∧(B∧C)≡(A∧B)∧C`).
expresion(23, idempotenciaConjuncion, `A∧A≡A`).
expresion(24, identidadConjuncion, `A∧true≡A`).
expresion(25, anuladorConjuncion, `A∧false≡false`).
expresion(26, contradiccion, `A∧¬A≡false`).
expresion(27, distribucionDisyuncionSobreConjuncion, `A∨(B∧C)≡(A∨B)∧(A∨C)`).
expresion(28, distribucionConjuncionSobreDisyuncion, `A∧(B∨C)≡(A∧B)∨(A∧C)`).
expresion(29, leyDeMorgan, `¬(A∧B)≡¬A∨¬B`).
expresion(30, leyDeMorgan, `¬(A∨B)≡¬A∧¬B`).
expresion(31, absorcion, `A∧(A∨B)≡A`).
expresion(32, absorcion, `A∨(A∧B)≡A`).
expresion(33, absorcion, `A∧(¬A∨B)≡A∧B`).
expresion(34, absorcion, `A∨(¬A∧B)≡A∨B`).
expresion(35, alternacionConjuncion, `A∧B≡A∧¬B≡¬A`).
expresion(36, pseudodistribucionConjuncionSobreEquivalencia, `A∧(B≡C)≡A∧B≡A∧C≡A`).
expresion(37, compresion, `A∧(A≡B)≡A∧B`).
expresion(38, reemplazo, `A∧(A≡B)≡B∧(A≡B)`).
expresion(39, sustitucion, `(A∧B)∧(A≡C)≡(A∧B)∧(B≡C)`).
expresion(40, definicionEquivalencia, `A≡B≡(A∧B)∨(¬A∧¬B)`).
expresion(41, axiomaImplicacion, `A→B≡A∨B≡B`).
expresion(42, definicionAlternativaImplicacion, `A→B≡A∧B≡A`).
expresion(43, definicionAlternativaImplicacion, `A→B≡¬A∨B`).
expresion(44, reflexividadImplicacion, `A→A`).
expresion(45, anuladorDerechoImplicacion, `A→true`).
expresion(46, fortalezaAbsurdo, `false→A`).
expresion(47, identidadIzquierdaImplicacion, `true→A≡A`).
expresion(48, identidadIzquierdaImplicacion, `A→false≡¬A`).
expresion(49, debilitamiento, `A→A∨B`).
expresion(50, debilitamiento, `A∧B→A`).
expresion(51, debilitamiento, `A∧B→A∨B`).
expresion(52, debilitamiento, `A∨(B∧C)→A∨B`).
expresion(53, debilitamiento, `A∧B→A∧(B∨C)`).
expresion(54, contrapositiva, `A→B≡¬B→¬A`).
expresion(55, distribucionImplicacionSobreEquivalencia, `A→(B≡C)≡A→B≡A→C`).
expresion(56, pseudodistribucionImplicacionSobreEquivalencia, `A→(B≡C)≡A∧B≡A∧C`).
expresion(57, distribucionImplicacionSobreImplicacion, `A→(B→C)≡(A→B)→(A→C)`).
expresion(58, acoplamiento, `A∧B→C≡A→(B→C)`).
expresion(59, compactacion, `A∧(A→B)≡A∧B`).
expresion(60, modusPonens, `A∧(A→B)→B`).
expresion(61, intercambioBajoImplicacion, `A∧B→C∨D≡A∧¬C→¬B∨D`).
expresion(62, intercambioBajoImplicacion, `A∧(A≡B)→B`).
expresion(63, intercambioBajoImplicacion, `A∨(A→B)`).
expresion(64, intercambioBajoImplicacion, `A∧(B→A)≡B→A`).
expresion(65, intercambioBajoImplicacion, `A∨B→A∧B≡A≡B`).
expresion(66, separacionAntecedentes, `A∨B→C≡(A→C)∧(B→C)`).
expresion(67, separacionConsecuentes, `A→B∧C≡(A→B)∧(A→C)`).
expresion(68, separacionConsecuentes, `(A→B)∧(¬A→B)≡B`).
expresion(69, monotoniaDisyuncionSobreEquivalencia, `(A≡B)→(A∨C≡B∨C)`).
expresion(70, monotoniaDisyuncionSobreImplicacion, `(A→B)→(A∨C→B∨C)`).
expresion(71, monotoniaConjuncionSobreEquivalencia, `(A≡B)→(A∧C≡B∧C)`).
expresion(72, monotoniaConjuncionSobreImplicacion, `(A→B)→(A∧C→B∧C)`).
expresion(73, monotoniaDobleDisyuncionSobreEquivalencia, `(A≡B)∧(C≡D)→(A∨C≡B∨D)`).
expresion(74, monotoniaDobleDisyuncionSobreImplicacion, `(A→B)∧(C→D)→(A∨C→B∨D)`).
expresion(75, monotoniaDobleconjuncionSobreEquivalencia, `(A≡B)∧(C≡D)→(A∧C≡B∧D)`).
expresion(76, monotoniaDobleconjuncionSobreImplicacion, `(A→B)∧(C→D)→(A∧C→B∧D)`).
expresion(77, dobleImplicacion, `(A→B)∧(B→A)≡A≡B`).
expresion(78, antisimetria, `(A→B)∧(B→A)→(A≡B)`).
expresion(79, transitividad, `(A→B)∧(B→C)→(A→C)`).
expresion(80, transitividad, `(A≡B)∧(B→C)→(A→C)`).
expresion(81, transitividad, `(A→B)∧(B≡C)→(A→C)`).
expresion(82, transitividad, `(A≡B)∧(B≡C)→(A≡C)`).

% Formulas para el puzzle.
expresionPzzl(1, `t→q∧s≡(p→¬r)∧¬q`).
expresionPzzl(2, `(x≡¬y)∧(z≡x)→¬z`).
expresionPzzl(3, `¬p∧(r→q)→¬(r→p)`).
expresionPzzl(4, `(s∧w)∧¬(w≡q)≡¬p`).
expresionPzzl(5, `r∨¬t≡r→(r→t)∨¬s`).
expresionPzzl(6, `(q≡r)≡((q≡p)≡s)`).
expresionPzzl(7, `s∧(q→p)≡s→(p≡q)`).
expresionPzzl(8, `w→u∧t≡(r→w)∧u→w`).
expresionPzzl(9, `r∨(q≡s)≡q∨t≡s∨q`).
expresionPzzl(10, `t∨(¬w∧x)≡y∨t∨¬q`).
expresionPzzl(11, `u∨t≡q∧¬p≡t→¬u→t`).
expresionPzzl(12, `q≡¬y→p∧¬y≡s∧r≡q`).
expresionPzzl(13, `(q≡r)→(t∧q≡r∧t)`).
expresionPzzl(14, `¬x∧(x→w)≡¬(w∨x)`).
expresionPzzl(15, `(s→¬q)∧(r→s)→¬r`).
expresionPzzl(16, `r∧(p∧x)≡(x∧t)∧r`).
expresionPzzl(17, `r∧p≡(p∨q)∧(r∨q)`).
expresionPzzl(18, `¬(q∨t)≡¬t∧(q∨t)`).
expresionPzzl(19, `(p→s)∧(s→r)→r≡p`).
expresionPzzl(20, `(w→u)∧(u→w)≡u≡w`).
