; =========================================================
; Game Engine Function: sub_F0196
; Address            : 0xF0196 - 0xF01C2
; =========================================================

F0196:  PUSH            {R4,R5,R7,LR}
F0198:  ADD             R7, SP, #8
F019A:  MOV             R4, R1
F019C:  ADDS            R1, #1
F019E:  BEQ             loc_F01BE
F01A0:  LDR             R5, [R0,#0x20]
F01A2:  LDRD.W          R0, R2, [R5,#8]
F01A6:  ADDS            R1, R0, #1
F01A8:  CMP             R2, R1
F01AA:  BCS             loc_F01B8
F01AC:  LDR             R0, [R5]
F01AE:  LDR             R2, [R0]
F01B0:  MOV             R0, R5
F01B2:  BLX             R2
F01B4:  LDR             R0, [R5,#8]
F01B6:  ADDS            R1, R0, #1
F01B8:  LDR             R2, [R5,#4]
F01BA:  STR             R1, [R5,#8]
F01BC:  STRB            R4, [R2,R0]
F01BE:  MOV             R0, R4
F01C0:  POP             {R4,R5,R7,PC}
