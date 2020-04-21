#include "p16F628a.inc"    ;incluir librerias relacionadas con el dispositivo
 __CONFIG _FOSC_INTOSCCLK & _WDTE_OFF & _PWRTE_OFF & _MCLRE_OFF & _BOREN_OFF & _LVP_OFF & _CPD_OFF & _CP_OFF    
;configuración del dispositivotodo en OFF y la frecuencia de oscilador
;es la del "reloj del oscilador interno" (INTOSCCLK)     
RES_VECT  CODE    0x0000            ; processor reset vector
    GOTO    START                   ; go to beginning of program
; TODO ADD INTERRUPTS HERE IF USED
MAIN_PROG CODE                      ; let linker place main program
;variables para el contador:
 i equ 0x30
 j equ 0x32 ;almacena

;inicio del programa: 
START
MOVLW 0x07 ;Apagar comparadores
MOVWF CMCON
 
BCF STATUS, RP1 ; BIT CLEAR Cambiar al banco 1
BSF STATUS, RP0 
MOVLW b'00000000' ;Establecer puerto B como salida (los 8 bits del puerto)
MOVWF TRISB 
BCF STATUS, RP0 ;Regresar al banco 0
 
 MOVLW d'7'
 MOVWF j
 MOVLW d'1'
 MOVWF i ;aqui 
 
 LOOP ;inicia loop
 ADDWF i,1 ;aqui
 MOVFW i
 
 DECF j
 BTFSC j,0
 GOTO LOOP
 BTFSC j,1
 GOTO LOOP
 BTFSC j,2
 GOTO LOOP
 BTFSC j,3
 GOTO LOOP

			
    END
