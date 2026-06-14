; =========================================================
; Game Engine Function: _ZNK22CTaskSimpleEvasiveStep5CloneEv
; Address            : 0x50EDC8 - 0x50EE02
; =========================================================

50EDC8:  PUSH            {R4,R5,R7,LR}
50EDCA:  ADD             R7, SP, #8
50EDCC:  MOV             R5, R0
50EDCE:  MOVS            R0, #dword_14; this
50EDD0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50EDD4:  MOV             R4, R0
50EDD6:  LDR             R5, [R5,#8]
50EDD8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50EDDC:  LDR             R0, =(_ZTV22CTaskSimpleEvasiveStep_ptr - 0x50EDE8)
50EDDE:  MOVS            R1, #0
50EDE0:  STRB            R1, [R4,#0xC]
50EDE2:  CMP             R5, #0
50EDE4:  ADD             R0, PC; _ZTV22CTaskSimpleEvasiveStep_ptr
50EDE6:  STR             R1, [R4,#0x10]
50EDE8:  MOV             R1, R4
50EDEA:  LDR             R0, [R0]; `vtable for'CTaskSimpleEvasiveStep ...
50EDEC:  ADD.W           R0, R0, #8
50EDF0:  STR             R0, [R4]
50EDF2:  STR.W           R5, [R1,#8]!; CEntity **
50EDF6:  ITT NE
50EDF8:  MOVNE           R0, R5; this
50EDFA:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50EDFE:  MOV             R0, R4
50EE00:  POP             {R4,R5,R7,PC}
