iniciarReglasInfer :- 
		consult(reglasInferencia), 
		dynamic(regla/5).
:- iniciarReglasInfer.

% Definiendo UI.
infer :- 
   _S1 = [ws_caption,ws_minimizebox,ws_sysmenu,ws_ex_appwindow,dlg_ownedbyprolog],
   _S2 = [ws_child,ws_visible,ws_tabstop,ws_border,es_left,es_multiline,es_autohscroll,es_autovscroll,es_readonly],
   _S3 = [ws_child,ws_border,ws_tabstop,ws_visible,es_left,es_multiline,es_autohscroll,es_autovscroll,es_readonly],
   _S4 = [ws_child,ws_visible,ss_right],
   _S5 = [ws_child,ws_visible,ws_tabstop,bs_pushbutton],
   _S6 = [ws_child,bs_groupbox,ws_visible,bs_left],
   _S7 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   _S8 = [ws_child,bs_groupbox,ws_visible],
   _S9 = [ws_child,ws_visible,ss_center],
   _S10 = [ws_child,ws_visible,ws_border],
   _S11 = [ws_child,ws_border,ws_tabstop,ws_visible,pbs_smooth],
   _S12 = [ws_child,ws_border,ws_tabstop,ws_visible,es_left,es_autohscroll,es_autovscroll,es_wantreturn],
   _S13 = [ws_child,ws_visible,ss_left],
   _S14 = [ws_child,ws_border,ws_tabstop,ws_visible,ws_vscroll,es_left,es_multiline,es_autovscroll,es_wantreturn],
   _S15 = [ws_child,ws_visible,ws_tabstop,ws_border,es_center,es_readonly],
   _S16 = [ws_child,ws_border,ws_tabstop,ws_visible,es_left,es_multiline,es_autohscroll,es_autovscroll],
   _S17 = [ws_child,ws_border,ws_tabstop,ws_visible,es_right,es_readonly],
   _S18 = [ws_child,ws_border,ws_tabstop,ws_visible,es_left,es_multiline,es_autohscroll,es_autovscroll,es_readonly],
   _S19 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   wdcreate(  infer,        `Simbolizar y deducir`,                               142,  13, 1166, 710, _S1  ),
   wccreate( (infer,1),     edit,     ``,                                         580,  70,  260,  20, _S2  ),
   wccreate( (infer,2),     edit,     ``,                                         580,  90,  260,  20, _S2  ),
   wccreate( (infer,3),     edit,     ``,                                         580, 110,  260,  20, _S2  ),
   wccreate( (infer,4),     edit,     ``,                                         580, 130,  260,  20, _S2  ),
   wccreate( (infer,5),     edit,     ``,                                         580, 150,  260,  20, _S2  ),
   wccreate( (infer,6),     edit,     ``,                                         580, 170,  260,  20, _S2  ),
   wccreate( (infer,7),     edit,     ``,                                         580, 190,  260,  20, _S2  ),
   wccreate( (infer,8),     edit,     ``,                                         580, 210,  260,  20, _S2  ),
   wccreate( (infer,9),     edit,     ``,                                         580, 230,  260,  20, _S2  ),
   wccreate( (infer,10),    edit,     ``,                                         580, 250,  260,  20, _S2  ),
   wccreate( (infer,11),    edit,     ``,                                         580, 270,  260,  20, _S2  ),
   wccreate( (infer,12),    edit,     ``,                                         580, 290,  260,  20, _S2  ),
   wccreate( (infer,14),    edit,     ``,                                         580, 330,  260,  20, _S2  ),
   wccreate( (infer,13),    edit,     ``,                                         580, 310,  260,  20, _S2  ),
   wccreate( (infer,15),    edit,     ``,                                         580, 350,  260,  20, _S2  ),
   wccreate( (infer,16),    edit,     ``,                                         580, 370,  260,  20, _S2  ),
   wccreate( (infer,17),    edit,     ``,                                         580, 390,  260,  20, _S2  ),
   wccreate( (infer,18),    edit,     ``,                                         580, 410,  260,  20, _S2  ),
   wccreate( (infer,19),    edit,     ``,                                         580, 430,  260,  20, _S2  ),
   wccreate( (infer,20),    edit,     ``,                                         580, 450,  260,  20, _S2  ),
   wccreate( (infer,21),    edit,     ``,                                         580, 470,  260,  20, _S2  ),
   wccreate( (infer,22),    edit,     ``,                                         580, 490,  260,  20, _S2  ),
   wccreate( (infer,23),    edit,     ``,                                         580, 510,  260,  20, _S2  ),
   wccreate( (infer,24),    edit,     ``,                                         580, 530,  260,  20, _S2  ),
   wccreate( (infer,25),    edit,     ``,                                         580, 550,  260,  20, _S3  ),
   wccreate( (infer,11014), static,   `Conclusión:`,                              620, 580,  110,  20, _S4  ),
   wccreate( (infer,26),    edit,     ``,                                         740, 580,  260,  20, _S2  ),
   wccreate( (infer,100),   edit,     ``,                                         880,  70,  260,  20, _S3  ),
   wccreate( (infer,200),   edit,     ``,                                         880,  90,  260,  20, _S3  ),
   wccreate( (infer,300),   edit,     ``,                                         880, 110,  260,  20, _S3  ),
   wccreate( (infer,400),   edit,     ``,                                         880, 130,  260,  20, _S3  ),
   wccreate( (infer,500),   edit,     ``,                                         880, 150,  260,  20, _S3  ),
   wccreate( (infer,600),   edit,     ``,                                         880, 170,  260,  20, _S3  ),
   wccreate( (infer,700),   edit,     ``,                                         880, 190,  260,  20, _S3  ),
   wccreate( (infer,800),   edit,     ``,                                         880, 210,  260,  20, _S3  ),
   wccreate( (infer,900),   edit,     ``,                                         880, 230,  260,  20, _S3  ),
   wccreate( (infer,1000),  edit,     ``,                                         880, 250,  260,  20, _S3  ),
   wccreate( (infer,1100),  edit,     ``,                                         880, 270,  260,  20, _S3  ),
   wccreate( (infer,1200),  edit,     ``,                                         880, 290,  260,  20, _S3  ),
   wccreate( (infer,1300),  edit,     ``,                                         880, 310,  260,  20, _S3  ),
   wccreate( (infer,1400),  edit,     ``,                                         880, 330,  260,  20, _S3  ),
   wccreate( (infer,1500),  edit,     ``,                                         880, 350,  260,  20, _S3  ),
   wccreate( (infer,1600),  edit,     ``,                                         880, 370,  260,  20, _S3  ),
   wccreate( (infer,1700),  edit,     ``,                                         880, 390,  260,  20, _S3  ),
   wccreate( (infer,1800),  edit,     ``,                                         880, 410,  260,  20, _S3  ),
   wccreate( (infer,1900),  edit,     ``,                                         880, 430,  260,  20, _S3  ),
   wccreate( (infer,2000),  edit,     ``,                                         880, 450,  260,  20, _S3  ),
   wccreate( (infer,2100),  edit,     ``,                                         880, 470,  260,  20, _S3  ),
   wccreate( (infer,2200),  edit,     ``,                                         880, 490,  260,  20, _S3  ),
   wccreate( (infer,2300),  edit,     ``,                                         880, 510,  260,  20, _S3  ),
   wccreate( (infer,2400),  edit,     ``,                                         880, 530,  260,  20, _S3  ),
   wccreate( (infer,2500),  edit,     ``,                                         880, 550,  260,  20, _S3  ),
   wccreate( (infer,1001),  button,   `PASO A PASO`,                              920, 610,  180,  30, _S5  ),
   wccreate( (infer,1002),  button,   `Borrar Comentarios`,                       730, 610,  180,  30, _S5  ),
   wccreate( (infer,1021),  button,   `Borrar Premisas`,                          540, 610,  180,  30, _S5  ),
   wccreate( (infer,11001), button,   ``,                                         170,   0,  690,  45, _S6  ),
   wccreate( (infer,1003),  button,   `→`,                                        670,  10,   30,  30, _S5  ),
   wccreate( (infer,1004),  button,   `∨`,                                        610,  10,   30,  30, _S5  ),
   wccreate( (infer,1005),  button,   `∧`,                                        640,  10,   30,  30, _S5  ),
   wccreate( (infer,1006),  button,   `¬`,                                        580,  10,   30,  30, _S5  ),
   wccreate( (infer,1007),  button,   `(`,                                        500,  10,   30,  30, _S5  ),
   wccreate( (infer,1008),  button,   `)`,                                        530,  10,   30,  30, _S5  ),
   wccreate( (infer,1009),  button,   `≡`,                                        700,  10,   30,  30, _S5  ),
   wccreate( (infer,1010),  button,   `p`,                                        180,  10,   30,  30, _S5  ),
   wccreate( (infer,1011),  button,   `q`,                                        210,  10,   30,  30, _S5  ),
   wccreate( (infer,1012),  button,   `r`,                                        240,  10,   30,  30, _S5  ),
   wccreate( (infer,1013),  button,   `s`,                                        270,  10,   30,  30, _S5  ),
   wccreate( (infer,1014),  button,   `t`,                                        300,  10,   30,  30, _S5  ),
   wccreate( (infer,1015),  button,   `u`,                                        330,  10,   30,  30, _S5  ),
   wccreate( (infer,1016),  button,   `w`,                                        360,  10,   30,  30, _S5  ),
   wccreate( (infer,1018),  button,   `x`,                                        390,  10,   30,  30, _S5  ),
   wccreate( (infer,1019),  button,   `y`,                                        420,  10,   30,  30, _S5  ),
   wccreate( (infer,1020),  button,   `z`,                                        450,  10,   30,  30, _S5  ),
   wccreate( (infer,1022),  button,   `DEL`,                                      750,  10,   50,  30, _S7  ),
   wccreate( (infer,1023),  button,   `AC`,                                       800,  10,   50,  30, _S7  ),
   wccreate( (infer,11000), button,   `Demostración`,                             530,  50,  620, 600, _S8  ),
   wccreate( (infer,10001), static,   `1`,                                        540,  70,   20,  20, _S9  ),
   wccreate( (infer,10002), static,   `2`,                                        540,  90,   20,  20, _S9  ),
   wccreate( (infer,10003), static,   `3`,                                        540, 110,   20,  20, _S9  ),
   wccreate( (infer,10004), static,   `4`,                                        540, 130,   20,  20, _S9  ),
   wccreate( (infer,10005), static,   `5`,                                        540, 150,   20,  20, _S9  ),
   wccreate( (infer,10006), static,   `6`,                                        540, 170,   20,  20, _S9  ),
   wccreate( (infer,10007), static,   `7`,                                        540, 190,   20,  20, _S9  ),
   wccreate( (infer,10008), static,   `8`,                                        540, 210,   20,  20, _S9  ),
   wccreate( (infer,10009), static,   `9`,                                        540, 230,   20,  20, _S9  ),
   wccreate( (infer,10010), static,   `10`,                                       540, 250,   20,  20, _S9  ),
   wccreate( (infer,10011), static,   `11`,                                       540, 270,   20,  20, _S9  ),
   wccreate( (infer,10012), static,   `12`,                                       540, 290,   20,  20, _S9  ),
   wccreate( (infer,10013), static,   `13`,                                       540, 310,   20,  20, _S9  ),
   wccreate( (infer,10014), static,   `14`,                                       540, 330,   20,  20, _S9  ),
   wccreate( (infer,10015), static,   `15`,                                       540, 350,   20,  20, _S9  ),
   wccreate( (infer,10016), static,   `16`,                                       540, 370,   20,  20, _S9  ),
   wccreate( (infer,10017), static,   `17`,                                       540, 390,   20,  20, _S9  ),
   wccreate( (infer,10018), static,   `18`,                                       540, 410,   20,  20, _S9  ),
   wccreate( (infer,10019), static,   `19`,                                       540, 430,   20,  20, _S9  ),
   wccreate( (infer,10020), static,   `20`,                                       540, 450,   20,  20, _S9  ),
   wccreate( (infer,10021), static,   `21`,                                       540, 470,   20,  20, _S9  ),
   wccreate( (infer,10022), static,   `22`,                                       540, 490,   20,  20, _S9  ),
   wccreate( (infer,10023), static,   `23`,                                       540, 510,   20,  20, _S9  ),
   wccreate( (infer,10024), static,   `24`,                                       540, 530,   20,  20, _S9  ),
   wccreate( (infer,10025), static,   `25`,                                       540, 550,   20,  20, _S9  ),
   wccreate( (infer,9000),  grafix,   `Grafix1`,                                  560,  70,   20,  20, _S10 ),
   wccreate( (infer,9001),  grafix,   `Grafix1`,                                  560,  90,   20,  20, _S10 ),
   wccreate( (infer,9002),  grafix,   `Grafix1`,                                  560, 110,   20,  20, _S10 ),
   wccreate( (infer,9003),  grafix,   `Grafix1`,                                  560, 130,   20,  20, _S10 ),
   wccreate( (infer,9004),  grafix,   `Grafix1`,                                  560, 150,   20,  20, _S10 ),
   wccreate( (infer,9005),  grafix,   `Grafix1`,                                  560, 170,   20,  20, _S10 ),
   wccreate( (infer,9006),  grafix,   `Grafix1`,                                  560, 190,   20,  20, _S10 ),
   wccreate( (infer,9007),  grafix,   `Grafix1`,                                  560, 210,   20,  20, _S10 ),
   wccreate( (infer,9008),  grafix,   `Grafix1`,                                  560, 230,   20,  20, _S10 ),
   wccreate( (infer,9009),  grafix,   `Grafix1`,                                  560, 250,   20,  20, _S10 ),
   wccreate( (infer,9010),  grafix,   `Grafix1`,                                  560, 270,   20,  20, _S10 ),
   wccreate( (infer,9011),  grafix,   `Grafix1`,                                  560, 290,   20,  20, _S10 ),
   wccreate( (infer,9012),  grafix,   `Grafix1`,                                  560, 310,   20,  20, _S10 ),
   wccreate( (infer,9013),  grafix,   `Grafix1`,                                  560, 330,   20,  20, _S10 ),
   wccreate( (infer,9014),  grafix,   `Grafix1`,                                  560, 350,   20,  20, _S10 ),
   wccreate( (infer,9015),  grafix,   `Grafix1`,                                  560, 370,   20,  20, _S10 ),
   wccreate( (infer,9016),  grafix,   `Grafix1`,                                  560, 390,   20,  20, _S10 ),
   wccreate( (infer,9017),  grafix,   `Grafix1`,                                  560, 410,   20,  20, _S10 ),
   wccreate( (infer,9018),  grafix,   `Grafix1`,                                  560, 430,   20,  20, _S10 ),
   wccreate( (infer,9019),  grafix,   `Grafix1`,                                  560, 450,   20,  20, _S10 ),
   wccreate( (infer,9020),  grafix,   `Grafix1`,                                  560, 470,   20,  20, _S10 ),
   wccreate( (infer,9021),  grafix,   `Grafix1`,                                  560, 490,   20,  20, _S10 ),
   wccreate( (infer,9022),  grafix,   `Grafix1`,                                  560, 510,   20,  20, _S10 ),
   wccreate( (infer,9023),  grafix,   `Grafix1`,                                  560, 530,   20,  20, _S10 ),
   wccreate( (infer,9024),  grafix,   `Grafix1`,                                  560, 550,   20,  20, _S10 ),
   wccreate( (infer,14000), stripbar, `Stripbar1`,                                510,  50,   10, 610, _S11 ),
   wccreate( (infer,11002), button,   `Nombre de problema y Simbolización`,        10, 100,  490, 160, _S8  ),
   wccreate( (infer,80000), edit,     ``,                                          20, 120,  470,  20, _S12 ),
   wccreate( (infer,11003), static,   `Enunciado:`,                                20, 150,  180,  20, _S13 ),
   wccreate( (infer,8000),  rich,     ``,                                          20, 170,  470,  80, _S14 ),
   wccreate( (infer,12000), button,   `Simbolización de Proposiciones atómicas`,   10, 300,  240, 230, _S6  ),
   wccreate( (infer,11004), edit,     `p`,                                         20, 320,   20,  20, _S15 ),
   wccreate( (infer,8011),  edit,     ``,                                          40, 320,  200,  20, _S16 ),
   wccreate( (infer,11005), edit,     `q`,                                         20, 340,   20,  20, _S15 ),
   wccreate( (infer,8012),  edit,     ``,                                          40, 340,  200,  20, _S16 ),
   wccreate( (infer,11006), edit,     `r`,                                         20, 360,   20,  20, _S15 ),
   wccreate( (infer,8013),  edit,     ``,                                          40, 360,  200,  20, _S16 ),
   wccreate( (infer,11007), edit,     `s`,                                         20, 380,   20,  20, _S15 ),
   wccreate( (infer,8014),  edit,     ``,                                          40, 380,  200,  20, _S16 ),
   wccreate( (infer,11008), edit,     `t`,                                         20, 400,   20,  20, _S15 ),
   wccreate( (infer,8015),  edit,     ``,                                          40, 400,  200,  20, _S16 ),
   wccreate( (infer,11009), edit,     `u`,                                         20, 420,   20,  20, _S15 ),
   wccreate( (infer,8016),  edit,     ``,                                          40, 420,  200,  20, _S16 ),
   wccreate( (infer,11010), edit,     `v`,                                         20, 440,   20,  20, _S15 ),
   wccreate( (infer,8017),  edit,     ``,                                          40, 440,  200,  20, _S16 ),
   wccreate( (infer,11011), edit,     `x`,                                         20, 460,   20,  20, _S15 ),
   wccreate( (infer,8018),  edit,     ``,                                          40, 460,  200,  20, _S16 ),
   wccreate( (infer,11012), edit,     `y`,                                         20, 480,   20,  20, _S15 ),
   wccreate( (infer,8019),  edit,     ``,                                          40, 480,  200,  20, _S16 ),
   wccreate( (infer,11013), edit,     `z`,                                         20, 500,   20,  20, _S15 ),
   wccreate( (infer,8020),  edit,     ``,                                          40, 500,  200,  20, _S16 ),
   wccreate( (infer,12001), button,   `Simbolización de Premisas y Conclusión`,   260, 270,  240, 300, _S6  ),
   wccreate( (infer,8001),  edit,     `P1:`,                                      270, 290,   30,  20, _S17 ),
   wccreate( (infer,901),   edit,     ``,                                         300, 290,  190,  20, _S3  ),
   wccreate( (infer,8003),  edit,     `P2:`,                                      270, 310,   30,  20, _S17 ),
   wccreate( (infer,902),   edit,     ``,                                         300, 310,  190,  20, _S3  ),
   wccreate( (infer,8004),  edit,     `P3:`,                                      270, 330,   30,  20, _S17 ),
   wccreate( (infer,903),   edit,     ``,                                         300, 330,  190,  20, _S3  ),
   wccreate( (infer,8005),  edit,     `P4:`,                                      270, 350,   30,  20, _S17 ),
   wccreate( (infer,904),   edit,     ``,                                         300, 350,  190,  20, _S3  ),
   wccreate( (infer,8006),  edit,     `P5:`,                                      270, 370,   30,  20, _S17 ),
   wccreate( (infer,905),   edit,     ``,                                         300, 370,  190,  20, _S3  ),
   wccreate( (infer,8007),  edit,     `P6:`,                                      270, 390,   30,  20, _S17 ),
   wccreate( (infer,906),   edit,     ``,                                         300, 390,  190,  20, _S3  ),
   wccreate( (infer,8021),  edit,     `P7:`,                                      270, 410,   30,  20, _S17 ),
   wccreate( (infer,907),   edit,     ``,                                         300, 410,  190,  20, _S3  ),
   wccreate( (infer,8010),  edit,     `P8:`,                                      270, 430,   30,  20, _S17 ),
   wccreate( (infer,908),   edit,     ``,                                         300, 430,  190,  20, _S3  ),
   wccreate( (infer,8008),  edit,     `P9:`,                                      270, 450,   30,  20, _S17 ),
   wccreate( (infer,909),   edit,     ``,                                         300, 450,  190,  20, _S3  ),
   wccreate( (infer,8009),  edit,     `P10:`,                                     270, 470,   30,  20, _S17 ),
   wccreate( (infer,910),   edit,     ``,                                         300, 470,  190,  20, _S3  ),
   wccreate( (infer,8002),  edit,     `Q:`,                                       270, 500,   30,  20, _S17 ),
   wccreate( (infer,911),   edit,     ``,                                         300, 500,  190,  20, _S3  ),
   wccreate( (infer,30000), button,   `Aceptar`,                                  270, 530,   90,  30, _S7  ),
   wccreate( (infer,31000), button,   `Borrar Premisas`,                          370, 530,  120,  30, _S7  ),
   wccreate( (infer,401),   button,   `!`,                                        840,  70,   30,  20, _S7  ),
   wccreate( (infer,402),   button,   `!`,                                        840,  90,   30,  20, _S7  ),
   wccreate( (infer,403),   button,   `!`,                                        840, 110,   30,  20, _S7  ),
   wccreate( (infer,404),   button,   `!`,                                        840, 130,   30,  20, _S7  ),
   wccreate( (infer,405),   button,   `!`,                                        840, 150,   30,  20, _S7  ),
   wccreate( (infer,406),   button,   `!`,                                        840, 170,   30,  20, _S7  ),
   wccreate( (infer,407),   button,   `!`,                                        840, 190,   30,  20, _S7  ),
   wccreate( (infer,408),   button,   `!`,                                        840, 210,   30,  20, _S7  ),
   wccreate( (infer,409),   button,   `!`,                                        840, 230,   30,  20, _S7  ),
   wccreate( (infer,410),   button,   `!`,                                        840, 250,   30,  20, _S7  ),
   wccreate( (infer,411),   button,   `!`,                                        840, 270,   30,  20, _S7  ),
   wccreate( (infer,412),   button,   `!`,                                        840, 290,   30,  20, _S7  ),
   wccreate( (infer,413),   button,   `!`,                                        840, 310,   30,  20, _S7  ),
   wccreate( (infer,414),   button,   `!`,                                        840, 330,   30,  20, _S7  ),
   wccreate( (infer,415),   button,   `!`,                                        840, 350,   30,  20, _S7  ),
   wccreate( (infer,416),   button,   `!`,                                        840, 370,   30,  20, _S7  ),
   wccreate( (infer,417),   button,   `!`,                                        840, 390,   30,  20, _S7  ),
   wccreate( (infer,418),   button,   `!`,                                        840, 410,   30,  20, _S7  ),
   wccreate( (infer,419),   button,   `!`,                                        840, 430,   30,  20, _S7  ),
   wccreate( (infer,420),   button,   `!`,                                        840, 450,   30,  20, _S7  ),
   wccreate( (infer,421),   button,   `!`,                                        840, 470,   30,  20, _S7  ),
   wccreate( (infer,422),   button,   `!`,                                        840, 490,   30,  20, _S7  ),
   wccreate( (infer,423),   button,   `!`,                                        840, 510,   30,  20, _S7  ),
   wccreate( (infer,424),   button,   `!`,                                        840, 530,   30,  20, _S7  ),
   wccreate( (infer,425),   button,   `!`,                                        840, 550,   30,  20, _S7  ),
   wccreate( (infer,10000), static,   `1`,                                       1150, 650,   30,  20, _S4  ),
   wccreate( (infer,15000), static,   `N`,                                        -20, 650,   30,  20, _S13 ),
   wccreate( (infer,15001), edit,     ``,                                          20, 660,  100,  40, _S18 ),
   wccreate( (infer,15002), static,   `N`,                                        130, 660,   30,  20, _S13 ),
   wccreate( (infer,25000), button,   `←`,                                       1110,  10,   40,  30, _S19 ).

