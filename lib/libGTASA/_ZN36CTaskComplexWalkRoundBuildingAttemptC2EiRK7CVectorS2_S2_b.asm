; =========================================================
; Game Engine Function: _ZN36CTaskComplexWalkRoundBuildingAttemptC2EiRK7CVectorS2_S2_b
; Address            : 0x50CD0C - 0x50CD8E
; =========================================================

50CD0C:  PUSH            {R4-R7,LR}
50CD0E:  ADD             R7, SP, #0xC
50CD10:  PUSH.W          {R8}
50CD14:  MOV             R6, R3
50CD16:  MOV             R5, R2
50CD18:  MOV             R8, R1
50CD1A:  MOV             R4, R0
50CD1C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50CD20:  LDR             R0, =(_ZTV36CTaskComplexWalkRoundBuildingAttempt_ptr - 0x50CD28)
50CD22:  LDR             R1, [R7,#arg_0]
50CD24:  ADD             R0, PC; _ZTV36CTaskComplexWalkRoundBuildingAttempt_ptr
50CD26:  LDR             R3, [R7,#arg_4]
50CD28:  LDR             R0, [R0]; `vtable for'CTaskComplexWalkRoundBuildingAttempt ...
50CD2A:  ADDS            R0, #8
50CD2C:  STR             R0, [R4]
50CD2E:  VLDR            D16, [R5]
50CD32:  LDR             R0, [R5,#8]
50CD34:  MOVS            R5, #0
50CD36:  STR             R0, [R4,#0x1C]
50CD38:  VSTR            D16, [R4,#0x14]
50CD3C:  VLDR            D16, [R6]
50CD40:  LDR             R0, [R6,#8]
50CD42:  LDRB.W          R2, [R4,#0x49]
50CD46:  STR             R0, [R4,#0x28]
50CD48:  VSTR            D16, [R4,#0x20]
50CD4C:  LDRD.W          R0, R1, [R1]
50CD50:  STRD.W          R0, R1, [R4,#0x2C]
50CD54:  AND.W           R0, R2, #0xC0
50CD58:  ORRS            R0, R3
50CD5A:  STRB.W          R0, [R4,#0x49]
50CD5E:  ADD.W           R0, R4, #0x2C ; ','; this
50CD62:  STR             R5, [R4,#0x38]
50CD64:  STRB.W          R8, [R4,#0x48]
50CD68:  STRB.W          R5, [R4,#0x4A]
50CD6C:  STR             R5, [R4,#0x34]
50CD6E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
50CD72:  MOVS            R0, #dword_64; this
50CD74:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
50CD78:  STR             R5, [R0]
50CD7A:  STR             R0, [R4,#0xC]
50CD7C:  MOVS            R0, #dword_64; this
50CD7E:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
50CD82:  STR             R5, [R0]
50CD84:  STR             R0, [R4,#0x10]
50CD86:  MOV             R0, R4
50CD88:  POP.W           {R8}
50CD8C:  POP             {R4-R7,PC}
