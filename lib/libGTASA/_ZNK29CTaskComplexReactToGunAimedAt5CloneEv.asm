; =========================================================
; Game Engine Function: _ZNK29CTaskComplexReactToGunAimedAt5CloneEv
; Address            : 0x547E54 - 0x547E90
; =========================================================

547E54:  PUSH            {R4,R5,R7,LR}
547E56:  ADD             R7, SP, #8
547E58:  MOV             R5, R0
547E5A:  MOVS            R0, #dword_1C; this
547E5C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
547E60:  MOV             R4, R0
547E62:  LDR             R5, [R5,#0xC]
547E64:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
547E68:  LDR             R0, =(_ZTV29CTaskComplexReactToGunAimedAt_ptr - 0x547E74)
547E6A:  MOVS            R1, #0
547E6C:  STRH            R1, [R4,#0x18]
547E6E:  CMP             R5, #0
547E70:  ADD             R0, PC; _ZTV29CTaskComplexReactToGunAimedAt_ptr
547E72:  STRD.W          R1, R1, [R4,#0x10]
547E76:  MOV             R1, R4
547E78:  LDR             R0, [R0]; `vtable for'CTaskComplexReactToGunAimedAt ...
547E7A:  ADD.W           R0, R0, #8
547E7E:  STR             R0, [R4]
547E80:  STR.W           R5, [R1,#0xC]!; CEntity **
547E84:  ITT NE
547E86:  MOVNE           R0, R5; this
547E88:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
547E8C:  MOV             R0, R4
547E8E:  POP             {R4,R5,R7,PC}
