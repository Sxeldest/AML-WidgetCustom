; =========================================================
; Game Engine Function: sub_21558A
; Address            : 0x21558A - 0x2155A2
; =========================================================

21558A:  PUSH            {R4,R6,R7,LR}
21558C:  ADD             R7, SP, #8
21558E:  MOV             R1, R0
215590:  MOV             R4, R0
215592:  LDR.W           R0, [R1],#0xC; ptr
215596:  CMP             R0, R1
215598:  IT NE
21559A:  BLXNE           free
21559E:  MOV             R0, R4
2155A0:  POP             {R4,R6,R7,PC}
