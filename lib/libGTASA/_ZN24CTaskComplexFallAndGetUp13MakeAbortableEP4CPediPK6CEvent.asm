; =========================================================
; Game Engine Function: _ZN24CTaskComplexFallAndGetUp13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x52BAFC - 0x52BB68
; =========================================================

52BAFC:  PUSH            {R4-R7,LR}
52BAFE:  ADD             R7, SP, #0xC
52BB00:  PUSH.W          {R8}
52BB04:  MOV             R6, R2
52BB06:  MOV             R8, R3
52BB08:  MOV             R5, R1
52BB0A:  MOV             R4, R0
52BB0C:  CMP             R6, #2
52BB0E:  BNE             loc_52BB28
52BB10:  LDR             R0, [R4,#8]
52BB12:  MOVS            R2, #2
52BB14:  LDR             R1, [R0]
52BB16:  LDR.W           R12, [R1,#0x1C]
52BB1A:  MOV             R1, R5
52BB1C:  MOV             R3, R8
52BB1E:  POP.W           {R8}
52BB22:  POP.W           {R4-R7,LR}
52BB26:  BX              R12
52BB28:  LDR.W           R0, [R5,#0x44C]
52BB2C:  CMP             R0, #0x3F ; '?'
52BB2E:  BEQ             loc_52BB60
52BB30:  LDRB.W          R0, [R5,#0x48C]
52BB34:  LSLS            R0, R0, #0x19
52BB36:  BMI             loc_52BB60
52BB38:  LDR             R0, [R4,#8]
52BB3A:  CMP             R6, #1
52BB3C:  BNE             loc_52BB44
52BB3E:  LDR             R1, [R0]
52BB40:  MOVS            R2, #1
52BB42:  B               loc_52BB16
52BB44:  LDR             R1, [R0]
52BB46:  LDR             R1, [R1,#0x14]
52BB48:  BLX             R1
52BB4A:  CMP             R0, #0xCF
52BB4C:  BEQ             loc_52BB60
52BB4E:  LDR             R0, [R4,#8]
52BB50:  MOVS            R1, #0
52BB52:  STR             R1, [R4,#0x14]
52BB54:  MOV             R2, R6
52BB56:  MOV             R3, R8
52BB58:  LDR             R1, [R0]
52BB5A:  LDR             R4, [R1,#0x1C]
52BB5C:  MOV             R1, R5
52BB5E:  BLX             R4
52BB60:  MOVS            R0, #0
52BB62:  POP.W           {R8}
52BB66:  POP             {R4-R7,PC}
