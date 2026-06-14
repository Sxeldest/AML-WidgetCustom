; =========================================================
; Game Engine Function: sub_217A6A
; Address            : 0x217A6A - 0x217A8A
; =========================================================

217A6A:  PUSH            {R4,R6,R7,LR}
217A6C:  ADD             R7, SP, #8
217A6E:  MOV             R4, R0
217A70:  LDRB            R0, [R0,#0x10]
217A72:  CBNZ            R0, loc_217A86
217A74:  MOVS            R0, #1
217A76:  STRB            R0, [R4,#0x10]
217A78:  LDR             R0, [R4,#0xC]
217A7A:  LDR             R2, [R0]
217A7C:  LDR             R2, [R2,#0xC]
217A7E:  BLX             R2
217A80:  MOVS            R1, #0
217A82:  STRB            R1, [R4,#0x10]
217A84:  MOV             R4, R0
217A86:  MOV             R0, R4
217A88:  POP             {R4,R6,R7,PC}
