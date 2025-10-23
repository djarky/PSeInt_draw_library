//CALCULADORA DE RESISTENCIAS DE 3,4,6 BANDAS CON ESTILO 




//NOTA DE VERSION Y COMPATIVILIDAD :
//------------------------------------------------------
//PSEINT VERSION 20250314 - Windows 11 64bits
//-----------------------------------------------------------
//--- PERFIL UTILIZADO: UNIFRANZ -- ----------------
//detalles extendido de perfil:
//-------------------
//desc=Perfil para la asignatura de Programación en la Universidad Franz Tamayo, Santa Cruz, Bolivia (enviado por el Docente PhD. Jaime Zambrana Chacón).
//version=20160321
//force_init_vars=1
//force_define_vars=1
//force_semicolon=1
//allow_concatenation=1
//enable_string_functions=1
//word_operators=1
//base_zero_arrays=1
//allow_dinamyc_dimensions=1
//overload_equal=1
//enable_user_functions=1
//lazy_syntax=1
//coloquial_conditions=0
//integer_only_switch=0
//deduce_negative_for_step=1
//use_nassi_shneiderman=0
//use_alternative_io_shapes=0
//allow_accents=0
//prefer_algoritmo=0
//prefer_funcion=0
//prefer_repeat_while=1
//-----------------------------------------------------------



//ok , vamos a extructurar y comentar que hace cada parte


//sprites graficos 
SubProceso draw_resistencia (Screen Por Referencia)
	Definir Resistencia_sprite Como Caracter;
	Resistencia_sprite <- "";
	Resistencia_sprite <- Concatenar(Resistencia_sprite, "   ######                       ######     ");
	Resistencia_sprite <- Concatenar(Resistencia_sprite, "  #.BBB..#######################......#    ");
	Resistencia_sprite <- Concatenar(Resistencia_sprite, " #..BBB..RRR..AAA..BBB..BBB..BBB.......#   ");
	Resistencia_sprite <- Concatenar(Resistencia_sprite, " #..BBB..RRR..AAA..BBB..BBB..BBB.......#   ");
	Resistencia_sprite <- Concatenar(Resistencia_sprite, " #..BBB..RRR..AAA..BBB..BBB..BBB.......#   ");
	Resistencia_sprite <- Concatenar(Resistencia_sprite, " #..BBB..RRR..AAA..BBB..BBB..BBB.......#   ");
	Resistencia_sprite <- Concatenar(Resistencia_sprite, " #..BBB..RRR..AAA..BBB..BBB..BBB.......#   ");
	Resistencia_sprite <- Concatenar(Resistencia_sprite, " #. BBB..RRR..AAA..BBB..BBB..BBB.......#   ");
	Resistencia_sprite <- Concatenar(Resistencia_sprite, "  # BBB..#######################......#    ");
	Resistencia_sprite <- Concatenar(Resistencia_sprite, "   ######                       ######     ");
	draw_sprite_big(Screen, Resistencia_sprite, 12, 10, 43, 10);
FinSubProceso

SubProceso draw_nyan (screen Por Referencia)
	Definir NYAN Como Caracter;
	NYAN <- "";
	NYAN <- Concatenar(NYAN, "              ##############        ");
	NYAN <- Concatenar(NYAN, "##############--------------#       ");
	NYAN <- Concatenar(NYAN, "&&&&&&&&&&&&#--......##...---# ##   ");
	NYAN <- Concatenar(NYAN, "++++++++++++#-......#++#....-##++#  ");
	NYAN <- Concatenar(NYAN, "-----#####  #-......#+++#....#+++#  ");
	NYAN <- Concatenar(NYAN, ".....#+++####-......#++++####++++#  ");
	NYAN <- Concatenar(NYAN, "*****##+++++#-......#++++++++++++#  ");
	NYAN <- Concatenar(NYAN, "¡¡¡¡¡¡¡####+#-.....#+++ #+++++ #++# ");
	NYAN <- Concatenar(NYAN, "::::::::::###-.....#+++##+++#+##++# ");
	NYAN <- Concatenar(NYAN, "============#-.....#+..+++++++++..# ");
	NYAN <- Concatenar(NYAN, "            #--....#+..+#++#++#+..# ");
	NYAN <- Concatenar(NYAN, ";;;;;;;;;####---....#+++#######++#  ");
	NYAN <- Concatenar(NYAN, "%%%%%%%%#+++##-------#++++++++++#   ");
	NYAN <- Concatenar(NYAN, "        #++# ###################    ");
	NYAN <- Concatenar(NYAN, "        ###   #++#   #++# #++#      ");
	NYAN <- Concatenar(NYAN, "               ###    ###  ###      ");
	draw_sprite_big(Screen, NYAN, 1, 10, 36, 15);
	draw_line(Screen,36,10,36,25," "); //fix
FinSubProceso

SubProceso draw_arky (screen Por Referencia)
	Definir ARKY Como Caracter;
	ARKY <- "";	
	ARKY <- Concatenar(ARKY, "################################################################################");
	ARKY <- Concatenar(ARKY, "###############################   ##############################################");
	ARKY <- Concatenar(ARKY, "###############################   ##############################################");
	ARKY <- Concatenar(ARKY, "########  ##########  ##########################################################");
	ARKY <- Concatenar(ARKY, "#####  ####        ####  ######   ##############################################");
	ARKY <- Concatenar(ARKY, "##  ######################  ############                ########################");
	ARKY <- Concatenar(ARKY, "##  ####  ##########  ####  ############ A R K Y 7 5 0  ########################");
	ARKY <- Concatenar(ARKY, "##  ######################  ############                ########################");
	ARKY <- Concatenar(ARKY, "################################################################################");
	ARKY <- Concatenar(ARKY, "###                   ######                    #######                  #######");
	ARKY <- Concatenar(ARKY, "#  ###################  ##  ####################  ##  ###################  #####");
	ARKY <- Concatenar(ARKY, "#  ###################  ##  #######   ##   #####  ##  ###################  #####");
	ARKY <- Concatenar(ARKY, "#  ###              ##  ##  #######   ##   #####  ##  #######    ########  #####");
	ARKY <- Concatenar(ARKY, "#  #############    ##  ##  #######   ##   #####  ##  ##              ###  #####");
	ARKY <- Concatenar(ARKY, "#  #####    #     ####  ##  #######   ##   #####  ##  #######    ########  #####");
	ARKY <- Concatenar(ARKY, "#  #####    ##########  ##  #####     ##     ###  ##  ##              ###  #####");
	ARKY <- Concatenar(ARKY, "#  ###    ############  ##  ###    #############  ##  ########   ########  #####");
	ARKY <- Concatenar(ARKY, "#  #######################  ####################  ##  ###################  #####");
	ARKY <- Concatenar(ARKY, "###                   ######                    ######                   #######");
	ARKY <- Concatenar(ARKY, "################################################################################");
	ARKY <- Concatenar(ARKY, "###                   ######                    #######                  #######");
	ARKY <- Concatenar(ARKY, "#  ###################  ##  ####################  ##  ###################  #####");
	ARKY <- Concatenar(ARKY, "#  ####            ###  ##  ####             ###  ##  ###             ###  #####");
	ARKY <- Concatenar(ARKY, "#  #############   ###  ##  ####  ##############  ##  ###             ###  #####");
	ARKY <- Concatenar(ARKY, "#  #########   #######  ##  ####             ###  ##  ###################  #####");
	ARKY <- Concatenar(ARKY, "#  #######   #########  ##  ##############   ###  ##  ####   ######### ##  #####");
	ARKY <- Concatenar(ARKY, "#  #######   #########  ##  ####             ###  ##  ##       ###  #####  #####");
	ARKY <- Concatenar(ARKY, "#  ###################  ##  ####################  ##  ####   ############  #####");
	ARKY <- Concatenar(ARKY, "#  ###################  ##  ####################  ##  ###################  #####");
	ARKY <- Concatenar(ARKY, "###                   ######                    ######                   #######");
	ARKY <- Concatenar(ARKY, "################################################################################");
	ARKY <- Concatenar(ARKY, "################################################################################");
	draw_sprite_big(Screen, ARKY, 1, 1, 80, 32);
FinSubProceso

SubProceso draw_ohmmm (screen Por Referencia)
	Definir OHMMM Como Caracter;
	OHMMM <- "";
	OHMMM <- Concatenar(OHMMM, "...#..#..#.#  #..###.# #.##..##..##..##.#..##.###.##.#  #..##.###..............:");
	OHMMM <- Concatenar(OHMMM, "...#.###.#.## #...#..# #.#...# #.#..#...#.#....#..#..## #.#...#................:");
	OHMMM <- Concatenar(OHMMM, "...#.# #.#.####...#..###.##..##..##..#..#..#...#..##.## #.#...##...............:");
	OHMMM <- Concatenar(OHMMM, ".#.#.# #.#.#.##...#..#.#.#...#.#.#....#.#...#..#..#..#.##.#...#................:");
	OHMMM <- Concatenar(OHMMM, "..#...#..#.#..#...#..#.#.##..#.#.##.##..#.##...#..##.#.##..##.###..............:");
	OHMMM <- Concatenar(OHMMM, "...............................................................................:");
	OHMMM <- Concatenar(OHMMM, ";;;!;!!;:::;::::;:.###;;;:..:;::::;:::!!:###;;;:::::::!!!;;!!;!!!;::;!!:::::;;::");
	OHMMM <- Concatenar(OHMMM, ";::::::;;::::::::!#....##################;::#::;;;:..::::::::::::::..:;;;:::::::");
	OHMMM <- Concatenar(OHMMM, "::;!!;!!;:::::;;;:#::::&:!&;::&:&&!!!&&:::::#::::!:;:::::::::::::::::::::::;::.:");
	OHMMM <- Concatenar(OHMMM, "::;:::;;:;:::!#####::::&:!&;;:&:&&:;!&&:;:::####:::::;!;!:&;!.!;!:;!;!:!;!.;:::.");
	OHMMM <- Concatenar(OHMMM, ":;;:;:!!!!::#:::;:#;!!!##################;;:#!;;#;;;:::::::::::::::...:;;;;:::..");
	OHMMM <- Concatenar(OHMMM, ":::;::::::::#::&;;!####....;!;:::........###:.::#;;:;;;:;;:::;;;::::::::::..:.::");
	OHMMM <- Concatenar(OHMMM, ":;;;:::::::!:!:;;!:............                 .::....: :...:.....:..::.......:");
	OHMMM <- Concatenar(OHMMM, "::;::::::::;;;.:......:...:...      OHMMMM....    ::.....:::::.:.::.....:......:");
	OHMMM <- Concatenar(OHMMM, ":::;::::::;:.;...:....:...::::                  . .:......;;:.;.....:::..:...:!:");
	OHMMM <- Concatenar(OHMMM, ":::;::&&;.....:.::..:!&&&&!:..    .....!& &&;.... ...:....!&&&&&;......:;:.:;.:!");
	OHMMM <- Concatenar(OHMMM, ":..::;&!;.....:...;&&&&&&&&&&!.;:.....:;;......:...:;..:..;;&#&!!!!:...::...;&&&");
	OHMMM <- Concatenar(OHMMM, ".::::::.!&&&&&;::::::::::.;&&&&:.;:..:!;.......::....:...::.:........;:!&&&&&&&&");
	OHMMM <- Concatenar(OHMMM, "........;&&&&::.##:::::::.:;!;!&&&&&&&!;:.......:;.;&&&&;;::..........:!&&&&&!!.");
	OHMMM <- Concatenar(OHMMM, ".:....:&&&&&&&!.##:::.....:;;#####&&&&&&####:;!::;&&&&&&&;...      . .!&&&&&&&&&");
	OHMMM <- Concatenar(OHMMM, "&&!!;!&&&#&&&#########:..!:!########&&&&#######&&&&&&&&&###!........;&&&&&&&&&&&");
	OHMMM <- Concatenar(OHMMM, "&&&&&&&&&&&&&#########&&&&&&########&&&&#######&&&&&&&&&###&&&&&&&&&&&!!!!!!!&&&");
	draw_sprite_big(Screen, OHMMM, 1, 4, 80, 22);
