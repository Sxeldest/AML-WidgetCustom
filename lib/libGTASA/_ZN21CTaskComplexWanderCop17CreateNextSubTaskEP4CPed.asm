; =========================================================
; Game Engine Function: _ZN21CTaskComplexWanderCop17CreateNextSubTaskEP4CPed
; Address            : 0x523ABC - 0x523B9C
; =========================================================

523ABC:  PUSH            {R4-R7,LR}
523ABE:  ADD             R7, SP, #0xC
523AC0:  PUSH.W          {R11}
523AC4:  SUB             SP, SP, #8
523AC6:  MOV             R4, R1
523AC8:  MOV             R5, R0
523ACA:  LDR.W           R0, [R4,#0x59C]
523ACE:  CMP             R0, #6
523AD0:  BNE             loc_523B74
523AD2:  LDRB.W          R0, [R4,#0x7A4]
523AD6:  CBZ             R0, loc_523AE2
523AD8:  MOVS            R0, #0
523ADA:  ADD             SP, SP, #8
523ADC:  POP.W           {R11}
523AE0:  POP             {R4-R7,PC}
523AE2:  LDR             R0, [R5,#8]
523AE4:  LDR             R1, [R0]
523AE6:  LDR             R1, [R1,#0x14]
523AE8:  BLX             R1
523AEA:  MOVW            R1, #0x44F
523AEE:  CMP             R0, R1
523AF0:  BNE             loc_523B46
523AF2:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x523AFA)
523AF4:  MOVS            R2, #1
523AF6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
523AF8:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
523AFA:  LDR             R0, [R5,#0x28]
523AFC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
523AFE:  CMP             R0, #0
523B00:  STRB.W          R2, [R5,#0x4C]
523B04:  MOVW            R2, #0xBB8
523B08:  STRD.W          R1, R2, [R5,#0x44]
523B0C:  BNE             loc_523B64
523B0E:  LDRB.W          R0, [R4,#0x485]
523B12:  LSLS            R0, R0, #0x1F
523B14:  BNE             loc_523B86
523B16:  MOV             R6, R5
523B18:  MOV             R1, R4
523B1A:  LDR.W           R0, [R6],#0x18
523B1E:  LDR             R2, [R0,#0x3C]
523B20:  MOV             R0, R5
523B22:  BLX             R2
523B24:  MOV             R0, R5
523B26:  MOV             R3, R5
523B28:  LDR.W           R1, [R0],#0x1C
523B2C:  LDRB.W          R2, [R3,#0x10]!
523B30:  LDR.W           R12, [R1,#0x40]
523B34:  MOV             R1, R4
523B36:  STRD.W          R0, R3, [SP,#0x18+var_18]
523B3A:  MOV             R0, R5
523B3C:  MOV             R3, R6
523B3E:  BLX             R12
523B40:  MOV.W           R2, #0x384
523B44:  B               loc_523B8A
523B46:  LDR             R0, [R5,#0x28]
523B48:  CBZ             R0, loc_523B74
523B4A:  LDR             R0, [R5,#8]
523B4C:  LDR             R1, [R0]
523B4E:  LDR             R1, [R1,#0x14]
523B50:  BLX             R1
523B52:  MOV             R6, R0
523B54:  LDR             R0, [R5,#0x28]
523B56:  LDR             R1, [R0]
523B58:  LDR             R1, [R1,#0x14]
523B5A:  BLX             R1
523B5C:  CMP             R6, R0
523B5E:  BEQ             loc_523AD8
523B60:  LDR             R0, [R5,#0x28]
523B62:  CBZ             R0, loc_523B74
523B64:  LDR             R1, [R0]
523B66:  LDR             R1, [R1,#8]
523B68:  ADD             SP, SP, #8
523B6A:  POP.W           {R11}
523B6E:  POP.W           {R4-R7,LR}
523B72:  BX              R1
523B74:  MOV             R0, R5; this
523B76:  MOV             R1, R4; CPed *
523B78:  ADD             SP, SP, #8
523B7A:  POP.W           {R11}
523B7E:  POP.W           {R4-R7,LR}
523B82:  B.W             _ZN18CTaskComplexWander17CreateNextSubTaskEP4CPed; CTaskComplexWander::CreateNextSubTask(CPed *)
523B86:  MOV.W           R2, #0x2C0; int
523B8A:  MOV             R0, R5; this
523B8C:  MOV             R1, R4; CPed *
523B8E:  ADD             SP, SP, #8
523B90:  POP.W           {R11}
523B94:  POP.W           {R4-R7,LR}
523B98:  B.W             _ZN18CTaskComplexWander13CreateSubTaskEPK4CPedi; CTaskComplexWander::CreateSubTask(CPed const*,int)
