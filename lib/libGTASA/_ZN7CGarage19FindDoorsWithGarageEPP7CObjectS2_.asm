; =========================================================
; Game Engine Function: _ZN7CGarage19FindDoorsWithGarageEPP7CObjectS2_
; Address            : 0x311674 - 0x3117B2
; =========================================================

311674:  PUSH            {R4-R7,LR}
311676:  ADD             R7, SP, #0xC
311678:  PUSH.W          {R8-R11}
31167C:  MOVS            R3, #0
31167E:  STR             R3, [R2]
311680:  STR             R3, [R1]
311682:  LDR             R3, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x311688)
311684:  ADD             R3, PC; _ZN6CPools14ms_pObjectPoolE_ptr
311686:  LDR             R3, [R3]; CPools::ms_pObjectPool ...
311688:  LDR.W           R12, [R3]; CPools::ms_pObjectPool
31168C:  LDR.W           R3, [R12,#8]
311690:  CMP             R3, #0
311692:  BEQ.W           loc_3117AC
311696:  VMOV.F32        S0, #0.5
31169A:  VLDR            S2, [R0,#0x20]
31169E:  VLDR            S4, [R0,#0x24]
3116A2:  MOV.W           LR, #0x1A4
3116A6:  VLDR            S10, [R0,#0xC]
3116AA:  MOVW            R9, #0x14B
3116AE:  VLDR            S12, [R0,#0x10]
3116B2:  MOV             R8, #0xFFFFFEC9
3116B6:  LDR             R6, =(_ZN8CGarages8aGaragesE_ptr - 0x3116C4)
3116B8:  VLDR            S6, [R0]
3116BC:  VLDR            S8, [R0,#4]
3116C0:  ADD             R6, PC; _ZN8CGarages8aGaragesE_ptr
3116C2:  VMUL.F32        S2, S2, S0
3116C6:  VLDR            S14, [R0,#0x14]
3116CA:  VMUL.F32        S0, S4, S0
3116CE:  VLDR            S1, [R0,#0x18]
3116D2:  LDR             R6, [R6]; CGarages::aGarages ...
3116D4:  SUBS            R0, R0, R6
3116D6:  MOV             R6, #0x684BDA13
3116DE:  LSRS            R0, R0, #3
3116E0:  VMUL.F32        S4, S12, S2
3116E4:  MULS            R0, R6
3116E6:  VMUL.F32        S2, S10, S2
3116EA:  VMUL.F32        S10, S1, S0
3116EE:  VMUL.F32        S12, S14, S0
3116F2:  SXTB.W          R10, R0
3116F6:  VADD.F32        S0, S8, S4
3116FA:  VLDR            S4, =100000.0
3116FE:  VADD.F32        S2, S6, S2
311702:  VMOV.F32        S6, S4
311706:  VADD.F32        S0, S0, S10
31170A:  VADD.F32        S2, S2, S12
31170E:  MUL.W           R0, R3, LR
311712:  LDR.W           R11, [R12,#4]
311716:  SUBS            R3, #1
311718:  SUB.W           R5, R0, #0x59 ; 'Y'
31171C:  LDRSB.W         R0, [R11,R3]
311720:  CMP             R0, #0
311722:  BLT             loc_311782
311724:  LDR.W           R0, [R12]
311728:  ADDS            R4, R0, R5
31172A:  CMP             R4, R9
31172C:  BEQ             loc_311782
31172E:  LDRSB           R0, [R0,R5]
311730:  CMP             R10, R0
311732:  BNE             loc_311782
311734:  LDR.W           R0, [R4,R8]
311738:  ADD.W           R6, R0, #0x30 ; '0'
31173C:  CMP             R0, #0
31173E:  IT EQ
311740:  SUBWEQ          R6, R4, #0x147
311744:  LDR             R0, [R1]
311746:  VLDR            S8, [R6]
31174A:  VLDR            S10, [R6,#4]
31174E:  CMP             R0, #0
311750:  VSUB.F32        S8, S2, S8
311754:  VSUB.F32        S10, S0, S10
311758:  VMUL.F32        S8, S8, S8
31175C:  VMUL.F32        S10, S10, S10
311760:  VADD.F32        S8, S8, S10
311764:  VSQRT.F32       S8, S8
311768:  BEQ             loc_311794
31176A:  VCMPE.F32       S8, S4
31176E:  VMRS            APSR_nzcv, FPSCR
311772:  BLT             loc_31178E
311774:  VCMPE.F32       S8, S6
311778:  VMRS            APSR_nzcv, FPSCR
31177C:  BLT             loc_31179C
31177E:  LDR             R0, [R2]
311780:  CBZ             R0, loc_31179C
311782:  SUBS            R3, #1
311784:  SUB.W           R5, R5, #0x1A4
311788:  ADDS            R0, R3, #1
31178A:  BNE             loc_31171C
31178C:  B               loc_3117AC
31178E:  VMOV.F32        S6, S4
311792:  STR             R0, [R2]
311794:  MOV             R5, R1
311796:  VMOV.F32        S4, S8
31179A:  B               loc_3117A2
31179C:  VMOV.F32        S6, S8
3117A0:  MOV             R5, R2
3117A2:  CMP             R3, #0
3117A4:  SUBW            R0, R4, #0x14B
3117A8:  STR             R0, [R5]
3117AA:  BNE             loc_31170E
3117AC:  POP.W           {R8-R11}
3117B0:  POP             {R4-R7,PC}