FinSubProceso

//la wea de la pantalla de inicio
SubProceso splash_screen(Screen Por Referencia)
	fade_out(Screen);
	draw_arky(Screen);
	draw_screen(Screen);
	Esperar 2 Segundos;
	fade_in(Screen);
	Definir i Como Entero;
	draw_resistencia(Screen);
	print_sprite(Screen,"CALCULO",1,2);
	Para i<-0 Hasta 5 Hacer
		draw_rect(Screen,1,21,80,8,"Verdadero"," ");
		print_sprite(Screen,"VALOR DE",1,21);
		draw_screen(Screen);
		delay(500);
		draw_rect(Screen,1,21,80,8,"Verdadero"," ");
		print_sprite(Screen,"RESISTOR",1,21);
		draw_screen(Screen);
		delay(500);
	FinPara	
FinSubProceso

//nya nya nya nya nyyya nyaya nya nya nya  nya nya nya nuya 
//nya nya nyanayanaya nya nya nya nya nya  
SubProceso animar_nyancat(Screen Por Referencia)
	draw_nyan(Screen);
	Definir i,j Como Entero;
	Para j <-0 Hasta 4 Hacer
		Para i <-0 Hasta 8 Hacer
			scroll_screen(Screen,1,0);
			//scroll_horizontal(Screen,-1);
			print_text_vertical(Screen," #&+-.*¡:= ;%   ",1,10);
			draw_screen(Screen);
		FinPara
		scroll_screen(Screen,0,1);
		Para i <-0 Hasta 8 Hacer
			scroll_screen(Screen,1,0);
			//scroll_horizontal(Screen,-1);
			print_text_vertical(Screen," #&+-.*¡:= ;%   ",1,10);
			draw_screen(Screen);
		FinPara
		scroll_screen(Screen,0,-1);
	FinPara	
FinSubProceso


//tabla de valores de resistencias con estilo
SubProceso draw_tabla_de_valores(Screen Por Referencia, SEL )
	animar_nyancat(Screen);
	Definir i Como Entero;
	
	Para i <-0 Hasta ((SEL+2)*12) Hacer
		print_text_vertical(Screen,"#&+-.*¡:= ;%   ",i+1,10); //ajustar el arcoiris
	FinPara
	
	Definir multiplicadores ,tolerancias , temperaturas Como Caracter;
	multiplicadores <- "x1   x10  x100 x1K  x10K x100Kx1M  x10M x100Mx1G  x0.1 x0.01";
	tolerancias     <- "      ±1%   ±2%               ±0.5% ±0.25%±0.1%             ±5%   ±10%      ";
	temperaturas <- "25010050 15 25 20 10 5  1  ";
	
	print_text(Screen,"COLOR",   3,7);
	print_text(Screen,"1 BANDA",11,7);
	print_text(Screen,"2 BANDA",20,7);
	
	draw_line(Screen, 1,9, 2,22,"|");
	draw_line(Screen,10,9,10,22,"|");
	draw_line(Screen,19,9,19,22,"|");
	
	draw_rect(Screen,13,9,4,13,"Verdadero"," ");
	draw_rect(Screen,22,9,4,13,"Verdadero"," ");
	
	print_text_vertical(Screen,"0123456789",14,10);
	print_text_vertical(Screen,"0123456789",23,10);
	
	
	print_text(Screen,"NEGRO ",   2,10);
	print_text(Screen,"MARRON ",  2,11);
	print_text(Screen,"ROJO ",    2,12);
	print_text(Screen,"NARANJA ", 2,13);
	print_text(Screen,"AMARILLO ",2,14);
	print_text(Screen,"VERDE ",   2,15);
	print_text(Screen,"AZUL ",    2,16);
	print_text(Screen,"VIOLETA ", 2,17);
	print_text(Screen,"GRIS ",    2,18);
	print_text(Screen,"BLANCO ",  2,19);
	print_text(Screen,"ORO ",     2,20);
	print_text(Screen,"PLATA ",   2,21);
	
	//selector
	Segun SEL Hacer
		1: //3 bandas
			print_text(Screen,"3 BANDA",29,7);
			draw_line(Screen,28,9,28,22,"|");
			print_text(Screen,"1 DIGITO"     ,11,8);
			print_text(Screen,"2 DIGITO"     ,20,8);
			print_text(Screen,"MULTIPLICADOR",29,8);
			draw_rect(Screen,31,9,7,13,"Verdadero"," ");
			draw_sprite_big(Screen,multiplicadores,32,10,5,12);
			
		2: //4 bandas
			print_text(Screen,"3 BANDA",29,7);
			print_text(Screen,"4 BANDA",40,7);
			draw_line(Screen,28,9,28,22,"|");
			draw_line(Screen,39,9,39,22,"|");
			print_text(Screen,"1 DIGITO"     ,11,8);
			print_text(Screen,"2 DIGITO"     ,20,8);
			print_text(Screen,"MULTIPL "     ,29,8);
			print_text(Screen,"TOLERANCIA"   ,40,8);	
			draw_rect(Screen,31,9,7,13,"Verdadero"," ");
			draw_sprite_big(Screen,multiplicadores,32,10,5,12);
			draw_rect(Screen,40,9,8,13,"Verdadero"," ");
			draw_sprite_big(Screen,tolerancias,41,10,6,12);
		3: //5 bandas
			print_text(Screen,"3 BANDA",29,7);
			print_text(Screen,"4 BANDA",38,7);
			print_text(Screen,"5 BANDA",49,7);
			draw_line(Screen,28,9,28,22,"|");
			draw_line(Screen,37,9,37,22,"|");
			draw_line(Screen,48,9,48,22,"|");
			print_text(Screen,"1 DIGITO"     ,11,8);
			print_text(Screen,"2 DIGITO"     ,20,8);
			print_text(Screen,"3 DIGITO"     ,29,8);		
			print_text(Screen,"MULTIPL "     ,38,8);
			print_text(Screen,"TOLERANCIA"   ,49,8);
			draw_rect(Screen,31,9,4,13,"Verdadero"," ");
			draw_rect(Screen,40,9,7,13,"Verdadero"," ");
			draw_sprite_big(Screen,multiplicadores,41,10,5,12);
			draw_rect(Screen,49,9,8,13,"Verdadero"," ");
			draw_sprite_big(Screen,tolerancias,50,10,6,12);
			print_text_vertical(Screen,"0123456789",32,10);
			
		4: //6bandas
			print_text(Screen,"3 BANDA",29,7);
			print_text(Screen,"4 BANDA",38,7);
			print_text(Screen,"5 BANDA",49,7);
			print_text(Screen,"6 BANDA",60,7);
			draw_line(Screen,28,9,28,22,"|");
			draw_line(Screen,37,9,37,22,"|");
			draw_line(Screen,48,9,48,22,"|");
			draw_line(Screen,59,9,59,22,"|");
			print_text(Screen,"1 DIGITO"     ,11,8);
			print_text(Screen,"2 DIGITO"     ,20,8);
			print_text(Screen,"3 DIGITO"     ,29,8);		
			print_text(Screen,"MULTIPL "     ,38,8);
			print_text(Screen,"TOLERANCIA"   ,49,8);
			print_text(Screen,"TEMPERATURA"  ,60,8);			
			draw_rect(Screen,31,9,4,13,"Verdadero"," ");
			draw_rect(Screen,40,9,7,13,"Verdadero"," ");
			draw_sprite_big(Screen,multiplicadores,41,10,5,12);
			draw_rect(Screen,49,9,8,13,"Verdadero"," ");
			draw_sprite_big(Screen,tolerancias,50,10,6,12);	
			draw_rect(Screen,62,9,6,13,"Verdadero"," ");
			draw_sprite_big(Screen,temperaturas,63,10,3,9);	
			print_text_vertical(Screen,"0123456789",32,10);
	FinSegun	
	draw_screen(Screen);
FinSubProceso


SubProceso num <- convertir_color_a_numero(color)
	Definir num Como Entero;
	num<-99;
	Segun color Hacer
		"NEGRO"   : num<- 0;
		"MARRON"  : num<- 1;  
		"ROJO"    : num<- 2;    
		"NARANJA" : num<- 3; 
		"AMARILLO": num<- 4;
		"VERDE"   : num<- 5;   
		"AZUL"    : num<- 6;    
		"VIOLETA" : num<- 7; 
		"GRIS"    : num<- 8;    
		"BLANCO"  : num<- 9;  
		"ORO"     : num<- 10;     
		"PLATA"   : num<- 11;   
			// esto porque los colores se escriben difenrente y me confundo al ingresar datos mejor revalido estos mas
		"CAFE"       : num<- 1; 	
		"DORADO"     : num<- 10;   	
		"PLATEADO"   : num<- 11; 
		"ANARANJADO" : num<- 3;
		"MORADO"     : num<- 7;
		"LILA"       : num<- 7;
		"PLOMO"      : num<- 8;   
		"PURPURA"    : num<- 7; 
		"FUXIA"      : num<- 7; // no se si es el mismo color pero yaaa
		"CELESTE"    : num<- 6;  	
		"CYAN"       : num<- 6;  // ya no se que cosa rara se le ocurra meter al usuario ,pero lo tenemos
		"TINTO"    : num<- 2;   	
			// tambien en ingles porque yolo
		"BLACK"   : num <- 0;
		"BROWN"   : num <- 1;
		"RED"     : num <- 2;
		"ORANGE"  : num <- 3;
		"YELLOW"  : num <- 4;
		"GREEN"   : num <- 5;
		"BLUE"    : num <- 6;
		"VIOLET"  : num <- 7;
		"GRAY"    : num <- 8;
		"WHITE"   : num <- 9;
		"GOLD"    : num <- 10;
		"SILVER"  : num <- 11;
			// en efecto tenemos todos los colores , TODOSOOS!!!!
		"ROJO"       : num <- 2;
		"REDSTONE"       : num <- 2;
		"BERMELLÓN"  : num <- 2;
		"CARMESÍ"    : num <- 2;
		"ESCARLATA"  : num <- 2;
		"GRANATE"    : num <- 2;
		"RUBÍ"       : num <- 2;
		"RUBI"       : num <- 2;
		"BURDEOS"    : num <- 2;
		"ROJO SANGRE": num <- 2;
		"ROJO FUEGO" : num <- 2;
		"ROJO PASIÓN": num <- 2;
		"NEGRO"       : num <- 0;
		"ÉBANO"       : num <- 0;
		"EBANO"       : num <- 0;
		"AZABACHE"    : num <- 0;
		"OBSCURO"     : num <- 0;
		"NEGRUZCO"    : num <- 0;
		"MARFIL NEGRO": num <- 0;
		"CARBÓN"      : num <- 0;
		"CARBON"      : num <- 0;
		"NOCTURNO"    : num <- 0;
		"SOMBRA"      : num <- 0;
		"NEGRURA"     : num <- 0;
		"MARRÓN"       : num <- 1;
		"CAFÉ"         : num <- 1;
		"CASTAÑO"      : num <- 1;
		"CHOCOLATE"    : num <- 1;
		"CARAMELO"     : num <- 1;
		"AVELLANA"     : num <- 1;
		"BRONCEADO"    : num <- 1;
		"TIERRA"       : num <- 1;
		"CAOBA"        : num <- 1;
		"TRIGO OSCURO" : num <- 1;
		"NARANJA"       : num <- 3;
		"ANARANJADO"    : num <- 3;
		"MANDARINA"     : num <- 3;
		"CORAL"         : num <- 3;
		"MELOCOTÓN"     : num <- 3;
		"AMBAR"         : num <- 3;
		"CALABAZA"      : num <- 3;
		"ZANAHORIA"     : num <- 3;
		"TERRACOTA"     : num <- 3;
		"FUEGO SUAVE"   : num <- 3;
		"AMARILLO"         : num <- 4;
		"DORADO"           : num <- 4;
		"LIMÓN"            : num <- 4;
		"LIMON"            : num <- 4;
		"VAINILLA"         : num <- 4;
		"CANARIO"          : num <- 4;
		"MAÍZ"             : num <- 4;
		"MAIZ"             : num <- 4;
		"MOSTAZA"          : num <- 4;
		"ÁMBAR CLARO"      : num <- 4;
		"MIEL"             : num <- 4;
		"CREMA"            : num <- 4;
		"VERDE"        : num <- 5;
		"ESMERALDA"    : num <- 5;
		"OLIVA"        : num <- 5;
		"LIMA"         : num <- 5;
		"PINO"         : num <- 5;
		"CAZA"         : num <- 5;
		"CELADÓN"      : num <- 5;
		"MENTA"        : num <- 5;
		"JADE"         : num <- 5;
		"AGUACATE"     : num <- 5;
		"AZUL"        : num <- 6;
		"INDIGO"      : num <- 6;
		"ZAFIRO"      : num <- 6;
		"MARINO"      : num <- 6;
		"PETRÓLEO"    : num <- 6;
		"PETROLEO"    : num <- 6;
		"TURQUESA"    : num <- 6;
		"ANIL"        : num <- 6;
		"BERENJENA"  : num <- 7;
		"OBSIDIANA"  : num <- 7;
		"ORQUIDEA"   : num <- 7;
		"AMATISTA"   : num <- 7;
		"VIOLETTA"   : num <- 7;
		"ÍNDIGO"     : num <- 7;
		"INDIGO"     : num <- 7;
		"ANTRACITA"   : num <- 8;
		"CENIZA"      : num <- 8;
		"HUMO"        : num <- 8;
		"PIEDRA"      : num <- 8;
		"NIEBLA"      : num <- 8;
		"METAL"       : num<- 11; 
		"METALICO"    : num<- 11; 
		//uff pues imaginate leer una resistencia como [aguacate,limon,maiz,humo] XD pero SE PUEDE!!!
			
		De Otro Modo:
			num<-99;
	FinSegun
	//entrada alternativa
	si es_digito(color) Entonces
		num<-ConvertirANumero(color);
	FinSi