iniciar_deduccion :- 
		opera, 
		fuentes_deduccion, 
		pantalla_deduccion, 
		menu_deduccion,
		!.

fuentes_deduccion :- 
		wfcreate( botonesNegrilla, arial, 18, 2 ), 
		wfcreate( botonesNegrilla2, arial, 16, 2 ),
		wfcreate( botones, arial, 20, 0 ), 
		wfcreate( textos, arial, 16, 0 ), 
		wfcreate( resultados, arial, 16, 0 ), 
		wfcreate( notas, arial, 12, 0 ), 
		wfcreate( botonAtras, arial, 30, 2 ).

pantalla_deduccion :- 
		infer, 
		show_dialog(infer), 
		window_handler(infer,infer), 
		define_brush_colours, 
		fuentesDemostracion.

fuentesDemostracion :- 
		forall( member(Ven,[
			1001, 1002, 1004, 1005, 1006, 1007, 1008, 1009, 
			1021, 1022, 1023,
			401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 
			411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 
			421, 422, 423, 424, 425
		]), wfont((infer,Ven), botonesNegrilla)),
		forall( member(Ven,[
			30000, 31000
		]), wfont((infer,Ven), botonesNegrilla2)),
		forall( member(Ven,[
			1003, 1010, 
			1011, 1012, 1013, 1014, 1015, 1016, 1018, 1019, 
			1020
		]), wfont((infer,Ven), botones)),
		forall( member(V,[
			1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
			11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
			21, 22, 23, 24, 25, 26,
			80000, 8000,
			8011, 8012, 8013, 8014, 8015, 8016, 8017, 8018, 8019, 8020,
			901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911
		]), wfont((infer, V), textos)),
		forall( member(V,[
			100, 200, 300, 400, 500, 600, 700, 800, 900, 1000,
			1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000,
			2100, 2200, 2300, 2400, 2500
		]), wfont((infer, V), resultados)),
		forall( member(V,[
			25000
		]), wfont((infer, V), botonAtras)),
		wfocus((infer,80000)).

