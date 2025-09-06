Proceso pixel_screen
	Definir Screen Como Caracter; Dimension Screen[34,82];
    Definir cursor_x, cursor_y Como Entero;
    Definir pixel_high, pixel_low Como Caracter;
	
    pixel_high <- "#";
    pixel_low <- " ";
    cursor_x <- 1;
    cursor_y <- 1;
	
	Definir carita Como Caracter; Dimension carita[9,9]; // [1..8]
	
	carita[1,1] <- " "; carita[1,2] <- "O"; carita[1,3] <- " "; carita[1,4] <- " "; carita[1,5] <- " "; carita[1,6] <- " "; carita[1,7] <- "O"; carita[1,8] <- " ";
	carita[2,1] <- " "; carita[2,2] <- " "; carita[2,3] <- " "; carita[2,4] <- " "; carita[2,5] <- " "; carita[2,6] <- " "; carita[2,7] <- " "; carita[2,8] <- " ";
	carita[3,1] <- " "; carita[3,2] <- " "; carita[3,3] <- " "; carita[3,4] <- " "; carita[3,5] <- " "; carita[3,6] <- " "; carita[3,7] <- " "; carita[3,8] <- " ";
	carita[4,1] <- " "; carita[4,2] <- "\\"; carita[4,3] <- "_"; carita[4,4] <- "_"; carita[4,5] <- "_"; carita[4,6] <- "_"; carita[4,7] <- "/"; carita[4,8] <- " ";
	carita[5,1] <- " "; carita[5,2] <- " "; carita[5,3] <- " "; carita[5,4] <- " "; carita[5,5] <- " "; carita[5,6] <- " "; carita[5,7] <- " "; carita[5,8] <- " ";
	carita[6,1] <- " "; carita[6,2] <- " "; carita[6,3] <- " "; carita[6,4] <- " "; carita[6,5] <- " "; carita[6,6] <- " "; carita[6,7] <- " "; carita[6,8] <- " ";
	carita[7,1] <- " "; carita[7,2] <- " "; carita[7,3] <- " "; carita[7,4] <- " "; carita[7,5] <- " "; carita[7,6] <- " "; carita[7,7] <- " "; carita[7,8] <- " ";
	carita[8,1] <- " "; carita[8,2] <- " "; carita[8,3] <- " "; carita[8,4] <- " "; carita[8,5] <- " "; carita[8,6] <- " "; carita[8,7] <- " "; carita[8,8] <- " ";

	
    init_screen(Screen, pixel_low);
	
	Definir mensaje Como Cadena;
	mensaje <- "HOLA MUNDO";
	print_sprite(Screen, mensaje, 1, 1);
	
	draw_screen(Screen);
	animar_scroll(Screen);
	
	Esperar Tecla;

	
	draw_rect(Screen, 5, 5, 10, 4, "Verdadero", "#");  // Rectángulo relleno
    draw_rect(Screen, 19, 2, 12, 6, "Falso", "*");    // Solo borde
	
	draw_circle(Screen, 18, 18, 6, "Falso", "O");
	draw_circle(Screen, 20, 20, 4, "Verdadero", "@");
	
	draw_line(Screen, 1, 1, 5, 5, "/");         // Diagonal descendente
	draw_line(Screen, 1,32, 32, 1, "\\");        // Diagonal ascendente
	draw_line(Screen, 5, 15, 28, 15, "-");        // Línea horizontal
	draw_line(Screen, 18, 2, 18, 12, "|");        // Línea vertical
	
	print_text(Screen, "Hola Mundo", cursor_x, cursor_y);
	print_text_vertical(Screen, "¡Esto es una pantalla!", cursor_x, cursor_y);
	
	

	
	draw_sprite(Screen, carita, 24, 28);

	
	print_text_type_vertical(Screen, "Hola Mundo con estilo", cursor_x, cursor_y);
	print_text_type(Screen, "Hola Mundo con estilo", cursor_x, cursor_y);
	
	
	
    draw_screen(Screen);
	
	

	
	
	draw_screen(Screen);
	
    Escribir "";
    Escribir "Presiona una tecla para limpiar...";
    Esperar Tecla;
	
    draw_screen(Screen);
FinProceso





SubProceso animar_scroll(Screen Por Referencia)
    Definir i Como Entero;
	
    // Desplazar hacia la derecha
    Para i <- 1 Hasta 10
        scroll_screen(Screen, 1, 0);
        draw_screen(Screen);
        //delay(100);
    FinPara
	
    // Desplazar hacia abajo
    Para i <- 1 Hasta 10
        scroll_screen(Screen, 0, 1);
        draw_screen(Screen);
        //delay(100);
    FinPara
	
    // Desplazar hacia la izquierda
    Para i <- 1 Hasta 10
        scroll_screen(Screen, -1, 0);
        draw_screen(Screen);
        //delay(100);
    FinPara
	
    // Desplazar hacia arriba
    Para i <- 1 Hasta 10
        scroll_screen(Screen, 0, -1);
        draw_screen(Screen);
        //delay(100);
    FinPara
	
    // Diagonal ?
    Para i <- 1 Hasta 10
        scroll_screen(Screen, 1, 1);
        draw_screen(Screen);
        //delay(100);
    FinPara
	
    // Diagonal ?
    Para i <- 1 Hasta 10
        scroll_screen(Screen, -1, 1);
        draw_screen(Screen);
        //delay(100);
    FinPara
	
    // Diagonal ?
    Para i <- 1 Hasta 10
        scroll_screen(Screen, -1, -1);
        draw_screen(Screen);
        //delay(100);
    FinPara
	
    // Diagonal ?
    Para i <- 1 Hasta 10
        scroll_screen(Screen, 1, -1);
        draw_screen(Screen);
        //delay(100);
    FinPara
FinSubProceso






//LIBRARY FUCTIONS

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
SubProceso draw_screen( Screen Por Referencia )
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
        Si cursor_x > 32 Entonces
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
    Definir i, j, col, fila, indice Como Entero;
	
    Para i <- 0 Hasta alto;
        Para j <- 0 Hasta ancho;
            fila <- pos_y + i;
            col <- pos_x + j;
            indice <- i * ancho + j + 1;  
			
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



SubProceso get_sprite(letra, sprite_resultado Por Referencia)
    Definir sprite_A, sprite_B, sprite_C, sprite_D, sprite_E, sprite_F, sprite_G, sprite_H Como Cadena;
    Definir sprite_I, sprite_J, sprite_K, sprite_L, sprite_M, sprite_N, sprite_O, sprite_P, sprite_Q, sprite_R Como Cadena;
    Definir sprite_S, sprite_T, sprite_U, sprite_V, sprite_W, sprite_X, sprite_Y, sprite_Z Como Cadena;
    Definir sprite_0, sprite_1, sprite_2, sprite_3, sprite_4, sprite_5, sprite_6, sprite_7, sprite_8, sprite_9 Como Cadena;
    Definir sprite_plus, sprite_minus, sprite_slash, sprite_comma, sprite_dot, sprite_colon, sprite_question, sprite_exclam, sprite_heart Como Cadena;
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