FinSubProceso

SubProceso color <- convertir_numero_a_color(num)
	Definir color Como Cadena;
	color <- "......";
	Segun num Hacer
		0  : color <- "NEGROO";
		1  : color <- "MARRON";
		2  : color <- "ROJOSO";
		3  : color <- "NARANJ";
		4  : color <- "AMARIL";
		5  : color <- "VERDEE";
		6  : color <- "AZULIS";
		7  : color <- "VIOLET";
		8  : color <- "GRISES";
		9  : color <- "BLANCO";
		10 : color <- "OROORO";
		11 : color <- "PLATAA";
		12 : color <- "******";
		De Otro Modo:
			color <- "......";
	FinSegun
FinSubProceso



SubProceso pintar_banda(Screen Por Referencia,POS,val)
	segun POS Hacer
		0:
			print_text_vertical(Screen,convertir_numero_a_color(val),16,11);
			print_text_vertical(Screen,convertir_numero_a_color(val),17,11);
			print_text_vertical(Screen,convertir_numero_a_color(val),18,11);
			print_text_vertical(Screen,convertir_numero_a_color(val),16,13);
			print_text_vertical(Screen,convertir_numero_a_color(val),17,13);
			print_text_vertical(Screen,convertir_numero_a_color(val),18,13);
			print_text_vertical(Screen,convertir_numero_a_color(val),16,12);
			print_text_vertical(Screen,convertir_numero_a_color(val),17,12);
			print_text_vertical(Screen,convertir_numero_a_color(val),18,12);
		1:
			print_text_vertical(Screen,convertir_numero_a_color(val),21,12);
			print_text_vertical(Screen,convertir_numero_a_color(val),22,12);
			print_text_vertical(Screen,convertir_numero_a_color(val),23,12);
		2:
			print_text_vertical(Screen,convertir_numero_a_color(val),26,12);
			print_text_vertical(Screen,convertir_numero_a_color(val),27,12);
			print_text_vertical(Screen,convertir_numero_a_color(val),28,12);
		3:
			print_text_vertical(Screen,convertir_numero_a_color(val),31,12);
			print_text_vertical(Screen,convertir_numero_a_color(val),32,12);
			print_text_vertical(Screen,convertir_numero_a_color(val),33,12);
		4:
			print_text_vertical(Screen,convertir_numero_a_color(val),36,12);
			print_text_vertical(Screen,convertir_numero_a_color(val),37,12);
			print_text_vertical(Screen,convertir_numero_a_color(val),38,12);
		5:
			print_text_vertical(Screen,convertir_numero_a_color(val),41,12);
			print_text_vertical(Screen,convertir_numero_a_color(val),42,12);
			print_text_vertical(Screen,convertir_numero_a_color(val),43,12);
	FinSegun
	draw_screen(Screen);
FinSubProceso


SubProceso val <- leer_banda(Screen Por Referencia,POS)
	Definir val Como Entero;
	val <-99;
	Definir arrow Como Caracter;
	Definir lect Como Caracter;
	arrow<-"";
	arrow <- Concatenar(arrow,"  #  ");
	arrow <- Concatenar(arrow," ### ");
	arrow <- Concatenar(arrow,"# # #");
	arrow <- Concatenar(arrow,"  #  ");
	arrow <- Concatenar(arrow,"  #  "); //la flechita iindica la posision UwU
	segun POS Hacer
		0:
			draw_sprite_big(Screen, arrow, 15, 21, 5, 5);
		1:
			draw_sprite_big(Screen, arrow, 20, 21, 5, 5);
		2:
			draw_sprite_big(Screen, arrow, 25, 21, 5, 5);
		3:
			draw_sprite_big(Screen, arrow, 30, 21, 5, 5);
		4:
			draw_sprite_big(Screen, arrow, 35, 21, 5, 5);
		5:
			draw_sprite_big(Screen, arrow, 40, 21, 5, 5);		
	FinSegun	
	draw_screen(Screen);
	lect <- "E";
	Mientras convertir_color_a_numero(lect)==99 Hacer
		Leer lect;
		lect<- Mayusculas(lect);
		si convertir_color_a_numero(lect) ==99 Entonces
			print_text(Screen,"ingrese un color valido!",21,26);
			draw_screen(Screen);
		FinSi
	FinMientras
	val <- convertir_color_a_numero(lect);
	draw_rect(Screen,15,21,30,8,"Verdadero"," ");
	pintar_banda(Screen,POS,val);
	draw_screen(Screen);
FinSubProceso


SubProceso leer_valores(Screen Por Referencia,R Por Referencia ,SEL)
	Definir i Como Entero;
	fade_out(Screen);
	draw_resistencia(screen);
	print_text(Screen,"INGRESE COLOR:",5,2);
	print_text(Screen,"0 NEGRO , 1 MARRON , 2 ROJO , 3 NARANJA , 4 AMARILLO , 5 VERDE , 6 AZUL ",1,3);  
	print_text(Screen,"7 VIOLETA , 8 GRIS , 9 BLANCO , 10 ORO , 11 PLATA ,",1,4);  
	Para i<-0 Hasta 6 Hacer
		R[i]<-99;
		pintar_banda(Screen,i,99); //limpiar resistencia
	FinPara
	Definir X Como Caracter;
	Segun SEL Hacer
		1: //3 bandas
			pintar_banda(Screen,1,12);//placeholder
			pintar_banda(Screen,2,12);
			pintar_banda(Screen,3,12);
			R[1]<- leer_banda(Screen,1);
			R[2]<- leer_banda(Screen,2);
			R[3]<- leer_banda(Screen,3);
		2: //4 bandas
			pintar_banda(Screen,1,12);
			pintar_banda(Screen,2,12);
			pintar_banda(Screen,3,12);
			pintar_banda(Screen,4,12);
			R[1]<- leer_banda(Screen,1);
			R[2]<- leer_banda(Screen,2);
			R[3]<- leer_banda(Screen,3);
			R[4]<- leer_banda(Screen,4);
		3: //5 bandas
			pintar_banda(Screen,0,12);
			pintar_banda(Screen,1,12);
			pintar_banda(Screen,2,12);
			pintar_banda(Screen,3,12);
			pintar_banda(Screen,4,12);
			R[0]<- leer_banda(Screen,0);
			R[1]<- leer_banda(Screen,1);
			R[2]<- leer_banda(Screen,2);
			R[3]<- leer_banda(Screen,3);
			R[4]<- leer_banda(Screen,4);	
		4: //6 bandas
			pintar_banda(Screen,0,12);
			pintar_banda(Screen,1,12);
			pintar_banda(Screen,2,12);
			pintar_banda(Screen,3,12);
			pintar_banda(Screen,4,12);
			pintar_banda(Screen,5,12);	
			R[0]<- leer_banda(Screen,0);
			R[1]<- leer_banda(Screen,1);
			R[2]<- leer_banda(Screen,2);
			R[3]<- leer_banda(Screen,3);
			R[4]<- leer_banda(Screen,4);	
			R[5]<- leer_banda(Screen,5);
	FinSegun
FinSubProceso


SubProceso agregar_sufijo_con_decimal(primer_digito, cantidad_digitos, sufijo, val, resultado Por Referencia)
    Definir i Como Entero;
    resultado <- "";
	
    // Calcular cuántos dígitos mostrar antes del punto decimal
    // Regla: si cantidad_digitos = 4, muestra 1 dígito antes del punto
    //        si cantidad_digitos = 5, muestra 2 dígitos antes del punto
    //        si cantidad_digitos = 6, muestra 3 dígitos antes del punto
    Definir digitos_antes_punto Como Entero;
    digitos_antes_punto <- cantidad_digitos - 3;
    Si digitos_antes_punto < 1 Entonces
        digitos_antes_punto <- 1;
    FinSi
	
    // Agregar los dígitos antes del punto
    Para i <- 0 Hasta digitos_antes_punto - 1
        resultado <- resultado + ConvertirATexto(val[primer_digito + i]);
    FinPara
	
    // Agregar el punto decimal si hay más dígitos y el siguiente dígito no es cero
    Si primer_digito + digitos_antes_punto < primer_digito + cantidad_digitos Entonces
        Definir digito_decimal Como Entero;
        digito_decimal <- val[primer_digito + digitos_antes_punto];
        Si digito_decimal <> 0 Entonces
            resultado <- resultado + "." + ConvertirATexto(digito_decimal);
        FinSi
    FinSi
	
    // Agregar sufijo
    resultado <- resultado + sufijo;
FinSubProceso





