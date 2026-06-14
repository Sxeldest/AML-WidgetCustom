; =========================================================
; Game Engine Function: sub_217A1E
; Address            : 0x217A1E - 0x217A3C
; =========================================================

217A1E:  PUSH            {R4,R6,R7,LR}
217A20:  ADD             R7, SP, #8
217A22:  MOV             R4, R0
217A24:  LDRB            R0, [R0,#0x10]
217A26:  CBZ             R0, loc_217A2C
217A28:  MOVS            R0, #0
217A2A:  POP             {R4,R6,R7,PC}
217A2C:  MOVS            R0, #1
217A2E:  STRB            R0, [R4,#0x10]
217A30:  LDR             R0, [R4,#0xC]
217A32:  BL              sub_217AF6
217A36:  MOVS            R1, #0
217A38:  STRB            R1, [R4,#0x10]
217A3A:  POP             {R4,R6,R7,PC}
