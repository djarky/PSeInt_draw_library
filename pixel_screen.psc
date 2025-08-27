Proceso pixel_screen
	Definir Screen Como Caracter; Dimension Screen[33,33];
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
	
	dibujar_sprite(Screen, carita, 24, 28);

	
	print_text_type_vertical(Screen, "Hola Mundo con estilo", cursor_x, cursor_y);
	print_text_type(Screen, "Hola Mundo con estilo", cursor_x, cursor_y);
	
	
	
    draw_screen(Screen);
	animar_scroll(Screen);
	
	Definir mensaje Como Cadena;
	mensaje <- "HOLA MUNDO!";
	
	imprimir_texto_con_sprites(Screen, mensaje, 1, 1);
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
        delay(100);
    FinPara
	
    // Desplazar hacia abajo
    Para i <- 1 Hasta 10
        scroll_screen(Screen, 0, 1);
        draw_screen(Screen);
        delay(100);
    FinPara
	
    // Desplazar hacia la izquierda
    Para i <- 1 Hasta 10
        scroll_screen(Screen, -1, 0);
        draw_screen(Screen);
        delay(100);
    FinPara
	
    // Desplazar hacia arriba
    Para i <- 1 Hasta 10
        scroll_screen(Screen, 0, -1);
        draw_screen(Screen);
        delay(100);
    FinPara
	
    // Diagonal ?
    Para i <- 1 Hasta 10
        scroll_screen(Screen, 1, 1);
        draw_screen(Screen);
        delay(100);
    FinPara
	
    // Diagonal ?
    Para i <- 1 Hasta 10
        scroll_screen(Screen, -1, 1);
        draw_screen(Screen);
        delay(100);
    FinPara
	
    // Diagonal ?
    Para i <- 1 Hasta 10
        scroll_screen(Screen, -1, -1);
        draw_screen(Screen);
        delay(100);
    FinPara
	
    // Diagonal ?
    Para i <- 1 Hasta 10
        scroll_screen(Screen, 1, -1);
        draw_screen(Screen);
        delay(100);
    FinPara
FinSubProceso






//LIBRARY FUCTIONS

SubProceso init_screen ( Screen Por Referencia , vacio Por Referencia )
    Definir i, j Como Entero;
    Para i <- 1 Hasta 32
        Para j <- 1 Hasta 32
            Screen[i,j] <- vacio;
        FinPara
    FinPara
FinSubProceso


SubProceso draw_screen( Screen Por Referencia )
	Limpiar Pantalla;
    Definir i, j Como Entero;
    Para i <- 1 Hasta 32
        Para j <- 1 Hasta 32
            Escribir Sin Saltar Screen[i,j];
			Escribir Sin Saltar " ";
        FinPara
        Escribir "";
    FinPara
FinSubProceso



// Imprime texto en la pantalla desde la posición del cursor, modificando el cursor (por referencia)
SubProceso   print_text(Screen Por Referencia , text , SCR_X Por Referencia ,  SCR_Y Por Referencia )
    Definir i, len Como Entero;
    Definir c Como Caracter;
    len <- Longitud(text);
	
    Para i <- 0 Hasta len -1
        c <- SubCadena(text, i, i);
        Si SCR_X >= 1 Y SCR_X <= 32 Y SCR_Y >= 1 Y SCR_Y <= 32 Entonces
            Screen[SCR_Y,SCR_X] <- c;
        FinSi
        SCR_X <- SCR_X + 1;
        Si SCR_X > 32 Entonces
            SCR_X <- 1;
            SCR_Y <- SCR_Y + 1;
        FinSi
    FinPara
FinSubProceso

SubProceso print_text_vertical(Screen Por Referencia, text, SCR_X Por Referencia, SCR_Y Por Referencia)
    Definir i, len Como Entero;
    Definir c Como Caracter;
    len <- Longitud(text);
    
    Para i <- 0 Hasta len -1
        c <- SubCadena(text, i, i);
        Si SCR_X >= 1 Y SCR_X <= 32 Y SCR_Y >= 1 Y SCR_Y <= 32 Entonces
            Screen[SCR_Y, SCR_X] <- c;
        FinSi
        SCR_Y <- SCR_Y + 1;
        Si SCR_Y > 32 Entonces
            SCR_Y <- 1;
            SCR_X <- SCR_X + 1;
        FinSi
    FinPara
FinSubProceso

SubProceso draw_rect(Screen Por Referencia, pos_x, pos_y, ancho, alto, relleno, pixel)
    Definir fila, columna Como Entero;
	
    Para fila <- pos_y Hasta pos_y + alto - 1
        Para columna <- pos_x Hasta pos_x + ancho - 1
            Si columna >= 1 Y columna <= 32 Y fila >= 1 Y fila <= 32 Entonces
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

SubProceso print_text_type(Screen Por Referencia, texto_a_imprimir, cursor_col Por Referencia, cursor_fila Por Referencia)
    Definir indice, longitud_texto Como Entero;
    Definir letra_actual Como Caracter;
	
    longitud_texto <- Longitud(texto_a_imprimir);
	
    Para indice <- 0 Hasta longitud_texto - 1
        letra_actual <- SubCadena(texto_a_imprimir, indice, indice);
		
        Si cursor_col >= 1 Y cursor_col <= 32 Y cursor_fila >= 1 Y cursor_fila <= 32 Entonces
            Screen[cursor_fila, cursor_col] <- letra_actual;
        FinSi
		
        cursor_col <- cursor_col + 1;
        Si cursor_col > 32 Entonces
            cursor_col <- 1;
            cursor_fila <- cursor_fila + 1;
        FinSi
		
        draw_screen(Screen);
        delay(50);
    FinPara
FinSubProceso

SubProceso print_text_type_vertical(Screen Por Referencia, texto_a_imprimir, cursor_col Por Referencia, cursor_fila Por Referencia)
    Definir indice, longitud_texto Como Entero;
    Definir letra_actual Como Caracter;
	
    longitud_texto <- Longitud(texto_a_imprimir);
	
    Para indice <- 0 Hasta longitud_texto - 1
        letra_actual <- SubCadena(texto_a_imprimir, indice, indice);
		
        Si cursor_col >= 1 Y cursor_col <= 32 Y cursor_fila >= 1 Y cursor_fila <= 32 Entonces
            Screen[cursor_fila, cursor_col] <- letra_actual;
        FinSi
		
        cursor_fila <- cursor_fila + 1;
        Si cursor_fila > 32 Entonces
            cursor_fila <- 1;
            cursor_col <- cursor_col + 1;
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
            Si col_actual >= 1 Y col_actual <= 32 Y fila_actual >= 1 Y fila_actual <= 32 Entonces
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
        Si col >= 1 Y col <= 32 Y fila >= 1 Y fila <= 32 Entonces
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
    Definir nueva_screen Como Caracter; Dimension nueva_screen[33,33];
	
    Para i <- 1 Hasta 32
        Para j <- 1 Hasta 32
            // Calcula nueva posición con efecto toroide
            nueva_fila <- ((i - 1 + y_des + 32) Mod 32) + 1;
            nueva_col <- ((j - 1 + x_des + 32) Mod 32) + 1;
			
            nueva_screen[nueva_fila, nueva_col] <- Screen[i, j];
        FinPara
    FinPara
	
    // Copiar el resultado de vuelta a la pantalla original
    Para i <- 1 Hasta 32
        Para j <- 1 Hasta 32
            Screen[i,j] <- nueva_screen[i,j];
        FinPara
    FinPara
FinSubProceso

SubProceso dibujar_sprite(Screen Por Referencia, sprite, pos_x, pos_y)
    Definir i, j, pantalla_x, pantalla_y Como Entero;
	
    Para i <- 1 Hasta 8
        Para j <- 1 Hasta 8
            pantalla_y <- pos_y + i - 1;
            pantalla_x <- pos_x + j - 1;
			
            Si pantalla_x >= 1 Y pantalla_x <= 32 Y pantalla_y >= 1 Y pantalla_y <= 32 Entonces
                Si SubCadena(sprite[i,j], 0, 0) <> " " Entonces
                    Screen[pantalla_y, pantalla_x] <- sprite[i,j];
                FinSi
            FinSi
        FinPara
    FinPara
FinSubProceso