//lo que realmente tenia que hacer XD
SubProceso val_text <- calcular_resistencia(R)
	Definir val_text como cadena;
	Definir val Como Entero;
	Definir i como Entero;
	Dimension val[15];
	para i<-0 Hasta 14 Hacer
		val[i]<-0;
	FinPara
	val_text <- " ";
	// verificar datos validos , si una banda e digito es superior a 9 , si una banda de multp ,toler , temp superan su rango , 99 se ignora pues es null y no se usa en ese caso espec
	si (R[0] > 9 y R[0] <> 99 ) o (R[1] > 9 y R[1] <> 99 ) o (R[2] > 9 y R[2] <> 99 ) o (R[3] > 12 y R[3] <> 99) o (R[4] > 12 y R[4] <> 99 ) o (R[5] > 6 y R[5] <> 99 ) Entonces
		val_text<- "no valido";
	SiNo
		
		si R[3] < 10 Entonces
			si (R[0]<10) Entonces
				val[10-R[3]]<- R[0];; //recorremos  por el multiplicador 
			FinSi
			val[11-R[3]] <- R[1];
			val[12-R[3]] <- R[2]; 
		FinSi
		si R[3] == 10 Entonces //multiplicador por 0.1
			si (R[0]<10) Entonces
				val[11]<- R[0]; //recorremos  por el multiplicador 
			FinSi
			val[12] <- R[1];
			val[13] <- R[2]; 
		FinSi
		si R[3] == 11 Entonces //multiplicador por 0.01
			si (R[0]<10) Entonces
				val[12]<- R[0];; //recorremos  por el multiplicador 
			FinSi
			val[13] <- R[1];
			val[14] <- R[2]; 
		FinSi
		
		Definir primer_digito Como Entero;
		// Encontrar el índice del primer dígito distinto de cero
		primer_digito <- 1;
		Mientras primer_digito <= 12 Y val[primer_digito] = 0
			primer_digito <- primer_digito + 1;
		FinMientras
		Definir cantidad_digitos Como Entero;
		cantidad_digitos <- 12 - primer_digito + 1;
		Definir resultado como cadena ;
		// Según la cantidad de dígitos, asignar sufijo y construir cadena
		
		Si cantidad_digitos >= 10 Entonces
			// Sufijo G
			agregar_sufijo_con_decimal(primer_digito, cantidad_digitos, "G", val, resultado);
			
		Sino
			Si cantidad_digitos >= 7 Entonces
				// Sufijo M
				agregar_sufijo_con_decimal(primer_digito, cantidad_digitos, "M", val, resultado);
				
			Sino
				Si cantidad_digitos >= 4 Entonces
					// Sufijo K
					agregar_sufijo_con_decimal(primer_digito, cantidad_digitos, "K", val, resultado);
					
				Sino
					// Número pequeño: mostrar sin sufijo
					resultado <- "";
					Para i <- primer_digito Hasta 12
						resultado <- resultado + ConvertirATexto(val[i]);
					FinPara
				FinSi
			FinSi
		FinSi
		//parcheamos bien raro , pero ya no quiero re-modificar todo
		si R[3] == 10 Entonces
			si val[11] <> 0 Entonces
				resultado <- "0." + ConvertirATexto(val[11] ) + ConvertirATexto(val[12] )+ConvertirATexto(val[13] );
			SiNo
				resultado <- "0." + ConvertirATexto(val[12] )+ConvertirATexto(val[13] );
			FinSi
			
		FinSi
		si R[3] == 11 Entonces
			si val[11] <> 0 Entonces
				resultado <- "0.0" + ConvertirATexto(val[11] ) + ConvertirATexto(val[12] )+ConvertirATexto(val[13] );
			SiNo
				resultado <- "0.0" + ConvertirATexto(val[12] )+ConvertirATexto(val[13] );
			FinSi
			
		FinSi

		val_text <- Concatenar(val_text,resultado);

		
		Segun R[4] Hacer //tolerancias
			12:
				val_text <- Concatenar(val_text,"±20%"); // tolerancia default de resistencias de 3 bandas 
			1:
				val_text <- Concatenar(val_text,"±1%");
			2:
				val_text <- Concatenar(val_text,"±2%");
			3:
				val_text <- Concatenar(val_text,"±3%");
			4:
				val_text <- Concatenar(val_text,"±4%");
			5:
				val_text <- Concatenar(val_text,"±0.5%");
			6:
				val_text <- Concatenar(val_text,"±0.25%");
			7:
				val_text <- Concatenar(val_text,"±0.10%");
			10:
				val_text <- Concatenar(val_text,"±5%");
			11:
				val_text <- Concatenar(val_text,"±10%");
			
		FinSegun
		segun R[5] Hacer
			0:
				val_text <- Concatenar(val_text,"250ppm/K");
			1:
				val_text <- Concatenar(val_text,"100ppm/K");
			2:
				val_text <- Concatenar(val_text,"50ppm/K");
			3:
				val_text <- Concatenar(val_text,"15ppm/K");
			4:
				val_text <- Concatenar(val_text,"25ppm/K");
			5:
				val_text <- Concatenar(val_text,"20ppm/K");
			6:
				val_text <- Concatenar(val_text,"10ppm/K");
			7:
				val_text <- Concatenar(val_text,"5ppm/K");
			8:
				val_text <- Concatenar(val_text,"1ppm/K");
			// > 9 no concatena nada 
		FinSegun
		
	FinSi
	
FinSubProceso

SubProceso realizar_calculos(Screen Por Referencia,SEL)
	Esperar Tecla;
	Definir X Como Caracter;
	Definir R Como Entero;
	Dimension R[7];
	Leer X;
	si X <> "2" Entonces
		leer_valores(Screen,R,SEL);
		print_text(Screen,calcular_resistencia(R),55,15);
		print_banner(Screen,calcular_resistencia(R),1, 20, 200);
		//print_sprite(Screen,calcular_resistencia(R),1,20);
		draw_screen(Screen);
		Esperar Tecla;
	FinSi
FinSubProceso


SubProceso  mostrar_menu (Screen Por Referencia)
	Definir i Como Entero;	
	Definir SEL Como Caracter; //caracter bro , no quiero crasheos
	SEL<-" "; 
	Mientras SEL <> "X" Hacer //while menu
		fade_out(Screen);
		print_sprite(Screen,"MENU",1,2);
		draw_screen(Screen);
		Para i<-0 Hasta 5 Hacer
			draw_rect(Screen,2,20,80,16,"Verdadero"," ");
			print_text(Screen,"1 RESISTENCIAS DE 3 BANDAS", (30 - (i*5) ) ,20); //mulp para efecto de varias velocidades
			print_text(Screen,"2 RESISTENCIAS DE 4 BANDAS", (30 - (i*4) ) ,22);
			print_text(Screen,"3 RESISTENCIAS DE 5 BANDAS", (30 - (i*3) ) ,24);
			print_text(Screen,"4 RESISTENCIAS DE 6 BANDAS", (30 - (i*2) ) ,26);
			print_text(Screen,"5 SALIR                   ", (30 - (i*1) ) ,28);
			draw_screen(Screen); delay(100);
		FinPara
		Leer SEL ;
		//resaltar la Opcion 
		Segun SEL Hacer
			"1":
				draw_line(Screen,1,20,80,20,"*");print_text(Screen,"1 RESISTENCIAS DE 3 BANDAS", 5,20);		
			"2":
				draw_line(Screen,1,22,80,22,"*");print_text(Screen,"2 RESISTENCIAS DE 4 BANDAS", 10,22);
			"3":
				draw_line(Screen,1,24,80,24,"*");print_text(Screen,"3 RESISTENCIAS DE 5 BANDAS", 15,24);
			"4":
				draw_line(Screen,1,26,80,26,"*");print_text(Screen,"4 RESISTENCIAS DE 6 BANDAS", 20,26);
			"5":
				draw_line(Screen,1,28,80,28,"*");print_text(Screen,"5 SALIR                   ", 25,28);SEL="X";//salir
			De Otro Modo:
				//eegstereg , Imprimir random 
				Mientras !es_digito(SEL) Hacer
					Leer SEL ;
					si Aleatorio(0,1)==1 Entonces
						print_text(Screen,SEL,Aleatorio(1,32),Aleatorio(1,80));
					SiNo
						print_text_vertical(Screen,SEL,Aleatorio(1,32),Aleatorio(1,80));
					FinSi
					draw_screen(Screen);
				FinMientras
		FinSegun
		draw_screen(Screen);
		
		si es_digito(SEL)y( ConvertirANumero(SEL)>0 y  ConvertirANumero(SEL)<6 )Entonces // SEL 1-5 bug fixed !!!
			//scrollear y borrar 
			Para i<-0 Hasta (15 + (ConvertirANumero(SEL)*2) ) Hacer
				draw_line(Screen,1,1,80,1," ");scroll_screen(Screen ,0,-1);
				//scroll_vertical(Screen,-1);
				draw_screen(screen);
			FinPara
			draw_rect(Screen,1,3,80,32,"Verdadero"," ");
			draw_screen(Screen);
			//--dibujar tablas e iniciar subprocesos
			draw_tabla_de_valores(Screen, ConvertirANumero(SEL) );
			print_text(Screen,"1 iniciar calculo        2 salir ",20,28);
			draw_screen(Screen);
			realizar_calculos(Screen,ConvertirANumero(SEL));
		FinSi		
	FinMientras
FinSubProceso


//tuve que hacer esta soncera para validad datos ya que es molesto que no pueda obtener el tipo directamente 
SubProceso z <- es_digito(X)
    Definir z Como Logico;	
    Si x = "0" O x = "1" O x = "2" O x = "3" O x = "4" O x = "5" O x = "6" O x = "7" O x = "8" O x = "9" Entonces
        z <- Verdadero;
    Sino
        z <- Falso;
    FinSi
FinSubProceso



// EL MAIN - THE MAIN - eso ...
//public static void main (string args []) XD
Proceso main
	//definir la pantalla
	Definir Screen Como Caracter; Dimension Screen[34,82];
    init_screen(Screen, " ");
	delay(100);
	
	//variables 
	Definir i Como Entero;
	
	Escribir "ingrese en pantalla completa y presione ENTER";
	Esperar Tecla;

	splash_screen(Screen);
	//Esperar Tecla;
	mostrar_menu(Screen);
	
	//pantalla final
	init_screen(Screen, " ");
	draw_ohmmm(Screen);
	print_text(Screen,"AL FINAL , SOLO ESTA EL FIN ...XD",10,28);
	draw_screen(Screen);

	Esperar Tecla;

FinProceso








//aqui es donde sucede la magia , esto dejo de ser PsINT y ya es otra cosa


//LIBRARY FUCTIONS
//--------------------------------------------------------------------------------------------------

//inicia la pantalla
SubProceso init_screen ( Screen Por Referencia , vacio)
    Definir i, j Como Entero;
    Para i <- 1 Hasta 32
        Para j <- 1 Hasta 80
            Screen[i,j] <- vacio;
        FinPara
    FinPara
FinSubProceso

//actualiza la pantalla
SubProceso draw_screen_old( Screen Por Referencia )
	Limpiar Pantalla;
    Definir i, j Como Entero;
    Para i <- 1 Hasta 32
        Para j <- 1 Hasta 76
            Escribir Sin Saltar Screen[i,j];
			Escribir Sin Saltar " ";
        FinPara
        Escribir "";
    FinPara
FinSubProceso

SubProceso draw_screen(Screen Por Referencia)
    Limpiar Pantalla;
    Definir i, j Como Entero;
    Definir linea Como Cadena;
	
    Para i <- 1 Hasta 32
        linea <- ""; // Reiniciar línea
        Para j <- 1 Hasta 76
            linea <- Concatenar(linea, Screen[i, j]);
            linea <- Concatenar(linea, " ");
        FinPara
        Escribir linea;
    FinPara
