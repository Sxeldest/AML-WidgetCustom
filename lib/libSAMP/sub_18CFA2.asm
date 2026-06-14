; =========================================================
; Game Engine Function: sub_18CFA2
; Address            : 0x18CFA2 - 0x18CFBE
; =========================================================

18CFA2:  PUSH            {R4,R6,R7,LR}
18CFA4:  ADD             R7, SP, #8
18CFA6:  MOV             R4, R0
18CFA8:  MOVS            R0, #0
18CFAA:  STRB            R0, [R4,#0x14]
18CFAC:  MOV             R0, R4
18CFAE:  MOVS            R1, #0
18CFB0:  BL              sub_18D110
18CFB4:  MOV             R0, R4
18CFB6:  POP.W           {R4,R6,R7,LR}
18CFBA:  B.W             sub_18D0F4
