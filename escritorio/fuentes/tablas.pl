% Definiendo UI.
tabla :- 
   _S1 = [ws_sysmenu,ws_minimizebox,ws_popup,ws_caption,ws_ex_appwindow,dlg_ownedbyprolog],
   _S2 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   _S3 = [ws_child,ws_border,ws_tabstop,ws_visible,es_center,es_multiline,es_autohscroll,es_autovscroll,es_readonly],
   _S4 = [ws_child,ws_visible,ss_center],
   _S5 = [ws_child,bs_groupbox,ws_visible,bs_center],
   _S6 = [ws_child,bs_groupbox,ws_visible,bs_left],
   _S7 = [ws_child,ws_visible,ss_left],
   _S8 = [ws_child,ws_border,ws_visible],
   wdcreate(  tabla,        `ECI-Logic`,                                                                                                                                                                                                                                                                                                                                        343,  21, 706, 688, _S1 ),
   wccreate( (tabla,100),   button, `p`,                                                                                                                                                                                                                                                                                                                                        390, 130,  40,  30, _S2 ),
   wccreate( (tabla,101),   button, `q`,                                                                                                                                                                                                                                                                                                                                        530, 130,  40,  30, _S2 ),
   wccreate( (tabla,102),   button, `Valor`,                                                                                                                                                                                                                                                                                                                                    600, 130,  50,  30, _S2 ),
   wccreate( (tabla,104),   button, `→`,                                                                                                                                                                                                                                                                                                                                        460, 130,  40,  30, _S2 ),
   wccreate( (tabla,1),     edit,   `v`,                                                                                                                                                                                                                                                                                                                                        390, 160,  40,  30, _S3 ),
   wccreate( (tabla,2),     edit,   `v`,                                                                                                                                                                                                                                                                                                                                        530, 160,  40,  30, _S3 ),
   wccreate( (tabla,3),     edit,   ``,                                                                                                                                                                                                                                                                                                                                         600, 160,  50,  30, _S3 ),
   wccreate( (tabla,25000), button, `←`,                                                                                                                                                                                                                                                                                                                                        650,  15,  40,  30, _S2 ),
   wccreate( (tabla,11000), static, `Valores y Tablas de verdad`,                                                                                                                                                                                                                                                                                                                50,  10, 590,  40, _S4 ),
   wccreate( (tabla,12000), button, `Valores de verdad`,                                                                                                                                                                                                                                                                                                                         10,  50, 680, 160, _S5 ),
   wccreate( (tabla,12001), button, `Tablas de verdad`,                                                                                                                                                                                                                                                                                                                          10, 210, 680, 440, _S5 ),
   wccreate( (tabla,12002), button, `Ejemplo`,                                                                                                                                                                                                                                                                                                                                   20, 110, 660,  90, _S6 ),
   wccreate( (tabla,12003), button, `Ejemplo`,                                                                                                                                                                                                                                                                                                                                   20, 320, 250, 320, _S6 ),
   wccreate( (tabla,11001), static, `Una tabla de verdad es donde se anotan, en primer lugar, las proposiciones simples que intervienen en la proposición compuesta y sus posibles valores de verdad.`,                                                                                                                                                                          20, 240, 530,  30, _S7 ),
   wccreate( (tabla,11002), static, `Los valores de verdad de las proposiciones simples son Falso (F) o Verdadero (V). Cuando son proposiciones compuestas el valor de verdad es la combinación correspondiente de verdadero y falso.`,                                                                                                                                          20,  80, 660,  30, _S7 ),
   wccreate( (tabla,11003), static, `Interactúa con los valores P y Q, y con el conector → para conocer el valor de verdad de la proposición.`,                                                                                                                                                                                                                                  30, 140, 330,  40, _S7 ),
   wccreate( (tabla,11004), static, `Si en la proposición compuesta sólo hay una proposición simple, únicamente hay dos posibles valores de verdad.`,                                                                                                                                                                                                                            20, 280, 530,  30, _S7 ),
   wccreate( (tabla,11005), static, `Si hay dos proposiciones simples, habrán cuatro posibles combinaciones de sus valores de verdad, en general, el número de combinaciones de los valores de verdad de proposiciones simples se puede determinar de acuerdo a la fórmula (2^n), donde n es el número de proposiciones simples que intervienen en una proposición compuesta.`, 280, 320, 400,  70, _S7 ),
   wccreate( (tabla,11006), static, `Para llenar una tabla de verdad cuando hay muchas proposiciones simples, con todas las posibles combinaciones es recomendable hacerlo siguiendo el siguiente procedimiento:`,                                                                                                                                                              280, 400, 400,  40, _S7 ),
   wccreate( (tabla,11007), static, `Hacer tantas columnas como proposiciones simples haya.`,                                                                                                                                                                                                                                                                                   320, 455, 360,  20, _S7 ),
   wccreate( (tabla,11008), static, `Determinar el número de combinaciones que obtendremos, de acuerdo con la fórmula: (2^n).`,                                                                                                                                                                                                                                                 320, 480, 360,  30, _S7 ),
   wccreate( (tabla,11009), static, `Contar tantos renglones como combinaciones nos resulten.`,                                                                                                                                                                                                                                                                                 320, 515, 360,  20, _S7 ),
   wccreate( (tabla,11010), static, `Empezar a llenar la última columna, anotando primero un valor y luego otro.`,                                                                                                                                                                                                                                                              320, 540, 360,  30, _S7 ),
   wccreate( (tabla,11011), static, `Siempre se duplica la presentacion de cada valor, en la columna que está a la izquierda de la ya llenada.`,                                                                                                                                                                                                                                320, 600, 360,  30, _S7 ),
   wccreate( (tabla,11012), static, `Siempre se empiezan todas las columnas por V.`,                                                                                                                                                                                                                                                                                            320, 575, 360,  20, _S7 ),
   wccreate( (tabla,11013), static, `# de proposiciones simples = 3: (p, q, r)`,                                                                                                                                                                                                                                                                                                 30, 350, 230,  20, _S7 ),
   wccreate( (tabla,11014), static, `# de combinaciones = (2^3) = 8`,                                                                                                                                                                                                                                                                                                            30, 370, 230,  20, _S7 ),
   wccreate( (tabla,10000), grafix, `Grafix1`,                                                                                                                                                                                                                                                                                                                                  560, 235, 120,  73, _S8 ),
   wccreate( (tabla,10001), grafix, `Grafix2`,                                                                                                                                                                                                                                                                                                                                  280, 450,  30,  30, _S8 ),
   wccreate( (tabla,10002), grafix, `Grafix2`,                                                                                                                                                                                                                                                                                                                                  280, 480,  30,  30, _S8 ),
   wccreate( (tabla,10003), grafix, `Grafix2`,                                                                                                                                                                                                                                                                                                                                  280, 510,  30,  30, _S8 ),
   wccreate( (tabla,10004), grafix, `Grafix2`,                                                                                                                                                                                                                                                                                                                                  280, 540,  30,  30, _S8 ),
   wccreate( (tabla,10005), grafix, `Grafix2`,                                                                                                                                                                                                                                                                                                                                  280, 570,  30,  30, _S8 ),
   wccreate( (tabla,10006), grafix, `Grafix2`,                                                                                                                                                                                                                                                                                                                                  280, 600,  30,  30, _S8 ),
   wccreate( (tabla,10007), grafix, `Grafix1`,                                                                                                                                                                                                                                                                                                                                   60, 390, 167, 243, _S8 ).

