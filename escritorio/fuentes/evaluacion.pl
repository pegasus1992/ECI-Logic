% Definiendo UI.
evaluacion :- 
   _S1 = [ws_caption,ws_minimizebox,ws_sysmenu,ws_ex_appwindow,dlg_ownedbyprolog],
   _S2 = [ws_child,ws_visible,ss_center],
   _S3 = [ws_child,bs_groupbox,ws_visible,bs_center],
   _S4 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   _S5 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter,bs_multiline],
   wdcreate(  evaluacion,        `ECI-Logic`,                    450, 250, 446, 208, _S1 ),
   wccreate( (evaluacion,11001), static, `Módulo de Evaluación`,  90,  20, 280,  30, _S2 ),
   wccreate( (evaluacion,12000), button, ``,                      20,  80, 400,  90, _S3 ),
   wccreate( (evaluacion,1000),  button, `Calculadora`,           40, 110, 100,  40, _S5 ),
   wccreate( (evaluacion,1001),  button, `Simbolizar y deducir`, 170, 110, 100,  40, _S5 ),
   wccreate( (evaluacion,1002),  button, `Árbol sintáctico`,     300, 110, 100,  40, _S5 ),
   wccreate( (evaluacion,25000), button, `←`,                    380,  20,  40,  30, _S4 ).

iniciar_evaluacion :- 
		fuentes_evaluacion, 
		pantalla_evaluacion, 
		!.

fuentes_evaluacion :- 
		wfcreate( titulo, arial, 40, 2 ), 
		wfcreate( subtitulo, arial, 25, 2 ), 
		wfcreate( grupo, arial, 20, 0 ), 
		wfcreate( botonesNegrilla, arial, 18, 2 ), 
		wfcreate( botonAtras, arial, 30, 2 ).

pantalla_evaluacion :- 
		evaluacion, 
		show_dialog(evaluacion), 
		window_handler(evaluacion,evaluacion), 
		define_brush_colours, 
		fuentesEvaluacion.

fuentesEvaluacion:- 
		forall( member(V,[
			11001
		]), wfont((evaluacion, V), subtitulo)), 
		forall( member(V,[
			12000
		]), wfont((evaluacion, V), grupo)), 
		forall( member(V,[
			1000, 1001, 1002
		]), wfont((evaluacion, V), botonesNegrilla)), 
		forall( member(V,[
			25000
		]), wfont((evaluacion, V), botonAtras)), 
		!.

% Acciones de botones.

%% Boton de atras.
evaluacion( (evaluacion,25000), msg_button, _, _ ) :- 
		cambioVentanas(evaluacion, iniciar_programa).

%% Boton de calculadora.
evaluacion( (evaluacion,1000), msg_button, _, _ ) :- 
		cambioVentanas(evaluacion, iniciar_calculadora).

%% Boton de simbolizar y deducir.
evaluacion( (evaluacion,1001), msg_button, _, _ ) :- 
		cambioVentanas(evaluacion, iniciar_deduccion).

%% Boton de arbol sintactico.
evaluacion( (evaluacion,1002), msg_button, _, _ ) :- 
		cambioVentanas(evaluacion, iniciar_arbol).
