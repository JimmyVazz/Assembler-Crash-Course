;model small // Acosta el espacio de memoria
;el punto y coma (;) define comentarios
--------------------------------------------------------------------------------
.model small ;se define el tipo de modelo, corto
.data ;aquí se definen las variables que se van a ocupar, es el segmento de datos

mensaje db 'Este es mi Hola mundo!$'   ;Mensaje 

.code    ;bloque de codigo
inicio: ;se define un comienzo del cuerpo del programa

mov ax,@data ;movemos al registro dx, los datos a utilizar
mov ds,ax    ; de nuevo  modemos los registros de derecha a izquiera

;en ah siempre se cargan las funciones, en este caso la 09h, permite desplegar un mensaje en pantalla
mov ah,09h 
mov dx,offset mensaje ;movemos al registro dx el contenido de mensaje
; se llama a la interrupcion 21h
int 21h    ;interrupcion

; con esta instruccion terminamos el programa 
mov ax, 4c00h
int 21h   ;interrupcion
.stack ;segmento de pila

end inicio ;termina el segmento definido como inicio