FinSubProceso



SubProceso fade_in  (Screen Por Referencia)
	init_screen(Screen, "#"); 
	draw_screen(Screen); delay(10);
	init_screen(Screen, "+");
	draw_screen(Screen); delay(10);
	init_screen(Screen, "-");
	draw_screen(Screen); delay(10);
	init_screen(Screen, ".");
	draw_screen(Screen); delay(10);
	init_screen(Screen, " ");
	draw_screen(Screen); delay(10);
FinSubProceso

SubProceso fade_out  (Screen Por Referencia)
	init_screen(Screen, "#");
	draw_screen(Screen); delay(10);
	init_screen(Screen, "+");
	draw_screen(Screen); delay(10);
	init_screen(Screen, "-");
	draw_screen(Screen); delay(10);
	init_screen(Screen, ".");
	draw_screen(Screen); delay(10);
	init_screen(Screen, " ");
	draw_screen(Screen); delay(10);
FinSubProceso


// Imprime texto en la pantalla desde la posición del cursor
SubProceso  print_text(Screen Por Referencia , text , cursor_x  ,  cursor_y  )
    Definir i, len Como Entero;
    Definir c Como Caracter;
    len <- Longitud(text);
	
    Para i <- 0 Hasta len -1
        c <- SubCadena(text, i, i);
        Si cursor_x >= 1 Y cursor_x <= 80 Y cursor_y >= 1 Y cursor_y <= 32 Entonces
            Screen[cursor_y,cursor_x] <- c;
        FinSi
        cursor_x <- cursor_x + 1;
        Si cursor_x > 80 Entonces
            cursor_x <- 1;
            cursor_y <- cursor_y + 1;
        FinSi
    FinPara
FinSubProceso

SubProceso print_text_vertical(Screen Por Referencia, text, cursor_x , cursor_y )
    Definir i, len Como Entero;
    Definir c Como Caracter;
    len <- Longitud(text);
    
    Para i <- 0 Hasta len -1
        c <- SubCadena(text, i, i);
        Si cursor_x >= 1 Y cursor_x <= 80 Y cursor_y >= 1 Y cursor_y <= 32 Entonces
            Screen[cursor_y, cursor_x] <- c;
        FinSi
        cursor_y <- cursor_y + 1;
        Si cursor_y > 32 Entonces
            cursor_y <- 1;
            cursor_x <- cursor_x + 1;
        FinSi
    FinPara
FinSubProceso

SubProceso draw_rect(Screen Por Referencia, pos_x, pos_y, ancho, alto, relleno, pixel)
    Definir fila, columna Como Entero;
	
    Para fila <- pos_y Hasta pos_y + alto - 1
        Para columna <- pos_x Hasta pos_x + ancho - 1
            Si columna >= 1 Y columna <= 80 Y fila >= 1 Y fila <= 32 Entonces
                Si relleno = "Verdadero" Entonces
                    Screen[fila, columna] <- pixel;
                Sino
                    // Solo bordes: primera o última fila, o primera o última columna
                    Si fila = pos_y O fila = pos_y + alto - 1 O columna = pos_x O columna = pos_x + ancho - 1 Entonces
                        Screen[fila, columna] <- pixel;
                    FinSi
                FinSi
            FinSi
        FinPara
    FinPara
FinSubProceso

SubProceso delay(ms)
    Esperar ms Milisegundos;
FinSubProceso

SubProceso print_text_type(Screen Por Referencia, texto_a_imprimir, cursor_x , cursor_y )
    Definir indice, longitud_texto Como Entero;
    Definir letra_actual Como Caracter;
	
    longitud_texto <- Longitud(texto_a_imprimir);
	
    Para indice <- 0 Hasta longitud_texto - 1
        letra_actual <- SubCadena(texto_a_imprimir, indice, indice);
		
        Si cursor_x >= 1 Y cursor_x <= 80 Y cursor_y >= 1 Y cursor_y <= 32 Entonces
            Screen[cursor_y, cursor_x] <- letra_actual;
        FinSi
		
        cursor_x <- cursor_x + 1;
        Si cursor_x > 32 Entonces
            cursor_x <- 1;
            cursor_y <- cursor_y + 1;
        FinSi
		
        draw_screen(Screen);
        delay(50);
    FinPara
FinSubProceso

SubProceso print_text_type_vertical(Screen Por Referencia, texto_a_imprimir, cursor_x , cursor_y )
    Definir indice, longitud_texto Como Entero;
    Definir letra_actual Como Caracter;
	
    longitud_texto <- Longitud(texto_a_imprimir);
	
    Para indice <- 0 Hasta longitud_texto - 1
        letra_actual <- SubCadena(texto_a_imprimir, indice, indice);
		
        Si cursor_x >= 1 Y cursor_x <= 80 Y cursor_y >= 1 Y cursor_y <= 32 Entonces
            Screen[cursor_y, cursor_x] <- letra_actual;
        FinSi
		
        cursor_y <- cursor_y + 1;
        Si cursor_y > 32 Entonces
            cursor_y <- 1;
            cursor_x <- cursor_x + 1;
        FinSi
		
        draw_screen(Screen);
        delay(50);
    FinPara
FinSubProceso

SubProceso draw_circle(Screen Por Referencia, pos_col, pos_fila, radio, relleno, pixel)
    Definir col_actual, fila_actual Como Entero;
    Definir distancia_cuadrada Como Real;
	
    Para fila_actual <- pos_fila - radio Hasta pos_fila + radio
        Para col_actual <- pos_col - radio Hasta pos_col + radio
            Si col_actual >= 1 Y col_actual <= 80 Y fila_actual >= 1 Y fila_actual <= 32 Entonces
                distancia_cuadrada <- (col_actual - pos_col)^2 + (fila_actual - pos_fila)^2;
				
                Si relleno = "Verdadero" Entonces
                    Si distancia_cuadrada <= radio^2 Entonces
                        Screen[fila_actual, col_actual] <- pixel;
                    FinSi
                Sino
                    Si Abs(distancia_cuadrada - radio^2) <= radio Entonces
                        Screen[fila_actual, col_actual] <- pixel;
                    FinSi
                FinSi
            FinSi
        FinPara
    FinPara
FinSubProceso

SubProceso draw_line(Screen Por Referencia, pos_x1, pos_y1, pos_x2, pos_y2, pixel)
    Definir dx, dy, sx, sy, err, e2 Como Entero;
    Definir col, fila Como Entero;
	
    col <- pos_x1;
    fila <- pos_y1;
	
    dx <- Abs(pos_x2 - pos_x1);
    dy <- Abs(pos_y2 - pos_y1);
	
    Si pos_x1 < pos_x2 Entonces
        sx <- 1;
    Sino
        sx <- -1;
    FinSi
	
    Si pos_y1 < pos_y2 Entonces
        sy <- 1;
    Sino
        sy <- -1;
    FinSi
	
    err <- dx - dy;
	
    Repetir
        Si col >= 1 Y col <= 80 Y fila >= 1 Y fila <= 32 Entonces
            Screen[fila, col] <- pixel;
        FinSi
		
        Si col = pos_x2 Y fila = pos_y2 Entonces
            // Ya llegamos al destino
            // Salimos del bucle
            // Usamos una condición para terminar en la parte de "Mientras Que"
			err <- err;
        Sino
            e2 <- 2 * err;
			
            Si e2 > -dy Entonces
                err <- err - dy;
                col <- col + sx;
            FinSi
			
            Si e2 < dx Entonces
                err <- err + dx;
                fila <- fila + sy;
            FinSi
        FinSi
    Mientras Que No (col = pos_x2 Y fila = pos_y2)
FinSubProceso

SubProceso scroll_screen(Screen Por Referencia, x_des, y_des)
    Definir i, j, nueva_fila, nueva_col Como Entero;
    Definir nueva_screen Como Caracter; Dimension nueva_screen[33,81];
	
    Para i <- 1 Hasta 32
        Para j <- 1 Hasta 80
            // Calcula nueva posición con efecto toroide
            nueva_fila <- ((i - 1 + y_des + 32) Mod 32) + 1;
            nueva_col <- ((j - 1 + x_des + 80) Mod 80) + 1;
			
            nueva_screen[nueva_fila, nueva_col] <- Screen[i, j];
        FinPara
    FinPara
	
    // Copiar el resultado de vuelta a la pantalla original
    Para i <- 1 Hasta 32
        Para j <- 1 Hasta 80
            Screen[i,j] <- nueva_screen[i,j];
        FinPara
    FinPara
FinSubProceso

SubProceso sub_scroll(Screen Por Referencia, x_init, y_init, ancho, alto, x_des, y_des)
    Definir i, j, dx, dy, nueva_fila, nueva_col Como Entero;
    Definir temp Como Caracter; Dimension temp[alto+1, ancho+1];
	
	Si ancho > 79 Entonces
        ancho <- 79;
    FinSi
    Si alto > 31 Entonces
        alto <- 31;
    FinSi
    Si x_init < 0 Entonces
        x_init <- 0;
    FinSi
    Si y_init < 0 Entonces
        y_init <- 0;
    FinSi
    Si x_init + ancho > 79 Entonces
        ancho <- 79 - x_init;
    FinSi
    Si y_init + alto > 32 Entonces
        alto <- 31 - y_init;
    FinSi
	
    // Normalizar desplazamiento dentro de los límites del rectángulo
    dx <- ((x_des Mod ancho) + ancho) Mod ancho;
    dy <- ((y_des Mod alto) + alto) Mod alto;
	
    // Copiar la región a temp con desplazamiento toroidal
    Para i <- 0 Hasta alto - 1
        Para j <- 0 Hasta ancho - 1
            nueva_fila <- (i - dy + alto) Mod alto;
            nueva_col <- (j - dx + ancho) Mod ancho;
			
            temp[i + 1, j + 1] <- Screen[y_init + nueva_fila, x_init + nueva_col];
        FinPara
    FinPara
	
    // Escribir el contenido desplazado de vuelta en la misma región
    Para i <- 0 Hasta alto - 1
        Para j <- 0 Hasta ancho - 1
            Screen[y_init + i, x_init + j] <- temp[i + 1, j + 1];
        FinPara
    FinPara
FinSubProceso




SubProceso draw_sprite(Screen Por Referencia, sprite, pos_x, pos_y)
    Definir i, j, col, fila Como Entero;
	
    Para i <- 1 Hasta 8
        Para j <- 1 Hasta 8
            fila <- pos_y + i - 1;
            col <- pos_x + j - 1;
			
            Si col >= 1 Y col <= 80 Y fila >= 1 Y fila <= 32 Entonces
                Si SubCadena(sprite[i,j], 0, 0) <> " " Entonces
                    Screen[fila, col] <- sprite[i,j];
                FinSi
            FinSi
        FinPara
    FinPara
FinSubProceso

SubProceso draw_sprite_str(Screen Por Referencia, sprite_str, pos_x, pos_y)
    Definir i, j, col, fila, indice Como Entero;
	
    Para i <- 0 Hasta 7;
        Para j <- 0 Hasta 7;
            fila <- pos_y + i;
            col <- pos_x + j;
            indice <- i * 8 + j + 1;  // Ajuste porque SubCadena empieza en 1
			
            Si col >= 1 Y col <= 80 Y fila >= 1 Y fila <= 32 Entonces
                Si SubCadena(sprite_str, indice, indice) <> " " Entonces
                    Screen[fila, col] <- SubCadena(sprite_str, indice, indice);
                FinSi;
            FinSi;
        FinPara;
    FinPara;
FinSubProceso

