; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarJumpOutC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar
; Address            : 0x503554 - 0x5035C8
; =========================================================

503554:  PUSH            {R4-R7,LR}
503556:  ADD             R7, SP, #0xC
503558:  PUSH.W          {R8}
50355C:  MOV             R8, R3
50355E:  MOV             R6, R2
503560:  MOV             R5, R1
503562:  MOV             R4, R0
503564:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
503568:  LDR             R0, =(_ZTV21CTaskSimpleCarJumpOut_ptr - 0x503574)
50356A:  MOVS            R1, #0
50356C:  STRB            R1, [R4,#8]
50356E:  CMP             R5, #0
503570:  ADD             R0, PC; _ZTV21CTaskSimpleCarJumpOut_ptr
503572:  STR             R1, [R4,#0xC]
503574:  STRD.W          R1, R6, [R4,#0x14]
503578:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarJumpOut ...
50357A:  STRB            R1, [R4,#0x1C]
50357C:  STRB            R1, [R4,#0x1D]
50357E:  MOV             R1, R4
503580:  STR.W           R8, [R4,#0x20]
503584:  ADD.W           R0, R0, #8
503588:  STR             R0, [R4]
50358A:  STR.W           R5, [R1,#0x10]!; CEntity **
50358E:  BEQ             loc_5035C0
503590:  MOV             R0, R5; this
503592:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
503596:  LDR             R0, [R4,#0x10]
503598:  VLDR            S0, [R0,#0x48]
50359C:  VLDR            S2, [R0,#0x4C]
5035A0:  VMUL.F32        S0, S0, S0
5035A4:  VLDR            S4, [R0,#0x50]
5035A8:  VMUL.F32        S2, S2, S2
5035AC:  VMUL.F32        S4, S4, S4
5035B0:  VADD.F32        S0, S0, S2
5035B4:  VADD.F32        S0, S0, S4
5035B8:  VSQRT.F32       S0, S0
5035BC:  VSTR            S0, [R4,#0x14]
5035C0:  MOV             R0, R4
5035C2:  POP.W           {R8}
5035C6:  POP             {R4-R7,PC}
