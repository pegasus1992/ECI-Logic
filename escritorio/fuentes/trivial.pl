% Definiendo UI.
trivial :- 
   _S1 = [ws_caption,ws_minimizebox,ws_sysmenu,ws_ex_appwindow,dlg_ownedbyprolog],
   _S2 = [ws_child,ws_visible,ss_center],
   _S3 = [ws_child,ws_visible,ss_left],
   _S4 = [ws_child,ws_border,ws_tabstop,ws_visible,es_left,es_multiline,es_autohscroll,es_autovscroll,es_readonly],
   _S5 = [ws_child,ws_visible,bs_autoradiobutton],
   _S6 = [ws_child,ws_visible,bs_autoradiobutton,bs_text,bs_left,bs_vcenter],
   _S7 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   wdcreate(  trivial,        `Trivial`,                                                                            362, 208, 616, 278, _S1 ),
   wccreate( (trivial,11000), static, `Trivial`,                                                                     40,  10, 510,  30, _S2 ),
   wccreate( (trivial,11001), static, `Este reto consiste en seleccionar la opción correcta entre las 4 posibles.`,  10,  60, 590,  20, _S3 ),
   wccreate( (trivial,8000),  edit,   ``,                                                                            20, 120, 520,  30, _S4 ),
   wccreate( (trivial,8001),  edit,   ``,                                                                            60, 290,  90,  20, _S4 ),
   wccreate( (trivial,2000),  button, `Radio1`,                                                                      30, 160, 280,  40, _S5 ),
   wccreate( (trivial,2001),  button, `Radio2`,                                                                      30, 200, 280,  40, _S6 ),
   wccreate( (trivial,2002),  button, `Radio3`,                                                                     310, 160, 280,  40, _S6 ),
   wccreate( (trivial,2003),  button, `Radio4`,                                                                     310, 200, 280,  40, _S6 ),
   wccreate( (trivial,15001), button, `>`,                                                                          540, 120,  50,  30, _S7 ),
   wccreate( (trivial,15000), button, `Otra pregunta`,                                                               20,  90, 570,  30, _S7 ),
   wccreate( (trivial,25000), button, `←`,                                                                          560,  10,  40,  30, _S7 ).

iniciar_trivial :- 
		fuentes_trivial, 
		pantalla_trivial, 
		!.

fuentes_trivial :- 
		wfcreate( titulo, arial, 40, 2 ), 
		wfcreate( subtitulo, arial, 25, 2 ), 
		wfcreate( grupo, arial, 20, 0 ), 
		wfcreate( botonesNegrilla, arial, 18, 2 ), 
		wfcreate( botones, arial, 20, 0 ), 
		wfcreate( textos, arial, 18, 0 ), 
		wfcreate( textosNegrilla, arial, 18, 2 ), 
		wfcreate( textos2, arial, 15, 0 ), 
		wfcreate( textos3, arial, 16, 0 ), 
		wfcreate( resultados, arial, 24, 0 ), 
		wfcreate( botonAtras, arial, 30, 2 ).

pantalla_trivial :- 
		trivial, 
		show_dialog(trivial), 
		window_handler(trivial,trivial), 
		inicializarElementosTrivial, 
		define_brush_colours, 
		fuentesTrivial.

fuentesTrivial :- 
		forall( member(V,[
			11000
		]), wfont((trivial, V), subtitulo)), 
		forall( member(Ven,[
			15000, 15001
		]), wfont((trivial,Ven), botonesNegrilla)),
		forall( member(V,[
			11001 
		]), wfont((trivial, V), textos2)),
		forall( member(V,[
			2000, 2001, 2002, 2003
		]), wfont((trivial, V), textos3)),
		forall( member(V,[
			8000
		]), wfont((trivial, V), textos)),
		forall( member(V,[
			25000
		]), wfont((trivial, V), botonAtras)), 
		!.

