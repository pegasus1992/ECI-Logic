% Definiendo UI.
conceptos :- 
   _S1 = [ws_caption,ws_minimizebox,ws_sysmenu,ws_ex_appwindow,dlg_ownedbyprolog],
   _S2 = [ws_child,ws_visible,ss_center],
   _S3 = [ws_child,bs_groupbox,ws_visible,bs_center],
   _S4 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter,bs_multiline],
   _S5 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   wdcreate(  conceptos,        `ECI-Logic`,                                                    450, 170, 446, 408, _S1 ),
   wccreate( (conceptos,11001), static, `Conceptos básicos`,                                     90,  20, 280,  30, _S2 ),
   wccreate( (conceptos,12000), button, ``,                                                      20,  80, 400, 290, _S3 ),
   wccreate( (conceptos,1000),  button, `1. ¿Qué es y para qué sirve la lógica proposicional?`,  40, 110, 370,  40, _S4 ),
   wccreate( (conceptos,1001),  button, `2. Proposiciones y sus tipos`,                          40, 160, 370,  40, _S4 ),
   wccreate( (conceptos,1002),  button, `3. Valores y tablas de verdad`,                         40, 210, 370,  40, _S4 ),
   wccreate( (conceptos,1003),  button, `4. Conectores lógicos`,                                 40, 260, 370,  40, _S4 ),
   wccreate( (conceptos,1004),  button, `5. Reglas de inferencia`,                               40, 310, 370,  40, _S4 ),
   wccreate( (conceptos,25000), button, `←`,                                                    380,  20,  40,  30, _S5 ).

iniciar_conceptos :- 
		fuentes_conceptos, 
		pantalla_conceptos, 
		!.

fuentes_conceptos :- 
		wfcreate( titulo, arial, 40, 2 ), 
		wfcreate( subtitulo, arial, 25, 2 ), 
		wfcreate( grupo, arial, 20, 0 ), 
		wfcreate( botones, arial, 18, 0 ), 
		wfcreate( botonAtras, arial, 30, 2 ).

pantalla_conceptos :- 
		conceptos, 
		show_dialog(conceptos), 
		window_handler(conceptos,conceptos), 
		define_brush_colours, 
		fuentesConceptos.

fuentesConceptos:- 
		forall( member(V,[
			11001
		]), wfont((conceptos, V), subtitulo)), 
		forall( member(V,[
			12000
		]), wfont((conceptos, V), grupo)), 
		forall( member(V,[
			1000, 1001, 1002, 1003, 1004
		]), wfont((conceptos, V), botones)), 
		forall( member(V,[
			25000
		]), wfont((conceptos, V), botonAtras)), 
		!.

% Acciones de botones.

%% Boton de atras.
conceptos( (conceptos,25000), msg_button, _, _ ) :- 
		cambioVentanas(conceptos, iniciar_programa).

%% Boton de opcion 1.
conceptos( (conceptos,1000), msg_button, _, _ ) :- 
		cambioVentanas(conceptos, iniciar_conceptos1).

%% Boton de opcion 2.
conceptos( (conceptos,1001), msg_button, _, _ ) :- 
		cambioVentanas(conceptos, iniciar_conceptos2).

%% Boton de opcion 3.
conceptos( (conceptos,1002), msg_button, _, _ ) :- 
		cambioVentanas(conceptos, iniciar_tablas).

%% Boton de opcion 4.
conceptos( (conceptos,1003), msg_button, _, _ ) :- 
		cambioVentanas(conceptos, iniciar_conceptos4).

%% Boton de opcion 5.
conceptos( (conceptos,1004), msg_button, _, _ ) :- 
		cambioVentanas(conceptos, iniciar_conceptos5).
