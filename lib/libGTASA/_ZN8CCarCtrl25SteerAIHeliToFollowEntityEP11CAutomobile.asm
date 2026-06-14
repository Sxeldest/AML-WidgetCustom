; =========================================================
; Game Engine Function: _ZN8CCarCtrl25SteerAIHeliToFollowEntityEP11CAutomobile
; Address            : 0x2F6804 - 0x2F6A74
; =========================================================

2F6804:  PUSH            {R4-R7,LR}
2F6806:  ADD             R7, SP, #0xC
2F6808:  PUSH.W          {R8}
2F680C:  VPUSH           {D8}
2F6810:  SUB             SP, SP, #8; bool
2F6812:  MOV             R4, R0
2F6814:  LDR.W           R5, [R4,#0x420]
2F6818:  ADDS            R6, R5, #4
2F681A:  LDR             R0, [R5,#0x14]
2F681C:  MOV             R1, R6
2F681E:  CMP             R0, #0
2F6820:  IT NE
2F6822:  ADDNE.W         R1, R0, #0x30 ; '0'
2F6826:  LDRB.W          R0, [R4,#0x3DE]
2F682A:  VLDR            D16, [R1]
2F682E:  LDR             R1, [R1,#8]
2F6830:  CMP             R0, #0
2F6832:  STR.W           R1, [R4,#0x3F8]
2F6836:  VSTR            D16, [R4,#0x3F0]
2F683A:  BEQ             loc_2F689C
2F683C:  LDR             R1, [R5,#0x14]
2F683E:  CBNZ            R1, loc_2F6854
2F6840:  MOV             R0, R5; this
2F6842:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2F6846:  LDR             R1, [R5,#0x14]; CMatrix *
2F6848:  MOV             R0, R6; this
2F684A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2F684E:  LDRB.W          R0, [R4,#0x3DE]
2F6852:  LDR             R1, [R5,#0x14]
2F6854:  SXTB            R0, R0
2F6856:  VLDR            S6, =0.0
2F685A:  VMOV            S0, R0
2F685E:  VCVT.F32.S32    S0, S0
2F6862:  VLDR            S2, [R1,#0x10]
2F6866:  VLDR            S4, [R1,#0x14]
2F686A:  VLDR            S8, [R4,#0x3F4]
2F686E:  VLDR            S10, [R4,#0x3F8]
2F6872:  VMUL.F32        S2, S2, S0
2F6876:  VMUL.F32        S4, S4, S0
2F687A:  VMUL.F32        S6, S0, S6
2F687E:  VLDR            S0, [R4,#0x3F0]
2F6882:  VADD.F32        S0, S0, S2
2F6886:  VADD.F32        S2, S4, S8
2F688A:  VADD.F32        S4, S6, S10
2F688E:  VSTR            S0, [R4,#0x3F0]
2F6892:  VSTR            S2, [R4,#0x3F4]
2F6896:  VSTR            S4, [R4,#0x3F8]
2F689A:  B               loc_2F68A4
2F689C:  VLDR            S0, [R4,#0x3F0]
2F68A0:  VLDR            S2, [R4,#0x3F4]
2F68A4:  LDR             R0, [R4,#0x14]
2F68A6:  ADD.W           R8, R4, #4
2F68AA:  CMP             R0, #0
2F68AC:  MOV             R1, R8
2F68AE:  IT NE
2F68B0:  ADDNE.W         R1, R0, #0x30 ; '0'
2F68B4:  VLDR            S4, [R1]
2F68B8:  VLDR            S6, [R1,#4]
2F68BC:  VSUB.F32        S0, S0, S4
2F68C0:  VSUB.F32        S2, S2, S6
2F68C4:  VMOV            R0, S0; this
2F68C8:  VMOV            R1, S2; float
2F68CC:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F68D0:  MOV             R1, R0; CHeli *
2F68D2:  LDR.W           R0, [R4,#0x420]
2F68D6:  LDR             R2, [R4,#0x14]
2F68D8:  MOV             R5, R8
2F68DA:  ADDS            R6, R0, #4
2F68DC:  VLDR            S6, =50.0
2F68E0:  LDR             R3, [R0,#0x14]
2F68E2:  CMP             R2, #0
2F68E4:  IT NE
2F68E6:  ADDNE.W         R5, R2, #0x30 ; '0'
2F68EA:  MOV             R2, R6
2F68EC:  CMP             R3, #0
2F68EE:  VLDR            D16, [R5]
2F68F2:  IT NE
2F68F4:  ADDNE.W         R2, R3, #0x30 ; '0'
2F68F8:  VMOV.F32        S2, #6.0
2F68FC:  VLD1.32         {D17}, [R2]!
2F6900:  VMOV.F32        S16, #25.0
2F6904:  VSUB.F32        D16, D17, D16
2F6908:  VLDR            S4, [R2]
2F690C:  ADDW            R2, R4, #0x968
2F6910:  VMAX.F32        D2, D2, D1
2F6914:  VMUL.F32        D0, D16, D16
2F6918:  VMAX.F32        D1, D2, D8
2F691C:  VADD.F32        S0, S0, S1
2F6920:  VSQRT.F32       S0, S0
2F6924:  VCMPE.F32       S0, S6
2F6928:  VMRS            APSR_nzcv, FPSCR
2F692C:  IT GT
2F692E:  VMOVGT.F32      S4, S2
2F6932:  VLDR            S2, [R2]
2F6936:  ADDW            R2, R4, #0x9BC
2F693A:  VCMPE.F32       S2, #0.0
2F693E:  VMRS            APSR_nzcv, FPSCR
2F6942:  VSTR            S4, [R2]
2F6946:  BGE             loc_2F6956
2F6948:  VMOV            R2, S0; float
2F694C:  MOV             R0, R4; this
2F694E:  MOVS            R3, #1; float
2F6950:  BLX             j__ZN8CCarCtrl27FlyAIHeliInCertainDirectionEP5CHeliffb; CCarCtrl::FlyAIHeliInCertainDirection(CHeli *,float,float,bool)
2F6954:  B               loc_2F6976
2F6956:  VMOV            R1, S2
2F695A:  LDR             R0, [R0,#0x14]
2F695C:  CMP             R0, #0
2F695E:  IT NE
2F6960:  ADDNE.W         R6, R0, #0x30 ; '0'
2F6964:  LDRD.W          R2, R3, [R6]
2F6968:  LDR             R0, [R6,#8]
2F696A:  MOVS            R6, #0
2F696C:  STRD.W          R0, R6, [SP,#0x20+var_20]
2F6970:  MOV             R0, R4
2F6972:  BLX             j__ZN8CCarCtrl34FlyAIHeliToTarget_FixedOrientationEP5CHelif7CVectorb; CCarCtrl::FlyAIHeliToTarget_FixedOrientation(CHeli *,float,CVector,bool)
2F6976:  LDRH.W          R0, [R4,#0x3DF]
2F697A:  TST.W           R0, #0x20
2F697E:  BEQ             loc_2F6A1A
2F6980:  LDR.W           R1, [R4,#0x420]
2F6984:  LDR             R2, [R4,#0x14]
2F6986:  LDR             R3, [R1,#0x14]
2F6988:  CMP             R2, #0
2F698A:  IT NE
2F698C:  ADDNE.W         R8, R2, #0x30 ; '0'
2F6990:  ADD.W           R2, R3, #0x30 ; '0'
2F6994:  CMP             R3, #0
2F6996:  VLDR            D16, [R8]
2F699A:  IT EQ
2F699C:  ADDEQ           R2, R1, #4
2F699E:  VLDR            D17, [R2]
2F69A2:  VSUB.F32        D16, D16, D17
2F69A6:  VMUL.F32        D0, D16, D16
2F69AA:  VADD.F32        S0, S0, S1
2F69AE:  VSQRT.F32       S0, S0
2F69B2:  VCMPE.F32       S0, S16
2F69B6:  VMRS            APSR_nzcv, FPSCR
2F69BA:  BGE             loc_2F6A1A
2F69BC:  LDRB.W          R0, [R1,#0x3A]
2F69C0:  AND.W           R2, R0, #7
2F69C4:  CMP             R2, #3
2F69C6:  BEQ             loc_2F69EE
2F69C8:  CMP             R2, #2
2F69CA:  ITT EQ
2F69CC:  ANDEQ.W         R2, R0, #0xF0
2F69D0:  CMPEQ           R2, #0x10
2F69D2:  BNE             loc_2F6A0E
2F69D4:  MOVS            R2, #0x64 ; 'd'
2F69D6:  STRB.W          R2, [R1,#0x3D4]
2F69DA:  MOV.W           R2, #0x102
2F69DE:  STRH.W          R2, [R1,#0x3BD]
2F69E2:  MOVS            R2, #3
2F69E4:  BFI.W           R0, R2, #3, #0x1D
2F69E8:  STRB.W          R0, [R1,#0x3A]
2F69EC:  B               loc_2F6A0E
2F69EE:  LDR.W           R0, [R1,#0x440]
2F69F2:  ADDS            R0, #4; this
2F69F4:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
2F69F8:  MOV             R5, R0
2F69FA:  CBZ             R5, loc_2F6A0E
2F69FC:  LDR             R0, [R5]
2F69FE:  LDR             R1, [R0,#0x14]
2F6A00:  MOV             R0, R5
2F6A02:  BLX             R1
2F6A04:  CMP.W           R0, #0x390
2F6A08:  ITT EQ
2F6A0A:  MOVEQ           R0, #7
2F6A0C:  STREQ           R0, [R5,#0xC]
2F6A0E:  LDRH.W          R0, [R4,#0x3DF]
2F6A12:  BIC.W           R0, R0, #0x20 ; ' '
2F6A16:  STRH.W          R0, [R4,#0x3DF]
2F6A1A:  LSLS            R1, R0, #0x18
2F6A1C:  BPL             loc_2F6A44
2F6A1E:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2F6A2C)
2F6A20:  MOVW            R3, #0xC350
2F6A24:  LDR.W           R2, [R4,#0x434]
2F6A28:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2F6A2A:  ADD             R2, R3
2F6A2C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
2F6A2E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
2F6A30:  CMP             R1, R2
2F6A32:  BLS             loc_2F6A44
2F6A34:  MOVS            R1, #0x2A ; '*'
2F6A36:  STRB.W          R1, [R4,#0x3BE]
2F6A3A:  MOVW            R1, #0xFF7F
2F6A3E:  ANDS            R0, R1
2F6A40:  STRH.W          R0, [R4,#0x3DF]
2F6A44:  LDRB.W          R0, [R4,#0x3BE]
2F6A48:  CMP             R0, #0x29 ; ')'
2F6A4A:  BNE             loc_2F6A68
2F6A4C:  ADDW            R0, R4, #0x4CC
2F6A50:  VLDR            S0, =300.0
2F6A54:  VLDR            S2, [R0]
2F6A58:  VCMPE.F32       S2, S0
2F6A5C:  VMRS            APSR_nzcv, FPSCR
2F6A60:  ITT LT
2F6A62:  MOVLT           R0, #0x2A ; '*'
2F6A64:  STRBLT.W        R0, [R4,#0x3BE]
2F6A68:  ADD             SP, SP, #8
2F6A6A:  VPOP            {D8}
2F6A6E:  POP.W           {R8}
2F6A72:  POP             {R4-R7,PC}
