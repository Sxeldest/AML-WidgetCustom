; =========================================================
; Game Engine Function: _ZN27CTaskComplexWalkRoundObjectC2EiRK7CVectorP7CEntity
; Address            : 0x50DD44 - 0x50DDA2
; =========================================================

50DD44:  PUSH            {R4-R7,LR}
50DD46:  ADD             R7, SP, #0xC
50DD48:  PUSH.W          {R8}
50DD4C:  MOV             R5, R3
50DD4E:  MOV             R6, R2
50DD50:  MOV             R8, R1
50DD52:  MOV             R4, R0
50DD54:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50DD58:  LDR             R0, =(_ZTV27CTaskComplexWalkRoundObject_ptr - 0x50DD66)
50DD5A:  MOV             R1, R4
50DD5C:  STR.W           R8, [R4,#0xC]
50DD60:  CMP             R5, #0
50DD62:  ADD             R0, PC; _ZTV27CTaskComplexWalkRoundObject_ptr
50DD64:  LDR             R0, [R0]; `vtable for'CTaskComplexWalkRoundObject ...
50DD66:  ADD.W           R0, R0, #8
50DD6A:  STR             R0, [R4]
50DD6C:  VLDR            D16, [R6]
50DD70:  LDR             R0, [R6,#8]
50DD72:  MOV.W           R6, #0
50DD76:  STR.W           R5, [R1,#0x1C]!; CEntity **
50DD7A:  STR.W           R0, [R1,#-4]
50DD7E:  STRD.W          R6, R6, [R1,#8]
50DD82:  VSTR            D16, [R1,#-0xC]
50DD86:  STRH            R6, [R1,#0x10]
50DD88:  ITT NE
50DD8A:  MOVNE           R0, R5; this
50DD8C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50DD90:  MOVS            R0, #dword_64; this
50DD92:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
50DD96:  STR             R6, [R0]
50DD98:  STR             R0, [R4,#0x20]
50DD9A:  MOV             R0, R4
50DD9C:  POP.W           {R8}
50DDA0:  POP             {R4-R7,PC}