% Funciones varias.

%% Al cerrar.
opcionesCerrar_deduccion(Mod, Rls, Str) :- 
		(Mod = `S` ; Rls = `S`) -> (
			(
				Mod = `S` , Rls = `S` , 
				Str = `¿Deseas grabar los cambios y las nuevas reglas?`
			) ; (
				Mod = `S`, 
				Str = `¿Deseas grabar los nuevos cambios?`
			) ; (
				Rls = `S`, 
				Str = `¿Deseas grabar las nuevas reglas?`
			)
		) ; Str = ``.

accionCerrar_deduccion :- 
		isModified(Mod), 
		newRules(Rls), 
		(
			opcionesCerrar_deduccion(Mod, Rls, Str), 
			not(Str = ``), 
			message_box(yesnocancel, Str, Res), 
			(
				(
					Res = yes, 
					(
						(
							Mod = `S` , Rls = `S` , 
							infer(`Guardar`, Win), 
							infer(`Guardar tus reglas`, Win)
						) ; (
							Mod = `S`, 
							infer(`Guardar`, Win)
						) ; (
							Rls = `S`, 
							infer(`Guardar tus reglas`, Win)
						)
					), 
					cerrar_deduccion
				) ; (
					Res = no, 
					cerrar_deduccion
				) ; (
					Res = cancel, 
					true
				)
			) ; cerrar_deduccion
		), !.

