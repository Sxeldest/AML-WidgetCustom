; =========================================================
; Game Engine Function: _ZN32CTaskComplexFollowLeaderAnyMeans18CreateFirstSubTaskEP4CPed
; Address            : 0x5454C4 - 0x545520
; =========================================================

5454C4:  PUSH            {R4-R7,LR}
5454C6:  ADD             R7, SP, #0xC
5454C8:  PUSH.W          {R8}
5454CC:  MOV             R6, R0
5454CE:  MOVS            R0, #word_28; this
5454D0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5454D4:  MOV             R4, R0
5454D6:  LDRD.W          R8, R5, [R6,#0xC]
5454DA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5454DE:  LDR             R0, =(_ZTV35CTaskComplexFollowLeaderInFormation_ptr - 0x5454EC)
5454E0:  MOV             R1, R4
5454E2:  STR.W           R8, [R4,#0xC]
5454E6:  MOVS            R3, #0
5454E8:  ADD             R0, PC; _ZTV35CTaskComplexFollowLeaderInFormation_ptr
5454EA:  MOVS            R2, #4
5454EC:  MOVT            R3, #0xBF80
5454F0:  ADD.W           R12, R4, #0x1C
5454F4:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowLeaderInFormation ...
5454F6:  CMP             R5, #0
5454F8:  ADD.W           R0, R0, #8
5454FC:  STR             R0, [R4]
5454FE:  STR.W           R5, [R1,#0x10]!; CEntity **
545502:  VLDR            D16, [R6,#0x14]
545506:  LDR             R0, [R6,#0x1C]
545508:  STM.W           R12, {R0,R2,R3}
54550C:  VSTR            D16, [R4,#0x14]
545510:  ITT NE
545512:  MOVNE           R0, R5; this
545514:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
545518:  MOV             R0, R4
54551A:  POP.W           {R8}
54551E:  POP             {R4-R7,PC}
