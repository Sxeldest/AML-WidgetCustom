; =========================================================
; Game Engine Function: sub_217A92
; Address            : 0x217A92 - 0x217AB0
; =========================================================

217A92:  PUSH            {R4,R6,R7,LR}
217A94:  ADD             R7, SP, #8
217A96:  MOV             R4, R0
217A98:  LDRB            R0, [R0,#0x10]
217A9A:  CBZ             R0, loc_217A9E
217A9C:  POP             {R4,R6,R7,PC}
217A9E:  MOVS            R0, #1
217AA0:  STRB            R0, [R4,#0x10]
217AA2:  LDR             R0, [R4,#0xC]
217AA4:  LDR             R2, [R0]
217AA6:  LDR             R2, [R2,#0x10]
217AA8:  BLX             R2
217AAA:  MOVS            R0, #0
217AAC:  STRB            R0, [R4,#0x10]
217AAE:  POP             {R4,R6,R7,PC}