% Funciones varias.
apagarTrivial() :- 
		forall(
			integer_bound(2000, Nn, 2003), 
			wbtnsel((trivial,Nn), 0)
		).

prendidoTrivial(N) :- 
		integer_bound(2000, N, 2003), 
		wbtnsel((trivial,N), State), 
		State = 1, !.

% Inicializa la pantalla.
inicializarElementosTrivial :- 
		escoger4Formulas(
			[_, Nombre1, Formula1], 
			[_, Nombre2, Formula2], 
			[_, Nombre3, Formula3], 
			[_, Nombre4, Formula4], 
			[_, NombreC, FormulaC]
		), 
		randomElem([0, 1], Modo), 
		(
			Modo = 0 -> (
				wtext((trivial,2000), Nombre1), 
				wtext((trivial,2001), Nombre2), 
				wtext((trivial,2002), Nombre3), 
				wtext((trivial,2003), Nombre4), 
				wtext((trivial,8000), FormulaC), 
				wtext((trivial,8001), NombreC)
			) ; (
				wtext((trivial,2000), Formula1), 
				wtext((trivial,2001), Formula2), 
				wtext((trivial,2002), Formula3), 
				wtext((trivial,2003), Formula4), 
				wtext((trivial,8000), NombreC), 
				wtext((trivial,8001), FormulaC)
			)
		), 
		apagarTrivial.

%% Escoger aleatoriamente 4 formulas, y de ellas una correcta.
escoger4Formulas(Opcion1, Opcion2, Opcion3, Opcion4, OpcionC) :- 
		setof(
			[ID, Nombre, Formula], 
			expresion(ID, Nombre, Formula), 
			Lista
		), 
		randomElem(Lista, [ID1, Nombre1, Formula1]), 
		delElem([ID1, Nombre1, Formula1], Lista, Lista1), 
		randomElem(Lista1, [ID2, Nombre2, Formula2]), 
		delElem([ID2, Nombre2, Formula2], Lista1, Lista2), 
		randomElem(Lista2, [ID3, Nombre3, Formula3]), 
		delElem([ID3, Nombre3, Formula3], Lista2, Lista3), 
		randomElem(Lista3, [ID4, Nombre4, Formula4]), 
		delElem([ID4, Nombre4, Formula4], Lista3, _), 
		write(Nombre1) ~> N1, 
		write(Nombre2) ~> N2, 
		write(Nombre3) ~> N3, 
		write(Nombre4) ~> N4, 
		append([], [ID1, N1, Formula1], Opcion1), 
		append([], [ID2, N2, Formula2], Opcion2), 
		append([], [ID3, N3, Formula3], Opcion3), 
		append([], [ID4, N4, Formula4], Opcion4), 
		append([], [Opcion1, Opcion2, Opcion3, Opcion4], Random), 
		randomElem(Random, [IDC, NombreC, FormulaC]), 
		write(NombreC) ~> NC, 
		append([], [IDC, NC, FormulaC], OpcionC).

% Acciones de botones.

%% Boton de atras.
trivial( (trivial,25000), msg_button, _, _ ) :- 
		cambioVentanas(trivial, iniciar_retos).

%% Boton de Evaluar.
trivial( (trivial, 15001), msg_button , _, _ ) :- 
		prendidoTrivial(Opcion), 
		wtext((trivial,Opcion), Selecc), 
		wtext((trivial,8001), Correcta), 
		(
			Selecc = Correcta -> (
				message_box( ok, `¡Has dado en el clavo! ¡Felicidades!~MAquí tienes otra pregunta.`, _ ), 
				inicializarElementosTrivial
			) ; (
				message_box( ok, `La respuesta es incorrecta.~MInténtalo de nuevo.`, _ )
			)
		).
trivial( (trivial, 15001), msg_button , _, _ ) :- 
		message_box( ok, `Selecciona una respuesta.`, _ ).

%% Boton de Otra formula.
trivial( (trivial, 15000), msg_button , _, _ ) :- 
		inicializarElementosTrivial.
