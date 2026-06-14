; =========================================================
; Game Engine Function: _ZN10CPointList25MergeListsRemovingDoublesEPS_S0_
; Address            : 0x5486D0 - 0x548772
; =========================================================

5486D0:  PUSH            {R4,R5,R7,LR}
5486D2:  ADD             R7, SP, #8
5486D4:  LDR.W           LR, [R2]
5486D8:  CMP.W           LR, #1
5486DC:  BLT             locret_548770
5486DE:  VMOV.F32        S0, #1.5
5486E2:  ADD.W           R12, R1, #8
5486E6:  MOVS            R3, #0
5486E8:  LDR             R0, [R1]
5486EA:  CMP             R0, #0x17
5486EC:  IT GT
5486EE:  POPGT           {R4,R5,R7,PC}
5486F0:  ADD.W           R4, R3, R3,LSL#1
5486F4:  CMP             R0, #1
5486F6:  ADD.W           R4, R2, R4,LSL#2
5486FA:  VLDR            S2, [R4,#4]
5486FE:  VLDR            S4, [R4,#8]
548702:  VLDR            S6, [R4,#0xC]
548706:  BLT             loc_54874E
548708:  MOVS            R4, #0
54870A:  MOV             R5, R12
54870C:  VLDR            S8, [R5,#-4]
548710:  VLDR            S10, [R5]
548714:  VSUB.F32        S8, S8, S2
548718:  VLDR            S12, [R5,#4]
54871C:  VSUB.F32        S10, S10, S4
548720:  VSUB.F32        S12, S12, S6
548724:  VMUL.F32        S8, S8, S8
548728:  VMUL.F32        S10, S10, S10
54872C:  VMUL.F32        S12, S12, S12
548730:  VADD.F32        S8, S8, S10
548734:  VADD.F32        S8, S8, S12
548738:  VSQRT.F32       S8, S8
54873C:  VCMPE.F32       S8, S0
548740:  VMRS            APSR_nzcv, FPSCR
548744:  BLT             loc_54876A
548746:  ADDS            R4, #1
548748:  ADDS            R5, #0xC
54874A:  CMP             R4, R0
54874C:  BLT             loc_54870C
54874E:  ADDS            R5, R0, #1
548750:  ADD.W           R0, R0, R0,LSL#1
548754:  STR             R5, [R1]
548756:  ADD.W           R0, R1, R0,LSL#2
54875A:  VSTR            S2, [R0,#4]
54875E:  VSTR            S4, [R0,#8]
548762:  VSTR            S6, [R0,#0xC]
548766:  LDR.W           LR, [R2]
54876A:  ADDS            R3, #1
54876C:  CMP             R3, LR
54876E:  BLT             loc_5486E8
548770:  POP             {R4,R5,R7,PC}
