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
 j equ 0x31 ;almacena
 x equ 0x32

;inicio del programa: 
START
MOVLW 0x07 ;Apagar comparadores
MOVWF CMCON
 
 
 MOVLW d'8'
 MOVWF j
 MOVLW d'1'
 MOVWF i ;
 MOVLW d'1'
 MOVWF x ;acumula potencias 
 
 LOOP ;inicia loop
 ADDWF i,1 ;stop
 MOVFW i
 ADDWF x,1
 
 DECF j
 BTFSC j,0
 GOTO LOOP
 BTFSC j,1
 GOTO LOOP
 BTFSC j,2
 GOTO LOOP
 BTFSC j,3
 GOTO LOOP
 BTFSC j,4
 GOTO LOOP

			
    END ;stop
