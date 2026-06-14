; =========================================================
; Game Engine Function: _ZNK23CTaskComplexEvasiveStep5CloneEv
; Address            : 0x50EF50 - 0x50EF98
; =========================================================

50EF50:  PUSH            {R4-R7,LR}
50EF52:  ADD             R7, SP, #0xC
50EF54:  PUSH.W          {R11}
50EF58:  MOV             R6, R0
50EF5A:  MOVS            R0, #dword_1C; this
50EF5C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50EF60:  MOV             R4, R0
50EF62:  LDR             R5, [R6,#0x18]
50EF64:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50EF68:  LDR             R0, =(_ZTV23CTaskComplexEvasiveStep_ptr - 0x50EF72)
50EF6A:  MOV             R1, R4
50EF6C:  CMP             R5, #0
50EF6E:  ADD             R0, PC; _ZTV23CTaskComplexEvasiveStep_ptr
50EF70:  LDR             R0, [R0]; `vtable for'CTaskComplexEvasiveStep ...
50EF72:  ADD.W           R0, R0, #8
50EF76:  STR             R0, [R4]
50EF78:  VLDR            D16, [R6,#0xC]
50EF7C:  LDR             R0, [R6,#0x14]
50EF7E:  STR             R0, [R4,#0x14]
50EF80:  VSTR            D16, [R4,#0xC]
50EF84:  STR.W           R5, [R1,#0x18]!; CEntity **
50EF88:  ITT NE
50EF8A:  MOVNE           R0, R5; this
50EF8C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50EF90:  MOV             R0, R4
50EF92:  POP.W           {R11}
50EF96:  POP             {R4-R7,PC}
