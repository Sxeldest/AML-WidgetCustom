; =========================================================
; Game Engine Function: _ZNK30CTaskSimpleCarSlowBeDraggedOut5CloneEv
; Address            : 0x507110 - 0x507160
; =========================================================

507110:  PUSH            {R4-R7,LR}
507112:  ADD             R7, SP, #0xC
507114:  PUSH.W          {R8}
507118:  MOV             R6, R0
50711A:  MOVS            R0, #dword_20; this
50711C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
507120:  LDRD.W          R5, R8, [R6,#0x10]
507124:  MOV             R4, R0
507126:  LDR             R6, [R6,#0x1C]
507128:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50712C:  LDR             R0, =(_ZTV30CTaskSimpleCarSlowBeDraggedOut_ptr - 0x507138)
50712E:  MOVS            R1, #0
507130:  STRB            R1, [R4,#8]
507132:  CMP             R5, #0
507134:  ADD             R0, PC; _ZTV30CTaskSimpleCarSlowBeDraggedOut_ptr
507136:  STR             R1, [R4,#0xC]
507138:  STR.W           R8, [R4,#0x14]
50713C:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSlowBeDraggedOut ...
50713E:  STRB            R1, [R4,#0x18]
507140:  STRB            R1, [R4,#0x19]
507142:  MOV             R1, R4
507144:  STR             R6, [R4,#0x1C]
507146:  ADD.W           R0, R0, #8
50714A:  STR             R0, [R4]
50714C:  STR.W           R5, [R1,#0x10]!; CEntity **
507150:  ITT NE
507152:  MOVNE           R0, R5; this
507154:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
507158:  MOV             R0, R4
50715A:  POP.W           {R8}
50715E:  POP             {R4-R7,PC}