SubProceso draw_sprite_big(Screen Por Referencia, sprite_str, pos_x, pos_y , ancho, alto)
    Definir i, j, col, fila, indice   Como Entero;
	
    Para i <- 0 Hasta alto -1;
        Para j <- 0 Hasta ancho -1;
            fila <- pos_y + i;
            col <- pos_x + j;
            indice <- i * ancho + j ;  
			
            Si col >= 1 Y col <= 80 Y fila >= 1 Y fila <= 32 Entonces
                Si SubCadena(sprite_str, indice, indice) <> " " Entonces
                    Screen[fila, col] <- SubCadena(sprite_str, indice, indice);
                FinSi;
            FinSi;
        FinPara;
    FinPara;
FinSubProceso


SubProceso copy_sprite(origen, destino Por Referencia)
    Definir i, j Como Entero;
    Para i <- 1 Hasta 9
        Para j <- 1 Hasta 9
            destino[i,j] <- origen[i,j];
        FinPara
    FinPara
FinSubProceso


//esta es la parte en la que salen corriendo 
SubProceso get_sprite(letra, sprite_resultado Por Referencia)
    Definir sprite_A, sprite_B, sprite_C, sprite_D, sprite_E, sprite_F, sprite_G, sprite_H Como Cadena;
    Definir sprite_I, sprite_J, sprite_K, sprite_L, sprite_M, sprite_N, sprite_O, sprite_P, sprite_Q, sprite_R Como Cadena;
    Definir sprite_S, sprite_T, sprite_U, sprite_V, sprite_W, sprite_X, sprite_Y, sprite_Z Como Cadena;
    Definir sprite_0, sprite_1, sprite_2, sprite_3, sprite_4, sprite_5, sprite_6, sprite_7, sprite_8, sprite_9 Como Cadena;
    Definir sprite_plus, sprite_minus, sprite_slash, sprite_comma, sprite_dot, sprite_colon, sprite_question, sprite_exclam, sprite_heart Como Cadena;
	Definir sprite_omega,sprite_plusminus como cadena;
    Definir sprite_DEF Como Cadena;
	
	
    sprite_A <- "";
    sprite_A <- Concatenar(sprite_A, "   ###  ");
    sprite_A <- Concatenar(sprite_A, "  #   # ");
    sprite_A <- Concatenar(sprite_A, " #     #");
    sprite_A <- Concatenar(sprite_A, " #######");
    sprite_A <- Concatenar(sprite_A, " #     #");
    sprite_A <- Concatenar(sprite_A, " #     #");
    sprite_A <- Concatenar(sprite_A, " #     #");
    sprite_A <- Concatenar(sprite_A, "        ");
	
	
    sprite_B <- "";
    sprite_B <- Concatenar(sprite_B, " ###### ");
    sprite_B <- Concatenar(sprite_B, " #     #");
    sprite_B <- Concatenar(sprite_B, " #     #");
    sprite_B <- Concatenar(sprite_B, " ###### ");
    sprite_B <- Concatenar(sprite_B, " #     #");
    sprite_B <- Concatenar(sprite_B, " #     #");
    sprite_B <- Concatenar(sprite_B, " ###### ");
    sprite_B <- Concatenar(sprite_B, "        ");
	
	
    sprite_C <- "";
    sprite_C <- Concatenar(sprite_C, "  ##### ");
    sprite_C <- Concatenar(sprite_C, " #     #");
    sprite_C <- Concatenar(sprite_C, " #      ");
    sprite_C <- Concatenar(sprite_C, " #      ");
    sprite_C <- Concatenar(sprite_C, " #      ");
    sprite_C <- Concatenar(sprite_C, " #     #");
    sprite_C <- Concatenar(sprite_C, "  ##### ");
    sprite_C <- Concatenar(sprite_C, "        ");
	
	
	
	sprite_D <- "";
	sprite_D <- Concatenar(sprite_D, " #####  ");
	sprite_D <- Concatenar(sprite_D, " #    # ");
	sprite_D <- Concatenar(sprite_D, " #     #");
	sprite_D <- Concatenar(sprite_D, " #     #");
	sprite_D <- Concatenar(sprite_D, " #     #");
	sprite_D <- Concatenar(sprite_D, " #    # ");
	sprite_D <- Concatenar(sprite_D, " #####  ");
	sprite_D <- Concatenar(sprite_D, "        ");
	
	
	
	sprite_E <- "";
	sprite_E <- Concatenar(sprite_E, " #######");
	sprite_E <- Concatenar(sprite_E, " #      ");
	sprite_E <- Concatenar(sprite_E, " #      ");
	sprite_E <- Concatenar(sprite_E, " #####  ");
	sprite_E <- Concatenar(sprite_E, " #      ");
	sprite_E <- Concatenar(sprite_E, " #      ");
	sprite_E <- Concatenar(sprite_E, " #######");
	sprite_E <- Concatenar(sprite_E, "        ");
	
	
	
	sprite_F <- "";
	sprite_F <- Concatenar(sprite_F, " #######");
	sprite_F <- Concatenar(sprite_F, " #      ");
	sprite_F <- Concatenar(sprite_F, " #      ");
	sprite_F <- Concatenar(sprite_F, " #####  ");
	sprite_F <- Concatenar(sprite_F, " #      ");
	sprite_F <- Concatenar(sprite_F, " #      ");
	sprite_F <- Concatenar(sprite_F, " #      ");
	sprite_F <- Concatenar(sprite_F, "        ");
	
	
	
	sprite_G <- "";
	sprite_G <- Concatenar(sprite_G, "  ##### ");
	sprite_G <- Concatenar(sprite_G, " #     #");
	sprite_G <- Concatenar(sprite_G, " #      ");
	sprite_G <- Concatenar(sprite_G, " #   ###");
	sprite_G <- Concatenar(sprite_G, " #     #");
	sprite_G <- Concatenar(sprite_G, " #     #");
	sprite_G <- Concatenar(sprite_G, "  ##### ");
	sprite_G <- Concatenar(sprite_G, "        ");
	
	
	
	sprite_H <- "";
	sprite_H <- Concatenar(sprite_H, " #     #");
	sprite_H <- Concatenar(sprite_H, " #     #");
	sprite_H <- Concatenar(sprite_H, " #     #");
	sprite_H <- Concatenar(sprite_H, " #######");
	sprite_H <- Concatenar(sprite_H, " #     #");
	sprite_H <- Concatenar(sprite_H, " #     #");
	sprite_H <- Concatenar(sprite_H, " #     #");
	sprite_H <- Concatenar(sprite_H, "        ");
	
	
	
	sprite_I <- "";
	sprite_I <- Concatenar(sprite_I, " #######");
	sprite_I <- Concatenar(sprite_I, "    #   ");
	sprite_I <- Concatenar(sprite_I, "    #   ");
	sprite_I <- Concatenar(sprite_I, "    #   ");
	sprite_I <- Concatenar(sprite_I, "    #   ");
	sprite_I <- Concatenar(sprite_I, "    #   ");
	sprite_I <- Concatenar(sprite_I, " #######");
	sprite_I <- Concatenar(sprite_I, "        ");
	
	
	
	sprite_J <- "";
	sprite_J <- Concatenar(sprite_J, "       #");
	sprite_J <- Concatenar(sprite_J, "       #");
	sprite_J <- Concatenar(sprite_J, "       #");
	sprite_J <- Concatenar(sprite_J, "       #");
	sprite_J <- Concatenar(sprite_J, " #     #");
	sprite_J <- Concatenar(sprite_J, " #     #");
	sprite_J <- Concatenar(sprite_J, "  ##### ");
	sprite_J <- Concatenar(sprite_J, "        ");
	
	
	
	sprite_K <- "";
	sprite_K <- Concatenar(sprite_K, " #    # ");
	sprite_K <- Concatenar(sprite_K, " #   #  ");
	sprite_K <- Concatenar(sprite_K, " #  #   ");
	sprite_K <- Concatenar(sprite_K, " ###    ");
	sprite_K <- Concatenar(sprite_K, " #  #   ");
	sprite_K <- Concatenar(sprite_K, " #   #  ");
	sprite_K <- Concatenar(sprite_K, " #    # ");
	sprite_K <- Concatenar(sprite_K, "        ");
	
	
	
	sprite_L <- "";
	sprite_L <- Concatenar(sprite_L, " #      ");
	sprite_L <- Concatenar(sprite_L, " #      ");
	sprite_L <- Concatenar(sprite_L, " #      ");
	sprite_L <- Concatenar(sprite_L, " #      ");
	sprite_L <- Concatenar(sprite_L, " #      ");
	sprite_L <- Concatenar(sprite_L, " #      ");
	sprite_L <- Concatenar(sprite_L, " #######");
	sprite_L <- Concatenar(sprite_L, "        ");
	
	
	
	sprite_M <- "";
	sprite_M <- Concatenar(sprite_M, " #     #");
	sprite_M <- Concatenar(sprite_M, " ##   ##");
	sprite_M <- Concatenar(sprite_M, " # # # #");
	sprite_M <- Concatenar(sprite_M, " #  #  #");
	sprite_M <- Concatenar(sprite_M, " #     #");
	sprite_M <- Concatenar(sprite_M, " #     #");
	sprite_M <- Concatenar(sprite_M, " #     #");
	sprite_M <- Concatenar(sprite_M, "        ");
	
	
	
	sprite_N <- "";
	sprite_N <- Concatenar(sprite_N, " #     #");
	sprite_N <- Concatenar(sprite_N, " ##    #");
	sprite_N <- Concatenar(sprite_N, " # #   #");
	sprite_N <- Concatenar(sprite_N, " #  #  #");
	sprite_N <- Concatenar(sprite_N, " #   # #");
	sprite_N <- Concatenar(sprite_N, " #    ##");
	sprite_N <- Concatenar(sprite_N, " #     #");
	sprite_N <- Concatenar(sprite_N, "        ");
	
	
	
	sprite_O <- "";
	sprite_O <- Concatenar(sprite_O, "  ##### ");
	sprite_O <- Concatenar(sprite_O, " #     #");
	sprite_O <- Concatenar(sprite_O, " #     #");
	sprite_O <- Concatenar(sprite_O, " #     #");
	sprite_O <- Concatenar(sprite_O, " #     #");
	sprite_O <- Concatenar(sprite_O, " #     #");
	sprite_O <- Concatenar(sprite_O, "  ##### ");
	sprite_O <- Concatenar(sprite_O, "        ");
	
	
	
	sprite_P <- "";
	sprite_P <- Concatenar(sprite_P, " ###### ");
	sprite_P <- Concatenar(sprite_P, " #     #");
	sprite_P <- Concatenar(sprite_P, " #     #");
	sprite_P <- Concatenar(sprite_P, " ###### ");
	sprite_P <- Concatenar(sprite_P, " #      ");
	sprite_P <- Concatenar(sprite_P, " #      ");
	sprite_P <- Concatenar(sprite_P, " #      ");
	sprite_P <- Concatenar(sprite_P, "        ");
	
	
	
	sprite_Q <- "";
	sprite_Q <- Concatenar(sprite_Q, "  ##### ");
	sprite_Q <- Concatenar(sprite_Q, " #     #");
	sprite_Q <- Concatenar(sprite_Q, " #     #");
	sprite_Q <- Concatenar(sprite_Q, " #     #");
	sprite_Q <- Concatenar(sprite_Q, " #   # #");
	sprite_Q <- Concatenar(sprite_Q, " #    # ");
	sprite_Q <- Concatenar(sprite_Q, "  #### #");
	sprite_Q <- Concatenar(sprite_Q, "        ");
	
	
	
	sprite_R <- "";
	sprite_R <- Concatenar(sprite_R, " ###### ");
	sprite_R <- Concatenar(sprite_R, " #     #");
	sprite_R <- Concatenar(sprite_R, " #     #");
	sprite_R <- Concatenar(sprite_R, " ###### ");
	sprite_R <- Concatenar(sprite_R, " #   #  ");
	sprite_R <- Concatenar(sprite_R, " #    # ");
	sprite_R <- Concatenar(sprite_R, " #     #");
	sprite_R <- Concatenar(sprite_R, "        ");
	
	
	
	sprite_S <- "";
	sprite_S <- Concatenar(sprite_S, "  ##### ");
	sprite_S <- Concatenar(sprite_S, " #     #");
	sprite_S <- Concatenar(sprite_S, " #      ");
	sprite_S <- Concatenar(sprite_S, "  ##### ");
	sprite_S <- Concatenar(sprite_S, "       #");
	sprite_S <- Concatenar(sprite_S, " #     #");
	sprite_S <- Concatenar(sprite_S, "  ##### ");
	sprite_S <- Concatenar(sprite_S, "        ");
	
	
	
	sprite_T <- "";
	sprite_T <- Concatenar(sprite_T, " #######");
	sprite_T <- Concatenar(sprite_T, "    #   ");
	sprite_T <- Concatenar(sprite_T, "    #   ");
	sprite_T <- Concatenar(sprite_T, "    #   ");
	sprite_T <- Concatenar(sprite_T, "    #   ");
	sprite_T <- Concatenar(sprite_T, "    #   ");
	sprite_T <- Concatenar(sprite_T, "    #   ");
	sprite_T <- Concatenar(sprite_T, "        ");
	
	
	
	sprite_U <- "";
	sprite_U <- Concatenar(sprite_U, " #     #");
	sprite_U <- Concatenar(sprite_U, " #     #");
	sprite_U <- Concatenar(sprite_U, " #     #");
	sprite_U <- Concatenar(sprite_U, " #     #");
	sprite_U <- Concatenar(sprite_U, " #     #");
	sprite_U <- Concatenar(sprite_U, " #     #");
	sprite_U <- Concatenar(sprite_U, "  ##### ");
	sprite_U <- Concatenar(sprite_U, "        ");
	
	
	
	sprite_V <- "";
	sprite_V <- Concatenar(sprite_V, " #     #");
	sprite_V <- Concatenar(sprite_V, " #     #");
	sprite_V <- Concatenar(sprite_V, " #     #");
	sprite_V <- Concatenar(sprite_V, " #     #");
	sprite_V <- Concatenar(sprite_V, "  #   # ");
	sprite_V <- Concatenar(sprite_V, "   # #  ");
	sprite_V <- Concatenar(sprite_V, "    #   ");
	sprite_V <- Concatenar(sprite_V, "        ");
	
	
	
	sprite_W <- "";
	sprite_W <- Concatenar(sprite_W, " #     #");
	sprite_W <- Concatenar(sprite_W, " #     #");
	sprite_W <- Concatenar(sprite_W, " #     #");
	sprite_W <- Concatenar(sprite_W, " #  #  #");
	sprite_W <- Concatenar(sprite_W, " #  #  #");
	sprite_W <- Concatenar(sprite_W, " #  #  #");
	sprite_W <- Concatenar(sprite_W, "  ## ## ");
	sprite_W <- Concatenar(sprite_W, "        ");
	
	
	
	sprite_X <- "";
	sprite_X <- Concatenar(sprite_X, " #     #");
	sprite_X <- Concatenar(sprite_X, "  #   # ");
	sprite_X <- Concatenar(sprite_X, "   # #  ");
	sprite_X <- Concatenar(sprite_X, "    #   ");
	sprite_X <- Concatenar(sprite_X, "   # #  ");
	sprite_X <- Concatenar(sprite_X, "  #   # ");
	sprite_X <- Concatenar(sprite_X, " #     #");
	sprite_X <- Concatenar(sprite_X, "        ");
	
	
	
	sprite_Y <- "";
	sprite_Y <- Concatenar(sprite_Y, " #     #");
	sprite_Y <- Concatenar(sprite_Y, "  #   # ");
	sprite_Y <- Concatenar(sprite_Y, "   # #  ");
	sprite_Y <- Concatenar(sprite_Y, "    #   ");
	sprite_Y <- Concatenar(sprite_Y, "    #   ");
	sprite_Y <- Concatenar(sprite_Y, "    #   ");
	sprite_Y <- Concatenar(sprite_Y, "    #   ");
	sprite_Y <- Concatenar(sprite_Y, "        ");
	
	
	
	sprite_Z <- "";
	sprite_Z <- Concatenar(sprite_Z, " #######");
	sprite_Z <- Concatenar(sprite_Z, "      # ");
	sprite_Z <- Concatenar(sprite_Z, "     #  ");
	sprite_Z <- Concatenar(sprite_Z, "    #   ");
	sprite_Z <- Concatenar(sprite_Z, "   #    ");
	sprite_Z <- Concatenar(sprite_Z, "  #     ");
	sprite_Z <- Concatenar(sprite_Z, " #######");
	sprite_Z <- Concatenar(sprite_Z, "        ");
	
	
	
	sprite_plus <- "";
	sprite_plus <- Concatenar(sprite_plus, "    #   ");
	sprite_plus <- Concatenar(sprite_plus, "    #   ");
	sprite_plus <- Concatenar(sprite_plus, "    #   ");
	sprite_plus <- Concatenar(sprite_plus, " #######");
	sprite_plus <- Concatenar(sprite_plus, "    #   ");
	sprite_plus <- Concatenar(sprite_plus, "    #   ");
	sprite_plus <- Concatenar(sprite_plus, "    #   ");
	sprite_plus <- Concatenar(sprite_plus, "        ");
	
	
	
	sprite_minus <- "";
	sprite_minus <- Concatenar(sprite_minus, "        ");
	sprite_minus <- Concatenar(sprite_minus, "        ");
	sprite_minus <- Concatenar(sprite_minus, "        ");
	sprite_minus <- Concatenar(sprite_minus, " #######");
	sprite_minus <- Concatenar(sprite_minus, "        ");
	sprite_minus <- Concatenar(sprite_minus, "        ");
	sprite_minus <- Concatenar(sprite_minus, "        ");
	sprite_minus <- Concatenar(sprite_minus, "        ");
	
	
	
	sprite_slash <- "";
	sprite_slash <- Concatenar(sprite_slash, "      # ");
	sprite_slash <- Concatenar(sprite_slash, "     #  ");
	sprite_slash <- Concatenar(sprite_slash, "    #   ");
	sprite_slash <- Concatenar(sprite_slash, "   #    ");
	sprite_slash <- Concatenar(sprite_slash, "  #     ");
	sprite_slash <- Concatenar(sprite_slash, " #      ");
	sprite_slash <- Concatenar(sprite_slash, "#       ");
	sprite_slash <- Concatenar(sprite_slash, "        ");
	
	
	
	sprite_comma <- "";
	sprite_comma <- Concatenar(sprite_comma, "        ");
	sprite_comma <- Concatenar(sprite_comma, "        ");
	sprite_comma <- Concatenar(sprite_comma, "        ");
	sprite_comma <- Concatenar(sprite_comma, "        ");
	sprite_comma <- Concatenar(sprite_comma, "   ##   ");
	sprite_comma <- Concatenar(sprite_comma, "   ##   ");
	sprite_comma <- Concatenar(sprite_comma, "    #   ");
	sprite_comma <- Concatenar(sprite_comma, "   #    ");
	
	
	
	sprite_dot <- "";
	sprite_dot <- Concatenar(sprite_dot, "        ");
	sprite_dot <- Concatenar(sprite_dot, "        ");
	sprite_dot <- Concatenar(sprite_dot, "        ");
	sprite_dot <- Concatenar(sprite_dot, "        ");
	sprite_dot <- Concatenar(sprite_dot, "        ");
	sprite_dot <- Concatenar(sprite_dot, "        ");
	sprite_dot <- Concatenar(sprite_dot, "   ##   ");
	sprite_dot <- Concatenar(sprite_dot, "   ##   ");
	
	
	
	sprite_colon <- "";
	sprite_colon <- Concatenar(sprite_colon, "        ");
	sprite_colon <- Concatenar(sprite_colon, "   ##   ");
	sprite_colon <- Concatenar(sprite_colon, "   ##   ");
	sprite_colon <- Concatenar(sprite_colon, "        ");
	sprite_colon <- Concatenar(sprite_colon, "        ");
	sprite_colon <- Concatenar(sprite_colon, "   ##   ");
	sprite_colon <- Concatenar(sprite_colon, "   ##   ");
	sprite_colon <- Concatenar(sprite_colon, "        ");
	
	
	
	sprite_question <- "";
	sprite_question <- Concatenar(sprite_question, "  ##### ");
	sprite_question <- Concatenar(sprite_question, " #     #");
	sprite_question <- Concatenar(sprite_question, "       #");
	sprite_question <- Concatenar(sprite_question, "     ## ");
	sprite_question <- Concatenar(sprite_question, "    #   ");
	sprite_question <- Concatenar(sprite_question, "        ");
	sprite_question <- Concatenar(sprite_question, "    #   ");
	sprite_question <- Concatenar(sprite_question, "        ");
	
	
	
	sprite_exclam <- "";
	sprite_exclam <- Concatenar(sprite_exclam, "    #   ");
	sprite_exclam <- Concatenar(sprite_exclam, "    #   ");
	sprite_exclam <- Concatenar(sprite_exclam, "    #   ");
	sprite_exclam <- Concatenar(sprite_exclam, "    #   ");
	sprite_exclam <- Concatenar(sprite_exclam, "    #   ");
	sprite_exclam <- Concatenar(sprite_exclam, "        ");
	sprite_exclam <- Concatenar(sprite_exclam, "    #   ");
	sprite_exclam <- Concatenar(sprite_exclam, "        ");
	
	sprite_plusminus <- "";
    sprite_plusminus <- Concatenar(sprite_plusminus, "        ");
    sprite_plusminus <- Concatenar(sprite_plusminus, "    #   ");
    sprite_plusminus <- Concatenar(sprite_plusminus, "    #   ");
    sprite_plusminus <- Concatenar(sprite_plusminus, " #######");
    sprite_plusminus <- Concatenar(sprite_plusminus, "    #   ");
    sprite_plusminus <- Concatenar(sprite_plusminus, "    #   ");
    sprite_plusminus <- Concatenar(sprite_plusminus, "        ");
    sprite_plusminus <- Concatenar(sprite_plusminus, " #######");
	
	
    sprite_omega <- "";
    sprite_omega <- Concatenar(sprite_omega, "  ####  ");
    sprite_omega <- Concatenar(sprite_omega, " #    # ");
    sprite_omega <- Concatenar(sprite_omega, "#      #");
    sprite_omega <- Concatenar(sprite_omega, "#      #");
    sprite_omega <- Concatenar(sprite_omega, "#      #");
    sprite_omega <- Concatenar(sprite_omega, " #    # ");
    sprite_omega <- Concatenar(sprite_omega, "  #  #  ");
    sprite_omega <- Concatenar(sprite_omega, "###  ###");

	
	
	
	sprite_heart <- "";
	sprite_heart <- Concatenar(sprite_heart, "  ##  ##");
	sprite_heart <- Concatenar(sprite_heart, " #######");
	sprite_heart <- Concatenar(sprite_heart, " #######");
	sprite_heart <- Concatenar(sprite_heart, " #######");
	sprite_heart <- Concatenar(sprite_heart, "  ##### ");
	sprite_heart <- Concatenar(sprite_heart, "   ###  ");
	sprite_heart <- Concatenar(sprite_heart, "    #   ");
	sprite_heart <- Concatenar(sprite_heart, "        ");
	
	sprite_0 <- "";
	sprite_0 <- Concatenar(sprite_0, "  ##### ");
	sprite_0 <- Concatenar(sprite_0, " #     #");
	sprite_0 <- Concatenar(sprite_0, " #    ##");
	sprite_0 <- Concatenar(sprite_0, " #   # #");
	sprite_0 <- Concatenar(sprite_0, " #  #  #");
	sprite_0 <- Concatenar(sprite_0, " # #   #");
	sprite_0 <- Concatenar(sprite_0, " #     #");
	sprite_0 <- Concatenar(sprite_0, "  ##### ");
	
	sprite_1 <- "";
	sprite_1 <- Concatenar(sprite_1, "   ##   ");
	sprite_1 <- Concatenar(sprite_1, "  ###   ");
	sprite_1 <- Concatenar(sprite_1, " # ##   ");
	sprite_1 <- Concatenar(sprite_1, "   ##   ");
	sprite_1 <- Concatenar(sprite_1, "   ##   ");
	sprite_1 <- Concatenar(sprite_1, "   ##   ");
	sprite_1 <- Concatenar(sprite_1, "   ##   ");
	sprite_1 <- Concatenar(sprite_1, " ###### ");
	
	sprite_2 <- "";
	sprite_2 <- Concatenar(sprite_2, "  ##### ");
	sprite_2 <- Concatenar(sprite_2, " #     #");
	sprite_2 <- Concatenar(sprite_2, "       #");
	sprite_2 <- Concatenar(sprite_2, "      # ");
	sprite_2 <- Concatenar(sprite_2, "    ##  ");
	sprite_2 <- Concatenar(sprite_2, "  ##    ");
	sprite_2 <- Concatenar(sprite_2, " #      ");
	sprite_2 <- Concatenar(sprite_2, " #######");
	
	sprite_3 <- "";
	sprite_3 <- Concatenar(sprite_3, "  ##### ");
	sprite_3 <- Concatenar(sprite_3, " #     #");
	sprite_3 <- Concatenar(sprite_3, "       #");
	sprite_3 <- Concatenar(sprite_3, "   #### ");
	sprite_3 <- Concatenar(sprite_3, "       #");
	sprite_3 <- Concatenar(sprite_3, "       #");
	sprite_3 <- Concatenar(sprite_3, " #     #");
	sprite_3 <- Concatenar(sprite_3, "  ##### ");
	
	sprite_4 <- "";
	sprite_4 <- Concatenar(sprite_4, "    ##  ");
	sprite_4 <- Concatenar(sprite_4, "   # #  ");
	sprite_4 <- Concatenar(sprite_4, "  #  #  ");
	sprite_4 <- Concatenar(sprite_4, " #   #  ");
	sprite_4 <- Concatenar(sprite_4, "#    #  ");
	sprite_4 <- Concatenar(sprite_4, "####### ");
	sprite_4 <- Concatenar(sprite_4, "     #  ");
	sprite_4 <- Concatenar(sprite_4, "     #  ");
	
	sprite_5 <- "";
	sprite_5 <- Concatenar(sprite_5, " #######");
	sprite_5 <- Concatenar(sprite_5, " #      ");
	sprite_5 <- Concatenar(sprite_5, " #      ");
	sprite_5 <- Concatenar(sprite_5, " #####  ");
	sprite_5 <- Concatenar(sprite_5, "      # ");
	sprite_5 <- Concatenar(sprite_5, "      # ");
	sprite_5 <- Concatenar(sprite_5, " #    # ");
	sprite_5 <- Concatenar(sprite_5, "  ####  ");
	
	sprite_6 <- "";
	sprite_6 <- Concatenar(sprite_6, "  ##### ");
	sprite_6 <- Concatenar(sprite_6, " #     #");
	sprite_6 <- Concatenar(sprite_6, " #      ");
	sprite_6 <- Concatenar(sprite_6, " ###### ");
	sprite_6 <- Concatenar(sprite_6, " #     #");
	sprite_6 <- Concatenar(sprite_6, " #     #");
	sprite_6 <- Concatenar(sprite_6, " #     #");
	sprite_6 <- Concatenar(sprite_6, "  ##### ");
	
	sprite_7 <- "";
	sprite_7 <- Concatenar(sprite_7, " #######");
	sprite_7 <- Concatenar(sprite_7, "      # ");
	sprite_7 <- Concatenar(sprite_7, "     #  ");
	sprite_7 <- Concatenar(sprite_7, "    #   ");
	sprite_7 <- Concatenar(sprite_7, "   #    ");
	sprite_7 <- Concatenar(sprite_7, "  #     ");
	sprite_7 <- Concatenar(sprite_7, " #      ");
	sprite_7 <- Concatenar(sprite_7, "#       ");
	
	sprite_8 <- "";
	sprite_8 <- Concatenar(sprite_8, "  ##### ");
	sprite_8 <- Concatenar(sprite_8, " #     #");
	sprite_8 <- Concatenar(sprite_8, " #     #");
	sprite_8 <- Concatenar(sprite_8, "  ##### ");
	sprite_8 <- Concatenar(sprite_8, " #     #");
	sprite_8 <- Concatenar(sprite_8, " #     #");
	sprite_8 <- Concatenar(sprite_8, " #     #");
	sprite_8 <- Concatenar(sprite_8, "  ##### ");
	
	sprite_9 <- "";
	sprite_9 <- Concatenar(sprite_9, "  ##### ");
	sprite_9 <- Concatenar(sprite_9, " #     #");
	sprite_9 <- Concatenar(sprite_9, " #     #");
	sprite_9 <- Concatenar(sprite_9, " #     #");
	sprite_9 <- Concatenar(sprite_9, "  ######");
	sprite_9 <- Concatenar(sprite_9, "       #");
	sprite_9 <- Concatenar(sprite_9, " #     #");
	sprite_9 <- Concatenar(sprite_9, "  ##### ");
	
	
	
    sprite_DEF <- "";
    sprite_DEF <- Concatenar(sprite_DEF, "         ");
    sprite_DEF <- Concatenar(sprite_DEF, "         ");
    sprite_DEF <- Concatenar(sprite_DEF, "         ");
    sprite_DEF <- Concatenar(sprite_DEF, "         ");
    sprite_DEF <- Concatenar(sprite_DEF, "         ");
    sprite_DEF <- Concatenar(sprite_DEF, "         ");
    sprite_DEF <- Concatenar(sprite_DEF, "         ");
    sprite_DEF <- Concatenar(sprite_DEF, "         ");
	
	
	
	
    // Convertir letra a mayúscula (opcional, si quieres aceptar minúsculas también)
    letra <- Mayusculas(letra);
	
    // Asignar sprite correspondiente
	
	Segun letra Hacer
		"A":
			sprite_resultado <- sprite_A;
		"B":
			sprite_resultado <- sprite_B;
		"C":
			sprite_resultado <- sprite_C;
		"D":
			sprite_resultado <- sprite_D;
		"E":
			sprite_resultado <- sprite_E;
		"F":
			sprite_resultado <- sprite_F;
		"G":
			sprite_resultado <- sprite_G;
		"H":
			sprite_resultado <- sprite_H;
		"I":
			sprite_resultado <- sprite_I;
		"J":
			sprite_resultado <- sprite_J;
		"K":
			sprite_resultado <- sprite_K;
		"L":
			sprite_resultado <- sprite_L;
		"M":
			sprite_resultado <- sprite_M;
		"N":
			sprite_resultado <- sprite_N;
		"O":
			sprite_resultado <- sprite_O;
		"P":
			sprite_resultado <- sprite_P;
		"Q":
			sprite_resultado <- sprite_Q;
		"R":
			sprite_resultado <- sprite_R;
		"S":
			sprite_resultado <- sprite_S;
		"T":
			sprite_resultado <- sprite_T;
		"U":
			sprite_resultado <- sprite_U;
		"V":
			sprite_resultado <- sprite_V;
		"W":
			sprite_resultado <- sprite_W;
		"X":
			sprite_resultado <- sprite_X;
		"Y":
			sprite_resultado <- sprite_Y;
		"Z":
			sprite_resultado <- sprite_Z;
			
		"0":
			sprite_resultado <- sprite_0;
		"1":
			sprite_resultado <- sprite_1;
		"2":
			sprite_resultado <- sprite_2;
		"3":
			sprite_resultado <- sprite_3;
		"4":
			sprite_resultado <- sprite_4;
		"5":
			sprite_resultado <- sprite_5;
		"6":
			sprite_resultado <- sprite_6;
		"7":
			sprite_resultado <- sprite_7;
		"8":
			sprite_resultado <- sprite_8;
		"9":
			sprite_resultado <- sprite_9;
			
		"+":
			sprite_resultado <- sprite_plus;
		"-":
			sprite_resultado <- sprite_minus;
		"/":
			sprite_resultado <- sprite_slash;
		",":
			sprite_resultado <- sprite_comma;
		".":
			sprite_resultado <- sprite_dot;
		":":
			sprite_resultado <- sprite_colon;
		"?":
			sprite_resultado <- sprite_question;
		"!":
			sprite_resultado <- sprite_exclam;
		"<3":
			sprite_resultado <- sprite_heart;
		"±": 
			sprite_resultado <- sprite_plusminus;
		"]": // eso es mi omhs ,no hay ese caracter >_<
			sprite_resultado <- sprite_omega;	
			
		De Otro Modo:
			sprite_resultado <- sprite_DEF;
	FinSegun
	
	
	
