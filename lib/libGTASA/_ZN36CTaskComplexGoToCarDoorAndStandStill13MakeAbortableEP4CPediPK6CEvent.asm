; =========================================================
; Game Engine Function: _ZN36CTaskComplexGoToCarDoorAndStandStill13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4FFD80 - 0x4FFDE2
; =========================================================

4FFD80:  PUSH            {R4-R7,LR}
4FFD82:  ADD             R7, SP, #0xC
4FFD84:  PUSH.W          {R8}
4FFD88:  MOV             R5, R0
4FFD8A:  MOV             R4, R3
4FFD8C:  LDRB.W          R0, [R5,#0x48]
4FFD90:  MOV             R8, R2
4FFD92:  MOV             R6, R1
4FFD94:  CMP             R0, #0
4FFD96:  ITT NE
4FFD98:  LDRNE           R0, [R5,#8]
4FFD9A:  CMPNE           R0, #0
4FFD9C:  BEQ             loc_4FFDCA
4FFD9E:  LDR             R1, [R0]
4FFDA0:  LDR             R1, [R1,#0x14]
4FFDA2:  BLX             R1
4FFDA4:  CBZ             R4, loc_4FFDCA
4FFDA6:  CMP             R0, #0xCA
4FFDA8:  BNE             loc_4FFDCA
4FFDAA:  LDR             R0, [R4]
4FFDAC:  LDR             R1, [R0,#8]
4FFDAE:  MOV             R0, R4
4FFDB0:  BLX             R1
4FFDB2:  CMP             R0, #0x42 ; 'B'
4FFDB4:  BEQ             loc_4FFDC2
4FFDB6:  LDR             R0, [R4]
4FFDB8:  LDR             R1, [R0,#8]
4FFDBA:  MOV             R0, R4
4FFDBC:  BLX             R1
4FFDBE:  CMP             R0, #0x21 ; '!'
4FFDC0:  BNE             loc_4FFDCA
4FFDC2:  MOVS            R0, #0
4FFDC4:  POP.W           {R8}
4FFDC8:  POP             {R4-R7,PC}
4FFDCA:  LDR             R0, [R5,#8]
4FFDCC:  MOV             R2, R8
4FFDCE:  MOV             R3, R4
4FFDD0:  LDR             R1, [R0]
4FFDD2:  LDR.W           R12, [R1,#0x1C]
4FFDD6:  MOV             R1, R6
4FFDD8:  POP.W           {R8}
4FFDDC:  POP.W           {R4-R7,LR}
4FFDE0:  BX              R12