cerrar_deduccion :- 
		cambioVentanas(infer, iniciar_evaluacion).

%% Premisas y conclusiones.
dejar(Win, N, Val) :- 
		write(Val)~>Str,
		wtext((Win,N), Str).
valor(Win, N, Val) :- 
		wtext((Win,N), Str),
		separar_y_dato(Str, Val).

conf(M, N) :- 
		gfx_paint((infer, N)),
		gfx( (brush = M -> rectangle(0, 0, 20, 20)) ),
		gfx_end((infer, N)).

prender(Lis, Inf, Color) :- 
		forall((
				integer_bound(1, X, 25),
				N is 8999 + X,
				wshow((infer,N), 0)
			), (
				conf(green, N),
				wshow((infer,N), 1)
			)
		),
		forall((
				member(X, Lis),
				X > 0, N is 8999 + X
			), conf(Color, N)
		),
		M is 8999 + Inf, conf(green, M).

listaPremisas(N, L, L2) :- 
		findall(P,(
				integer_bound(1, M, N),
				wtext((infer,M), StrPr),
				not(StrPr = ``),
				separar_y_dato(StrPr, P)
			), L),
            findall([M,P],(
				integer_bound(1, M, N),
				wtext((infer,M), StrPr),
				not(StrPr = ``),
				separar_y_dato(StrPr, P)
			), L2).

conjunPremisas(L) :- 
		findall(P, (
			integer_bound(901, M, 910),
			wtext((infer,M), Str),
			not(Str = ``),
			separar_y_dato(Str, P)
		), L).

%% Estados de guardado y modificado de la aplicacion.
isModified(Estado) :- 
		wtext((infer, 15000), Estado).

setModify :- 
		isModified(`S`), 
		newRules(R), 
		(R = `S` -> Sim = `(+)` ; Sim = ``), 
		cat([`Simbolizar y deducir (*)`, Sim], Str, _), 
		wtext(infer, Str).

setSaved :- 
		isModified(`N`), 
		newRules(R), 
		(R = `S` -> Sim = `(+)` ; Sim = ``), 
		cat([`Simbolizar y deducir `, Sim], Str, _), 
		wtext(infer, Str).


newRules(Estado) :- 
		wtext((infer, 15002), Estado).

newRulesAdded :- 
		newRules(`S`), 
		isModified(E), 
		(E = `S` -> Sim = `(*)` ; Sim = ``), 
		cat([`Simbolizar y deducir `, Sim, `(+)`], Str, _), 
		wtext(infer, Str).

newRulesSaved :- 
		newRules(`N`), 
		isModified(E), 
		(E = `S` -> Sim = `(*)` ; Sim = ``), 
		cat([`Simbolizar y deducir `, Sim, ``], Str, _), 
		wtext(infer, Str).

memoriaLinea(Texto) :- 
		wtext((infer, 10000), Texto).

