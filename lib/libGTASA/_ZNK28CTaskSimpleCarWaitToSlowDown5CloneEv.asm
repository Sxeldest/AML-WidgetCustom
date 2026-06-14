; =========================================================
; Game Engine Function: _ZNK28CTaskSimpleCarWaitToSlowDown5CloneEv
; Address            : 0x506D88 - 0x506DC8
; =========================================================

506D88:  PUSH            {R4-R7,LR}
506D8A:  ADD             R7, SP, #0xC
506D8C:  PUSH.W          {R11}
506D90:  MOV             R6, R0
506D92:  MOVS            R0, #dword_14; this
506D94:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506D98:  LDR             R5, [R6,#8]
506D9A:  MOV             R4, R0
506D9C:  LDR             R6, [R6,#0x10]
506D9E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506DA2:  LDR             R0, =(_ZTV28CTaskSimpleCarWaitToSlowDown_ptr - 0x506DAE)
506DA4:  MOV             R1, R4
506DA6:  STR             R6, [R4,#0x10]
506DA8:  CMP             R5, #0
506DAA:  ADD             R0, PC; _ZTV28CTaskSimpleCarWaitToSlowDown_ptr
506DAC:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarWaitToSlowDown ...
506DAE:  ADD.W           R0, R0, #8
506DB2:  STR             R0, [R4]
506DB4:  STR.W           R5, [R1,#8]!; CEntity **
506DB8:  ITT NE
506DBA:  MOVNE           R0, R5; this
506DBC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506DC0:  MOV             R0, R4
506DC2:  POP.W           {R11}
506DC6:  POP             {R4-R7,PC}
