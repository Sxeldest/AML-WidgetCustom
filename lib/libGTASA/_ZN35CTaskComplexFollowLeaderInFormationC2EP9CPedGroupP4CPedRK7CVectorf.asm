; =========================================================
; Game Engine Function: _ZN35CTaskComplexFollowLeaderInFormationC2EP9CPedGroupP4CPedRK7CVectorf
; Address            : 0x544858 - 0x5448AC
; =========================================================

544858:  PUSH            {R4-R7,LR}
54485A:  ADD             R7, SP, #0xC
54485C:  PUSH.W          {R8}
544860:  MOV             R6, R3
544862:  MOV             R5, R2
544864:  MOV             R8, R1
544866:  MOV             R4, R0
544868:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
54486C:  LDR             R0, =(_ZTV35CTaskComplexFollowLeaderInFormation_ptr - 0x54487A)
54486E:  MOV             R1, R4
544870:  STR.W           R8, [R4,#0xC]
544874:  MOVS            R2, #4
544876:  ADD             R0, PC; _ZTV35CTaskComplexFollowLeaderInFormation_ptr
544878:  VLDR            S0, [R7,#arg_0]
54487C:  CMP             R5, #0
54487E:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowLeaderInFormation ...
544880:  ADD.W           R0, R0, #8
544884:  STR             R0, [R4]
544886:  STR.W           R5, [R1,#0x10]!; CEntity **
54488A:  VLDR            D16, [R6]
54488E:  LDR             R0, [R6,#8]
544890:  STRD.W          R0, R2, [R4,#0x1C]
544894:  VSTR            S0, [R4,#0x24]
544898:  VSTR            D16, [R4,#0x14]
54489C:  ITT NE
54489E:  MOVNE           R0, R5; this
5448A0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5448A4:  MOV             R0, R4
5448A6:  POP.W           {R8}
5448AA:  POP             {R4-R7,PC}
