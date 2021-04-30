;****************************
;*   Programa: ORDENA.ASM   *
;****************************

INCLUDE 'emu8086.inc'

org 100h

.DATA

  A DW ?  ; Defini��o de vari�veis para entrada de dados
  B DW ?
  C DW ?

  msg1 DB           'Entre o 1o. valor: ', '$'  
  msg2 DB 0Dh, 0Ah, 'Entre o 2o. valor: ', '$'  
  msg3 DB 0Dh, 0Ah, 'Entre o 3o. valor: ', '$' 
  
  msg4 DB 0Dh, 0Ah, 0Dh, 0Ah, 'Valor 1: ', '$'  
  msg5 DB 0Dh, 0Ah,           'Valor 2: ', '$'  
  msg6 DB 0Dh, 0Ah,           'Valor 3: ', '$' 
  
.CODE

  ; //////////////////////
  ; // Entrada de dados //
  ; //////////////////////
  
  ; Efetua a entrada do 1o. valor (Bloco de a��o 1)

  LEA  DX, msg1  ; Pega a mensagem da vari�vel msg1
  MOV  AH, 09h   ; P�e 09h na parte baixa de AX
  INT  21h       ; Imprime msg1 de DX por meio do c�digo 09h
  CALL SCAN_NUM  ; Efetua a leitura do valor e p�e em CX
  MOV  A, CX     ; Transfere o valor de CX para a vari�vel A
  
  ; Efetua a entrada do 2o. valor (Bloco de a��o 2)

  LEA  DX, msg2  ; Pega a mensagem da vari�vel msg2
  MOV  AH, 09h   ; A��es similares ao bloco 1
  INT  21h       ;
  CALL SCAN_NUM  ;
  MOV  B, CX     ; Transfere o valor de CX para a vari�vel B
  
  ; Efetua a entrada do 3o. valor (Bloco de a��o 3)

  LEA  DX, msg3  ; Pega a mensagem da vari�vel msg3
  MOV  AH, 09h   ; A��es similares ao bloco 1
  INT  21h       ;
  CALL SCAN_NUM  ;
  MOV  C, CX     ; Transfere o valor de CX para a vari�vel C

  ; /////////////////////////////////////
  ; // Ordena��o crescente dos valores //
  ; /////////////////////////////////////
    
    ; se (A > B) ent�o
    ; troca os valores de A com B e de B com A

  MOV  BX, A     ; Armazena valor da vari�vel A em BX
  MOV  CX, B     ; Armazena valor da vari�vel B em CX
  se1:           ; 
    CMP BX, CX   ; compara BX e CX   
    JLE fim_se1  ; se BX > CX segue ap�s ent�o1 
  entao1:        ; e efetua a troca de valores          
    XCHG BX, CX  ; entre os registradores BX e CX
  fim_se1:       ;
  MOV  A, BX     ; Armazena valor do registrador BX em A 
  MOV  B, CX     ; Armazena valor do registrador CX em B

    ; se (A > C) ent�o
    ; troca os valores de A com C e de C com A

  MOV  BX, A     ; Armazena valor da vari�vel A em BX
  MOV  CX, C     ; Armazena valor da vari�vel C em CX
  se2:           ; 
    CMP BX, CX   ; compara BX e CX
    JLE fim_se2  ; se BX > CX segue ap�s ent�o2
  entao2:        ; e efetua a troca de valores
    XCHG BX, CX  ; entre os registradores BX e CX
  fim_se2:       ;
  MOV  A, BX     ; Armazena valor do registrador BX em A
  MOV  C, CX     ; Armazena valor do registrador CX em C

    ; se (B > C) ent�o
    ; troca os valores de B com C e de C com B

  MOV  BX, B     ; Armazena valor da vari�vel B em BX
  MOV  CX, C     ; Armazena valor da vari�vel C em CX
  se3:           ;
    CMP BX, CX   ; compara BX e CX
    JLE fim_se3  ; se BX > CX segue ap�s ent�o3
  entao3:        ; e efetua a troca de valores
    XCHG BX, CX  ; entre os registradores BX e CX
  fim_se3:       ;
  MOV  B, BX     ; Armazena valor do registrador BX em B
  MOV  C, CX     ; Armazena valor do registrador CX em C

  ; ////////////////////
  ; // Sa�da de dados //
  ; ////////////////////

  LEA  DX, msg4  ; Pega a mensagem da vari�vel msg3
  PUSH AX
  MOV  AH, 09h
  INT  21h
  POP  AX
  MOV  AX, A     ; Transfere para AX da vari�vel A
  CALL print_num ; Escreve o conte�do de AX.

  LEA  DX, msg5  ; Pega a mensagem da vari�vel msg5
  PUSH AX
  MOV  AH, 09h
  INT  21h
  POP  AX
  MOV  AX, B     ; Transfere para AX da vari�vel B
  CALL print_num ; Escreve o conte�do de AX.

  LEA  DX, msg6  ; Pega a mensagem da vari�vel msg6
  PUSH AX
  MOV  AH, 09h
  INT  21h
  POP  AX
  MOV  AX, C     ; Transfere para AX da vari�vel C
  CALL print_num ; Escreve o conte�do de AX.

  INT 20h

  DEFINE_SCAN_NUM
  DEFINE_PRINT_NUM_UNS      
  DEFINE_PRINT_NUM      

END