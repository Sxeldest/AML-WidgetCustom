; =========================================================
; Game Engine Function: _ZN16CTaskComplexJump13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x52DFB8 - 0x52E02C
; =========================================================

52DFB8:  PUSH            {R4-R7,LR}
52DFBA:  ADD             R7, SP, #0xC
52DFBC:  PUSH.W          {R8,R9,R11}
52DFC0:  MOV             R6, R2
52DFC2:  MOV             R5, R3
52DFC4:  MOV             R9, R1
52DFC6:  MOV             R8, R0
52DFC8:  CMP             R6, #1
52DFCA:  BNE             loc_52DFFC
52DFCC:  CBZ             R5, loc_52DFFC
52DFCE:  LDR             R0, [R5]
52DFD0:  LDR             R1, [R0,#8]
52DFD2:  MOV             R0, R5
52DFD4:  BLX             R1
52DFD6:  CMP             R0, #9
52DFD8:  BNE             loc_52DFF0
52DFDA:  LDR             R0, [R5,#0x18]
52DFDC:  CMP             R0, #0x36 ; '6'
52DFDE:  BNE             loc_52DFFC
52DFE0:  LDRB.W          R0, [R5,#0x3C]
52DFE4:  CMP             R0, #0
52DFE6:  ITT NE
52DFE8:  LDRBNE          R0, [R5,#9]
52DFEA:  CMPNE           R0, #0
52DFEC:  BNE             loc_52E010
52DFEE:  B               loc_52DFFC
52DFF0:  LDR             R0, [R5]
52DFF2:  LDR             R1, [R0,#8]
52DFF4:  MOV             R0, R5
52DFF6:  BLX             R1
52DFF8:  CMP             R0, #0xA
52DFFA:  BEQ             loc_52E010
52DFFC:  LDR.W           R0, [R8,#8]
52E000:  MOV             R2, R6
52E002:  MOV             R3, R5
52E004:  LDR             R1, [R0]
52E006:  LDR             R4, [R1,#0x1C]
52E008:  MOV             R1, R9
52E00A:  BLX             R4
52E00C:  CMP             R0, #1
52E00E:  BNE             loc_52E024
52E010:  LDR.W           R0, [R9,#0x484]
52E014:  BIC.W           R0, R0, #0x600
52E018:  STR.W           R0, [R9,#0x484]
52E01C:  MOVS            R0, #1
52E01E:  POP.W           {R8,R9,R11}
52E022:  POP             {R4-R7,PC}
52E024:  MOVS            R0, #0
52E026:  POP.W           {R8,R9,R11}
52E02A:  POP             {R4-R7,PC}
