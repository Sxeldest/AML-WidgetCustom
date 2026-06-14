; =========================================================
; Game Engine Function: _ZNK15CEventAreaCodes10AffectsPedEP4CPed
; Address            : 0x377AFC - 0x377BB2
; =========================================================

377AFC:  PUSH            {R4-R7,LR}
377AFE:  ADD             R7, SP, #0xC
377B00:  PUSH.W          {R11}
377B04:  MOV             R4, R0
377B06:  MOV             R5, R1
377B08:  LDR             R0, [R4,#0xC]
377B0A:  CBZ             R0, loc_377B42
377B0C:  LDR.W           R0, [R5,#0x440]
377B10:  MOV.W           R1, #0x3E8; int
377B14:  ADDS            R0, #4; this
377B16:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
377B1A:  CBZ             R0, loc_377B3A
377B1C:  LDR             R6, [R0,#0x10]
377B1E:  LDR             R0, [R4,#0xC]
377B20:  CMP             R6, R0
377B22:  BEQ             loc_377B3C
377B24:  LDR.W           R0, [R5,#0x440]
377B28:  MOVW            R1, #0x44D; int
377B2C:  ADDS            R0, #4; this
377B2E:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
377B32:  CMP             R0, #0
377B34:  IT NE
377B36:  LDRNE           R6, [R0,#0x10]
377B38:  B               loc_377B3C
377B3A:  MOVS            R6, #0
377B3C:  LDR             R0, [R4,#0xC]
377B3E:  CMP             R6, R0
377B40:  BEQ             loc_377B4A
377B42:  MOVS            R0, #0
377B44:  POP.W           {R11}
377B48:  POP             {R4-R7,PC}
377B4A:  LDR.W           R0, [R6,#0x440]; this
377B4E:  MOV.W           R1, #0x3A4; int
377B52:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
377B56:  CBZ             R0, loc_377B60
377B58:  MOVS            R0, #1
377B5A:  POP.W           {R11}
377B5E:  POP             {R4-R7,PC}
377B60:  LDR.W           R1, [R5,#0x588]
377B64:  LDR             R0, [R4,#0xC]; this
377B66:  CMP             R1, #0
377B68:  ITT NE
377B6A:  LDRNE.W         R2, [R0,#0x588]
377B6E:  CMPNE           R2, #0
377B70:  BEQ             loc_377B7E
377B72:  LDRB.W          R2, [R2,#0x33]
377B76:  LDRB.W          R1, [R1,#0x33]
377B7A:  CMP             R1, R2
377B7C:  BEQ             loc_377B42
377B7E:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
377B82:  CMP             R0, #1
377B84:  BNE             loc_377B42
377B86:  MOV             R0, R5; this
377B88:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
377B8C:  CMP             R0, #1
377B8E:  BNE             loc_377B42
377B90:  LDR.W           R0, [R5,#0x588]
377B94:  CBZ             R0, loc_377B9E
377B96:  LDRB.W          R0, [R0,#0x33]
377B9A:  CMP             R0, #0xD
377B9C:  BEQ             loc_377B42
377B9E:  LDR             R0, [R4,#0xC]
377BA0:  LDR.W           R0, [R0,#0x588]
377BA4:  CMP             R0, #0
377BA6:  BEQ             loc_377B58
377BA8:  LDRB.W          R0, [R0,#0x33]
377BAC:  CMP             R0, #0xD
377BAE:  BEQ             loc_377B42
377BB0:  B               loc_377B58
