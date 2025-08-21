Proceso pixel_screen
	Definir Screen Como Caracter; Dimension Screen[33,33];
    Definir cursor_x, cursor_y Como Entero;
    Definir pixel_high, pixel_low Como Caracter;
	
    pixel_high <- "#";
    pixel_low <- " ";
    cursor_x <- 1;
    cursor_y <- 1;
	
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

	
	print_text_type_vertical(Screen, "Hola Mundo con estilo", cursor_x, cursor_y);
	print_text_type(Screen, "Hola Mundo con estilo", cursor_x, cursor_y);

	
    draw_screen(Screen);
	
    Escribir "";
    Escribir "Presiona una tecla para limpiar...";
    Esperar Tecla;
	
    draw_screen(Screen);
FinProceso

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
