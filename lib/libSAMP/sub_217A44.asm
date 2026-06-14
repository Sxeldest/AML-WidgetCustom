; =========================================================
; Game Engine Function: sub_217A44
; Address            : 0x217A44 - 0x217A62
; =========================================================

217A44:  PUSH            {R4,R6,R7,LR}
217A46:  ADD             R7, SP, #8
217A48:  MOV             R4, R0
217A4A:  LDRB            R0, [R0,#0x10]
217A4C:  CBZ             R0, loc_217A52
217A4E:  MOVS            R0, #0
217A50:  POP             {R4,R6,R7,PC}
217A52:  MOVS            R0, #1
217A54:  STRB            R0, [R4,#0x10]
217A56:  LDR             R0, [R4,#0xC]
217A58:  BL              sub_217B0A
217A5C:  MOVS            R1, #0
217A5E:  STRB            R1, [R4,#0x10]
217A60:  POP             {R4,R6,R7,PC}
