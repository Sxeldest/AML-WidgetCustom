; =========================================================
; Game Engine Function: _ZNK19CTaskSimpleCarAlign5CloneEv
; Address            : 0x506AB0 - 0x506B08
; =========================================================

506AB0:  PUSH            {R4-R7,LR}
506AB2:  ADD             R7, SP, #0xC
506AB4:  PUSH.W          {R8,R9,R11}
506AB8:  MOV             R6, R0
506ABA:  MOVS            R0, #word_28; this
506ABC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506AC0:  LDR             R5, [R6,#0x10]
506AC2:  MOV             R4, R0
506AC4:  LDRD.W          R8, R9, [R6,#0x20]
506AC8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506ACC:  LDR             R0, =(_ZTV19CTaskSimpleCarAlign_ptr - 0x506ADA)
506ACE:  MOVS            R1, #0
506AD0:  STRB            R1, [R4,#8]
506AD2:  ADD.W           R2, R4, #0x1C
506AD6:  ADD             R0, PC; _ZTV19CTaskSimpleCarAlign_ptr
506AD8:  STR             R1, [R4,#0xC]
506ADA:  MOV             R1, R4
506ADC:  CMP             R5, #0
506ADE:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarAlign ...
506AE0:  ADD.W           R0, R0, #8
506AE4:  STR             R0, [R4]
506AE6:  STR.W           R5, [R1,#0x10]!; CEntity **
506AEA:  LDR             R0, [R6,#0x1C]
506AEC:  VLDR            D16, [R6,#0x14]
506AF0:  STM.W           R2, {R0,R8,R9}
506AF4:  VSTR            D16, [R4,#0x14]
506AF8:  ITT NE
506AFA:  MOVNE           R0, R5; this
506AFC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506B00:  MOV             R0, R4
506B02:  POP.W           {R8,R9,R11}
506B06:  POP             {R4-R7,PC}
