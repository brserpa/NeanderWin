;---------------------------------------------------
; Programa: Calculadora
; Autor: Bruno Serpa
;---------------------------------------------------

INICIO:   IN 0          
          STA NUM1

          IN 0          
          STA NUM2

; ===== Soma =====
          LDA NUM1
          ADD NUM2
          STA SOMA
          LDA SOMA
          OUT 0         

; ===== Subtração =====
          LDA NUM1
          SUB NUM2
          STA SUBTRACAO
          LDA SUBTRACAO
          OUT 0         

; ===== Comparação =====
          LDA NUM1
          SUB NUM2
          JZ IGUAL      
          JN MENOR      
          JMP MAIOR     

IGUAL:    LDA ZERO
          OUT 0         
          JMP FIM

MENOR:    LDA UM
          OUT 0         
          JMP FIM

MAIOR:    LDA DOIS
          OUT 0         
          JMP FIM

FIM:      HLT           

; ===== Dados =====
NUM1:       DB 0
NUM2:       DB 0
SOMA:       DB 0
SUBTRACAO:  DB 0
ZERO:       DB 0
DOIS:       DB 2
UM:         DB 1