iniciar_tablas :- 
		fuentes_tablas, 
		pantalla_tablas, 
		!.

fuentes_tablas :- 
		wfcreate( titulo, arial, 40, 2 ), 
		wfcreate( subtitulo, arial, 25, 2 ), 
		wfcreate( grupo, arial, 18, 2 ), 
		wfcreate( grupo2, arial, 16, 0 ), 
		wfcreate( botonesNegrilla, arial, 18, 2 ), 
		wfcreate( textos, arial, 15, 0 ), 
		wfcreate( textos2, arial, 14, 0 ), 
		wfcreate( listas, arial, 13, 0 ), 
		wfcreate( resultados, arial, 24, 0 ), 
		wfcreate( botonAtras, arial, 30, 2 ).

pantalla_tablas :- 
		tabla,
		show_dialog(tabla), 
		window_handler(tabla,tabla), 
		define_brush_colours, 
		define_images, 
		fuentesTablas.

fuentesTablas :- 
		forall( member(V,[
			11000
		]), wfont((tabla, V), titulo)), 
		forall( member(V,[
			12000, 12001
		]), wfont((tabla, V), grupo)), 
		forall( member(V,[
			12002, 12003
		]), wfont((tabla, V), grupo2)), 
		forall( member(V,[
			11001, 11002, 11003, 11004, 
			11013, 11014
		]), wfont((tabla, V), textos)),
		forall( member(V,[
			11005, 11006
		]), wfont((tabla, V), textos2)),
		forall( member(V,[
			11007, 11008, 11009, 11010, 
			11011, 11012
		]), wfont((tabla, V), listas)),
		forall( member(Ven,[
			100, 101, 102, 104
		]), wfont((tabla,Ven), botonesNegrilla)), 
		forall( member(V,[
			1, 2, 3
		]), wfont((tabla, V), resultados)), 
		forall( member(V,[
			25000
		]), wfont((tabla, V), botonAtras)), 
		!.