%% Manejo de archivos.
cierra :- 
		fdict(1, D),
		forall(
			member(F, D),
			fclose(F)
		).

%% Abrir y guardar deduccion.
abrirDemo(Files) :- 
		opnbox(`Abrir archivo...`, [
				(`Archivo de Deducción`,`*.deduce`), 
				(`Prolog Source`,`*.pl`)
			], ``, `deduce`, Files).

salvarDemo(Files) :- 
		savbox(`Guardar archivo...`, [
				(`Archivo de Deducción`,`*.deduce`), 
				(`Prolog Source`,`*.pl`)
			], ``, `deduce`, Files).

guardarDemo(L6) :- 
		findall(
			[Demostracion, M, infer], (
				integer_bound(1, M, 26), 
				wtext((infer, M), Demostracion)
			), L1
		), 
		findall(
			[Simbolizacion, M, infer], (
				integer_bound(901, M, 911), 
				wtext((infer, M), Simbolizacion)
			), L2
		), 
		findall(
			[Proposiciones, M, infer], (
				integer_bound(8011, M, 8020), 
				wtext((infer, M), Proposiciones)
			), L3), 
		append(L1, L2, L4),
		append(L3, L4, L5),
		wtext((infer, 80000), Titulo),
		wtext((infer, 8000), Enunciado), 
		append([
			[Enunciado, 8000, infer], 
			[Titulo, 80000, infer]
		], L5, L6).

escribirDemo(L) :- 
		forall(
			member([Text, N, ID], L), 
			(
				write(Text)~>StrText,
				wtext((ID, N), StrText)
			)
		).

openDemo :- 
		cierra, 
		abrirDemo([Files]), 
		consult(Files), 
		lecturaDemo, 
		quitarComentarios, 
		cierra, 
		setSaved.

saveDemo :- 
		cierra, 
		salvarDemo([Files]), 
		(fcreate(Files, Files, -2, 1000000, 5)), 
		guardarDemo(L), 
		fclose(Files), 
		tell(Files), 
		write(`lecturaDemo :- `), 
		writeq(escribirDemo(L)), 
		write(`.`), 
		nl, 
		told, 
		setSaved.

%% Abrir y guardar reglas.
abrirReglas(Files) :- 
		opnbox(`Abrir reglas...`, [
				(`Archivo de Reglas`,`*.reglas`), 
				(`Prolog Source`,`*.pl`)
			], ``, `reglas`, Files).

salvarReglas(Files) :- 
		savbox(`Guardar reglas...`, [
				(`Archivo de Reglas`,`*.reglas`), 
				(`Prolog Source`,`*.pl`)
			], ``, `reglas`, Files).

guardarReglas(Lista) :- 
		setof(
			[Nombre, Premisa1, Premisa2, Premisa3, Conclusion], 
			regla(Nombre, Premisa1, Premisa2, Premisa3, Conclusion), 
			Lista
		).

escribirReglas(Lista) :- 
		retractall(reglaInferencia(_, _, _, _, _, 1)), 
		retractall(regla(_, _, _, _, _)), 
		forall(
			member([Nombre, Premisa1, Premisa2, Premisa3, Conclusion], Lista), 
			(
				armarRegla(Nombre, Premisa1, Premisa2, Premisa3, Conclusion, Regla), 
				asserta((Regla)), 
				asserta(( regla(Nombre, Premisa1, Premisa2, Premisa3, Conclusion) ))
			)
		).

reiniciarReglasInfer :- 
		archivos(`reglasInferencia`, Ruta), 
		reconsult(Ruta), 
		dynamic(regla/5).

borrarReglas :- 
		cierra, 
		retractall(reglaInferencia(_, _, _, _, _, _)), 
		retractall(regla(_, _, _, _, _)), 
		cierra, 
		reiniciarReglasInfer,  
		newRulesSaved.

openReglas :- 
		cierra, write(asd),nl,
		abrirReglas([Files]), 
		consult(Files), 
		retractall(reglaInferencia(_, _, _, _, _, _)), 
		dynamic(reglasInferencia/6), 
		lecturaReglas, 
		assert((reglaInferencia(premisa, Premisas, [], [0], A, 0) :- !)), 
		cierra, 
		newRulesSaved.

openReglasNoReset :- 
		cierra, 
		abrirReglas([Files]), 
		consult(Files), 
		lecturaReglas, 
		cierra, 
		newRulesSaved.

saveReglas :- 
		guardarReglas(L), 
		length(L, Len), 
		Len > 0 -> (
			cierra, 
			salvarReglas([Files]), 
			(fcreate(Files, Files, -2, 1000000, 5)), 
			fclose(Files), 
			tell(Files), 
			write(`lecturaReglas :- `), 
			writeq(escribirReglas(L)), 
			write(`.`), 
			nl, 
			told, 
			newRulesSaved
		) ; message_box(ok, `No has ingresado reglas de inferencia.`, ok).

%% Borrar premisas y comentarios.
accionBorrarPremisasDemostracion :- 
		memoriaLinea(`1`), 
		forall(
			integer_bound(1, N, 26),
			wtext((infer,N), ``)
		),
		call(infer((infer, 1002), msg_button ,_,_)).

quitarComentarios :- 
		forall(
			(
				integer_bound(1, M, 25),
				N is M * 100
			), 
			wtext((infer,N), ``)
		).

quitarColores :- 
		forall(
			(
				integer_bound(1, X, 25),
				N is 8999 + X,
				wshow((infer,N), 0)
			), (
				conf(green, N),
				wshow((infer,N), 1)
			)
		).

accionBorrarPremisasSimbolizacion :- 
		forall(
			integer_bound(901, N, 911),
			wtext((infer,N), ``)
		),
		memoriaLinea(`901`), 
		setModify.

%% Sugerencias.
extraer([Elem|Tail], Elem, Tail) :- !.
extraerSugerencia(List, Concl, Nombre, Prm, Nums) :- 
		extraer(List, Concl, List1),
		extraer(List1, Nombre, List2),
		extraer(List2, Prm, List3),
		extraer(List3, Nums, _), !.

memoriaSugerencia(Texto) :- 
		wtext((sug, 8000), Texto).

%% Nuevas reglas de inferencia.
espaciarReglas(Premisa1, Premisa2, Premisa3, Conclusion, Lista) :- 
		espaciar_cadena(Premisa1, Prem1), 
		espaciar_cadena(Premisa2, Prem2),  
		espaciar_cadena(Premisa3, Prem3),  
		espaciar_cadena(Conclusion, Concl), 
		append([[Prem1, Prem2, Prem3], Concl], [], Lista).

armarRegla(Nombre, Premisa1, Premisa2, Premisa3, Conclusion, Regla) :- 
		espaciarReglas(Premisa1, Premisa2, Premisa3, Conclusion, [[Prem1, Prem2, Prem3], Concl]), 
		cat([`member(`, Prem1, `, Premisas, N1), `], StrPrem1, _), 
		append([], [Prem1], Lista1Prem), 
		append([], [`N1`], Lista1Nums), (
			not(Prem2 = ``) ->  (
				cat([`member(`, Prem2, `, Premisas, N2), `], StrPrem2, _), 
				append(Lista1Prem, [Prem2], Lista2Prem), 
				append(Lista1Nums, [`N2`], Lista2Nums)
			); (
				StrPrem2 = ``, 
				append(Lista1Prem, [], Lista2Prem), 
				append(Lista1Nums, [], Lista2Nums)
			)
		), (
			not(Prem3 = ``) -> (
				cat([`member(`, Prem3, `, Premisas, N3), `], StrPrem3, _), 
				append(Lista2Prem, [Prem3], Lista3Prem), 
				append(Lista2Nums, [`N3`], Lista3Nums)
			); (
				StrPrem3 = ``, 
				append(Lista2Prem, [], Lista3Prem), 
				append(Lista2Nums, [], Lista3Nums)
			)
		), 
		write(Lista3Prem)~>StrPrem, 
		write(Lista3Nums)~>StrNums, 
		cat([
			`reglaInferencia(`, Nombre, `, Premisas, `, StrPrem, `, `, StrNums, `, `, Concl, `, 1) :- `, 
				StrPrem1, StrPrem2, StrPrem3, `!`
		], Str, _), 
		cade_dato(Str, Regla).

