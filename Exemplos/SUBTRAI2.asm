;*******************************
;*    Programa: SUBTRAI2.ASM   *
;*******************************

.MODEL small
.STACK 512d

.DATA
  a DW 6d 
  b DW 4d
  x DW 0, '$'

.CODE
  MOV   AX, @DATA
  MOV   DS, AX

  STC
  MOV   AX, a
  SBB   AX, b
  MOV   x, AX

  ADD   x, 30h
  MOV   DX, OFFSET x

  MOV   AH, 09h
  INT   21h

  MOV   AH, 4Ch
  INT   21h

