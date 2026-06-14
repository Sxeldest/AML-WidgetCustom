; =========================================================
; Game Engine Function: sub_120C08
; Address            : 0x120C08 - 0x120C34
; =========================================================

120C08:  PUSH            {R4,R6,R7,LR}
120C0A:  ADD             R7, SP, #8
120C0C:  MOV             R4, R0
120C0E:  LDR             R0, [R1,#0x10]
120C10:  CBZ             R0, loc_120C1E
120C12:  CMP             R1, R0
120C14:  BEQ             loc_120C24
120C16:  LDR             R1, [R0]
120C18:  LDR             R1, [R1,#8]
120C1A:  BLX             R1
120C1C:  B               loc_120C20
120C1E:  MOVS            R0, #0
120C20:  STR             R0, [R4,#0x10]
120C22:  B               loc_120C30
120C24:  STR             R4, [R4,#0x10]
120C26:  LDR             R0, [R1,#0x10]
120C28:  LDR             R1, [R0]
120C2A:  LDR             R2, [R1,#0xC]
120C2C:  MOV             R1, R4
120C2E:  BLX             R2
120C30:  MOV             R0, R4
120C32:  POP             {R4,R6,R7,PC}