% Manejo de los menus.

%% Declaracion de la barra de menus.
menu_deduccion :- 
		wmcreate( menu ),
		wmnuadd( menu, -1, `Abrir`, 1000 ),
		wmnuadd( menu, -1, `Guardar`, 1001 ),
		wmnuadd( menu, -1, `Salir`, 1002 ),
		
		wmcreate( menu1 ),
		wmnuadd( menu1, -1, `Abrir tus reglas`, 1014 ),
		wmnuadd( menu1, -1, `Abrir sólo tus reglas`, 1010 ),
		wmnuadd( menu1, -1, `Agregar una nueva regla`, 1003 ),
		wmnuadd( menu1, -1, `Guardar tus reglas`, 1011 ),
		wmnuadd( menu1, -1, `Borrar tus reglas`, 1012 ),
		
		wmcreate( menu2 ),
		wmnuadd( menu2, -1, `Copiar`, 1008 ),
		wmnuadd( menu2, -1, `Pegar`, 1009 ),
		winapi( (user32,'CreateMenu'), [], 0, DialogMenuHandle ),

		wmnuadd( menu(DialogMenuHandle),-1, `Archivo`, menu ),
		wmnuadd( menu(DialogMenuHandle),-1, `Edición`, menu2),
		wmnuadd( menu(DialogMenuHandle),-1, `Reglas de Inferencia`, menu1 ),

		wndhdl(infer,H),
		winapi( (user32,'SetMenu'), [H,DialogMenuHandle ], 0, _ ),
		winapi( (user32,'DrawMenuBar'), [H], 0, _ ).

infer( Win, msg_menu, ID, _ ) :- 
		menus_deduccion(Item,ID), 
		infer( Item, Win ).

add_menu( infer, Name, Item ) :-
		winapi( (user32,'CreateMenu'), [], 0, DialogMenuHandle ),
		wmnuadd( menu(DialogMenuHandle), -1, Name, Item ).

%% Declaracion de los menus.
menus_deduccion(`Abrir`,1000).
menus_deduccion(`Guardar`,1001).
menus_deduccion(`Salir`,1002).

menus_deduccion(`Agregar una nueva regla`,1003).
menus_deduccion(`Abrir tus reglas`,1010).
menus_deduccion(`Abrir sólo tus reglas`,1014).
menus_deduccion(`Guardar tus reglas`,1011).
menus_deduccion(`Borrar tus reglas`,1012).

menus_deduccion(`Copiar`,1008).
menus_deduccion(`Pegar`,1009).

%% Acciones de los elementos de los menus.
infer(`Abrir`, Win) :- 
		openDemo.

infer(`Guardar`, Win) :- 
		saveDemo.

infer(`Salir`, Win) :- 
		accionCerrar_deduccion.

infer(`Agregar una nueva regla`, Win) :- 
		agregar_regla.

infer(`Abrir tus reglas`, Win) :- 
		newRules(R), 
		R = `S` -> (
			Str = `Las reglas que no hayas guardado se borrarán. ¿Estás seguro de que deseas cargar nuevas reglas?`, 
			message_box(yesno, Str, Res), 
			Res = yes -> openReglas ; !
		) ; openReglas.

infer(`Abrir sólo tus reglas`, Win) :- 
		newRules(R), 
		R = `S` -> (
			Str = `Las reglas que no hayas guardado se borrarán. ¿Estás seguro de que deseas cargar nuevas reglas?`, 
			message_box(yesno, Str, Res), 
			Res = yes -> openReglasNoReset ; !
		) ; openReglasNoReset.

infer(`Guardar tus reglas`, Win) :- 
		saveReglas.

infer(`Borrar tus reglas`, Win) :- 
		Str = `¿Estás seguro de que deseas borrar todas tus reglas?~MSe cargarán además las reglas por defecto.`, 
		message_box(yesno, Str, Res), 
		Res = yes -> borrarReglas ; !.

infer(`Copiar`, Win) :- 
		valor( infer, 10000, Num ),
		wedttxt((infer,Num), Str), 
		(
			not(Str = ``), 
			asserta(( portapapeles(Str) :- ! ))
		), 
		wfocus((infer,Num)).

infer(`Pegar`, Win) :- 
		valor( infer, 10000, Num ),
		portapapeles(Str), 
		wedttxt((infer,Num), Str), 
		wfocus((infer,Num)).

% Acciones de botones.
infer( (infer,25000), msg_button,_, _ ) :- 
		accionCerrar_deduccion.

% Mostrar que se ha modificado algo.
infer( (infer, N), msg_change, 1, _ ) :- 
		(
			member(N, [80000, 8000]); 
			integer_bound(8011, N, 8020);
			integer_bound(901, N, 911);
			integer_bound(1, N, 26)
		), 
		setModify.
 
%% Escribir en campo de texto seleccionado.
infer( (infer,N), msg_focus, _, _ ) :-
		%integer_bound( 1003, M, 1023 ),
		(integer_bound( 1, N, 26 ) ; integer_bound( 901, N, 911 )),
		dejar( infer, 10000, N ).

%% Escribir en campo de texto.
infer( (infer,M), msg_button, 0, _ ) :-
		integer_bound( 1003, M, 1020 ),
		valor( infer, 10000, Val ),
		wtext( (infer,M), Str ),
		
		% Adicionar en la posicion del cursor 
		wedttxt( (infer,Val), Str ).

%% Boton borrar uno (DEL).
infer( (infer,1022), msg_button, 0, _ ) :- 
		valor( infer, 10000, Linea ), 
		
		% Borrar en la posicion del cursor
		wedtsel((infer,Linea), Start, End), 
		Fin is End - 1, 
		wedttxt((infer,Linea), ``), 
		wfocus((infer,Linea)), 
		wedtsel((infer,Linea), Start, Fin), 
		
		integer_bound(1, Linea, 25), 
		L2 is Linea * 100,
		wtext((infer,L2), ``),
		N is 8999 + Linea,
		wshow((infer,N), 1).

%% Boton borrar todos (AC).
infer( (infer,1023), msg_button, 0, _ ) :- 
		valor( infer, 10000, Linea ),
		wtext((infer,Linea), ``),
		integer_bound(1, Linea, 25), 
		L2 is Linea * 100,
		wtext((infer,L2), ``),
		N is 8999 + Linea,
		wshow((infer,N), 1).

% Boton borrar premisas (demostracion).
infer( (infer,1021), msg_button, 0, Res ) :- 
		message_box(yesno, `¿Deseas en verdad borrar las premisas?`, Res), ((
				Res = yes,
				accionBorrarPremisasDemostracion
			) ; (
				Res = no,
				true
			)
		).

%% Boton borrar comentarios.
infer( (infer,1002), msg_button, _, _ ) :- 
		memoriaLinea(`1`), 
		quitarComentarios,
		quitarColores, 
		setModify.

