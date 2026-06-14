; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRoute9SetTargetEPK4CPedRK7CVectorfffb
; Address            : 0x51F5D4 - 0x51F6A0
; =========================================================

51F5D4:  PUSH            {R4,R6,R7,LR}
51F5D6:  ADD             R7, SP, #8
51F5D8:  MOV             R4, R0
51F5DA:  LDR             R0, [R7,#arg_8]
51F5DC:  VLDR            S0, [R7,#arg_4]
51F5E0:  VMOV            S4, R3
51F5E4:  VLDR            S2, [R7,#arg_0]
51F5E8:  CBNZ            R0, loc_51F64C
51F5EA:  VLDR            S6, [R2]
51F5EE:  VLDR            S8, [R4,#0xC]
51F5F2:  VCMP.F32        S8, S6
51F5F6:  VMRS            APSR_nzcv, FPSCR
51F5FA:  BNE             loc_51F64C
51F5FC:  VLDR            S6, [R2,#4]
51F600:  VLDR            S8, [R4,#0x10]
51F604:  VCMP.F32        S8, S6
51F608:  VMRS            APSR_nzcv, FPSCR
51F60C:  BNE             loc_51F64C
51F60E:  VLDR            S6, [R2,#8]
51F612:  VLDR            S8, [R4,#0x14]
51F616:  VCMP.F32        S8, S6
51F61A:  VMRS            APSR_nzcv, FPSCR
51F61E:  BNE             loc_51F64C
51F620:  VLDR            S6, [R4,#0x1C]
51F624:  VCMP.F32        S6, S4
51F628:  VMRS            APSR_nzcv, FPSCR
51F62C:  BNE             loc_51F64C
51F62E:  VLDR            S6, [R4,#0x20]
51F632:  VCMP.F32        S6, S2
51F636:  VMRS            APSR_nzcv, FPSCR
51F63A:  BNE             loc_51F64C
51F63C:  VLDR            S6, [R4,#0x24]
51F640:  VCMP.F32        S6, S0
51F644:  VMRS            APSR_nzcv, FPSCR
51F648:  IT EQ
51F64A:  POPEQ           {R4,R6,R7,PC}
51F64C:  LDRB.W          R0, [R4,#0x4C]
51F650:  VLDR            D16, [R2]
51F654:  LDR             R2, [R2,#8]
51F656:  TST.W           R0, #8
51F65A:  STR             R2, [R4,#0x14]
51F65C:  VSTR            S4, [R4,#0x1C]
51F660:  VSTR            S2, [R4,#0x20]
51F664:  VSTR            S0, [R4,#0x24]
51F668:  VSTR            D16, [R4,#0xC]
51F66C:  BEQ             loc_51F686
51F66E:  AND.W           R0, R0, #0x9F
51F672:  VMOV.I32        Q8, #0
51F676:  ORR.W           R0, R0, #0x40 ; '@'
51F67A:  STRB.W          R0, [R4,#0x4C]
51F67E:  ADD.W           R0, R4, #0x50 ; 'P'
51F682:  VST1.32         {D16-D17}, [R0]
51F686:  MOV             R0, R4; this
51F688:  BLX             j__ZN27CTaskComplexFollowNodeRoute16ComputePathNodesEPK4CPed; CTaskComplexFollowNodeRoute::ComputePathNodes(CPed const*)
51F68C:  MOV             R0, R4; this
51F68E:  BLX             j__ZN27CTaskComplexFollowNodeRoute12ComputeRouteEv; CTaskComplexFollowNodeRoute::ComputeRoute(void)
51F692:  LDRB.W          R0, [R4,#0x4C]
51F696:  ORR.W           R0, R0, #4
51F69A:  STRB.W          R0, [R4,#0x4C]
51F69E:  POP             {R4,R6,R7,PC}
