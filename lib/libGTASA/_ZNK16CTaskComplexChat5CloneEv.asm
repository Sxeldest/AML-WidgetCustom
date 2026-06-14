; =========================================================
; Game Engine Function: _ZNK16CTaskComplexChat5CloneEv
; Address            : 0x53582C - 0x535888
; =========================================================

53582C:  PUSH            {R4-R7,LR}
53582E:  ADD             R7, SP, #0xC
535830:  PUSH.W          {R8-R10}
535834:  MOV             R4, R0
535836:  MOVS            R0, #dword_20; this
535838:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
53583C:  LDRD.W          R6, R8, [R4,#0x10]
535840:  MOV             R5, R0
535842:  LDRH.W          R9, [R4,#0x18]
535846:  LDRB.W          R10, [R4,#0xC]
53584A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
53584E:  LDR             R0, =(_ZTV16CTaskComplexChat_ptr - 0x53585C)
535850:  MOV             R1, R5
535852:  STRB.W          R10, [R5,#0xC]
535856:  CMP             R6, #0
535858:  ADD             R0, PC; _ZTV16CTaskComplexChat_ptr
53585A:  STR.W           R8, [R5,#0x14]
53585E:  STRH.W          R9, [R5,#0x18]
535862:  LDR             R0, [R0]; `vtable for'CTaskComplexChat ...
535864:  ADD.W           R0, R0, #8
535868:  STR             R0, [R5]
53586A:  STR.W           R6, [R1,#0x10]!; CEntity **
53586E:  ITT NE
535870:  MOVNE           R0, R6; this
535872:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
535876:  MOVS            R0, #0
535878:  STR             R0, [R5,#0x1C]
53587A:  STRB            R0, [R5,#0x1A]
53587C:  LDRB            R0, [R4,#0x1A]
53587E:  STRB            R0, [R5,#0x1A]
535880:  MOV             R0, R5
535882:  POP.W           {R8-R10}
535886:  POP             {R4-R7,PC}