SubProceso obtener_sprite(letra, sprite_resultado Por Referencia)
	Definir i, j , k Como Entero;
	
	// Letra A
	definir KEY_A Como Caracter; Dimension KEY_A[10,10];
	KEY_A[1,1]<-" ";KEY_A[1,2]<-" ";KEY_A[1,3]<-"#";KEY_A[1,4]<-"#";KEY_A[1,5]<-"#";KEY_A[1,6]<-"#";KEY_A[1,7]<-"#";KEY_A[1,8]<-" ";KEY_A[1,9]<-" ";
	KEY_A[2,1]<-" ";KEY_A[2,2]<-"#";KEY_A[2,3]<-" ";KEY_A[2,4]<-" ";KEY_A[2,5]<-" ";KEY_A[2,6]<-" ";KEY_A[2,7]<-" ";KEY_A[2,8]<-"#";KEY_A[2,9]<-" ";
	KEY_A[3,1]<-"#";KEY_A[3,2]<-" ";KEY_A[3,3]<-" ";KEY_A[3,4]<-" ";KEY_A[3,5]<-" ";KEY_A[3,6]<-" ";KEY_A[3,7]<-" ";KEY_A[3,8]<-" ";KEY_A[3,9]<-"#";
	KEY_A[4,1]<-"#";KEY_A[4,2]<-"#";KEY_A[4,3]<-"#";KEY_A[4,4]<-"#";KEY_A[4,5]<-"#";KEY_A[4,6]<-"#";KEY_A[4,7]<-"#";KEY_A[4,8]<-"#";KEY_A[4,9]<-"#";
	KEY_A[5,1]<-"#";KEY_A[5,2]<-" ";KEY_A[5,3]<-" ";KEY_A[5,4]<-" ";KEY_A[5,5]<-" ";KEY_A[5,6]<-" ";KEY_A[5,7]<-" ";KEY_A[5,8]<-" ";KEY_A[5,9]<-"#";
	KEY_A[6,1]<-"#";KEY_A[6,2]<-" ";KEY_A[6,3]<-" ";KEY_A[6,4]<-" ";KEY_A[6,5]<-" ";KEY_A[6,6]<-" ";KEY_A[6,7]<-" ";KEY_A[6,8]<-" ";KEY_A[6,9]<-"#";
	KEY_A[7,1]<-"#";KEY_A[7,2]<-" ";KEY_A[7,3]<-" ";KEY_A[7,4]<-" ";KEY_A[7,5]<-" ";KEY_A[7,6]<-" ";KEY_A[7,7]<-" ";KEY_A[7,8]<-" ";KEY_A[7,9]<-"#";
	KEY_A[8,1]<-" ";KEY_A[8,2]<-" ";KEY_A[8,3]<-" ";KEY_A[8,4]<-" ";KEY_A[8,5]<-" ";KEY_A[8,6]<-" ";KEY_A[8,7]<-" ";KEY_A[8,8]<-" ";KEY_A[8,9]<-" ";
	
	// Letra B
	definir KEY_B Como Caracter; Dimension KEY_B[10,10];
	KEY_B[1,1]<-"#";KEY_B[1,2]<-"#";KEY_B[1,3]<-"#";KEY_B[1,4]<-"#";KEY_B[1,5]<-"#";KEY_B[1,6]<-" ";KEY_B[1,7]<-" ";KEY_B[1,8]<-" ";KEY_B[1,9]<-" ";
	KEY_B[2,1]<-"#";KEY_B[2,2]<-" ";KEY_B[2,3]<-" ";KEY_B[2,4]<-" ";KEY_B[2,5]<-" ";KEY_B[2,6]<-"#";KEY_B[2,7]<-" ";KEY_B[2,8]<-" ";KEY_B[2,9]<-" ";
	KEY_B[3,1]<-"#";KEY_B[3,2]<-" ";KEY_B[3,3]<-" ";KEY_B[3,4]<-" ";KEY_B[3,5]<-" ";KEY_B[3,6]<-"#";KEY_B[3,7]<-" ";KEY_B[3,8]<-" ";KEY_B[3,9]<-" ";
	KEY_B[4,1]<-"#";KEY_B[4,2]<-"#";KEY_B[4,3]<-"#";KEY_B[4,4]<-"#";KEY_B[4,5]<-"#";KEY_B[4,6]<-" ";KEY_B[4,7]<-" ";KEY_B[4,8]<-" ";KEY_B[4,9]<-" ";
	KEY_B[5,1]<-"#";KEY_B[5,2]<-" ";KEY_B[5,3]<-" ";KEY_B[5,4]<-" ";KEY_B[5,5]<-" ";KEY_B[5,6]<-"#";KEY_B[5,7]<-" ";KEY_B[5,8]<-" ";KEY_B[5,9]<-" ";
	KEY_B[6,1]<-"#";KEY_B[6,2]<-" ";KEY_B[6,3]<-" ";KEY_B[6,4]<-" ";KEY_B[6,5]<-" ";KEY_B[6,6]<-"#";KEY_B[6,7]<-" ";KEY_B[6,8]<-" ";KEY_B[6,9]<-" ";
	KEY_B[7,1]<-"#";KEY_B[7,2]<-"#";KEY_B[7,3]<-"#";KEY_B[7,4]<-"#";KEY_B[7,5]<-"#";KEY_B[7,6]<-" ";KEY_B[7,7]<-" ";KEY_B[7,8]<-" ";KEY_B[7,9]<-" ";
	KEY_B[8,1]<-" ";KEY_B[8,2]<-" ";KEY_B[8,3]<-" ";KEY_B[8,4]<-" ";KEY_B[8,5]<-" ";KEY_B[8,6]<-" ";KEY_B[8,7]<-" ";KEY_B[8,8]<-" ";KEY_B[8,9]<-" ";
	
	// Letra C
	definir KEY_C Como Caracter; Dimension KEY_C[10,10];
	KEY_C[1,1]<-" ";KEY_C[1,2]<-"#";KEY_C[1,3]<-"#";KEY_C[1,4]<-"#";KEY_C[1,5]<-"#";KEY_C[1,6]<-" ";KEY_C[1,7]<-" ";KEY_C[1,8]<-" ";KEY_C[1,9]<-" ";
	KEY_C[2,1]<-"#";KEY_C[2,2]<-" ";KEY_C[2,3]<-" ";KEY_C[2,4]<-" ";KEY_C[2,5]<-" ";KEY_C[2,6]<-"#";KEY_C[2,7]<-" ";KEY_C[2,8]<-" ";KEY_C[2,9]<-" ";
	KEY_C[3,1]<-"#";KEY_C[3,2]<-" ";KEY_C[3,3]<-" ";KEY_C[3,4]<-" ";KEY_C[3,5]<-" ";KEY_C[3,6]<-" ";KEY_C[3,7]<-" ";KEY_C[3,8]<-" ";KEY_C[3,9]<-" ";
	KEY_C[4,1]<-"#";KEY_C[4,2]<-" ";KEY_C[4,3]<-" ";KEY_C[4,4]<-" ";KEY_C[4,5]<-" ";KEY_C[4,6]<-" ";KEY_C[4,7]<-" ";KEY_C[4,8]<-" ";KEY_C[4,9]<-" ";
	KEY_C[5,1]<-"#";KEY_C[5,2]<-" ";KEY_C[5,3]<-" ";KEY_C[5,4]<-" ";KEY_C[5,5]<-" ";KEY_C[5,6]<-" ";KEY_C[5,7]<-" ";KEY_C[5,8]<-" ";KEY_C[5,9]<-" ";
	KEY_C[6,1]<-"#";KEY_C[6,2]<-" ";KEY_C[6,3]<-" ";KEY_C[6,4]<-" ";KEY_C[6,5]<-" ";KEY_C[6,6]<-"#";KEY_C[6,7]<-" ";KEY_C[6,8]<-" ";KEY_C[6,9]<-" ";
	KEY_C[7,1]<-" ";KEY_C[7,2]<-"#";KEY_C[7,3]<-"#";KEY_C[7,4]<-"#";KEY_C[7,5]<-"#";KEY_C[7,6]<-" ";KEY_C[7,7]<-" ";KEY_C[7,8]<-" ";KEY_C[7,9]<-" ";
	KEY_C[8,1]<-" ";KEY_C[8,2]<-" ";KEY_C[8,3]<-" ";KEY_C[8,4]<-" ";KEY_C[8,5]<-" ";KEY_C[8,6]<-" ";KEY_C[8,7]<-" ";KEY_C[8,8]<-" ";KEY_C[8,9]<-" ";
	
	// Letra D
	definir KEY_D Como Caracter; Dimension KEY_D[10,10];
	KEY_D[1,1]<-"#";KEY_D[1,2]<-"#";KEY_D[1,3]<-"#";KEY_D[1,4]<-"#";KEY_D[1,5]<-" ";KEY_D[1,6]<-" ";KEY_D[1,7]<-" ";KEY_D[1,8]<-" ";KEY_D[1,9]<-" ";
	KEY_D[2,1]<-"#";KEY_D[2,2]<-" ";KEY_D[2,3]<-" ";KEY_D[2,4]<-" ";KEY_D[2,5]<-"#";KEY_D[2,6]<-" ";KEY_D[2,7]<-" ";KEY_D[2,8]<-" ";KEY_D[2,9]<-" ";
	KEY_D[3,1]<-"#";KEY_D[3,2]<-" ";KEY_D[3,3]<-" ";KEY_D[3,4]<-" ";KEY_D[3,5]<-" ";KEY_D[3,6]<-"#";KEY_D[3,7]<-" ";KEY_D[3,8]<-" ";KEY_D[3,9]<-" ";
	KEY_D[4,1]<-"#";KEY_D[4,2]<-" ";KEY_D[4,3]<-" ";KEY_D[4,4]<-" ";KEY_D[4,5]<-" ";KEY_D[4,6]<-" ";KEY_D[4,7]<-"#";KEY_D[4,8]<-" ";KEY_D[4,9]<-" ";
	KEY_D[5,1]<-"#";KEY_D[5,2]<-" ";KEY_D[5,3]<-" ";KEY_D[5,4]<-" ";KEY_D[5,5]<-" ";KEY_D[5,6]<-" ";KEY_D[5,7]<-" ";KEY_D[5,8]<-"#";KEY_D[5,9]<-" ";
	KEY_D[6,1]<-"#";KEY_D[6,2]<-" ";KEY_D[6,3]<-" ";KEY_D[6,4]<-" ";KEY_D[6,5]<-" ";KEY_D[6,6]<-" ";KEY_D[6,7]<-" ";KEY_D[6,8]<-" ";KEY_D[6,9]<-"#";
	KEY_D[7,1]<-"#";KEY_D[7,2]<-"#";KEY_D[7,3]<-"#";KEY_D[7,4]<-"#";KEY_D[7,5]<-" ";KEY_D[7,6]<-" ";KEY_D[7,7]<-" ";KEY_D[7,8]<-" ";KEY_D[7,9]<-" ";
	
	// Letra E
	definir KEY_E Como Caracter; Dimension KEY_E[10,10];
	KEY_E[1,1]<-"#";KEY_E[1,2]<-"#";KEY_E[1,3]<-"#";KEY_E[1,4]<-"#";KEY_E[1,5]<-"#";KEY_E[1,6]<-" ";KEY_E[1,7]<-" ";KEY_E[1,8]<-" ";KEY_E[1,9]<-" ";
	KEY_E[2,1]<-"#";KEY_E[2,2]<-" ";KEY_E[2,3]<-" ";KEY_E[2,4]<-" ";KEY_E[2,5]<-" ";KEY_E[2,6]<-" ";KEY_E[2,7]<-" ";KEY_E[2,8]<-" ";KEY_E[2,9]<-" ";
	KEY_E[3,1]<-"#";KEY_E[3,2]<-" ";KEY_E[3,3]<-" ";KEY_E[3,4]<-" ";KEY_E[3,5]<-" ";KEY_E[3,6]<-" ";KEY_E[3,7]<-" ";KEY_E[3,8]<-" ";KEY_E[3,9]<-" ";
	KEY_E[4,1]<-"#";KEY_E[4,2]<-"#";KEY_E[4,3]<-"#";KEY_E[4,4]<-"#";KEY_E[4,5]<-" ";KEY_E[4,6]<-" ";KEY_E[4,7]<-" ";KEY_E[4,8]<-" ";KEY_E[4,9]<-" ";
	KEY_E[5,1]<-"#";KEY_E[5,2]<-" ";KEY_E[5,3]<-" ";KEY_E[5,4]<-" ";KEY_E[5,5]<-" ";KEY_E[5,6]<-" ";KEY_E[5,7]<-" ";KEY_E[5,8]<-" ";KEY_E[5,9]<-" ";
	KEY_E[6,1]<-"#";KEY_E[6,2]<-" ";KEY_E[6,3]<-" ";KEY_E[6,4]<-" ";KEY_E[6,5]<-" ";KEY_E[6,6]<-" ";KEY_E[6,7]<-" ";KEY_E[6,8]<-" ";KEY_E[6,9]<-" ";
	KEY_E[7,1]<-"#";KEY_E[7,2]<-"#";KEY_E[7,3]<-"#";KEY_E[7,4]<-"#";KEY_E[7,5]<-"#";KEY_E[7,6]<-" ";KEY_E[7,7]<-" ";KEY_E[7,8]<-" ";KEY_E[7,9]<-" ";
	KEY_E[8,1]<-" ";KEY_E[8,2]<-" ";KEY_E[8,3]<-" ";KEY_E[8,4]<-" ";KEY_E[8,5]<-" ";KEY_E[8,6]<-" ";KEY_E[8,7]<-" ";KEY_E[8,8]<-" ";KEY_E[8,9]<-" ";
	
	// Letra F
	definir KEY_F Como Caracter; Dimension KEY_F[10,10];
	KEY_F[1,1]<-"#";KEY_F[1,2]<-"#";KEY_F[1,3]<-"#";KEY_F[1,4]<-"#";KEY_F[1,5]<-"#";KEY_F[1,6]<-" ";KEY_F[1,7]<-" ";KEY_F[1,8]<-" ";KEY_F[1,9]<-" ";
	KEY_F[2,1]<-"#";KEY_F[2,2]<-" ";KEY_F[2,3]<-" ";KEY_F[2,4]<-" ";KEY_F[2,5]<-" ";KEY_F[2,6]<-" ";KEY_F[2,7]<-" ";KEY_F[2,8]<-" ";KEY_F[2,9]<-" ";
	KEY_F[3,1]<-"#";KEY_F[3,2]<-" ";KEY_F[3,3]<-" ";KEY_F[3,4]<-" ";KEY_F[3,5]<-" ";KEY_F[3,6]<-" ";KEY_F[3,7]<-" ";KEY_F[3,8]<-" ";KEY_F[3,9]<-" ";
	KEY_F[4,1]<-"#";KEY_F[4,2]<-"#";KEY_F[4,3]<-"#";KEY_F[4,4]<-"#";KEY_F[4,5]<-" ";KEY_F[4,6]<-" ";KEY_F[4,7]<-" ";KEY_F[4,8]<-" ";KEY_F[4,9]<-" ";
	KEY_F[5,1]<-"#";KEY_F[5,2]<-" ";KEY_F[5,3]<-" ";KEY_F[5,4]<-" ";KEY_F[5,5]<-" ";KEY_F[5,6]<-" ";KEY_F[5,7]<-" ";KEY_F[5,8]<-" ";KEY_F[5,9]<-" ";
	KEY_F[6,1]<-"#";KEY_F[6,2]<-" ";KEY_F[6,3]<-" ";KEY_F[6,4]<-" ";KEY_F[6,5]<-" ";KEY_F[6,6]<-" ";KEY_F[6,7]<-" ";KEY_F[6,8]<-" ";KEY_F[6,9]<-" ";
	KEY_F[7,1]<-"#";KEY_F[7,2]<-" ";KEY_F[7,3]<-" ";KEY_F[7,4]<-" ";KEY_F[7,5]<-" ";KEY_F[7,6]<-" ";KEY_F[7,7]<-" ";KEY_F[7,8]<-" ";KEY_F[7,9]<-" ";
	KEY_F[8,1]<-" ";KEY_F[8,2]<-" ";KEY_F[8,3]<-" ";KEY_F[8,4]<-" ";KEY_F[8,5]<-" ";KEY_F[8,6]<-" ";KEY_F[8,7]<-" ";KEY_F[8,8]<-" ";KEY_F[8,9]<-" ";
	
	// Letra G
	definir KEY_G Como Caracter; Dimension KEY_G[10,10];
	KEY_G[1,1]<-" ";KEY_G[1,2]<-"#";KEY_G[1,3]<-"#";KEY_G[1,4]<-"#";KEY_G[1,5]<-"#";KEY_G[1,6]<-" ";KEY_G[1,7]<-" ";KEY_G[1,8]<-" ";KEY_G[1,9]<-" ";
	KEY_G[2,1]<-"#";KEY_G[2,2]<-" ";KEY_G[2,3]<-" ";KEY_G[2,4]<-" ";KEY_G[2,5]<-" ";KEY_G[2,6]<-"#";KEY_G[2,7]<-" ";KEY_G[2,8]<-" ";KEY_G[2,9]<-" ";
	KEY_G[3,1]<-"#";KEY_G[3,2]<-" ";KEY_G[3,3]<-" ";KEY_G[3,4]<-" ";KEY_G[3,5]<-" ";KEY_G[3,6]<-" ";KEY_G[3,7]<-" ";KEY_G[3,8]<-" ";KEY_G[3,9]<-" ";
	KEY_G[4,1]<-"#";KEY_G[4,2]<-" ";KEY_G[4,3]<-" ";KEY_G[4,4]<-" ";KEY_G[4,5]<-"#";KEY_G[4,6]<-"#";KEY_G[4,7]<-"#";KEY_G[4,8]<-" ";KEY_G[4,9]<-" ";
	KEY_G[5,1]<-"#";KEY_G[5,2]<-" ";KEY_G[5,3]<-" ";KEY_G[5,4]<-" ";KEY_G[5,5]<-" ";KEY_G[5,6]<-" ";KEY_G[5,7]<-"#";KEY_G[5,8]<-" ";KEY_G[5,9]<-" ";
	KEY_G[6,1]<-"#";KEY_G[6,2]<-" ";KEY_G[6,3]<-" ";KEY_G[6,4]<-" ";KEY_G[6,5]<-" ";KEY_G[6,6]<-" ";KEY_G[6,7]<-"#";KEY_G[6,8]<-" ";KEY_G[6,9]<-" ";
	KEY_G[7,1]<-" ";KEY_G[7,2]<-"#";KEY_G[7,3]<-"#";KEY_G[7,4]<-"#";KEY_G[7,5]<-"#";KEY_G[7,6]<-"#";KEY_G[7,7]<-" ";KEY_G[7,8]<-" ";KEY_G[7,9]<-" ";
	KEY_G[8,1]<-" ";KEY_G[8,2]<-" ";KEY_G[8,3]<-" ";KEY_G[8,4]<-" ";KEY_G[8,5]<-" ";KEY_G[8,6]<-" ";KEY_G[8,7]<-" ";KEY_G[8,8]<-" ";KEY_G[8,9]<-" ";
	
	// Letra H
	definir KEY_H Como Caracter; Dimension KEY_H[10,10];
	KEY_H[1,1]<-"#";KEY_H[1,2]<-" ";KEY_H[1,3]<-" ";KEY_H[1,4]<-" ";KEY_H[1,5]<-" ";KEY_H[1,6]<-" ";KEY_H[1,7]<-" ";KEY_H[1,8]<-" ";KEY_H[1,9]<-"#";
	KEY_H[2,1]<-"#";KEY_H[2,2]<-" ";KEY_H[2,3]<-" ";KEY_H[2,4]<-" ";KEY_H[2,5]<-" ";KEY_H[2,6]<-" ";KEY_H[2,7]<-" ";KEY_H[2,8]<-" ";KEY_H[2,9]<-"#";
	KEY_H[3,1]<-"#";KEY_H[3,2]<-" ";KEY_H[3,3]<-" ";KEY_H[3,4]<-" ";KEY_H[3,5]<-" ";KEY_H[3,6]<-" ";KEY_H[3,7]<-" ";KEY_H[3,8]<-" ";KEY_H[3,9]<-"#";
	KEY_H[4,1]<-"#";KEY_H[4,2]<-"#";KEY_H[4,3]<-"#";KEY_H[4,4]<-"#";KEY_H[4,5]<-"#";KEY_H[4,6]<-"#";KEY_H[4,7]<-"#";KEY_H[4,8]<-"#";KEY_H[4,9]<-"#";
	KEY_H[5,1]<-"#";KEY_H[5,2]<-" ";KEY_H[5,3]<-" ";KEY_H[5,4]<-" ";KEY_H[5,5]<-" ";KEY_H[5,6]<-" ";KEY_H[5,7]<-" ";KEY_H[5,8]<-" ";KEY_H[5,9]<-"#";
	KEY_H[6,1]<-"#";KEY_H[6,2]<-" ";KEY_H[6,3]<-" ";KEY_H[6,4]<-" ";KEY_H[6,5]<-" ";KEY_H[6,6]<-" ";KEY_H[6,7]<-" ";KEY_H[6,8]<-" ";KEY_H[6,9]<-"#";
	KEY_H[7,1]<-"#";KEY_H[7,2]<-" ";KEY_H[7,3]<-" ";KEY_H[7,4]<-" ";KEY_H[7,5]<-" ";KEY_H[7,6]<-" ";KEY_H[7,7]<-" ";KEY_H[7,8]<-" ";KEY_H[7,9]<-"#";
	KEY_H[8,1]<-" ";KEY_H[8,2]<-" ";KEY_H[8,3]<-" ";KEY_H[8,4]<-" ";KEY_H[8,5]<-" ";KEY_H[8,6]<-" ";KEY_H[8,7]<-" ";KEY_H[8,8]<-" ";KEY_H[8,9]<-" ";
	
	// Letra I
	definir KEY_I Como Caracter; Dimension KEY_I[10,10];
	KEY_I[1,1]<-" ";KEY_I[1,2]<-"#";KEY_I[1,3]<-"#";KEY_I[1,4]<-"#";KEY_I[1,5]<-"#";KEY_I[1,6]<-"#";KEY_I[1,7]<-"#";KEY_I[1,8]<-" ";KEY_I[1,9]<-" ";
	KEY_I[2,1]<-" ";KEY_I[2,2]<-" ";KEY_I[2,3]<-" ";KEY_I[2,4]<-"#";KEY_I[2,5]<-" ";KEY_I[2,6]<-" ";KEY_I[2,7]<-" ";KEY_I[2,8]<-" ";KEY_I[2,9]<-" ";
	KEY_I[3,1]<-" ";KEY_I[3,2]<-" ";KEY_I[3,3]<-" ";KEY_I[3,4]<-"#";KEY_I[3,5]<-" ";KEY_I[3,6]<-" ";KEY_I[3,7]<-" ";KEY_I[3,8]<-" ";KEY_I[3,9]<-" ";
	KEY_I[4,1]<-" ";KEY_I[4,2]<-" ";KEY_I[4,3]<-" ";KEY_I[4,4]<-"#";KEY_I[4,5]<-" ";KEY_I[4,6]<-" ";KEY_I[4,7]<-" ";KEY_I[4,8]<-" ";KEY_I[4,9]<-" ";
	KEY_I[5,1]<-" ";KEY_I[5,2]<-" ";KEY_I[5,3]<-" ";KEY_I[5,4]<-"#";KEY_I[5,5]<-" ";KEY_I[5,6]<-" ";KEY_I[5,7]<-" ";KEY_I[5,8]<-" ";KEY_I[5,9]<-" ";
	KEY_I[6,1]<-" ";KEY_I[6,2]<-" ";KEY_I[6,3]<-" ";KEY_I[6,4]<-"#";KEY_I[6,5]<-" ";KEY_I[6,6]<-" ";KEY_I[6,7]<-" ";KEY_I[6,8]<-" ";KEY_I[6,9]<-" ";
	KEY_I[7,1]<-" ";KEY_I[7,2]<-" ";KEY_I[7,3]<-" ";KEY_I[7,4]<-"#";KEY_I[7,5]<-" ";KEY_I[7,6]<-" ";KEY_I[7,7]<-" ";KEY_I[7,8]<-" ";KEY_I[7,9]<-" ";
	KEY_I[8,1]<-" ";KEY_I[8,2]<-"#";KEY_I[8,3]<-"#";KEY_I[8,4]<-"#";KEY_I[8,5]<-"#";KEY_I[8,6]<-"#";KEY_I[8,7]<-"#";KEY_I[8,8]<-" ";KEY_I[8,9]<-" ";
	
	// Letra J
	definir KEY_J Como Caracter; Dimension KEY_J[10,10];
	KEY_J[1,1]<-" ";KEY_J[1,2]<-" ";KEY_J[1,3]<-" ";KEY_J[1,4]<-" ";KEY_J[1,5]<-" ";KEY_J[1,6]<-" ";KEY_J[1,7]<-" ";KEY_J[1,8]<-"#";KEY_J[1,9]<-" ";
	KEY_J[2,1]<-" ";KEY_J[2,2]<-" ";KEY_J[2,3]<-" ";KEY_J[2,4]<-" ";KEY_J[2,5]<-" ";KEY_J[2,6]<-" ";KEY_J[2,7]<-" ";KEY_J[2,8]<-"#";KEY_J[2,9]<-" ";
	KEY_J[3,1]<-" ";KEY_J[3,2]<-" ";KEY_J[3,3]<-" ";KEY_J[3,4]<-" ";KEY_J[3,5]<-" ";KEY_J[3,6]<-" ";KEY_J[3,7]<-" ";KEY_J[3,8]<-"#";KEY_J[3,9]<-" ";
	KEY_J[4,1]<-" ";KEY_J[4,2]<-" ";KEY_J[4,3]<-" ";KEY_J[4,4]<-" ";KEY_J[4,5]<-" ";KEY_J[4,6]<-" ";KEY_J[4,7]<-" ";KEY_J[4,8]<-"#";KEY_J[4,9]<-" ";
	KEY_J[5,1]<-"#";KEY_J[5,2]<-" ";KEY_J[5,3]<-" ";KEY_J[5,4]<-" ";KEY_J[5,5]<-" ";KEY_J[5,6]<-" ";KEY_J[5,7]<-" ";KEY_J[5,8]<-"#";KEY_J[5,9]<-" ";
	KEY_J[6,1]<-"#";KEY_J[6,2]<-" ";KEY_J[6,3]<-" ";KEY_J[6,4]<-" ";KEY_J[6,5]<-" ";KEY_J[6,6]<-" ";KEY_J[6,7]<-" ";KEY_J[6,8]<-"#";KEY_J[6,9]<-" ";
	KEY_J[7,1]<-" ";KEY_J[7,2]<-"#";KEY_J[7,3]<-"#";KEY_J[7,4]<-"#";KEY_J[7,5]<-"#";KEY_J[7,6]<-"#";KEY_J[7,7]<-"#";KEY_J[7,8]<-" ";KEY_J[7,9]<-" ";
	KEY_J[8,1]<-" ";KEY_J[8,2]<-" ";KEY_J[8,3]<-" ";KEY_J[8,4]<-" ";KEY_J[8,5]<-" ";KEY_J[8,6]<-" ";KEY_J[8,7]<-" ";KEY_J[8,8]<-" ";KEY_J[8,9]<-" ";
	
	// Letra K
	definir KEY_K Como Caracter; Dimension KEY_K[10,10];
	KEY_K[1,1]<-"#";KEY_K[1,2]<-" ";KEY_K[1,3]<-" ";KEY_K[1,4]<-" ";KEY_K[1,5]<-" ";KEY_K[1,6]<-" ";KEY_K[1,7]<-" ";KEY_K[1,8]<-"#";KEY_K[1,9]<-" ";
	KEY_K[2,1]<-"#";KEY_K[2,2]<-" ";KEY_K[2,3]<-" ";KEY_K[2,4]<-" ";KEY_K[2,5]<-" ";KEY_K[2,6]<-" ";KEY_K[2,7]<-"#";KEY_K[2,8]<-" ";KEY_K[2,9]<-" ";
	KEY_K[3,1]<-"#";KEY_K[3,2]<-" ";KEY_K[3,3]<-" ";KEY_K[3,4]<-" ";KEY_K[3,5]<-" ";KEY_K[3,6]<-"#";KEY_K[3,7]<-" ";KEY_K[3,8]<-" ";KEY_K[3,9]<-" ";
	KEY_K[4,1]<-"#";KEY_K[4,2]<-" ";KEY_K[4,3]<-" ";KEY_K[4,4]<-" ";KEY_K[4,5]<-"#";KEY_K[4,6]<-" ";KEY_K[4,7]<-" ";KEY_K[4,8]<-" ";KEY_K[4,9]<-" ";
	KEY_K[5,1]<-"#";KEY_K[5,2]<-"#";KEY_K[5,3]<-"#";KEY_K[5,4]<-"#";KEY_K[5,5]<-" ";KEY_K[5,6]<-" ";KEY_K[5,7]<-" ";KEY_K[5,8]<-" ";KEY_K[5,9]<-" ";
	KEY_K[6,1]<-"#";KEY_K[6,2]<-" ";KEY_K[6,3]<-" ";KEY_K[6,4]<-" ";KEY_K[6,5]<-"#";KEY_K[6,6]<-" ";KEY_K[6,7]<-" ";KEY_K[6,8]<-" ";KEY_K[6,9]<-" ";
	KEY_K[7,1]<-"#";KEY_K[7,2]<-" ";KEY_K[7,3]<-" ";KEY_K[7,4]<-" ";KEY_K[7,5]<-" ";KEY_K[7,6]<-"#";KEY_K[7,7]<-" ";KEY_K[7,8]<-" ";KEY_K[7,9]<-" ";
	KEY_K[8,1]<-"#";KEY_K[8,2]<-" ";KEY_K[8,3]<-" ";KEY_K[8,4]<-" ";KEY_K[8,5]<-" ";KEY_K[8,6]<-" ";KEY_K[8,7]<-"#";KEY_K[8,8]<-" ";KEY_K[8,9]<-" ";
	
	// Letra L
	definir KEY_L Como Caracter; Dimension KEY_L[10,10];
	KEY_L[1,1]<-"#";KEY_L[1,2]<-" ";KEY_L[1,3]<-" ";KEY_L[1,4]<-" ";KEY_L[1,5]<-" ";KEY_L[1,6]<-" ";KEY_L[1,7]<-" ";KEY_L[1,8]<-" ";KEY_L[1,9]<-" ";
	KEY_L[2,1]<-"#";KEY_L[2,2]<-" ";KEY_L[2,3]<-" ";KEY_L[2,4]<-" ";KEY_L[2,5]<-" ";KEY_L[2,6]<-" ";KEY_L[2,7]<-" ";KEY_L[2,8]<-" ";KEY_L[2,9]<-" ";
	KEY_L[3,1]<-"#";KEY_L[3,2]<-" ";KEY_L[3,3]<-" ";KEY_L[3,4]<-" ";KEY_L[3,5]<-" ";KEY_L[3,6]<-" ";KEY_L[3,7]<-" ";KEY_L[3,8]<-" ";KEY_L[3,9]<-" ";
	KEY_L[4,1]<-"#";KEY_L[4,2]<-" ";KEY_L[4,3]<-" ";KEY_L[4,4]<-" ";KEY_L[4,5]<-" ";KEY_L[4,6]<-" ";KEY_L[4,7]<-" ";KEY_L[4,8]<-" ";KEY_L[4,9]<-" ";
	KEY_L[5,1]<-"#";KEY_L[5,2]<-" ";KEY_L[5,3]<-" ";KEY_L[5,4]<-" ";KEY_L[5,5]<-" ";KEY_L[5,6]<-" ";KEY_L[5,7]<-" ";KEY_L[5,8]<-" ";KEY_L[5,9]<-" ";
	KEY_L[6,1]<-"#";KEY_L[6,2]<-" ";KEY_L[6,3]<-" ";KEY_L[6,4]<-" ";KEY_L[6,5]<-" ";KEY_L[6,6]<-" ";KEY_L[6,7]<-" ";KEY_L[6,8]<-" ";KEY_L[6,9]<-" ";
	KEY_L[7,1]<-"#";KEY_L[7,2]<-"#";KEY_L[7,3]<-"#";KEY_L[7,4]<-"#";KEY_L[7,5]<-"#";KEY_L[7,6]<-"#";KEY_L[7,7]<-"#";KEY_L[7,8]<-"#";KEY_L[7,9]<-"#";
	KEY_L[8,1]<-" ";KEY_L[8,2]<-" ";KEY_L[8,3]<-" ";KEY_L[8,4]<-" ";KEY_L[8,5]<-" ";KEY_L[8,6]<-" ";KEY_L[8,7]<-" ";KEY_L[8,8]<-" ";KEY_L[8,9]<-" ";
	
	// Letra M
	definir KEY_M Como Caracter; Dimension KEY_M[10,10];
	KEY_M[1,1]<-"#";KEY_M[1,2]<-" ";KEY_M[1,3]<-" ";KEY_M[1,4]<-" ";KEY_M[1,5]<-" ";KEY_M[1,6]<-" ";KEY_M[1,7]<-" ";KEY_M[1,8]<-" ";KEY_M[1,9]<-"#";
	KEY_M[2,1]<-"#";KEY_M[2,2]<-"#";KEY_M[2,3]<-" ";KEY_M[2,4]<-" ";KEY_M[2,5]<-" ";KEY_M[2,6]<-" ";KEY_M[2,7]<-" ";KEY_M[2,8]<-"#";KEY_M[2,9]<-"#";
	KEY_M[3,1]<-"#";KEY_M[3,2]<-" ";KEY_M[3,3]<-"#";KEY_M[3,4]<-" ";KEY_M[3,5]<-" ";KEY_M[3,6]<-" ";KEY_M[3,7]<-"#";KEY_M[3,8]<-" ";KEY_M[3,9]<-"#";
	KEY_M[4,1]<-"#";KEY_M[4,2]<-" ";KEY_M[4,3]<-" ";KEY_M[4,4]<-"#";KEY_M[4,5]<-" ";KEY_M[4,6]<-"#";KEY_M[4,7]<-" ";KEY_M[4,8]<-" ";KEY_M[4,9]<-"#";
	KEY_M[5,1]<-"#";KEY_M[5,2]<-" ";KEY_M[5,3]<-" ";KEY_M[5,4]<-" ";KEY_M[5,5]<-"#";KEY_M[5,6]<-" ";KEY_M[5,7]<-" ";KEY_M[5,8]<-" ";KEY_M[5,9]<-"#";
	KEY_M[6,1]<-"#";KEY_M[6,2]<-" ";KEY_M[6,3]<-" ";KEY_M[6,4]<-" ";KEY_M[6,5]<-" ";KEY_M[6,6]<-" ";KEY_M[6,7]<-" ";KEY_M[6,8]<-" ";KEY_M[6,9]<-"#";
	KEY_M[7,1]<-"#";KEY_M[7,2]<-" ";KEY_M[7,3]<-" ";KEY_M[7,4]<-" ";KEY_M[7,5]<-" ";KEY_M[7,6]<-" ";KEY_M[7,7]<-" ";KEY_M[7,8]<-" ";KEY_M[7,9]<-"#";
	KEY_M[8,1]<-"#";KEY_M[8,2]<-" ";KEY_M[8,3]<-" ";KEY_M[8,4]<-" ";KEY_M[8,5]<-" ";KEY_M[8,6]<-" ";KEY_M[8,7]<-" ";KEY_M[8,8]<-" ";KEY_M[8,9]<-"#";
	
	// Letra N
	definir KEY_N Como Caracter; Dimension KEY_N[10,10];
	KEY_N[1,1]<-"#";KEY_N[1,2]<-" ";KEY_N[1,3]<-" ";KEY_N[1,4]<-" ";KEY_N[1,5]<-" ";KEY_N[1,6]<-" ";KEY_N[1,7]<-" ";KEY_N[1,8]<-" ";KEY_N[1,9]<-"#";
	KEY_N[2,1]<-"#";KEY_N[2,2]<-"#";KEY_N[2,3]<-" ";KEY_N[2,4]<-" ";KEY_N[2,5]<-" ";KEY_N[2,6]<-" ";KEY_N[2,7]<-" ";KEY_N[2,8]<-" ";KEY_N[2,9]<-"#";
	KEY_N[3,1]<-"#";KEY_N[3,2]<-" ";KEY_N[3,3]<-"#";KEY_N[3,4]<-" ";KEY_N[3,5]<-" ";KEY_N[3,6]<-" ";KEY_N[3,7]<-" ";KEY_N[3,8]<-" ";KEY_N[3,9]<-"#";
	KEY_N[4,1]<-"#";KEY_N[4,2]<-" ";KEY_N[4,3]<-" ";KEY_N[4,4]<-"#";KEY_N[4,5]<-" ";KEY_N[4,6]<-" ";KEY_N[4,7]<-" ";KEY_N[4,8]<-" ";KEY_N[4,9]<-"#";
	KEY_N[5,1]<-"#";KEY_N[5,2]<-" ";KEY_N[5,3]<-" ";KEY_N[5,4]<-" ";KEY_N[5,5]<-"#";KEY_N[5,6]<-" ";KEY_N[5,7]<-" ";KEY_N[5,8]<-" ";KEY_N[5,9]<-"#";
	KEY_N[6,1]<-"#";KEY_N[6,2]<-" ";KEY_N[6,3]<-" ";KEY_N[6,4]<-" ";KEY_N[6,5]<-" ";KEY_N[6,6]<-"#";KEY_N[6,7]<-" ";KEY_N[6,8]<-" ";KEY_N[6,9]<-"#";
	KEY_N[7,1]<-"#";KEY_N[7,2]<-" ";KEY_N[7,3]<-" ";KEY_N[7,4]<-" ";KEY_N[7,5]<-" ";KEY_N[7,6]<-" ";KEY_N[7,7]<-"#";KEY_N[7,8]<-" ";KEY_N[7,9]<-"#";
	KEY_N[8,1]<-"#";KEY_N[8,2]<-" ";KEY_N[8,3]<-" ";KEY_N[8,4]<-" ";KEY_N[8,5]<-" ";KEY_N[8,6]<-" ";KEY_N[8,7]<-" ";KEY_N[8,8]<-"#";KEY_N[8,9]<-"#";
	
	// Letra O
	definir KEY_O Como Caracter; Dimension KEY_O[10,10];
	KEY_O[1,1]<-" ";KEY_O[1,2]<-"#";KEY_O[1,3]<-"#";KEY_O[1,4]<-"#";KEY_O[1,5]<-"#";KEY_O[1,6]<-"#";KEY_O[1,7]<-"#";KEY_O[1,8]<-" ";KEY_O[1,9]<-" ";
	KEY_O[2,1]<-"#";KEY_O[2,2]<-" ";KEY_O[2,3]<-" ";KEY_O[2,4]<-" ";KEY_O[2,5]<-" ";KEY_O[2,6]<-" ";KEY_O[2,7]<-" ";KEY_O[2,8]<-"#";KEY_O[2,9]<-" ";
	KEY_O[3,1]<-"#";KEY_O[3,2]<-" ";KEY_O[3,3]<-" ";KEY_O[3,4]<-" ";KEY_O[3,5]<-" ";KEY_O[3,6]<-" ";KEY_O[3,7]<-" ";KEY_O[3,8]<-"#";KEY_O[3,9]<-" ";
	KEY_O[4,1]<-"#";KEY_O[4,2]<-" ";KEY_O[4,3]<-" ";KEY_O[4,4]<-" ";KEY_O[4,5]<-" ";KEY_O[4,6]<-" ";KEY_O[4,7]<-" ";KEY_O[4,8]<-"#";KEY_O[4,9]<-" ";
	KEY_O[5,1]<-"#";KEY_O[5,2]<-" ";KEY_O[5,3]<-" ";KEY_O[5,4]<-" ";KEY_O[5,5]<-" ";KEY_O[5,6]<-" ";KEY_O[5,7]<-" ";KEY_O[5,8]<-"#";KEY_O[5,9]<-" ";
	KEY_O[6,1]<-"#";KEY_O[6,2]<-" ";KEY_O[6,3]<-" ";KEY_O[6,4]<-" ";KEY_O[6,5]<-" ";KEY_O[6,6]<-" ";KEY_O[6,7]<-" ";KEY_O[6,8]<-"#";KEY_O[6,9]<-" ";
	KEY_O[7,1]<-"#";KEY_O[7,2]<-" ";KEY_O[7,3]<-" ";KEY_O[7,4]<-" ";KEY_O[7,5]<-" ";KEY_O[7,6]<-" ";KEY_O[7,7]<-" ";KEY_O[7,8]<-"#";KEY_O[7,9]<-" ";
	KEY_O[8,1]<-" ";KEY_O[8,2]<-"#";KEY_O[8,3]<-"#";KEY_O[8,4]<-"#";KEY_O[8,5]<-"#";KEY_O[8,6]<-"#";KEY_O[8,7]<-"#";KEY_O[8,8]<-" ";KEY_O[8,9]<-" ";
	
	// Letra P
	definir KEY_P Como Caracter; Dimension KEY_P[10,10];
	KEY_P[1,1]<-"#";KEY_P[1,2]<-"#";KEY_P[1,3]<-"#";KEY_P[1,4]<-"#";KEY_P[1,5]<-"#";KEY_P[1,6]<-" ";KEY_P[1,7]<-" ";KEY_P[1,8]<-" ";KEY_P[1,9]<-" ";
	KEY_P[2,1]<-"#";KEY_P[2,2]<-" ";KEY_P[2,3]<-" ";KEY_P[2,4]<-" ";KEY_P[2,5]<-" ";KEY_P[2,6]<-"#";KEY_P[2,7]<-" ";KEY_P[2,8]<-" ";KEY_P[2,9]<-" ";
	KEY_P[3,1]<-"#";KEY_P[3,2]<-" ";KEY_P[3,3]<-" ";KEY_P[3,4]<-" ";KEY_P[3,5]<-" ";KEY_P[3,6]<-"#";KEY_P[3,7]<-" ";KEY_P[3,8]<-" ";KEY_P[3,9]<-" ";
	KEY_P[4,1]<-"#";KEY_P[4,2]<-"#";KEY_P[4,3]<-"#";KEY_P[4,4]<-"#";KEY_P[4,5]<-"#";KEY_P[4,6]<-" ";KEY_P[4,7]<-" ";KEY_P[4,8]<-" ";KEY_P[4,9]<-" ";
	KEY_P[5,1]<-"#";KEY_P[5,2]<-" ";KEY_P[5,3]<-" ";KEY_P[5,4]<-" ";KEY_P[5,5]<-" ";KEY_P[5,6]<-" ";KEY_P[5,7]<-" ";KEY_P[5,8]<-" ";KEY_P[5,9]<-" ";
	KEY_P[6,1]<-"#";KEY_P[6,2]<-" ";KEY_P[6,3]<-" ";KEY_P[6,4]<-" ";KEY_P[6,5]<-" ";KEY_P[6,6]<-" ";KEY_P[6,7]<-" ";KEY_P[6,8]<-" ";KEY_P[6,9]<-" ";
	KEY_P[7,1]<-"#";KEY_P[7,2]<-" ";KEY_P[7,3]<-" ";KEY_P[7,4]<-" ";KEY_P[7,5]<-" ";KEY_P[7,6]<-" ";KEY_P[7,7]<-" ";KEY_P[7,8]<-" ";KEY_P[7,9]<-" ";
	KEY_P[8,1]<-"#";KEY_P[8,2]<-" ";KEY_P[8,3]<-" ";KEY_P[8,4]<-" ";KEY_P[8,5]<-" ";KEY_P[8,6]<-" ";KEY_P[8,7]<-" ";KEY_P[8,8]<-" ";KEY_P[8,9]<-" ";
	
	// Letra Q
	definir KEY_Q Como Caracter; Dimension KEY_Q[10,10];
	KEY_Q[1,1]<-" ";KEY_Q[1,2]<-"#";KEY_Q[1,3]<-"#";KEY_Q[1,4]<-"#";KEY_Q[1,5]<-"#";KEY_Q[1,6]<-"#";KEY_Q[1,7]<-"#";KEY_Q[1,8]<-" ";KEY_Q[1,9]<-" ";
	KEY_Q[2,1]<-"#";KEY_Q[2,2]<-" ";KEY_Q[2,3]<-" ";KEY_Q[2,4]<-" ";KEY_Q[2,5]<-" ";KEY_Q[2,6]<-" ";KEY_Q[2,7]<-" ";KEY_Q[2,8]<-"#";KEY_Q[2,9]<-" ";
	KEY_Q[3,1]<-"#";KEY_Q[3,2]<-" ";KEY_Q[3,3]<-" ";KEY_Q[3,4]<-" ";KEY_Q[3,5]<-" ";KEY_Q[3,6]<-" ";KEY_Q[3,7]<-" ";KEY_Q[3,8]<-"#";KEY_Q[3,9]<-" ";
	KEY_Q[4,1]<-"#";KEY_Q[4,2]<-" ";KEY_Q[4,3]<-" ";KEY_Q[4,4]<-" ";KEY_Q[4,5]<-" ";KEY_Q[4,6]<-" ";KEY_Q[4,7]<-" ";KEY_Q[4,8]<-"#";KEY_Q[4,9]<-" ";
	KEY_Q[5,1]<-"#";KEY_Q[5,2]<-" ";KEY_Q[5,3]<-" ";KEY_Q[5,4]<-" ";KEY_Q[5,5]<-" ";KEY_Q[5,6]<-" ";KEY_Q[5,7]<-" ";KEY_Q[5,8]<-"#";KEY_Q[5,9]<-" ";
	KEY_Q[6,1]<-"#";KEY_Q[6,2]<-" ";KEY_Q[6,3]<-" ";KEY_Q[6,4]<-" ";KEY_Q[6,5]<-" ";KEY_Q[6,6]<-"#";KEY_Q[6,7]<-" ";KEY_Q[6,8]<-"#";KEY_Q[6,9]<-" ";
	KEY_Q[7,1]<-"#";KEY_Q[7,2]<-" ";KEY_Q[7,3]<-" ";KEY_Q[7,4]<-" ";KEY_Q[7,5]<-" ";KEY_Q[7,6]<-" ";KEY_Q[7,7]<-"#";KEY_Q[7,8]<-" ";KEY_Q[7,9]<-"#";
	KEY_Q[8,1]<-" ";KEY_Q[8,2]<-"#";KEY_Q[8,3]<-"#";KEY_Q[8,4]<-"#";KEY_Q[8,5]<-"#";KEY_Q[8,6]<-"#";KEY_Q[8,7]<-"#";KEY_Q[8,8]<-"#";KEY_Q[8,9]<-"#";
	
	// Letra R
	definir KEY_R Como Caracter; Dimension KEY_R[10,10];
	KEY_R[1,1]<-"#";KEY_R[1,2]<-"#";KEY_R[1,3]<-"#";KEY_R[1,4]<-"#";KEY_R[1,5]<-"#";KEY_R[1,6]<-" ";KEY_R[1,7]<-" ";KEY_R[1,8]<-" ";KEY_R[1,9]<-" ";
	KEY_R[2,1]<-"#";KEY_R[2,2]<-" ";KEY_R[2,3]<-" ";KEY_R[2,4]<-" ";KEY_R[2,5]<-" ";KEY_R[2,6]<-"#";KEY_R[2,7]<-" ";KEY_R[2,8]<-" ";KEY_R[2,9]<-" ";
	KEY_R[3,1]<-"#";KEY_R[3,2]<-" ";KEY_R[3,3]<-" ";KEY_R[3,4]<-" ";KEY_R[3,5]<-" ";KEY_R[3,6]<-"#";KEY_R[3,7]<-" ";KEY_R[3,8]<-" ";KEY_R[3,9]<-" ";
	KEY_R[4,1]<-"#";KEY_R[4,2]<-"#";KEY_R[4,3]<-"#";KEY_R[4,4]<-"#";KEY_R[4,5]<-"#";KEY_R[4,6]<-" ";KEY_R[4,7]<-" ";KEY_R[4,8]<-" ";KEY_R[4,9]<-" ";
	KEY_R[5,1]<-"#";KEY_R[5,2]<-" ";KEY_R[5,3]<-" ";KEY_R[5,4]<-" ";KEY_R[5,5]<-" ";KEY_R[5,6]<-"#";KEY_R[5,7]<-" ";KEY_R[5,8]<-" ";KEY_R[5,9]<-" ";
	KEY_R[6,1]<-"#";KEY_R[6,2]<-" ";KEY_R[6,3]<-" ";KEY_R[6,4]<-" ";KEY_R[6,5]<-" ";KEY_R[6,6]<-"#";KEY_R[6,7]<-" ";KEY_R[6,8]<-" ";KEY_R[6,9]<-" ";
	KEY_R[7,1]<-"#";KEY_R[7,2]<-" ";KEY_R[7,3]<-" ";KEY_R[7,4]<-" ";KEY_R[7,5]<-" ";KEY_R[7,6]<-" ";KEY_R[7,7]<-"#";KEY_R[7,8]<-" ";KEY_R[7,9]<-" ";
	KEY_R[8,1]<-"#";KEY_R[8,2]<-" ";KEY_R[8,3]<-" ";KEY_R[8,4]<-" ";KEY_R[8,5]<-" ";KEY_R[8,6]<-" ";KEY_R[8,7]<-" ";KEY_R[8,8]<-"#";KEY_R[8,9]<-" ";
	
	// Letra S
	definir KEY_S Como Caracter; Dimension KEY_S[10,10];
	KEY_S[1,1]<-" ";KEY_S[1,2]<-"#";KEY_S[1,3]<-"#";KEY_S[1,4]<-"#";KEY_S[1,5]<-"#";KEY_S[1,6]<-"#";KEY_S[1,7]<-" ";KEY_S[1,8]<-" ";KEY_S[1,9]<-" ";
	KEY_S[2,1]<-"#";KEY_S[2,2]<-" ";KEY_S[2,3]<-" ";KEY_S[2,4]<-" ";KEY_S[2,5]<-" ";KEY_S[2,6]<-" ";KEY_S[2,7]<-"#";KEY_S[2,8]<-" ";KEY_S[2,9]<-" ";
	KEY_S[3,1]<-"#";KEY_S[3,2]<-" ";KEY_S[3,3]<-" ";KEY_S[3,4]<-" ";KEY_S[3,5]<-" ";KEY_S[3,6]<-" ";KEY_S[3,7]<-" ";KEY_S[3,8]<-" ";KEY_S[3,9]<-" ";
	KEY_S[4,1]<-" ";KEY_S[4,2]<-"#";KEY_S[4,3]<-"#";KEY_S[4,4]<-"#";KEY_S[4,5]<-"#";KEY_S[4,6]<-"#";KEY_S[4,7]<-" ";KEY_S[4,8]<-" ";KEY_S[4,9]<-" ";
	KEY_S[5,1]<-" ";KEY_S[5,2]<-" ";KEY_S[5,3]<-" ";KEY_S[5,4]<-" ";KEY_S[5,5]<-" ";KEY_S[5,6]<-" ";KEY_S[5,7]<-"#";KEY_S[5,8]<-" ";KEY_S[5,9]<-" ";
	KEY_S[6,1]<-" ";KEY_S[6,2]<-" ";KEY_S[6,3]<-" ";KEY_S[6,4]<-" ";KEY_S[6,5]<-" ";KEY_S[6,6]<-" ";KEY_S[6,7]<-"#";KEY_S[6,8]<-" ";KEY_S[6,9]<-" ";
	KEY_S[7,1]<-"#";KEY_S[7,2]<-" ";KEY_S[7,3]<-" ";KEY_S[7,4]<-" ";KEY_S[7,5]<-" ";KEY_S[7,6]<-" ";KEY_S[7,7]<-"#";KEY_S[7,8]<-" ";KEY_S[7,9]<-" ";
	KEY_S[8,1]<-" ";KEY_S[8,2]<-"#";KEY_S[8,3]<-"#";KEY_S[8,4]<-"#";KEY_S[8,5]<-"#";KEY_S[8,6]<-"#";KEY_S[8,7]<-" ";KEY_S[8,8]<-" ";KEY_S[8,9]<-" ";
	
	// Letra T
	definir KEY_T Como Caracter; Dimension KEY_T[10,10];
	KEY_T[1,1]<-"#";KEY_T[1,2]<-"#";KEY_T[1,3]<-"#";KEY_T[1,4]<-"#";KEY_T[1,5]<-"#";KEY_T[1,6]<-"#";KEY_T[1,7]<-"#";KEY_T[1,8]<-"#";KEY_T[1,9]<-"#";
	KEY_T[2,1]<-" ";KEY_T[2,2]<-" ";KEY_T[2,3]<-" ";KEY_T[2,4]<-"#";KEY_T[2,5]<-" ";KEY_T[2,6]<-" ";KEY_T[2,7]<-" ";KEY_T[2,8]<-" ";KEY_T[2,9]<-" ";
	KEY_T[3,1]<-" ";KEY_T[3,2]<-" ";KEY_T[3,3]<-" ";KEY_T[3,4]<-"#";KEY_T[3,5]<-" ";KEY_T[3,6]<-" ";KEY_T[3,7]<-" ";KEY_T[3,8]<-" ";KEY_T[3,9]<-" ";
	KEY_T[4,1]<-" ";KEY_T[4,2]<-" ";KEY_T[4,3]<-" ";KEY_T[4,4]<-"#";KEY_T[4,5]<-" ";KEY_T[4,6]<-" ";KEY_T[4,7]<-" ";KEY_T[4,8]<-" ";KEY_T[4,9]<-" ";
	KEY_T[5,1]<-" ";KEY_T[5,2]<-" ";KEY_T[5,3]<-" ";KEY_T[5,4]<-"#";KEY_T[5,5]<-" ";KEY_T[5,6]<-" ";KEY_T[5,7]<-" ";KEY_T[5,8]<-" ";KEY_T[5,9]<-" ";
	KEY_T[6,1]<-" ";KEY_T[6,2]<-" ";KEY_T[6,3]<-" ";KEY_T[6,4]<-"#";KEY_T[6,5]<-" ";KEY_T[6,6]<-" ";KEY_T[6,7]<-" ";KEY_T[6,8]<-" ";KEY_T[6,9]<-" ";
	KEY_T[7,1]<-" ";KEY_T[7,2]<-" ";KEY_T[7,3]<-" ";KEY_T[7,4]<-"#";KEY_T[7,5]<-" ";KEY_T[7,6]<-" ";KEY_T[7,7]<-" ";KEY_T[7,8]<-" ";KEY_T[7,9]<-" ";
	KEY_T[8,1]<-" ";KEY_T[8,2]<-" ";KEY_T[8,3]<-" ";KEY_T[8,4]<-"#";KEY_T[8,5]<-" ";KEY_T[8,6]<-" ";KEY_T[8,7]<-" ";KEY_T[8,8]<-" ";KEY_T[8,9]<-" ";
	
	// Letra U
	definir KEY_U Como Caracter; Dimension KEY_U[10,10];
	KEY_U[1,1]<-"#";KEY_U[1,2]<-" ";KEY_U[1,3]<-" ";KEY_U[1,4]<-" ";KEY_U[1,5]<-" ";KEY_U[1,6]<-" ";KEY_U[1,7]<-" ";KEY_U[1,8]<-" ";KEY_U[1,9]<-"#";
	KEY_U[2,1]<-"#";KEY_U[2,2]<-" ";KEY_U[2,3]<-" ";KEY_U[2,4]<-" ";KEY_U[2,5]<-" ";KEY_U[2,6]<-" ";KEY_U[2,7]<-" ";KEY_U[2,8]<-" ";KEY_U[2,9]<-"#";
	KEY_U[3,1]<-"#";KEY_U[3,2]<-" ";KEY_U[3,3]<-" ";KEY_U[3,4]<-" ";KEY_U[3,5]<-" ";KEY_U[3,6]<-" ";KEY_U[3,7]<-" ";KEY_U[3,8]<-" ";KEY_U[3,9]<-"#";
	KEY_U[4,1]<-"#";KEY_U[4,2]<-" ";KEY_U[4,3]<-" ";KEY_U[4,4]<-" ";KEY_U[4,5]<-" ";KEY_U[4,6]<-" ";KEY_U[4,7]<-" ";KEY_U[4,8]<-" ";KEY_U[4,9]<-"#";
	KEY_U[5,1]<-"#";KEY_U[5,2]<-" ";KEY_U[5,3]<-" ";KEY_U[5,4]<-" ";KEY_U[5,5]<-" ";KEY_U[5,6]<-" ";KEY_U[5,7]<-" ";KEY_U[5,8]<-" ";KEY_U[5,9]<-"#";
	KEY_U[6,1]<-"#";KEY_U[6,2]<-" ";KEY_U[6,3]<-" ";KEY_U[6,4]<-" ";KEY_U[6,5]<-" ";KEY_U[6,6]<-" ";KEY_U[6,7]<-" ";KEY_U[6,8]<-" ";KEY_U[6,9]<-"#";
	KEY_U[7,1]<-"#";KEY_U[7,2]<-" ";KEY_U[7,3]<-" ";KEY_U[7,4]<-" ";KEY_U[7,5]<-" ";KEY_U[7,6]<-" ";KEY_U[7,7]<-" ";KEY_U[7,8]<-" ";KEY_U[7,9]<-"#";
	KEY_U[8,1]<-" ";KEY_U[8,2]<-"#";KEY_U[8,3]<-"#";KEY_U[8,4]<-"#";KEY_U[8,5]<-"#";KEY_U[8,6]<-"#";KEY_U[8,7]<-"#";KEY_U[8,8]<-"#";KEY_U[8,9]<-" ";
	
	// Letra V
	definir KEY_V Como Caracter; Dimension KEY_V[10,10];
	KEY_V[1,1]<-"#";KEY_V[1,2]<-" ";KEY_V[1,3]<-" ";KEY_V[1,4]<-" ";KEY_V[1,5]<-" ";KEY_V[1,6]<-" ";KEY_V[1,7]<-" ";KEY_V[1,8]<-" ";KEY_V[1,9]<-"#";
	KEY_V[2,1]<-"#";KEY_V[2,2]<-" ";KEY_V[2,3]<-" ";KEY_V[2,4]<-" ";KEY_V[2,5]<-" ";KEY_V[2,6]<-" ";KEY_V[2,7]<-" ";KEY_V[2,8]<-" ";KEY_V[2,9]<-"#";
	KEY_V[3,1]<-"#";KEY_V[3,2]<-" ";KEY_V[3,3]<-" ";KEY_V[3,4]<-" ";KEY_V[3,5]<-" ";KEY_V[3,6]<-" ";KEY_V[3,7]<-" ";KEY_V[3,8]<-" ";KEY_V[3,9]<-"#";
	KEY_V[4,1]<-"#";KEY_V[4,2]<-" ";KEY_V[4,3]<-" ";KEY_V[4,4]<-" ";KEY_V[4,5]<-" ";KEY_V[4,6]<-" ";KEY_V[4,7]<-" ";KEY_V[4,8]<-" ";KEY_V[4,9]<-"#";
	KEY_V[5,1]<-"#";KEY_V[5,2]<-" ";KEY_V[5,3]<-" ";KEY_V[5,4]<-" ";KEY_V[5,5]<-" ";KEY_V[5,6]<-" ";KEY_V[5,7]<-" ";KEY_V[5,8]<-" ";KEY_V[5,9]<-"#";
	KEY_V[6,1]<-" ";KEY_V[6,2]<-"#";KEY_V[6,3]<-" ";KEY_V[6,4]<-" ";KEY_V[6,5]<-" ";KEY_V[6,6]<-" ";KEY_V[6,7]<-" ";KEY_V[6,8]<-"#";KEY_V[6,9]<-" ";
	KEY_V[7,1]<-" ";KEY_V[7,2]<-"#";KEY_V[7,3]<-" ";KEY_V[7,4]<-" ";KEY_V[7,5]<-" ";KEY_V[7,6]<-" ";KEY_V[7,7]<-" ";KEY_V[7,8]<-"#";KEY_V[7,9]<-" ";
	KEY_V[8,1]<-" ";KEY_V[8,2]<-" ";KEY_V[8,3]<-"#";KEY_V[8,4]<-" ";KEY_V[8,5]<-" ";KEY_V[8,6]<-" ";KEY_V[8,7]<-"#";KEY_V[8,8]<-" ";KEY_V[8,9]<-" ";
	KEY_V[9,1]<-" ";KEY_V[9,2]<-" ";KEY_V[9,3]<-" ";KEY_V[9,4]<-"#";KEY_V[9,5]<-" ";KEY_V[9,6]<-"#";KEY_V[9,7]<-" ";KEY_V[9,8]<-" ";KEY_V[9,9]<-" ";
	
	// Letra W
	definir KEY_W Como Caracter; Dimension KEY_W[10,10];
	KEY_W[1,1]<-"#";KEY_W[1,2]<-" ";KEY_W[1,3]<-" ";KEY_W[1,4]<-" ";KEY_W[1,5]<-" ";KEY_W[1,6]<-" ";KEY_W[1,7]<-" ";KEY_W[1,8]<-" ";KEY_W[1,9]<-"#";
	KEY_W[2,1]<-"#";KEY_W[2,2]<-" ";KEY_W[2,3]<-" ";KEY_W[2,4]<-" ";KEY_W[2,5]<-" ";KEY_W[2,6]<-" ";KEY_W[2,7]<-" ";KEY_W[2,8]<-" ";KEY_W[2,9]<-"#";
	KEY_W[3,1]<-"#";KEY_W[3,2]<-" ";KEY_W[3,3]<-" ";KEY_W[3,4]<-" ";KEY_W[3,5]<-" ";KEY_W[3,6]<-" ";KEY_W[3,7]<-" ";KEY_W[3,8]<-" ";KEY_W[3,9]<-"#";
	KEY_W[4,1]<-"#";KEY_W[4,2]<-" ";KEY_W[4,3]<-" ";KEY_W[4,4]<-" ";KEY_W[4,5]<-" ";KEY_W[4,6]<-" ";KEY_W[4,7]<-" ";KEY_W[4,8]<-" ";KEY_W[4,9]<-"#";
	KEY_W[5,1]<-"#";KEY_W[5,2]<-" ";KEY_W[5,3]<-" ";KEY_W[5,4]<-" ";KEY_W[5,5]<-" ";KEY_W[5,6]<-" ";KEY_W[5,7]<-" ";KEY_W[5,8]<-" ";KEY_W[5,9]<-"#";
	KEY_W[6,1]<-"#";KEY_W[6,2]<-" ";KEY_W[6,3]<-" ";KEY_W[6,4]<-"#";KEY_W[6,5]<-" ";KEY_W[6,6]<-"#";KEY_W[6,7]<-" ";KEY_W[6,8]<-" ";KEY_W[6,9]<-"#";
	KEY_W[7,1]<-"#";KEY_W[7,2]<-" ";KEY_W[7,3]<-" ";KEY_W[7,4]<-"#";KEY_W[7,5]<-" ";KEY_W[7,6]<-"#";KEY_W[7,7]<-" ";KEY_W[7,8]<-" ";KEY_W[7,9]<-"#";
	KEY_W[8,1]<-"#";KEY_W[8,2]<-" ";KEY_W[8,3]<-"#";KEY_W[8,4]<-" ";KEY_W[8,5]<-"#";KEY_W[8,6]<-" ";KEY_W[8,7]<-"#";KEY_W[8,8]<-" ";KEY_W[8,9]<-"#";
	KEY_W[9,1]<-" ";KEY_W[9,2]<-"#";KEY_W[9,3]<-" ";KEY_W[9,4]<-" ";KEY_W[9,5]<-" ";KEY_W[9,6]<-" ";KEY_W[9,7]<-" ";KEY_W[9,8]<-"#";KEY_W[9,9]<-" ";
	
	// Letra X
	definir KEY_X Como Caracter; Dimension KEY_X[10,10];
	KEY_X[1,1]<-"#";KEY_X[1,2]<-" ";KEY_X[1,3]<-" ";KEY_X[1,4]<-" ";KEY_X[1,5]<-" ";KEY_X[1,6]<-" ";KEY_X[1,7]<-" ";KEY_X[1,8]<-" ";KEY_X[1,9]<-"#";
	KEY_X[2,1]<-" ";KEY_X[2,2]<-"#";KEY_X[2,3]<-" ";KEY_X[2,4]<-" ";KEY_X[2,5]<-" ";KEY_X[2,6]<-" ";KEY_X[2,7]<-" ";KEY_X[2,8]<-"#";KEY_X[2,9]<-" ";
	KEY_X[3,1]<-" ";KEY_X[3,2]<-" ";KEY_X[3,3]<-"#";KEY_X[3,4]<-" ";KEY_X[3,5]<-" ";KEY_X[3,6]<-" ";KEY_X[3,7]<-"#";KEY_X[3,8]<-" ";KEY_X[3,9]<-" ";
	KEY_X[4,1]<-" ";KEY_X[4,2]<-" ";KEY_X[4,3]<-" ";KEY_X[4,4]<-"#";KEY_X[4,5]<-" ";KEY_X[4,6]<-"#";KEY_X[4,7]<-" ";KEY_X[4,8]<-" ";KEY_X[4,9]<-" ";
	KEY_X[5,1]<-" ";KEY_X[5,2]<-" ";KEY_X[5,3]<-" ";KEY_X[5,4]<-" ";KEY_X[5,5]<-"#";KEY_X[5,6]<-" ";KEY_X[5,7]<-" ";KEY_X[5,8]<-" ";KEY_X[5,9]<-" ";
	KEY_X[6,1]<-" ";KEY_X[6,2]<-" ";KEY_X[6,3]<-" ";KEY_X[6,4]<-"#";KEY_X[6,5]<-" ";KEY_X[6,6]<-"#";KEY_X[6,7]<-" ";KEY_X[6,8]<-" ";KEY_X[6,9]<-" ";
	KEY_X[7,1]<-" ";KEY_X[7,2]<-" ";KEY_X[7,3]<-"#";KEY_X[7,4]<-" ";KEY_X[7,5]<-" ";KEY_X[7,6]<-" ";KEY_X[7,7]<-"#";KEY_X[7,8]<-" ";KEY_X[7,9]<-" ";
	KEY_X[8,1]<-" ";KEY_X[8,2]<-"#";KEY_X[8,3]<-" ";KEY_X[8,4]<-" ";KEY_X[8,5]<-" ";KEY_X[8,6]<-" ";KEY_X[8,7]<-" ";KEY_X[8,8]<-"#";KEY_X[8,9]<-" ";
	KEY_X[9,1]<-"#";KEY_X[9,2]<-" ";KEY_X[9,3]<-" ";KEY_X[9,4]<-" ";KEY_X[9,5]<-" ";KEY_X[9,6]<-" ";KEY_X[9,7]<-" ";KEY_X[9,8]<-" ";KEY_X[9,9]<-"#";
	
	// Letra Y
	definir KEY_Y Como Caracter; Dimension KEY_Y[10,10];
	KEY_Y[1,1]<-"#";KEY_Y[1,2]<-" ";KEY_Y[1,3]<-" ";KEY_Y[1,4]<-" ";KEY_Y[1,5]<-" ";KEY_Y[1,6]<-" ";KEY_Y[1,7]<-" ";KEY_Y[1,8]<-" ";KEY_Y[1,9]<-"#";
	KEY_Y[2,1]<-" ";KEY_Y[2,2]<-"#";KEY_Y[2,3]<-" ";KEY_Y[2,4]<-" ";KEY_Y[2,5]<-" ";KEY_Y[2,6]<-" ";KEY_Y[2,7]<-" ";KEY_Y[2,8]<-"#";KEY_Y[2,9]<-" ";
	KEY_Y[3,1]<-" ";KEY_Y[3,2]<-" ";KEY_Y[3,3]<-"#";KEY_Y[3,4]<-" ";KEY_Y[3,5]<-" ";KEY_Y[3,6]<-" ";KEY_Y[3,7]<-"#";KEY_Y[3,8]<-" ";KEY_Y[3,9]<-" ";
	KEY_Y[4,1]<-" ";KEY_Y[4,2]<-" ";KEY_Y[4,3]<-" ";KEY_Y[4,4]<-"#";KEY_Y[4,5]<-" ";KEY_Y[4,6]<-"#";KEY_Y[4,7]<-" ";KEY_Y[4,8]<-" ";KEY_Y[4,9]<-" ";
	KEY_Y[5,1]<-" ";KEY_Y[5,2]<-" ";KEY_Y[5,3]<-" ";KEY_Y[5,4]<-" ";KEY_Y[5,5]<-"#";KEY_Y[5,6]<-" ";KEY_Y[5,7]<-" ";KEY_Y[5,8]<-" ";KEY_Y[5,9]<-" ";
	KEY_Y[6,1]<-" ";KEY_Y[6,2]<-" ";KEY_Y[6,3]<-" ";KEY_Y[6,4]<-" ";KEY_Y[6,5]<-"#";KEY_Y[6,6]<-" ";KEY_Y[6,7]<-" ";KEY_Y[6,8]<-" ";KEY_Y[6,9]<-" ";
	KEY_Y[7,1]<-" ";KEY_Y[7,2]<-" ";KEY_Y[7,3]<-" ";KEY_Y[7,4]<-" ";KEY_Y[7,5]<-"#";KEY_Y[7,6]<-" ";KEY_Y[7,7]<-" ";KEY_Y[7,8]<-" ";KEY_Y[7,9]<-" ";
	KEY_Y[8,1]<-" ";KEY_Y[8,2]<-" ";KEY_Y[8,3]<-" ";KEY_Y[8,4]<-" ";KEY_Y[8,5]<-" ";KEY_Y[8,6]<-" ";KEY_Y[8,7]<-" ";KEY_Y[8,8]<-" ";KEY_Y[8,9]<-" ";
	KEY_Y[9,1]<-" ";KEY_Y[9,2]<-" ";KEY_Y[9,3]<-" ";KEY_Y[9,4]<-" ";KEY_Y[9,5]<-" ";KEY_Y[9,6]<-" ";KEY_Y[9,7]<-" ";KEY_Y[9,8]<-" ";KEY_Y[9,9]<-" ";
	
	// Letra Z
	definir KEY_Z Como Caracter; Dimension KEY_Z[10,10];
	KEY_Z[1,1]<-"#";KEY_Z[1,2]<-"#";KEY_Z[1,3]<-"#";KEY_Z[1,4]<-"#";KEY_Z[1,5]<-"#";KEY_Z[1,6]<-"#";KEY_Z[1,7]<-"#";KEY_Z[1,8]<-"#";KEY_Z[1,9]<-"#";
	KEY_Z[2,1]<-" ";KEY_Z[2,2]<-" ";KEY_Z[2,3]<-" ";KEY_Z[2,4]<-" ";KEY_Z[2,5]<-" ";KEY_Z[2,6]<-" ";KEY_Z[2,7]<-" ";KEY_Z[2,8]<-"#";KEY_Z[2,9]<-" ";
	KEY_Z[3,1]<-" ";KEY_Z[3,2]<-" ";KEY_Z[3,3]<-" ";KEY_Z[3,4]<-" ";KEY_Z[3,5]<-" ";KEY_Z[3,6]<-" ";KEY_Z[3,7]<-"#";KEY_Z[3,8]<-" ";KEY_Z[3,9]<-" ";
	KEY_Z[4,1]<-" ";KEY_Z[4,2]<-" ";KEY_Z[4,3]<-" ";KEY_Z[4,4]<-" ";KEY_Z[4,5]<-" ";KEY_Z[4,6]<-"#";KEY_Z[4,7]<-" ";KEY_Z[4,8]<-" ";KEY_Z[4,9]<-" ";
	KEY_Z[5,1]<-" ";KEY_Z[5,2]<-" ";KEY_Z[5,3]<-" ";KEY_Z[5,4]<-" ";KEY_Z[5,5]<-"#";KEY_Z[5,6]<-" ";KEY_Z[5,7]<-" ";KEY_Z[5,8]<-" ";KEY_Z[5,9]<-" ";
	KEY_Z[6,1]<-" ";KEY_Z[6,2]<-" ";KEY_Z[6,3]<-" ";KEY_Z[6,4]<-"#";KEY_Z[6,5]<-" ";KEY_Z[6,6]<-" ";KEY_Z[6,7]<-" ";KEY_Z[6,8]<-" ";KEY_Z[6,9]<-" ";
	KEY_Z[7,1]<-" ";KEY_Z[7,2]<-" ";KEY_Z[7,3]<-"#";KEY_Z[7,4]<-" ";KEY_Z[7,5]<-" ";KEY_Z[7,6]<-" ";KEY_Z[7,7]<-" ";KEY_Z[7,8]<-" ";KEY_Z[7,9]<-" ";
	KEY_Z[8,1]<-" ";KEY_Z[8,2]<-"#";KEY_Z[8,3]<-" ";KEY_Z[8,4]<-" ";KEY_Z[8,5]<-" ";KEY_Z[8,6]<-" ";KEY_Z[8,7]<-" ";KEY_Z[8,8]<-" ";KEY_Z[8,9]<-" ";
	KEY_Z[9,1]<-"#";KEY_Z[9,2]<-"#";KEY_Z[9,3]<-"#";KEY_Z[9,4]<-"#";KEY_Z[9,5]<-"#";KEY_Z[9,6]<-"#";KEY_Z[9,7]<-"#";KEY_Z[9,8]<-"#";KEY_Z[9,9]<-"#";
	
	// Número 0
	definir KEY_0 Como Caracter; Dimension KEY_0[10,10];
	KEY_0[1,1]<-" ";KEY_0[1,2]<-"#";KEY_0[1,3]<-"#";KEY_0[1,4]<-"#";KEY_0[1,5]<-"#";KEY_0[1,6]<-"#";KEY_0[1,7]<-"#";KEY_0[1,8]<-" ";KEY_0[1,9]<-" ";
	KEY_0[2,1]<-"#";KEY_0[2,2]<-" ";KEY_0[2,3]<-" ";KEY_0[2,4]<-" ";KEY_0[2,5]<-" ";KEY_0[2,6]<-" ";KEY_0[2,7]<-" ";KEY_0[2,8]<-"#";KEY_0[2,9]<-" ";
	KEY_0[3,1]<-"#";KEY_0[3,2]<-" ";KEY_0[3,3]<-"#";KEY_0[3,4]<-"#";KEY_0[3,5]<-" ";KEY_0[3,6]<-"#";KEY_0[3,7]<-" ";KEY_0[3,8]<-"#";KEY_0[3,9]<-" ";
	KEY_0[4,1]<-"#";KEY_0[4,2]<-" ";KEY_0[4,3]<-"#";KEY_0[4,4]<-" ";KEY_0[4,5]<-"#";KEY_0[4,6]<-" ";KEY_0[4,7]<-"#";KEY_0[4,8]<-"#";KEY_0[4,9]<-" ";
	KEY_0[5,1]<-"#";KEY_0[5,2]<-" ";KEY_0[5,3]<-"#";KEY_0[5,4]<-" ";KEY_0[5,5]<-"#";KEY_0[5,6]<-" ";KEY_0[5,7]<-"#";KEY_0[5,8]<-"#";KEY_0[5,9]<-" ";
	KEY_0[6,1]<-"#";KEY_0[6,2]<-" ";KEY_0[6,3]<-"#";KEY_0[6,4]<-"#";KEY_0[6,5]<-" ";KEY_0[6,6]<-"#";KEY_0[6,7]<-" ";KEY_0[6,8]<-"#";KEY_0[6,9]<-" ";
	KEY_0[7,1]<-"#";KEY_0[7,2]<-" ";KEY_0[7,3]<-" ";KEY_0[7,4]<-" ";KEY_0[7,5]<-" ";KEY_0[7,6]<-" ";KEY_0[7,7]<-" ";KEY_0[7,8]<-"#";KEY_0[7,9]<-" ";
	KEY_0[8,1]<-" ";KEY_0[8,2]<-"#";KEY_0[8,3]<-"#";KEY_0[8,4]<-"#";KEY_0[8,5]<-"#";KEY_0[8,6]<-"#";KEY_0[8,7]<-"#";KEY_0[8,8]<-" ";KEY_0[8,9]<-" ";
	KEY_0[9,1]<-" ";KEY_0[9,2]<-" ";KEY_0[9,3]<-" ";KEY_0[9,4]<-" ";KEY_0[9,5]<-" ";KEY_0[9,6]<-" ";KEY_0[9,7]<-" ";KEY_0[9,8]<-" ";KEY_0[9,9]<-" ";
	
	// Número 1
	definir KEY_1 Como Caracter; Dimension KEY_1[10,10];
	KEY_1[1,1]<-" ";KEY_1[1,2]<-" ";KEY_1[1,3]<-" ";KEY_1[1,4]<-"#";KEY_1[1,5]<-"#";KEY_1[1,6]<-" ";KEY_1[1,7]<-" ";KEY_1[1,8]<-" ";KEY_1[1,9]<-" ";
	KEY_1[2,1]<-" ";KEY_1[2,2]<-" ";KEY_1[2,3]<-"#";KEY_1[2,4]<-"#";KEY_1[2,5]<-"#";KEY_1[2,6]<-" ";KEY_1[2,7]<-" ";KEY_1[2,8]<-" ";KEY_1[2,9]<-" ";
	KEY_1[3,1]<-" ";KEY_1[3,2]<-"#";KEY_1[3,3]<-" ";KEY_1[3,4]<-"#";KEY_1[3,5]<-"#";KEY_1[3,6]<-" ";KEY_1[3,7]<-" ";KEY_1[3,8]<-" ";KEY_1[3,9]<-" ";
	KEY_1[4,1]<-" ";KEY_1[4,2]<-" ";KEY_1[4,3]<-" ";KEY_1[4,4]<-"#";KEY_1[4,5]<-"#";KEY_1[4,6]<-" ";KEY_1[4,7]<-" ";KEY_1[4,8]<-" ";KEY_1[4,9]<-" ";
	KEY_1[5,1]<-" ";KEY_1[5,2]<-" ";KEY_1[5,3]<-" ";KEY_1[5,4]<-"#";KEY_1[5,5]<-"#";KEY_1[5,6]<-" ";KEY_1[5,7]<-" ";KEY_1[5,8]<-" ";KEY_1[5,9]<-" ";
	KEY_1[6,1]<-" ";KEY_1[6,2]<-" ";KEY_1[6,3]<-" ";KEY_1[6,4]<-"#";KEY_1[6,5]<-"#";KEY_1[6,6]<-" ";KEY_1[6,7]<-" ";KEY_1[6,8]<-" ";KEY_1[6,9]<-" ";
	KEY_1[7,1]<-" ";KEY_1[7,2]<-" ";KEY_1[7,3]<-" ";KEY_1[7,4]<-"#";KEY_1[7,5]<-"#";KEY_1[7,6]<-" ";KEY_1[7,7]<-" ";KEY_1[7,8]<-" ";KEY_1[7,9]<-" ";
	KEY_1[8,1]<-" ";KEY_1[8,2]<-" ";KEY_1[8,3]<-" ";KEY_1[8,4]<-"#";KEY_1[8,5]<-"#";KEY_1[8,6]<-" ";KEY_1[8,7]<-" ";KEY_1[8,8]<-" ";KEY_1[8,9]<-" ";
	KEY_1[9,1]<-" ";KEY_1[9,2]<-" ";KEY_1[9,3]<-" ";KEY_1[9,4]<-"#";KEY_1[9,5]<-"#";KEY_1[9,6]<-" ";KEY_1[9,7]<-" ";KEY_1[9,8]<-" ";KEY_1[9,9]<-" ";
	
	// Número 2
	definir KEY_2 Como Caracter; Dimension KEY_2[10,10];
	KEY_2[1,1]<-" ";KEY_2[1,2]<-"#";KEY_2[1,3]<-"#";KEY_2[1,4]<-"#";KEY_2[1,5]<-"#";KEY_2[1,6]<-"#";KEY_2[1,7]<-"#";KEY_2[1,8]<-" ";KEY_2[1,9]<-" ";
	KEY_2[2,1]<-"#";KEY_2[2,2]<-" ";KEY_2[2,3]<-" ";KEY_2[2,4]<-" ";KEY_2[2,5]<-" ";KEY_2[2,6]<-" ";KEY_2[2,7]<-" ";KEY_2[2,8]<-"#";KEY_2[2,9]<-" ";
	KEY_2[3,1]<-" ";KEY_2[3,2]<-" ";KEY_2[3,3]<-" ";KEY_2[3,4]<-" ";KEY_2[3,5]<-" ";KEY_2[3,6]<-" ";KEY_2[3,7]<-"#";KEY_2[3,8]<-" ";KEY_2[3,9]<-" ";
	KEY_2[4,1]<-" ";KEY_2[4,2]<-" ";KEY_2[4,3]<-" ";KEY_2[4,4]<-" ";KEY_2[4,5]<-" ";KEY_2[4,6]<-"#";KEY_2[4,7]<-" ";KEY_2[4,8]<-" ";KEY_2[4,9]<-" ";
	KEY_2[5,1]<-" ";KEY_2[5,2]<-" ";KEY_2[5,3]<-" ";KEY_2[5,4]<-" ";KEY_2[5,5]<-"#";KEY_2[5,6]<-" ";KEY_2[5,7]<-" ";KEY_2[5,8]<-" ";KEY_2[5,9]<-" ";
	KEY_2[6,1]<-" ";KEY_2[6,2]<-" ";KEY_2[6,3]<-" ";KEY_2[6,4]<-"#";KEY_2[6,5]<-" ";KEY_2[6,6]<-" ";KEY_2[6,7]<-" ";KEY_2[6,8]<-" ";KEY_2[6,9]<-" ";
	KEY_2[7,1]<-" ";KEY_2[7,2]<-" ";KEY_2[7,3]<-"#";KEY_2[7,4]<-" ";KEY_2[7,5]<-" ";KEY_2[7,6]<-" ";KEY_2[7,7]<-" ";KEY_2[7,8]<-" ";KEY_2[7,9]<-" ";
	KEY_2[8,1]<-"#";KEY_2[8,2]<-" ";KEY_2[8,3]<-" ";KEY_2[8,4]<-" ";KEY_2[8,5]<-" ";KEY_2[8,6]<-" ";KEY_2[8,7]<-" ";KEY_2[8,8]<-" ";KEY_2[8,9]<-" ";
	KEY_2[9,1]<-"#";KEY_2[9,2]<-"#";KEY_2[9,3]<-"#";KEY_2[9,4]<-"#";KEY_2[9,5]<-"#";KEY_2[9,6]<-"#";KEY_2[9,7]<-"#";KEY_2[9,8]<-"#";KEY_2[9,9]<-" ";
	
	// Número 3
	definir KEY_3 Como Caracter; Dimension KEY_3[10,10];
	KEY_3[1,1]<-" ";KEY_3[1,2]<-"#";KEY_3[1,3]<-"#";KEY_3[1,4]<-"#";KEY_3[1,5]<-"#";KEY_3[1,6]<-"#";KEY_3[1,7]<-"#";KEY_3[1,8]<-" ";KEY_3[1,9]<-" ";
	KEY_3[2,1]<-"#";KEY_3[2,2]<-" ";KEY_3[2,3]<-" ";KEY_3[2,4]<-" ";KEY_3[2,5]<-" ";KEY_3[2,6]<-" ";KEY_3[2,7]<-" ";KEY_3[2,8]<-"#";KEY_3[2,9]<-" ";
	KEY_3[3,1]<-" ";KEY_3[3,2]<-" ";KEY_3[3,3]<-" ";KEY_3[3,4]<-" ";KEY_3[3,5]<-" ";KEY_3[3,6]<-" ";KEY_3[3,7]<-"#";KEY_3[3,8]<-" ";KEY_3[3,9]<-" ";
	KEY_3[4,1]<-" ";KEY_3[4,2]<-" ";KEY_3[4,3]<-" ";KEY_3[4,4]<-"#";KEY_3[4,5]<-"#";KEY_3[4,6]<-"#";KEY_3[4,7]<-"#";KEY_3[4,8]<-" ";KEY_3[4,9]<-" ";
	KEY_3[5,1]<-" ";KEY_3[5,2]<-" ";KEY_3[5,3]<-" ";KEY_3[5,4]<-" ";KEY_3[5,5]<-" ";KEY_3[5,6]<-" ";KEY_3[5,7]<-" ";KEY_3[5,8]<-"#";KEY_3[5,9]<-" ";
	KEY_3[6,1]<-" ";KEY_3[6,2]<-" ";KEY_3[6,3]<-" ";KEY_3[6,4]<-" ";KEY_3[6,5]<-" ";KEY_3[6,6]<-" ";KEY_3[6,7]<-" ";KEY_3[6,8]<-"#";KEY_3[6,9]<-" ";
	KEY_3[7,1]<-"#";KEY_3[7,2]<-" ";KEY_3[7,3]<-" ";KEY_3[7,4]<-" ";KEY_3[7,5]<-" ";KEY_3[7,6]<-" ";KEY_3[7,7]<-" ";KEY_3[7,8]<-"#";KEY_3[7,9]<-" ";
	KEY_3[8,1]<-" ";KEY_3[8,2]<-"#";KEY_3[8,3]<-"#";KEY_3[8,4]<-"#";KEY_3[8,5]<-"#";KEY_3[8,6]<-"#";KEY_3[8,7]<-"#";KEY_3[8,8]<-" ";KEY_3[8,9]<-" ";
	KEY_3[9,1]<-" ";KEY_3[9,2]<-" ";KEY_3[9,3]<-" ";KEY_3[9,4]<-" ";KEY_3[9,5]<-" ";KEY_3[9,6]<-" ";KEY_3[9,7]<-" ";KEY_3[9,8]<-" ";KEY_3[9,9]<-" ";
	
	// Número 4
	definir KEY_4 Como Caracter; Dimension KEY_4[10,10];
	KEY_4[1,1]<-" ";KEY_4[1,2]<-" ";KEY_4[1,3]<-" ";KEY_4[1,4]<-" ";KEY_4[1,5]<-" ";KEY_4[1,6]<-"#";KEY_4[1,7]<-"#";KEY_4[1,8]<-" ";KEY_4[1,9]<-" ";
	KEY_4[2,1]<-" ";KEY_4[2,2]<-" ";KEY_4[2,3]<-" ";KEY_4[2,4]<-" ";KEY_4[2,5]<-"#";KEY_4[2,6]<-" ";KEY_4[2,7]<-"#";KEY_4[2,8]<-" ";KEY_4[2,9]<-" ";
	KEY_4[3,1]<-" ";KEY_4[3,2]<-" ";KEY_4[3,3]<-" ";KEY_4[3,4]<-"#";KEY_4[3,5]<-" ";KEY_4[3,6]<-" ";KEY_4[3,7]<-"#";KEY_4[3,8]<-" ";KEY_4[3,9]<-" ";
	KEY_4[4,1]<-" ";KEY_4[4,2]<-" ";KEY_4[4,3]<-"#";KEY_4[4,4]<-" ";KEY_4[4,5]<-" ";KEY_4[4,6]<-" ";KEY_4[4,7]<-"#";KEY_4[4,8]<-" ";KEY_4[4,9]<-" ";
	KEY_4[5,1]<-" ";KEY_4[5,2]<-"#";KEY_4[5,3]<-" ";KEY_4[5,4]<-" ";KEY_4[5,5]<-" ";KEY_4[5,6]<-" ";KEY_4[5,7]<-"#";KEY_4[5,8]<-" ";KEY_4[5,9]<-" ";
	KEY_4[6,1]<-"#";KEY_4[6,2]<-"#";KEY_4[6,3]<-"#";KEY_4[6,4]<-"#";KEY_4[6,5]<-"#";KEY_4[6,6]<-"#";KEY_4[6,7]<-"#";KEY_4[6,8]<-"#";KEY_4[6,9]<-" ";
	KEY_4[7,1]<-" ";KEY_4[7,2]<-" ";KEY_4[7,3]<-" ";KEY_4[7,4]<-" ";KEY_4[7,5]<-" ";KEY_4[7,6]<-"#";KEY_4[7,7]<-"#";KEY_4[7,8]<-" ";KEY_4[7,9]<-" ";
	KEY_4[8,1]<-" ";KEY_4[8,2]<-" ";KEY_4[8,3]<-" ";KEY_4[8,4]<-" ";KEY_4[8,5]<-" ";KEY_4[8,6]<-"#";KEY_4[8,7]<-"#";KEY_4[8,8]<-" ";KEY_4[8,9]<-" ";
	KEY_4[9,1]<-" ";KEY_4[9,2]<-" ";KEY_4[9,3]<-" ";KEY_4[9,4]<-" ";KEY_4[9,5]<-" ";KEY_4[9,6]<-"#";KEY_4[9,7]<-"#";KEY_4[9,8]<-" ";KEY_4[9,9]<-" ";
	
	// Número 5
	definir KEY_5 Como Caracter; Dimension KEY_5[10,10];
	KEY_5[1,1]<-"#";KEY_5[1,2]<-"#";KEY_5[1,3]<-"#";KEY_5[1,4]<-"#";KEY_5[1,5]<-"#";KEY_5[1,6]<-"#";KEY_5[1,7]<-"#";KEY_5[1,8]<-" ";KEY_5[1,9]<-" ";
	KEY_5[2,1]<-"#";KEY_5[2,2]<-" ";KEY_5[2,3]<-" ";KEY_5[2,4]<-" ";KEY_5[2,5]<-" ";KEY_5[2,6]<-" ";KEY_5[2,7]<-" ";KEY_5[2,8]<-" ";KEY_5[2,9]<-" ";
	KEY_5[3,1]<-"#";KEY_5[3,2]<-" ";KEY_5[3,3]<-" ";KEY_5[3,4]<-" ";KEY_5[3,5]<-" ";KEY_5[3,6]<-" ";KEY_5[3,7]<-" ";KEY_5[3,8]<-" ";KEY_5[3,9]<-" ";
	KEY_5[4,1]<-"#";KEY_5[4,2]<-"#";KEY_5[4,3]<-"#";KEY_5[4,4]<-"#";KEY_5[4,5]<-"#";KEY_5[4,6]<-"#";KEY_5[4,7]<-" ";KEY_5[4,8]<-" ";KEY_5[4,9]<-" ";
	KEY_5[5,1]<-" ";KEY_5[5,2]<-" ";KEY_5[5,3]<-" ";KEY_5[5,4]<-" ";KEY_5[5,5]<-" ";KEY_5[5,6]<-" ";KEY_5[5,7]<-"#";KEY_5[5,8]<-" ";KEY_5[5,9]<-" ";
	KEY_5[6,1]<-" ";KEY_5[6,2]<-" ";KEY_5[6,3]<-" ";KEY_5[6,4]<-" ";KEY_5[6,5]<-" ";KEY_5[6,6]<-" ";KEY_5[6,7]<-"#";KEY_5[6,8]<-" ";KEY_5[6,9]<-" ";
	KEY_5[7,1]<-"#";KEY_5[7,2]<-" ";KEY_5[7,3]<-" ";KEY_5[7,4]<-" ";KEY_5[7,5]<-" ";KEY_5[7,6]<-" ";KEY_5[7,7]<-"#";KEY_5[7,8]<-" ";KEY_5[7,9]<-" ";
	KEY_5[8,1]<-" ";KEY_5[8,2]<-"#";KEY_5[8,3]<-"#";KEY_5[8,4]<-"#";KEY_5[8,5]<-"#";KEY_5[8,6]<-"#";KEY_5[8,7]<-" ";KEY_5[8,8]<-" ";KEY_5[8,9]<-" ";
	KEY_5[9,1]<-" ";KEY_5[9,2]<-" ";KEY_5[9,3]<-" ";KEY_5[9,4]<-" ";KEY_5[9,5]<-" ";KEY_5[9,6]<-" ";KEY_5[9,7]<-" ";KEY_5[9,8]<-" ";KEY_5[9,9]<-" ";
	
	// Número 6
	definir KEY_6 Como Caracter; Dimension KEY_6[10,10];
	KEY_6[1,1]<-" ";KEY_6[1,2]<-"#";KEY_6[1,3]<-"#";KEY_6[1,4]<-"#";KEY_6[1,5]<-"#";KEY_6[1,6]<-"#";KEY_6[1,7]<-"#";KEY_6[1,8]<-" ";KEY_6[1,9]<-" ";
	KEY_6[2,1]<-"#";KEY_6[2,2]<-" ";KEY_6[2,3]<-" ";KEY_6[2,4]<-" ";KEY_6[2,5]<-" ";KEY_6[2,6]<-" ";KEY_6[2,7]<-" ";KEY_6[2,8]<-"#";KEY_6[2,9]<-" ";
	KEY_6[3,1]<-"#";KEY_6[3,2]<-" ";KEY_6[3,3]<-" ";KEY_6[3,4]<-" ";KEY_6[3,5]<-" ";KEY_6[3,6]<-" ";KEY_6[3,7]<-" ";KEY_6[3,8]<-" ";KEY_6[3,9]<-" ";
	KEY_6[4,1]<-"#";KEY_6[4,2]<-"#";KEY_6[4,3]<-"#";KEY_6[4,4]<-"#";KEY_6[4,5]<-"#";KEY_6[4,6]<-"#";KEY_6[4,7]<-" ";KEY_6[4,8]<-" ";KEY_6[4,9]<-" ";
	KEY_6[5,1]<-"#";KEY_6[5,2]<-" ";KEY_6[5,3]<-" ";KEY_6[5,4]<-" ";KEY_6[5,5]<-" ";KEY_6[5,6]<-" ";KEY_6[5,7]<-"#";KEY_6[5,8]<-" ";KEY_6[5,9]<-" ";
	KEY_6[6,1]<-"#";KEY_6[6,2]<-" ";KEY_6[6,3]<-" ";KEY_6[6,4]<-" ";KEY_6[6,5]<-" ";KEY_6[6,6]<-" ";KEY_6[6,7]<-"#";KEY_6[6,8]<-" ";KEY_6[6,9]<-" ";
	KEY_6[7,1]<-"#";KEY_6[7,2]<-" ";KEY_6[7,3]<-" ";KEY_6[7,4]<-" ";KEY_6[7,5]<-" ";KEY_6[7,6]<-" ";KEY_6[7,7]<-"#";KEY_6[7,8]<-" ";KEY_6[7,9]<-" ";
	KEY_6[8,1]<-" ";KEY_6[8,2]<-"#";KEY_6[8,3]<-"#";KEY_6[8,4]<-"#";KEY_6[8,5]<-"#";KEY_6[8,6]<-"#";KEY_6[8,7]<-" ";KEY_6[8,8]<-" ";KEY_6[8,9]<-" ";
	KEY_6[9,1]<-" ";KEY_6[9,2]<-" ";KEY_6[9,3]<-" ";KEY_6[9,4]<-" ";KEY_6[9,5]<-" ";KEY_6[9,6]<-" ";KEY_6[9,7]<-" ";KEY_6[9,8]<-" ";KEY_6[9,9]<-" ";
	
	// Número 7
	definir KEY_7 Como Caracter; Dimension KEY_7[10,10];
	KEY_7[1,1]<-"#";KEY_7[1,2]<-"#";KEY_7[1,3]<-"#";KEY_7[1,4]<-"#";KEY_7[1,5]<-"#";KEY_7[1,6]<-"#";KEY_7[1,7]<-"#";KEY_7[1,8]<-"#";KEY_7[1,9]<-" ";
	KEY_7[2,1]<-" ";KEY_7[2,2]<-" ";KEY_7[2,3]<-" ";KEY_7[2,4]<-" ";KEY_7[2,5]<-" ";KEY_7[2,6]<-" ";KEY_7[2,7]<-"#";KEY_7[2,8]<-" ";KEY_7[2,9]<-" ";
	KEY_7[3,1]<-" ";KEY_7[3,2]<-" ";KEY_7[3,3]<-" ";KEY_7[3,4]<-" ";KEY_7[3,5]<-" ";KEY_7[3,6]<-"#";KEY_7[3,7]<-" ";KEY_7[3,8]<-" ";KEY_7[3,9]<-" ";
	KEY_7[4,1]<-" ";KEY_7[4,2]<-" ";KEY_7[4,3]<-" ";KEY_7[4,4]<-" ";KEY_7[4,5]<-"#";KEY_7[4,6]<-" ";KEY_7[4,7]<-" ";KEY_7[4,8]<-" ";KEY_7[4,9]<-" ";
	KEY_7[5,1]<-" ";KEY_7[5,2]<-" ";KEY_7[5,3]<-" ";KEY_7[5,4]<-"#";KEY_7[5,5]<-" ";KEY_7[5,6]<-" ";KEY_7[5,7]<-" ";KEY_7[5,8]<-" ";KEY_7[5,9]<-" ";
	KEY_7[6,1]<-" ";KEY_7[6,2]<-" ";KEY_7[6,3]<-"#";KEY_7[6,4]<-" ";KEY_7[6,5]<-" ";KEY_7[6,6]<-" ";KEY_7[6,7]<-" ";KEY_7[6,8]<-" ";KEY_7[6,9]<-" ";
	KEY_7[7,1]<-" ";KEY_7[7,2]<-"#";KEY_7[7,3]<-" ";KEY_7[7,4]<-" ";KEY_7[7,5]<-" ";KEY_7[7,6]<-" ";KEY_7[7,7]<-" ";KEY_7[7,8]<-" ";KEY_7[7,9]<-" ";
	KEY_7[8,1]<-"#";KEY_7[8,2]<-" ";KEY_7[8,3]<-" ";KEY_7[8,4]<-" ";KEY_7[8,5]<-" ";KEY_7[8,6]<-" ";KEY_7[8,7]<-" ";KEY_7[8,8]<-" ";KEY_7[8,9]<-" ";
	KEY_7[9,1]<-"#";KEY_7[9,2]<-" ";KEY_7[9,3]<-" ";KEY_7[9,4]<-" ";KEY_7[9,5]<-" ";KEY_7[9,6]<-" ";KEY_7[9,7]<-" ";KEY_7[9,8]<-" ";KEY_7[9,9]<-" ";
	
	// Número 8
	definir KEY_8 Como Caracter; Dimension KEY_8[10,10];
	KEY_8[1,1]<-" ";KEY_8[1,2]<-"#";KEY_8[1,3]<-"#";KEY_8[1,4]<-"#";KEY_8[1,5]<-"#";KEY_8[1,6]<-"#";KEY_8[1,7]<-"#";KEY_8[1,8]<-" ";KEY_8[1,9]<-" ";
	KEY_8[2,1]<-"#";KEY_8[2,2]<-" ";KEY_8[2,3]<-" ";KEY_8[2,4]<-" ";KEY_8[2,5]<-" ";KEY_8[2,6]<-" ";KEY_8[2,7]<-" ";KEY_8[2,8]<-"#";KEY_8[2,9]<-" ";
	KEY_8[3,1]<-"#";KEY_8[3,2]<-" ";KEY_8[3,3]<-" ";KEY_8[3,4]<-" ";KEY_8[3,5]<-" ";KEY_8[3,6]<-" ";KEY_8[3,7]<-" ";KEY_8[3,8]<-"#";KEY_8[3,9]<-" ";
	KEY_8[4,1]<-" ";KEY_8[4,2]<-"#";KEY_8[4,3]<-"#";KEY_8[4,4]<-"#";KEY_8[4,5]<-"#";KEY_8[4,6]<-"#";KEY_8[4,7]<-" ";KEY_8[4,8]<-" ";KEY_8[4,9]<-" ";
	KEY_8[5,1]<-"#";KEY_8[5,2]<-" ";KEY_8[5,3]<-" ";KEY_8[5,4]<-" ";KEY_8[5,5]<-" ";KEY_8[5,6]<-" ";KEY_8[5,7]<-"#";KEY_8[5,8]<-" ";KEY_8[5,9]<-" ";
	KEY_8[6,1]<-"#";KEY_8[6,2]<-" ";KEY_8[6,3]<-" ";KEY_8[6,4]<-" ";KEY_8[6,5]<-" ";KEY_8[6,6]<-" ";KEY_8[6,7]<-"#";KEY_8[6,8]<-" ";KEY_8[6,9]<-" ";
	KEY_8[7,1]<-"#";KEY_8[7,2]<-" ";KEY_8[7,3]<-" ";KEY_8[7,4]<-" ";KEY_8[7,5]<-" ";KEY_8[7,6]<-" ";KEY_8[7,7]<-"#";KEY_8[7,8]<-" ";KEY_8[7,9]<-" ";
	KEY_8[8,1]<-" ";KEY_8[8,2]<-"#";KEY_8[8,3]<-"#";KEY_8[8,4]<-"#";KEY_8[8,5]<-"#";KEY_8[8,6]<-"#";KEY_8[8,7]<-" ";KEY_8[8,8]<-" ";KEY_8[8,9]<-" ";
	KEY_8[9,1]<-" ";KEY_8[9,2]<-" ";KEY_8[9,3]<-" ";KEY_8[9,4]<-" ";KEY_8[9,5]<-" ";KEY_8[9,6]<-" ";KEY_8[9,7]<-" ";KEY_8[9,8]<-" ";KEY_8[9,9]<-" ";
	
	// Número 9
	definir KEY_9 Como Caracter; Dimension KEY_9[10,10];
	KEY_9[1,1]<-" ";KEY_9[1,2]<-"#";KEY_9[1,3]<-"#";KEY_9[1,4]<-"#";KEY_9[1,5]<-"#";KEY_9[1,6]<-"#";KEY_9[1,7]<-"#";KEY_9[1,8]<-" ";KEY_9[1,9]<-" ";
	KEY_9[2,1]<-"#";KEY_9[2,2]<-" ";KEY_9[9,3]<-" ";KEY_9[2,4]<-" ";KEY_9[2,5]<-" ";KEY_9[2,6]<-" ";KEY_9[2,7]<-" ";KEY_9[2,8]<-"#";KEY_9[2,9]<-" ";
	KEY_9[3,1]<-"#";KEY_9[3,2]<-" ";KEY_9[3,3]<-" ";KEY_9[3,4]<-" ";KEY_9[3,5]<-" ";KEY_9[3,6]<-" ";KEY_9[3,7]<-" ";KEY_9[3,8]<-"#";KEY_9[3,9]<-" ";
	KEY_9[4,1]<-" ";KEY_9[4,2]<-"#";KEY_9[4,3]<-"#";KEY_9[4,4]<-"#";KEY_9[4,5]<-"#";KEY_9[4,6]<-"#";KEY_9[4,7]<-"#";KEY_9[4,8]<-"#";KEY_9[4,9]<-" ";
	KEY_9[5,1]<-" ";KEY_9[5,2]<-" ";KEY_9[5,3]<-" ";KEY_9[5,4]<-" ";KEY_9[5,5]<-" ";KEY_9[5,6]<-" ";KEY_9[5,7]<-"#";KEY_9[5,8]<-" ";KEY_9[5,9]<-" ";
	KEY_9[6,1]<-" ";KEY_9[6,2]<-" ";KEY_9[6,3]<-" ";KEY_9[6,4]<-" ";KEY_9[6,5]<-" ";KEY_9[6,6]<-" ";KEY_9[6,7]<-"#";KEY_9[6,8]<-" ";KEY_9[6,9]<-" ";
	KEY_9[7,1]<-" ";KEY_9[7,2]<-" ";KEY_9[7,3]<-" ";KEY_9[7,4]<-" ";KEY_9[7,5]<-" ";KEY_9[7,6]<-" ";KEY_9[7,7]<-"#";KEY_9[7,8]<-" ";KEY_9[7,9]<-" ";
	KEY_9[8,1]<-" ";KEY_9[8,2]<-"#";KEY_9[8,3]<-"#";KEY_9[8,4]<-"#";KEY_9[8,5]<-"#";KEY_9[8,6]<-"#";KEY_9[8,7]<-" ";KEY_9[8,8]<-" ";KEY_9[8,9]<-" ";
	KEY_9[9,1]<-" ";KEY_9[9,2]<-" ";KEY_9[9,3]<-" ";KEY_9[9,4]<-" ";KEY_9[9,5]<-" ";KEY_9[9,6]<-" ";KEY_9[9,7]<-" ";KEY_9[9,8]<-" ";KEY_9[9,9]<-" ";
	
	
	Definir KEY_MINUS Como Caracter; Dimension KEY_MINUS[10,10];
	Definir KEY_PLUS Como Caracter; Dimension KEY_PLUS[10,10];
	Definir KEY_SLASH Como Caracter; Dimension KEY_SLASH[10,10];
	Definir KEY_COMMA Como Caracter; Dimension KEY_COMMA[10,10];
	Definir KEY_DOT Como Caracter; Dimension KEY_DOT[10,10];
	Definir KEY_COLON Como Caracter; Dimension KEY_COLON[10,10];
	Definir KEY_QUESTION Como Caracter; Dimension KEY_QUESTION[10,10];
	Definir KEY_EXCLAMATION Como Caracter; Dimension KEY_EXCLAMATION[10,10];
	
	// KEY_MINUS (-)
	Para i <- 1 Hasta 9
		Para j <- 1 Hasta 9
			KEY_MINUS[i,j] <- " ";
		FinPara
	FinPara
	Para j <- 3 Hasta 7
		KEY_MINUS[5,j] <- "-";
	FinPara
	
	// KEY_PLUS (+)
	Para i <- 1 Hasta 9
		Para j <- 1 Hasta 9
			KEY_PLUS[i,j] <- " ";
		FinPara
	FinPara
	Para i <- 2 Hasta 8
		KEY_PLUS[i,5] <- "+";
	FinPara
	Para j <- 2 Hasta 8
		KEY_PLUS[5,j] <- "+";
	FinPara
	
	// KEY_SLASH (/)
	Para i <- 1 Hasta 9
		Para j <- 1 Hasta 9
			KEY_SLASH[i,j] <- " ";
		FinPara
	FinPara
	Para k <- 1 Hasta 9
		KEY_SLASH[k, 10 - k] <- "/";
	FinPara
	
	// KEY_COMMA (,)
	Para i <- 1 Hasta 9
		Para j <- 1 Hasta 9
			KEY_COMMA[i,j] <- " ";
		FinPara
	FinPara
	KEY_COMMA[7,5] <- ",";
	KEY_COMMA[8,6] <- ",";
	KEY_COMMA[9,7] <- " ";
	
	// KEY_DOT (.)
	Para i <- 1 Hasta 9
		Para j <- 1 Hasta 9
			KEY_DOT[i,j] <- " ";
		FinPara
	FinPara
	KEY_DOT[8,5] <- ".";
	
	// KEY_COLON (:)
	Para i <- 1 Hasta 9
		Para j <- 1 Hasta 9
			KEY_COLON[i,j] <- " ";
		FinPara
	FinPara
	KEY_COLON[3,5] <- ":";
	KEY_COLON[7,5] <- ":";
	
	// KEY_QUESTION (?)
	Para i <- 1 Hasta 9
		Para j <- 1 Hasta 9
			KEY_QUESTION[i,j] <- " ";
		FinPara
	FinPara
	KEY_QUESTION[2,4] <- "?";
	KEY_QUESTION[2,5] <- "?";
	KEY_QUESTION[2,6] <- "?";
	KEY_QUESTION[3,7] <- "?";
	KEY_QUESTION[4,7] <- "?";
	KEY_QUESTION[5,6] <- "?";
	KEY_QUESTION[6,5] <- "?";
	KEY_QUESTION[7,5] <- " ";
	KEY_QUESTION[8,5] <- "?";
	
	// KEY_EXCLAMATION (!)
	Para i <- 1 Hasta 9
		Para j <- 1 Hasta 9
			KEY_EXCLAMATION[i,j] <- " ";
		FinPara
	FinPara
	Para i <- 2 Hasta 7
		KEY_EXCLAMATION[i,5] <- "!";
	FinPara
	KEY_EXCLAMATION[8,5] <- " ";
	KEY_EXCLAMATION[9,5] <- "!";
	
	Definir KEY_HEART Como Caracter; Dimension KEY_HEART[10,10];
	KEY_HEART[1,1]<-" ";KEY_HEART[1,2]<-" ";KEY_HEART[1,3]<-"#";KEY_HEART[1,4]<-" ";KEY_HEART[1,5]<-" ";KEY_HEART[1,6]<-" ";KEY_HEART[1,7]<-"#";KEY_HEART[1,8]<-" ";KEY_HEART[1,9]<-" ";
	KEY_HEART[2,1]<-" ";KEY_HEART[2,2]<-"#";KEY_HEART[2,3]<-"#";KEY_HEART[2,4]<-"#";KEY_HEART[2,5]<-" ";KEY_HEART[2,6]<-"#";KEY_HEART[2,7]<-"#";KEY_HEART[2,8]<-"#";KEY_HEART[2,9]<-" ";
	KEY_HEART[3,1]<-"#";KEY_HEART[3,2]<-"#";KEY_HEART[3,3]<-"#";KEY_HEART[3,4]<-"#";KEY_HEART[3,5]<-"#";KEY_HEART[3,6]<-"#";KEY_HEART[3,7]<-"#";KEY_HEART[3,8]<-"#";KEY_HEART[3,9]<-"#";
	KEY_HEART[4,1]<-"#";KEY_HEART[4,2]<-"#";KEY_HEART[4,3]<-"#";KEY_HEART[4,4]<-"#";KEY_HEART[4,5]<-"#";KEY_HEART[4,6]<-"#";KEY_HEART[4,7]<-"#";KEY_HEART[4,8]<-"#";KEY_HEART[4,9]<-"#";
	KEY_HEART[5,1]<-" ";KEY_HEART[5,2]<-"#";KEY_HEART[5,3]<-"#";KEY_HEART[5,4]<-"#";KEY_HEART[5,5]<-"#";KEY_HEART[5,6]<-"#";KEY_HEART[5,7]<-"#";KEY_HEART[5,8]<-"#";KEY_HEART[5,9]<-" ";
	KEY_HEART[6,1]<-" ";KEY_HEART[6,2]<-" ";KEY_HEART[6,3]<-"#";KEY_HEART[6,4]<-"#";KEY_HEART[6,5]<-"#";KEY_HEART[6,6]<-"#";KEY_HEART[6,7]<-"#";KEY_HEART[6,8]<-" ";KEY_HEART[6,9]<-" ";
	KEY_HEART[7,1]<-" ";KEY_HEART[7,2]<-" ";KEY_HEART[7,3]<-" ";KEY_HEART[7,4]<-"#";KEY_HEART[7,5]<-"#";KEY_HEART[7,6]<-"#";KEY_HEART[7,7]<-" ";KEY_HEART[7,8]<-" ";KEY_HEART[7,9]<-" ";
	KEY_HEART[8,1]<-" ";KEY_HEART[8,2]<-" ";KEY_HEART[8,3]<-" ";KEY_HEART[8,4]<-" ";KEY_HEART[8,5]<-"#";KEY_HEART[8,6]<-" ";KEY_HEART[8,7]<-" ";KEY_HEART[8,8]<-" ";KEY_HEART[8,9]<-" ";
	KEY_HEART[9,1]<-" ";KEY_HEART[9,2]<-" ";KEY_HEART[9,3]<-" ";KEY_HEART[9,4]<-" ";KEY_HEART[9,5]<-" ";KEY_HEART[9,6]<-" ";KEY_HEART[9,7]<-" ";KEY_HEART[9,8]<-" ";KEY_HEART[9,9]<-" ";



	
	
    Segun letra Hacer
			// Letras A-Z
        "A":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_A[i,j];
                FinPara
            FinPara
        "B":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_B[i,j];
                FinPara
            FinPara
        "C":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_C[i,j];
                FinPara
            FinPara
        "D":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_D[i,j];
                FinPara
            FinPara
        "E":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_E[i,j];
                FinPara
            FinPara
        "F":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_F[i,j];
                FinPara
            FinPara
        "G":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_G[i,j];
                FinPara
            FinPara
        "H":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_H[i,j];
                FinPara
            FinPara
        "I":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_I[i,j];
                FinPara
            FinPara
        "J":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_J[i,j];
                FinPara
            FinPara
        "K":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_K[i,j];
                FinPara
            FinPara
        "L":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_L[i,j];
                FinPara
            FinPara
        "M":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_M[i,j];
                FinPara
            FinPara
        "N":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_N[i,j];
                FinPara
            FinPara
        "O":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_O[i,j];
                FinPara
            FinPara
        "P":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_P[i,j];
                FinPara
            FinPara
        "Q":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_Q[i,j];
                FinPara
            FinPara
        "R":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_R[i,j];
                FinPara
            FinPara
        "S":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_S[i,j];
                FinPara
            FinPara
        "T":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_T[i,j];
                FinPara
            FinPara
        "U":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_U[i,j];
                FinPara
            FinPara
        "V":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_V[i,j];
                FinPara
            FinPara
        "W":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_W[i,j];
                FinPara
            FinPara
        "X":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_X[i,j];
                FinPara
            FinPara
        "Y":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_Y[i,j];
                FinPara
            FinPara
        "Z":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_Z[i,j];
                FinPara
            FinPara
			
			// Números 0-9
        "0":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_0[i,j];
                FinPara
            FinPara
        "1":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_1[i,j];
                FinPara
            FinPara
        "2":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_2[i,j];
                FinPara
            FinPara
        "3":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_3[i,j];
                FinPara
            FinPara
        "4":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_4[i,j];
                FinPara
            FinPara
        "5":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_5[i,j];
                FinPara
            FinPara
        "6":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_6[i,j];
                FinPara
            FinPara
        "7":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_7[i,j];
                FinPara
            FinPara
        "8":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_8[i,j];
                FinPara
            FinPara
        "9":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_9[i,j];
                FinPara
            FinPara
			
			// Símbolos
        "+":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_PLUS[i,j];
                FinPara
            FinPara
        "-":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_MINUS[i,j];
                FinPara
            FinPara
        "/":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_SLASH[i,j];
                FinPara
            FinPara
        ",":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_COMMA[i,j];
                FinPara
            FinPara
        ".":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_DOT[i,j];
                FinPara
            FinPara
        ":":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_COLON[i,j];
                FinPara
            FinPara
        "?":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_QUESTION[i,j];
                FinPara
            FinPara
        "!":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_EXCLAMATION[i,j];
                FinPara
            FinPara
        "<3":
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- KEY_HEART[i,j];
                FinPara
            FinPara
			
			// Valor por defecto
        De Otro Modo:
            Para i <- 1 Hasta 9
                Para j <- 1 Hasta 9
                    sprite_resultado[i,j] <- " ";
                FinPara
            FinPara
    FinSegun

FinSubProceso

SubProceso imprimir_texto_con_sprites(Screen Por Referencia, texto, pos_x_inicial, pos_y)
    Definir i, j, desplazamiento_x Como Entero;
    Definir letra_actual Como Caracter;
    Definir sprite_temp Como Caracter; Dimension sprite_temp[10,10];
	
    desplazamiento_x <- 0;
	
    Para i <- 0 Hasta Longitud(texto) - 1
        letra_actual <- SubCadena(texto, i, i);
        obtener_sprite(letra_actual, sprite_temp);
        dibujar_sprite(Screen, sprite_temp, pos_x_inicial + desplazamiento_x, pos_y);
        desplazamiento_x <- desplazamiento_x + 9; // Para que no se sobrepongan
    FinPara
FinSubProceso

