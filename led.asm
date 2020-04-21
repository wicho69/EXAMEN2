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
 j equ 0x31
 k equ 0x32
 
 x equ 0x33
 y equ 0x34
 z equ 0x35

;inicio del programa: 
START
MOVLW 0x07 ;Apagar comparadores
MOVWF CMCON
 
BCF STATUS, RP1 ; BIT CLEAR Cambiar al banco 1
BSF STATUS, RP0 
MOVLW b'00000000' ;Establecer puerto B como salida (los 8 bits del puerto)
MOVWF TRISB 
BCF STATUS, RP0 ;Regresar al banco 0
 #define led PORTB, 0
 #define Boton PORTB, 1
 
 inicio
 BSF led
 BTFSS Boton
 call tiempo ;medseg
 BTFSC Boton
 call tiempo2
 BCF led
 BTFSS Boton
 call tiempo ;medseg
 BTFSC Boton
 call tiempo2
 GOTO inicio
 
 
 
 tiempo:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    movlw d'54'
    movwf i
iloop:
    nop
    nop
    nop
    nop
    nop 
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop    
    nop
    nop
    nop
    nop
    nop
    nop    
    nop
    nop
    nop
    nop
    nop
    nop    
    nop
    nop
    nop
    nop
    nop
    nop    
    nop
    nop
    nop
    nop
    nop
    nop    
    nop
    nop
    nop
    nop
    nop
    nop    
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    movlw d'58'
    movwf j 
jloop: 
    nop
    movlw d'51'
	movwf k
kloop:    
    decfsz k,f
	goto kloop
	decfsz j,f
	goto jloop
	decfsz i,f
	goto iloop
    
    return
    
tiempo2:
    
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    movlw d'54'
    movwf x
xloop:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    movlw d'58'
    movwf y 
yloop: 
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
        nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
        nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
      nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
  nop
  nop
    movlw d'51'
	movwf z
zloop: 
    decfsz z,f
	goto zloop
	decfsz y,f
	goto yloop
	decfsz x,f
	goto xloop
    
    return
    
	
 END