FinSubProceso






SubProceso print_sprite(Screen Por Referencia, texto_a_imprimir, pos_x_inicial, pos_y)
    Definir i, j, desplazamiento_x Como Entero;
    Definir letra_actual Como Caracter;
    Definir sprite_temp Como Caracter;
	
    desplazamiento_x <- 0;
	
    Para i <- 0 Hasta Longitud(texto_a_imprimir) - 1
        letra_actual <- SubCadena(texto_a_imprimir, i, i);
        get_sprite(letra_actual, sprite_temp);
        draw_sprite_str(Screen, sprite_temp, pos_x_inicial + desplazamiento_x, pos_y);
        desplazamiento_x <- desplazamiento_x + 9; // Para que no se sobrepongan
    FinPara
FinSubProceso




//banner
SubProceso print_banner(Screen Por Referencia, texto, x_area, y_area, delay_rt)
    Definir i, paso, ancho_letra, alto_letra Como Entero;
    Definir letra Como Caracter;
	
    ancho_letra <- 10; // 8 del sprite + 1 espacio
    alto_letra <- 9;
	
    Para i <- 0 Hasta Longitud(texto) - 1
        letra <- SubCadena(texto, i, i);
		
        // Imprimir la letra justo fuera de la pantalla a la derecha
		draw_rect(Screen,70,y_area,9,9,"Verdadero"," ");
        print_sprite(Screen, letra, 70, y_area);
		
        // Scroll animado para que la letra entre
        Para paso <- 1 Hasta ancho_letra
            draw_screen(Screen);
            delay(delay_rt);
            sub_scroll(Screen, x_area, y_area, 80 - x_area + 1, alto_letra, -1, 0);
			//sub_scroll(Screen Por Referencia, x_init, y_init, ancho, alto, x_des, y_des)
        FinPara
    FinPara
	para i<- 0 Hasta 8 Hacer
		sub_scroll(Screen, x_area, y_area, 80 - x_area + 1, alto_letra, -1, 0); // fiz letra fuera de la pantalla
	FinPara
	
	
FinSubProceso


