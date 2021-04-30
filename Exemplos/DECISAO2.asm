;******************************
;*   Programa: DECISAO2.ASM   *
;******************************

INCLUDE 'emu8086.inc'

org 100h

.DATA
  valor DW  0
  msg1  DB  'Entre um valor numerico: ', 0
  msg2  DB  'Valor igual ou acima de 10.', 0
  msg3  DB  'Valor abaixo de 10.', 0

.CODE
  LEA  SI, msg1
  CALL PRINT_STRING
  CALL SCAN_NUM
  MOV  valor, CX
  PUTC 13d
  PUTC 10d
  
  se:   
    CMP valor, 10d
    JL senao
  entao:
    LEA  SI, msg2
    CALL PRINT_STRING 
    JMP  fim_se
  senao:
    LEA  SI, msg3
    CALL PRINT_STRING 
  fim_se:

  INT 20h
  DEFINE_PRINT_STRING
  DEFINE_SCAN_NUM

END