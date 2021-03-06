% Definiendo UI.
retos :- 
   _S1 = [ws_caption,ws_minimizebox,ws_sysmenu,ws_ex_appwindow,dlg_ownedbyprolog],
   _S2 = [ws_child,ws_visible,ss_center],
   _S3 = [ws_child,bs_groupbox,ws_visible,bs_center],
   _S4 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter,bs_multiline],
   _S5 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   wdcreate(  retos,        `ECI-Logic`,               450, 250, 446, 208, _S1 ),
   wccreate( (retos,11001), static, `Módulo de Retos`,  90,  20, 280,  30, _S2 ),
   wccreate( (retos,12000), button, ``,                 20,  80, 400,  90, _S3 ),
   wccreate( (retos,1000),  button, `Conectores`,       40, 110, 100,  40, _S4 ),
   wccreate( (retos,1001),  button, `Trivial`,         170, 110, 100,  40, _S4 ),
   wccreate( (retos,1002),  button, `Puzzle`,          300, 110, 100,  40, _S4 ),
   wccreate( (retos,25000), button, `←`,               380,  20,  40,  30, _S5 ).

iniciar_retos :- 
		fuentes_retos, 
		pantalla_retos, 
		!.

fuentes_retos :- 
		wfcreate( titulo, arial, 40, 2 ), 
		wfcreate( subtitulo, arial, 25, 2 ), 
		wfcreate( grupo, arial, 20, 0 ), 
		wfcreate( botonesNegrilla, arial, 18, 2 ), 
		wfcreate( botonAtras, arial, 30, 2 ).

pantalla_retos :- 
		retos, 
		show_dialog(retos), 
		window_handler(retos,retos), 
		define_brush_colours, 
		fuentesRetos.

fuentesRetos :- 
		forall( member(V,[
			11001
		]), wfont((retos, V), subtitulo)), 
		forall( member(V,[
			12000
		]), wfont((retos, V), grupo)), 
		forall( member(V,[
			1000, 1001, 1002
		]), wfont((retos, V), botonesNegrilla)), 
		forall( member(V,[
			25000
		]), wfont((retos, V), botonAtras)), 
		!.

% Acciones de botones.

%% Boton de atras.
retos( (retos,25000), msg_button, _, _ ) :- 
		cambioVentanas(retos, iniciar_programa).

%% Boton de calculadora.
retos( (retos,1000), msg_button, _, _ ) :- 
		cambioVentanas(retos, iniciar_conectores).

%% Boton de simbolizar y deducir.
retos( (retos,1001), msg_button, _, _ ) :- 
		cambioVentanas(retos, iniciar_trivial).

%% Boton de arbol sintactico.
retos( (retos,1002), msg_button, _, _ ) :- 
		cambioVentanas(retos, iniciar_puzzle).
