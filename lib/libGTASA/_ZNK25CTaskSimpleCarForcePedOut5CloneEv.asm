; =========================================================
; Game Engine Function: _ZNK25CTaskSimpleCarForcePedOut5CloneEv
; Address            : 0x506FEC - 0x50702C
; =========================================================

506FEC:  PUSH            {R4-R7,LR}
506FEE:  ADD             R7, SP, #0xC
506FF0:  PUSH.W          {R11}
506FF4:  MOV             R6, R0
506FF6:  MOVS            R0, #word_10; this
506FF8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506FFC:  MOV             R4, R0
506FFE:  LDRD.W          R5, R6, [R6,#8]
507002:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
507006:  LDR             R0, =(_ZTV25CTaskSimpleCarForcePedOut_ptr - 0x507012)
507008:  MOV             R1, R4
50700A:  STR             R6, [R4,#0xC]
50700C:  CMP             R5, #0
50700E:  ADD             R0, PC; _ZTV25CTaskSimpleCarForcePedOut_ptr
507010:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarForcePedOut ...
507012:  ADD.W           R0, R0, #8
507016:  STR             R0, [R4]
507018:  STR.W           R5, [R1,#8]!; CEntity **
50701C:  ITT NE
50701E:  MOVNE           R0, R5; this
507020:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
507024:  MOV             R0, R4
507026:  POP.W           {R11}
50702A:  POP             {R4-R7,PC}
