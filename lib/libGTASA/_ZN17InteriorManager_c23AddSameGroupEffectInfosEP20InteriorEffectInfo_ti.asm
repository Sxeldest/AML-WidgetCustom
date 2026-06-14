; =========================================================
; Game Engine Function: _ZN17InteriorManager_c23AddSameGroupEffectInfosEP20InteriorEffectInfo_ti
; Address            : 0x44CE10 - 0x44CE7A
; =========================================================

44CE10:  PUSH            {R4-R7,LR}
44CE12:  ADD             R7, SP, #0xC
44CE14:  PUSH.W          {R11}
44CE18:  MOV             R4, R1
44CE1A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x44CE22)
44CE1C:  LDR             R1, [R4]
44CE1E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
44CE20:  LDRSH.W         R1, [R1,#0x26]
44CE24:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
44CE26:  LDR.W           R5, [R0,R1,LSL#2]
44CE2A:  LDRB.W          R0, [R5,#0x23]
44CE2E:  CBZ             R0, loc_44CE74
44CE30:  MOVS            R6, #0
44CE32:  LDR             R0, [R4,#0x28]
44CE34:  CMP             R6, R0
44CE36:  BEQ             loc_44CE6A
44CE38:  MOV             R0, R5; this
44CE3A:  MOV             R1, R6; int
44CE3C:  BLX             j__ZN14CBaseModelInfo11Get2dEffectEi; CBaseModelInfo::Get2dEffect(int)
44CE40:  LDRB            R1, [R0,#0xC]
44CE42:  CMP             R1, #5
44CE44:  BNE             loc_44CE6A
44CE46:  LDR             R1, [R4,#8]
44CE48:  LDRB            R2, [R0,#0x11]
44CE4A:  LDRB            R1, [R1,#0x11]
44CE4C:  CMP             R1, R2
44CE4E:  BNE             loc_44CE6A
44CE50:  LDR             R1, [R4,#4]
44CE52:  CMP             R1, #7
44CE54:  BGT             loc_44CE6A
44CE56:  ADD.W           R1, R4, R1,LSL#2
44CE5A:  STR             R0, [R1,#8]
44CE5C:  LDR             R0, [R4,#4]
44CE5E:  ADD.W           R0, R4, R0,LSL#2
44CE62:  STR             R6, [R0,#0x28]
44CE64:  LDR             R0, [R4,#4]
44CE66:  ADDS            R0, #1
44CE68:  STR             R0, [R4,#4]
44CE6A:  LDRB.W          R0, [R5,#0x23]
44CE6E:  ADDS            R6, #1
44CE70:  CMP             R6, R0
44CE72:  BLT             loc_44CE32
44CE74:  POP.W           {R11}
44CE78:  POP             {R4-R7,PC}
