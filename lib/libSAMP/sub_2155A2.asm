; =========================================================
; Game Engine Function: sub_2155A2
; Address            : 0x2155A2 - 0x2155BA
; =========================================================

2155A2:  PUSH            {R4,R6,R7,LR}
2155A4:  ADD             R7, SP, #8
2155A6:  MOV             R1, R0
2155A8:  MOV             R4, R0
2155AA:  LDR.W           R0, [R1],#0xC; ptr
2155AE:  CMP             R0, R1
2155B0:  IT NE
2155B2:  BLXNE           free
2155B6:  MOV             R0, R4
2155B8:  POP             {R4,R6,R7,PC}
