; =========================================================
; Game Engine Function: _ZNK34CTaskComplexInvestigateDisturbance5CloneEv
; Address            : 0x5287E0 - 0x528828
; =========================================================

5287E0:  PUSH            {R4-R7,LR}
5287E2:  ADD             R7, SP, #0xC
5287E4:  PUSH.W          {R11}
5287E8:  MOV             R6, R0
5287EA:  MOVS            R0, #dword_1C; this
5287EC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5287F0:  MOV             R4, R0
5287F2:  LDR             R5, [R6,#0x18]
5287F4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5287F8:  LDR             R0, =(_ZTV34CTaskComplexInvestigateDisturbance_ptr - 0x528802)
5287FA:  MOV             R1, R4
5287FC:  CMP             R5, #0
5287FE:  ADD             R0, PC; _ZTV34CTaskComplexInvestigateDisturbance_ptr
528800:  LDR             R0, [R0]; `vtable for'CTaskComplexInvestigateDisturbance ...
528802:  ADD.W           R0, R0, #8
528806:  STR             R0, [R4]
528808:  VLDR            D16, [R6,#0xC]
52880C:  LDR             R0, [R6,#0x14]
52880E:  STR             R0, [R4,#0x14]
528810:  VSTR            D16, [R4,#0xC]
528814:  STR.W           R5, [R1,#0x18]!; CEntity **
528818:  ITT NE
52881A:  MOVNE           R0, R5; this
52881C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
528820:  MOV             R0, R4
528822:  POP.W           {R11}
528826:  POP             {R4-R7,PC}