% Definir imagenes.
define_images :- 
		load_images(tabla01, 'imagenes/tabla-01.bmp'), 
		load_images(tabla02, 'imagenes/tabla-02.bmp'), 
		load_images(numero1, 'imagenes/numero_1.bmp'), 
		load_images(numero2, 'imagenes/numero_2.bmp'), 
		load_images(numero3, 'imagenes/numero_3.bmp'), 
		load_images(numero4, 'imagenes/numero_4.bmp'), 
		load_images(numero5, 'imagenes/numero_5.bmp'), 
		load_images(numero6, 'imagenes/numero_6.bmp'), 
		!.

%% Cargar imagenes.
tabla( (tabla,10000), msg_paint,_,_ ) :- 
		gfx_paint((tabla,10000)), 
		gfx(bitmap(0,-3,350,170,5,0,tabla01)), 
		gfx_end((tabla,10000)).

tabla( (tabla,10007), msg_paint,_,_ ) :- 
		gfx_paint((tabla,10007)), 
		gfx(bitmap(0,-2,350,270,1,0,tabla02)), 
		gfx_end((tabla,10007)).

tabla( (tabla,10001), msg_paint,_,_ ) :- 
		gfx_paint((tabla,10001)), 
		gfx(bitmap(-2,0,30,30,0,0,numero1)), 
		gfx_end((tabla,10001)).

tabla( (tabla,10002), msg_paint,_,_ ) :- 
		gfx_paint((tabla,10002)), 
		gfx(bitmap(-2,0,30,30,0,0,numero2)), 
		gfx_end((tabla,10002)).

tabla( (tabla,10003), msg_paint,_,_ ) :- 
		gfx_paint((tabla,10003)), 
		gfx(bitmap(-2,0,30,30,0,0,numero3)), 
		gfx_end((tabla,10003)).

tabla( (tabla,10004), msg_paint,_,_ ) :- 
		gfx_paint((tabla,10004)), 
		gfx(bitmap(-1,0,30,30,0,0,numero4)), 
		gfx_end((tabla,10004)).

tabla( (tabla,10005), msg_paint,_,_ ) :- 
		gfx_paint((tabla,10005)), 
		gfx(bitmap(-1,0,30,30,0,0,numero5)), 
		gfx_end((tabla,10005)).

tabla( (tabla,10006), msg_paint,_,_ ) :- 
		gfx_paint((tabla,10006)), 
		gfx(bitmap(-1,0,30,30,0,0,numero6)), 
		gfx_end((tabla,10006)).

% Acciones de botones.
tabla( (tabla,25000), msg_button,_,_ ) :- 
		cambioVentanas(tabla, iniciar_conceptos).

%% Boton de cambio de conector.
tabla((tabla,104),msg_button ,_,_) :- 
		wtext((tabla,104),Con) -> (
			Con = `→`, wtext((tabla,104),`∧`);
			Con = `∧` -> wtext((tabla,104),`∨`);
			Con = `∨` -> wtext((tabla,104),`≡`);
			Con = `≡` -> wtext((tabla,104),`¬`);
			Con = `¬` -> wtext((tabla,104),`→`)
		), 
		call(tabla((tabla, 102), msg_button ,_,_)).

%% Botones P y Q para cambiar sus valores de verdad.
tabla((tabla,ID),msg_button ,_,_) :- 
		member(ID,[100,101]), ID2 is ID - 100 + 1,
		wtext((tabla,ID2), Verd) -> (
			Verd = `v`, wtext((tabla,ID2), `f`) ; wtext((tabla,ID2),`v`)
		), 
		call(tabla((tabla, 102), msg_button ,_,_)).

%% Boton igual.
tabla((tabla,102),msg_button ,_,_) :- 
		wtext((tabla,1), P),
		wtext((tabla,2), Q),
		wtext((tabla,104),Con) -> (
			Con = `→`, implccn(P,Q,V);
			Con = `∧` -> cnjncn(P,Q,V);
			Con = `∨` -> dsyncn(P,Q,V);
			Con = `≡` -> eqvlnca(P,Q,V);
			Con = `¬` -> ngcn(Q,V)
		),
		wtext((tabla,3), V).
