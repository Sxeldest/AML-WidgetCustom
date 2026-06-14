; =========================================================
; Game Engine Function: _Z12OS_FileWritePvPKvi
; Address            : 0x267478 - 0x26749C
; =========================================================

267478:  PUSH            {R4,R5,R7,LR}
26747A:  ADD             R7, SP, #8
26747C:  MOV             R5, R0
26747E:  MOV             R0, R1; ptr
267480:  LDR             R3, [R5,#4]; s
267482:  MOVS            R1, #1; size
267484:  MOV             R4, R2
267486:  BLX             fwrite
26748A:  MOVS            R1, #0
26748C:  CMP             R0, R4
26748E:  STRB            R1, [R5,#9]
267490:  MOV.W           R1, #3
267494:  IT EQ
267496:  MOVEQ           R1, #0
267498:  MOV             R0, R1
26749A:  POP             {R4,R5,R7,PC}
