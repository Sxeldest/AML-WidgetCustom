; =========================================================
; Game Engine Function: _ZNK29CTaskComplexLeaveCarAndWander5CloneEv
; Address            : 0x4FE63C - 0x4FE686
; =========================================================

4FE63C:  PUSH            {R4-R7,LR}
4FE63E:  ADD             R7, SP, #0xC
4FE640:  PUSH.W          {R8,R9,R11}
4FE644:  MOV             R6, R0
4FE646:  MOVS            R0, #dword_1C; this
4FE648:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FE64C:  ADD.W           R9, R6, #0xC
4FE650:  MOV             R4, R0
4FE652:  LDM.W           R9, {R5,R8,R9}
4FE656:  LDRB            R6, [R6,#0x18]
4FE658:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FE65C:  LDR             R0, =(_ZTV29CTaskComplexLeaveCarAndWander_ptr - 0x4FE66A)
4FE65E:  MOV             R1, R4
4FE660:  STRD.W          R8, R9, [R4,#0x10]
4FE664:  CMP             R5, #0
4FE666:  ADD             R0, PC; _ZTV29CTaskComplexLeaveCarAndWander_ptr
4FE668:  STRB            R6, [R4,#0x18]
4FE66A:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCarAndWander ...
4FE66C:  ADD.W           R0, R0, #8
4FE670:  STR             R0, [R4]
4FE672:  STR.W           R5, [R1,#0xC]!; CEntity **
4FE676:  ITT NE
4FE678:  MOVNE           R0, R5; this
4FE67A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FE67E:  MOV             R0, R4
4FE680:  POP.W           {R8,R9,R11}
4FE684:  POP             {R4-R7,PC}