%% Boton paso a paso.
infer( (infer,1001), msg_button, _, _ ) :- 
		memoriaLinea(StrNum),
		separar_y_dato(StrNum, N),
		wfocus((infer,N)),
		wtext((infer,N), StrPr),
		not(StrPr = ``),
		separar_y_dato(StrPr, Concl),
		M is N - 1,
		listaPremisas(M, L, _), (
			/*(
				member(Prm2, L, Nums2), (
					equiva(Nombre2, Nums2, Prm2, P) ; 
					equiva(Nombre2, Nums2, P, Prm2)
				),
				write([Nombre2, Nums2, Prm2])~>Str2,
				H2 is N * 100,
				wtext((infer,H2), Str2), 
				Ns2 is N + 1, 
				Ns2 < 27, 
				wfocus((infer, Ns2)), 
				write(Ns2)~>StrNs2,
				memoriaLinea(StrNs2), 
				prender([Nums2], N, red)
			) ; (
				regla(Nombre, L, Nums, Prm, P), 
				write([Nombre, Prm, Nums])~>Str,
				H is N * 100,
				wtext((infer,H), Str),
				Ns is N + 1,
				Ns < 27,
				wfocus((infer,Ns)),
				write(Ns)~>StrNs,
				memoriaLinea(StrNs), 
				prender(Prm, N, red)
			) ; */(
				reglaInferencia(Nombre, L, Prm, Nums, Concl, _),
				write([Nombre, Nums, Prm])~>Str,
				H is N * 100,
				wtext((infer,H), Str),
				Ns is N + 1, Ns < 27,
				wfocus((infer,Ns)),
				write(Ns)~>StrNs,
				memoriaLinea(StrNs), 
				prender(Nums, N, red)
			)
		).

%% Boton aceptar.
infer( (infer,30000), msg_button, 0, Res ) :- 
		conjunPremisas(L),
		pegarYY(L, Ps),
		wtext((infer,911), StrQ),
		separar_y_dato(StrQ, Q),
		(teorema(Ps → Q,Res), Res = 1),
		message_box(ok, `Sí es conclusión.`, ok),
		accionBorrarPremisasDemostracion,
		forall((
				integer_bound(1, N, 10),
				T is 900 + N,
				wtext((infer,T), StrPr),
				not(StrPr = ``)
			), (
				wtext((infer,N), StrPr)
			)
		),
		wtext((infer,911), StrPr2),
		wtext((infer,26), StrPr2),
		wshow(infer, 1).
infer( (infer,30000), msg_button, 0, _ ) :- (
			message_box(ok, `No es conclusión. Revisa tu simbolización.`, ok)
		),
		wshow(infer, 0),
		wshow(infer, 1).

% Boton borrar premisas (simbolizacion).
infer( (infer,31000), msg_button, 0, Res ) :- 
		message_box(yesno, `¿Deseas en verdad borrar las premisas?`, Res), ((
				Res = yes,
				accionBorrarPremisasSimbolizacion
			) ; (
				Res = no,
				true
			)
		).

%% Botones de sugerencias.
infer( (infer,ID), msg_button, _, _ ) :- 
		integer_bound(401, ID, 425),
		N is ID - 400,
		M is N - 1,
		listaPremisas(M, L, _),
		sugerencias,
		setof(
			[Concl, Nombre, Prm, Nums], 
			reglaInferencia(Nombre, L, Prm, Nums, Concl, 0), 
			Lista0
		) , (
			(
				setof(
				[Concl, Nombre, Prm, Nums], 
				reglaInferencia(Nombre, L, Prm, Nums, Concl, 1), 
				Lista1
				),
				append(Lista0, Lista1, Lista)
			) ; (
				append(Lista0, [], Lista)
			)
		), 
		forall((member(Elem, Lista)), (
				write(Elem)~>E,
				wlstadd((sug, 4000), -1, E, 1)
			)
		),
		write(N)~>Linea,
		memoriaSugerencia(Linea).

% Ventana de sugerencias.
sug :- 
   _S1 = [ws_caption,ws_dlgframe,ws_ex_topmost,dlg_ownedbyprolog],
   _S2 = [ws_child,ws_border,ws_tabstop,ws_visible,ws_vscroll,lbs_sort],
   _S3 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   _S4 = [ws_child,ws_border,ws_tabstop,ws_visible,es_right,es_multiline,es_autohscroll,es_autovscroll,es_readonly],
   wdcreate(  sug,       `Sugerencias`,          399, 106, 486, 348, _S1 ),
   wccreate( (sug,4000), listbox, ``,             10,  10, 460, 280, _S2 ),
   wccreate( (sug,1000), button,  `Seleccionar`,  40, 280, 170,  30, _S3 ),
   wccreate( (sug,1001), button,  `Cancelar`,    270, 280, 170,  30, _S3 ),
   wccreate( (sug,8000), edit,    ``,            475, 310,  30,  20, _S4 ).

sugerencias :- 
		sug, 
		show_dialog(sug), 
		window_handler(sug,sug), 
		fuentesSugerencias.

fuentesSugerencias :- 
		forall( member(Ven,[
			1000, 1001
		]), wfont((sug,Ven), botonesNegrilla)),
		forall( member(V,[
			4000
		]), wfont((sug, V), textos)).

% Acciones de botones.

%% Boton seleccionar.
sug( (sug,1000), msg_button, _, _ ) :- 
		wlstsel((sug,4000), Pos), 
		not(Pos = -1), % Cuando hay algo seleccionado.
		wlstget((sug,4000), Pos, String, _),
		cade_dato(String, List),
		extraerSugerencia(List, Concl, Nombre, Prm, Nums),
		memoriaSugerencia(Linea),
		cade_dato(Linea, N),
		dato_cadena_sin_espacios(Concl, Conclusion),
		wtext((infer,N), Conclusion),
		Ns is N + 1, Ns < 27,
		wfocus((infer,Ns)),
		write(Ns)~>StrNs,
		memoriaLinea(StrNs),
		setModify,
		wclose(sug).
sug( (sug,1000), msg_button, _, _ ) :- 
		% Cuando no hay nada seleccionado
		message_box(ok, `No has seleccionado una opción.`, ok), 
		!.

%% Boton cancelar.
sug( (sug,1001), msg_button, _, _ ) :- 
		wclose(sug).

