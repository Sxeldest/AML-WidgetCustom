; =========================================================
; Game Engine Function: _ZNK34CTaskComplexGoToPointAndStandStill5CloneEv
; Address            : 0x527584 - 0x52766C
; =========================================================

527584:  PUSH            {R4-R7,LR}
527586:  ADD             R7, SP, #0xC
527588:  PUSH.W          {R8}
52758C:  VPUSH           {D8}
527590:  MOV             R4, R0
527592:  MOVS            R0, #word_28; this
527594:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
527598:  VLDR            S16, [R4,#0x20]
52759C:  LDR.W           R8, [R4,#0x1C]
5275A0:  LDRB.W          R6, [R4,#0x24]
5275A4:  LDR             R5, [R4,#0xC]
5275A6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5275AA:  LDR             R1, =(_ZTV34CTaskComplexGoToPointAndStandStill_ptr - 0x5275B4)
5275AC:  VLDR            S0, [R0,#0x10]
5275B0:  ADD             R1, PC; _ZTV34CTaskComplexGoToPointAndStandStill_ptr
5275B2:  STR             R5, [R0,#0xC]
5275B4:  LDRB.W          R2, [R0,#0x24]
5275B8:  LDR             R1, [R1]; `vtable for'CTaskComplexGoToPointAndStandStill ...
5275BA:  BIC.W           R2, R2, #0x1B
5275BE:  ADDS            R1, #8
5275C0:  STR             R1, [R0]
5275C2:  AND.W           R1, R6, #3
5275C6:  ORRS            R1, R2
5275C8:  STRB.W          R1, [R0,#0x24]
5275CC:  VLDR            S2, [R4,#0x10]
5275D0:  VCMP.F32        S0, S2
5275D4:  VMRS            APSR_nzcv, FPSCR
5275D8:  BNE             loc_52760C
5275DA:  VLDR            S0, [R4,#0x14]
5275DE:  VLDR            S2, [R0,#0x14]
5275E2:  VCMP.F32        S2, S0
5275E6:  VMRS            APSR_nzcv, FPSCR
5275EA:  BNE             loc_52760C
5275EC:  VLDR            S0, [R4,#0x18]
5275F0:  VLDR            S2, [R0,#0x18]
5275F4:  VCMP.F32        S2, S0
5275F8:  VMRS            APSR_nzcv, FPSCR
5275FC:  BNE             loc_52760C
5275FE:  VLDR            S0, [R0,#0x20]
527602:  VCMP.F32        S0, S16
527606:  VMRS            APSR_nzcv, FPSCR
52760A:  BEQ             loc_527630
52760C:  ADD.W           R2, R4, #0x10
527610:  ORR.W           R1, R1, #4
527614:  ADD.W           R3, R0, #0x10
527618:  VLDR            D16, [R2]
52761C:  LDR             R2, [R2,#8]
52761E:  STR             R2, [R3,#8]
527620:  VSTR            D16, [R3]
527624:  VSTR            S16, [R0,#0x20]
527628:  STR.W           R8, [R0,#0x1C]
52762C:  STRB.W          R1, [R0,#0x24]
527630:  LSLS            R2, R1, #0x1E
527632:  BPL             loc_527662
527634:  CMP             R5, #5
527636:  VLDR            S0, [R0,#0x1C]
52763A:  AND.W           R1, R1, #0xFE
52763E:  STRB.W          R1, [R0,#0x24]
527642:  ITE LT
527644:  VMOVLT.F32      S2, #0.5
527648:  VMOVGE.F32      S2, #1.0
52764C:  MOVS            R1, #0
52764E:  VCMPE.F32       S0, S2
527652:  VMRS            APSR_nzcv, FPSCR
527656:  IT GE
527658:  VMOVGE.F32      S2, S0
52765C:  STR             R1, [R0,#0x20]
52765E:  VSTR            S2, [R0,#0x1C]
527662:  VPOP            {D8}
527666:  POP.W           {R8}
52766A:  POP             {R4-R7,PC}
