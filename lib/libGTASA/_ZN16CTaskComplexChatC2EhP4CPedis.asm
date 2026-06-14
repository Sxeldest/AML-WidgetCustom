; =========================================================
; Game Engine Function: _ZN16CTaskComplexChatC2EhP4CPedis
; Address            : 0x535784 - 0x5357CC
; =========================================================

535784:  PUSH            {R4-R7,LR}
535786:  ADD             R7, SP, #0xC
535788:  PUSH.W          {R8}
53578C:  MOV             R8, R3
53578E:  MOV             R5, R2
535790:  MOV             R6, R1
535792:  MOV             R4, R0
535794:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
535798:  LDR             R0, =(_ZTV16CTaskComplexChat_ptr - 0x5357A2)
53579A:  CMP             R5, #0
53579C:  LDR             R1, [R7,#arg_0]
53579E:  ADD             R0, PC; _ZTV16CTaskComplexChat_ptr
5357A0:  STRB            R6, [R4,#0xC]
5357A2:  STR.W           R8, [R4,#0x14]
5357A6:  LDR             R0, [R0]; `vtable for'CTaskComplexChat ...
5357A8:  STRH            R1, [R4,#0x18]
5357AA:  MOV             R1, R4
5357AC:  ADD.W           R0, R0, #8
5357B0:  STR             R0, [R4]
5357B2:  STR.W           R5, [R1,#0x10]!; CEntity **
5357B6:  ITT NE
5357B8:  MOVNE           R0, R5; this
5357BA:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5357BE:  MOVS            R0, #0
5357C0:  STR             R0, [R4,#0x1C]
5357C2:  STRB            R0, [R4,#0x1A]
5357C4:  MOV             R0, R4
5357C6:  POP.W           {R8}
5357CA:  POP             {R4-R7,PC}
