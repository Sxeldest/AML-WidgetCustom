; =========================================================
; Game Engine Function: sub_217AB8
; Address            : 0x217AB8 - 0x217AD6
; =========================================================

217AB8:  PUSH            {R4,R6,R7,LR}
217ABA:  ADD             R7, SP, #8
217ABC:  MOV             R4, R0
217ABE:  LDRB            R0, [R0,#0x10]
217AC0:  CBZ             R0, loc_217AC4
217AC2:  POP             {R4,R6,R7,PC}
217AC4:  MOVS            R0, #1
217AC6:  STRB            R0, [R4,#0x10]
217AC8:  LDR             R0, [R4,#0xC]
217ACA:  LDR             R2, [R0]
217ACC:  LDR             R2, [R2,#0x14]
217ACE:  BLX             R2
217AD0:  MOVS            R0, #0
217AD2:  STRB            R0, [R4,#0x10]
217AD4:  POP             {R4,R6,R7,PC}
