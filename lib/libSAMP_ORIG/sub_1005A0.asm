; =========================================================
; Game Engine Function: sub_1005A0
; Address            : 0x1005A0 - 0x1005BE
; =========================================================

1005A0:  PUSH            {R4,R6,R7,LR}
1005A2:  ADD             R7, SP, #8
1005A4:  MOV             R4, R0
1005A6:  LDRB            R0, [R0,#0x10]
1005A8:  CBZ             R0, loc_1005AE
1005AA:  MOVS            R0, #0
1005AC:  POP             {R4,R6,R7,PC}
1005AE:  MOVS            R0, #1
1005B0:  STRB            R0, [R4,#0x10]
1005B2:  LDR             R0, [R4,#0xC]
1005B4:  BL              sub_10068A
1005B8:  MOVS            R1, #0
1005BA:  STRB            R1, [R4,#0x10]
1005BC:  POP             {R4,R6,R7,PC}