% Ventana de agregar regla personalizada.
agregar :- 
   _S1 = [ws_caption,ws_dlgframe,ws_ex_topmost,dlg_ownedbyprolog],
   _S2 = [ws_child,ws_visible,ss_center],
   _S3 = [ws_child,ws_visible,ss_left],
   _S4 = [ws_child,ws_border,ws_tabstop,ws_visible,es_left,es_lowercase,es_multiline,es_autohscroll,es_autovscroll],
   _S5 = [ws_child,ws_border,ws_tabstop,ws_visible,es_left,es_uppercase,es_multiline,es_autohscroll,es_autovscroll,es_readonly],
   _S6 = [ws_child,ws_tabstop,ws_visible,bs_pushbutton,bs_text,bs_center,bs_vcenter],
   _S7 = [ws_child,bs_groupbox,ws_visible,bs_left],
   _S8 = [ws_child,ws_border,ws_tabstop,ws_visible,es_right,es_multiline,es_autohscroll,es_autovscroll,es_readonly],
   wdcreate(  agregar,        `Agregar nueva regla`,                                                                                                                                500, 150, 396, 398, _S1 ),
   wccreate( (agregar,11000), static, `Agregar una nueva regla de inferencia`,                                                                                                       30,  10, 330,  20, _S2 ),
   wccreate( (agregar,11001), static, `Nombre:`,                                                                                                                                     10,  40,  70,  20, _S3 ),
   wccreate( (agregar,8000),  edit,   ``,                                                                                                                                            90,  40, 290,  20, _S4 ),
   wccreate( (agregar,11002), static, `Nota: El nombre no debe contener espacios ni mayúsculas. Si quiere utilizar más de una palabra, separe cada una con "Barra al piso" ( _ ).`, 120,  70, 240,  40, _S3 ),
   wccreate( (agregar,11003), static, `Premisas:`,                                                                                                                                   10, 220,  70,  20, _S3 ),
   wccreate( (agregar,8001),  edit,   ``,                                                                                                                                            90, 220, 290,  20, _S5 ),
   wccreate( (agregar,8002),  edit,   ``,                                                                                                                                            90, 240, 290,  20, _S5 ),
   wccreate( (agregar,8003),  edit,   ``,                                                                                                                                            90, 260, 290,  20, _S5 ),
   wccreate( (agregar,11004), static, `Conclusión:`,                                                                                                                                 10, 290,  70,  20, _S3 ),
   wccreate( (agregar,8004),  edit,   ``,                                                                                                                                            90, 290, 290,  20, _S5 ),
   wccreate( (agregar,1000),  button, `Guardar`,                                                                                                                                     10, 330, 180,  30, _S6 ),
   wccreate( (agregar,1001),  button, `Cancelar`,                                                                                                                                   200, 330, 180,  30, _S6 ),
   wccreate( (agregar,100),   button, `A`,                                                                                                                                           70, 140,  30,  30, _S6 ),
   wccreate( (agregar,101),   button, `B`,                                                                                                                                          100, 140,  30,  30, _S6 ),
   wccreate( (agregar,102),   button, `C`,                                                                                                                                          130, 140,  30,  30, _S6 ),
   wccreate( (agregar,103),   button, `D`,                                                                                                                                          160, 140,  30,  30, _S6 ),
   wccreate( (agregar,104),   button, `E`,                                                                                                                                          190, 140,  30,  30, _S6 ),
   wccreate( (agregar,105),   button, `F`,                                                                                                                                          220, 140,  30,  30, _S6 ),
   wccreate( (agregar,106),   button, `¬`,                                                                                                                                           80, 170,  30,  30, _S6 ),
   wccreate( (agregar,107),   button, `∨`,                                                                                                                                          110, 170,  30,  30, _S6 ),
   wccreate( (agregar,108),   button, `∧`,                                                                                                                                          140, 170,  30,  30, _S6 ),
   wccreate( (agregar,109),   button, `→`,                                                                                                                                          170, 170,  30,  30, _S6 ),
   wccreate( (agregar,110),   button, `≡`,                                                                                                                                          200, 170,  30,  30, _S6 ),
   wccreate( (agregar,111),   button, `(`,                                                                                                                                          260, 140,  30,  30, _S6 ),
   wccreate( (agregar,112),   button, `)`,                                                                                                                                          290, 140,  30,  30, _S6 ),
   wccreate( (agregar,113),   button, `DEL`,                                                                                                                                        240, 170,  40,  30, _S6 ),
   wccreate( (agregar,114),   button, `AC`,                                                                                                                                         280, 170,  40,  30, _S6 ),
   wccreate( (agregar,12000), button, `Operadores`,                                                                                                                                  60, 120, 270,  90, _S7 ),
   wccreate( (agregar,10000), edit,   `8001`,                                                                                                                                       380, 365,  30,  20, _S8 ).

agregar_regla :- 
		agregar, 
		show_dialog(agregar), 
		window_handler(agregar,agregar), 
		fuentesAgregar.

fuentesAgregar :- 
		forall( member(Ven,[
			106, 107, 108, 109, 110, 
			111, 112, 113, 114, 
			1000, 1001
		]), wfont((agregar,Ven), botonesNegrilla)),
		forall( member(Ven,[
			100, 101, 102, 103, 104, 105
		]), wfont((agregar,Ven), botones)),
		forall( member(V,[
			11000, 11001, 11003, 11004
		]), wfont((agregar, V), textos)),
		forall( member(V,[
			11002, 12000
		]), wfont((agregar, V), notas)),
		forall( member(V,[
			8000, 8001, 8002, 8003, 8004
		]), wfont((agregar, V), resultados)).

% Acciones de botones.

%% Presionar una tecla en el campo de nombre de la regla.
agregar( (agregar, 8000), msg_key, (Flag, _, Code), _ ) :- 
		(Flag = down ; Flag = repeat), 
		%nl, write(Code), nl, 
		(
			(%% Nota: prohibir espacios y caracteres especiales.
				Code = 32; % Tecla espacio
				%Code = 190; % Teclas . y :
				%Code = 189; % Teclas - y _
				%Code = 188; % Teclas , y ;
				false
			), 
			wtext((agregar, 8000), Str), 
			quitar_ultimo_cadena(Str, Resp), 
			wtext((agregar, 8000), ``), 
			wedttxt((agregar, 8000), Resp), 
			!
		); 
		!.

%% Escribir en campo de texto seleccionado.
agregar( (agregar,N), msg_focus, _, _ ) :-
		%integer_bound( 100, M, 114 ),
		integer_bound( 8001, N, 8004 ),
		dejar( agregar, 10000, N ).

%% Escribir en campo de texto.
agregar( (agregar,M), msg_button, 0, _ ) :-
		integer_bound( 100, M, 112 ),
		valor( agregar, 10000, Val ),
		wtext( (agregar,M), Str ),
		
		% Adicionar en la posicion del cursor 
		wedttxt( (agregar,Val), Str ).

%% Boton borrar uno (DEL).
agregar( (agregar,113), msg_button, 0, _ ) :- 
		valor( agregar, 10000, Linea ),
		
		% Borrar en la posicion del cursor
		wedtsel((agregar,Linea), Start, End), 
		Fin is End - 1, 
		wedttxt((agregar,Linea), ``), 
		wfocus((agregar,Linea)), 
		wedtsel((agregar,Linea), Start, Fin).

%% Boton borrar todos (AC).
agregar( (agregar,114), msg_button, 0, _ ) :- 
		valor( agregar, 10000, Linea ),
		wtext((agregar,Linea), ``).

%% Boton guardar.
agregar( (agregar,1000), msg_button, _, _ ) :- 
		wtext((agregar, 8000), Nombre),
		wtext((agregar, 8001), Premisa1),
		wtext((agregar, 8002), Premisa2),
		wtext((agregar, 8003), Premisa3),
		wtext((agregar, 8004), Conclusion), 
		(
			not(Nombre = ``),
			not(Premisa1 = ``),
			not(Conclusion = ``),
			(
				armarRegla(Nombre, Premisa1, Premisa2, Premisa3, Conclusion, Regla), 
				asserta((Regla)), 
				asserta(( regla(Nombre, Premisa1, Premisa2, Premisa3, Conclusion) ))
			), 
			newRulesAdded, 
			wclose(agregar)
		).
agregar( (agregar,1000), msg_button, _, _ ) :- 
		wtext((agregar, 8000), Nombre),
		wtext((agregar, 8001), Premisa1),
		wtext((agregar, 8004), Conclusion), (
			(
				Nombre = ``,
				message_box(ok, `Debes ingresar el nombre de la regla.`, ok)
			) ; (
				Premisa1 = ``,
				message_box(ok, `Debes ingresar la primera premisa.`, ok)
			) ; (
				Conclusion= ``,
				message_box(ok, `Debes ingresar la conclusión.`, ok)
			)
		).

%% Boton cancelar.
agregar( (agregar,1001), msg_button, _, _ ) :- 
		wclose(agregar).

