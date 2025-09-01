# PSeInt_draw_library

esta es una pseudo-libreria para un pseudo-lenguje para hacer una pseudo-pantalla ,  pseudo ++;
este conjunto de funciones amplia las capacidades de psint para para poder mostar una panatalla dinamica de 32x32 pixeles .



init_screen(Screen, vacio)

Parámetros:

Screen: pantalla 2D (por referencia).

vacio: carácter que representa píxel vacío.

Descripción:
Llena toda la pantalla con el carácter vacío (vacio).

draw_screen(Screen)

Parámetros:

Screen: pantalla a imprimir.

Descripción:
Muestra por consola el contenido de Screen en formato 32x32.

print_text(Screen, text, SCR_X, SCR_Y)

Parámetros:

text: cadena a imprimir.

SCR_X, SCR_Y: posición inicial del cursor (por referencia).

Descripción:
Imprime texto horizontalmente desde la posición indicada, modificando la posición del cursor.

print_text_vertical(Screen, text, SCR_X, SCR_Y)

Parámetros:

text: cadena a imprimir.

SCR_X, SCR_Y: posición inicial del cursor (por referencia).

Descripción:
Imprime texto en vertical desde la posición dada.

print_text_type(Screen, texto_a_imprimir, cursor_col, cursor_fila)

Descripción:
Imprime texto horizontal tipo máquina de escribir (letra por letra con animación).

print_text_type_vertical(Screen, texto_a_imprimir, cursor_col, cursor_fila)

Descripción:
Imprime texto verticalmente con efecto de escritura animada.

draw_rect(Screen, pos_x, pos_y, ancho, alto, relleno, pixel)

Descripción:
Dibuja un rectángulo en la pantalla.

Si relleno es "Verdadero", se dibuja completo.

Si es "Falso", solo los bordes.

draw_circle(Screen, pos_col, pos_fila, radio, relleno, pixel)

Descripción:
Dibuja un círculo.

Si relleno = "Verdadero" → círculo sólido.

Si no → solo el borde del círculo.

draw_line(Screen, pos_x1, pos_y1, pos_x2, pos_y2, pixel)

Descripción:
Dibuja una línea entre dos puntos utilizando el algoritmo de Bresenham.

scroll_screen(Screen, x_des, y_des)

Descripción:
Desplaza la pantalla en la dirección (x_des, y_des), haciendo que el contenido se mueva y reaparezca por el lado opuesto (efecto toroide).

animar_scroll(Screen)

Descripción:
Ejecuta una animación automática donde el contenido de la pantalla se mueve (scroll) en todas las direcciones:
derecha, abajo, izquierda, arriba, y 4 diagonales.

dibujar_sprite(Screen, sprite, pos_x, pos_y)

Descripción:
Dibuja un sprite (matriz 8x8 de caracteres) sobre la pantalla en la posición dada.

dibujar_sprite_str(Screen, sprite_str, pos_x, pos_y)

Descripción:
Dibuja un sprite codificado como cadena de 64 caracteres. Se usa como alternativa a la matriz 2D.

copiar_sprite(origen, destino)

Descripción:
Copia un sprite 2D (matriz 8x8) desde origen hacia destino.

obtener_sprite(letra, sprite_resultado)

Descripción:
Devuelve el sprite (como cadena) correspondiente a la letra o símbolo proporcionado.
(Actualmente está incompleto)

imprimir_texto_con_sprites(Screen, texto, pos_x_inicial, pos_y)

Descripción:
Imprime texto usando sprites de letras (8x8). Cada letra es convertida en sprite y dibujada una tras otra.

delay(ms)

Descripción:
Espera la cantidad de milisegundos indicada. Se usa para animaciones.
