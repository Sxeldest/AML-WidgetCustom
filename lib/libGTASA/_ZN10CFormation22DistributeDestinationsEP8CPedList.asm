; =========================================================
; Game Engine Function: _ZN10CFormation22DistributeDestinationsEP8CPedList
; Address            : 0x548B9C - 0x548F26
; =========================================================

548B9C:  PUSH            {R4-R7,LR}
548B9E:  ADD             R7, SP, #0xC
548BA0:  PUSH.W          {R8-R11}
548BA4:  SUB             SP, SP, #4
548BA6:  VPUSH           {D8-D12}
548BAA:  SUB             SP, SP, #0x160
548BAC:  MOV             R1, R0; void *
548BAE:  LDR             R0, =(__stack_chk_guard_ptr - 0x548BBA)
548BB0:  LDR             R2, =(_ZN10CFormation6m_PedsE_ptr - 0x548BBE)
548BB2:  VMOV.I32        Q8, #0
548BB6:  ADD             R0, PC; __stack_chk_guard_ptr
548BB8:  ADD             R5, SP, #0x1A8+var_188
548BBA:  ADD             R2, PC; _ZN10CFormation6m_PedsE_ptr
548BBC:  LDR             R0, [R0]; __stack_chk_guard
548BBE:  LDR             R4, [R2]; CFormation::m_Peds ...
548BC0:  MOVS            R2, #0x7C ; '|'; size_t
548BC2:  LDR             R0, [R0]
548BC4:  STR             R0, [SP,#0x1A8+var_4C]
548BC6:  ADD.W           R0, R5, #0x124
548BCA:  VST1.32         {D16-D17}, [R0]
548BCE:  MOVS            R0, #0
548BD0:  STRD.W          R0, R0, [SP,#0x1A8+var_54]
548BD4:  STR             R0, [SP,#0x1A8+var_188]
548BD6:  MOV             R0, R4; void *
548BD8:  BLX             memcpy_0
548BDC:  LDR.W           LR, [R4]; CFormation::m_Peds
548BE0:  MOV             R12, R5
548BE2:  CMP.W           LR, #0
548BE6:  BEQ.W           loc_548F04
548BEA:  LDR             R0, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548BFC)
548BEC:  VMOV.I32        D16, #0
548BF0:  VLDR            S2, =0.0
548BF4:  VMOV.I32        D17, #0
548BF8:  ADD             R0, PC; _ZN10CFormation14m_DestinationsE_ptr
548BFA:  VMOV.F32        S4, S2
548BFE:  LDR             R0, [R0]; CFormation::m_Destinations ...
548C00:  LDR             R6, [R0]; CFormation::m_Destinations
548C02:  CMP             R6, #1
548C04:  BLT             loc_548C30
548C06:  LDR             R0, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548C16)
548C08:  VMOV.I32        D17, #0
548C0C:  VLDR            S4, =0.0
548C10:  MOVS            R1, #0
548C12:  ADD             R0, PC; _ZN10CFormation14m_DestinationsE_ptr
548C14:  LDR             R0, [R0]; CFormation::m_Destinations ...
548C16:  ADDS            R0, #4
548C18:  VLDR            S0, [R0]
548C1C:  ADDS            R1, #1
548C1E:  VLDR            D18, [R0,#4]
548C22:  ADDS            R0, #0xC
548C24:  VADD.F32        S4, S4, S0
548C28:  CMP             R1, R6
548C2A:  VADD.F32        D17, D17, D18
548C2E:  BLT             loc_548C18
548C30:  VMOV            S6, R6
548C34:  CMP.W           LR, #1
548C38:  VMOV.F32        S0, #1.0
548C3C:  VCVT.F32.S32    S8, S6
548C40:  STR.W           LR, [SP,#0x1A8+var_18C]
548C44:  VMOV.F32        S10, S2
548C48:  VDIV.F32        S6, S0, S8
548C4C:  BLT             loc_548CC0
548C4E:  LDR             R2, =(_ZN10CFormation6m_PedsE_ptr - 0x548C60)
548C50:  VMOV.I32        D16, #0
548C54:  ADD.W           R1, R12, #4
548C58:  VLDR            S10, =0.0
548C5C:  ADD             R2, PC; _ZN10CFormation6m_PedsE_ptr
548C5E:  MOV.W           LR, #0
548C62:  MOVS            R3, #0
548C64:  LDR.W           R12, [R2]; CFormation::m_Peds ...
548C68:  ADD.W           R5, R12, R3,LSL#2
548C6C:  LDR             R2, [R5,#4]
548C6E:  LDR             R0, [R2,#0x14]
548C70:  ADD.W           R5, R0, #0x30 ; '0'
548C74:  CMP             R0, #0
548C76:  IT EQ
548C78:  ADDEQ           R5, R2, #4
548C7A:  CMP.W           LR, #0x17
548C7E:  BGT             loc_548C9A
548C80:  ADD.W           R0, LR, LR,LSL#1
548C84:  ADD             R4, SP, #0x1A8+var_188
548C86:  ADD.W           LR, LR, #1
548C8A:  LDRD.W          R8, R2, [R5]
548C8E:  ADD.W           R0, R4, R0,LSL#2
548C92:  LDR             R5, [R5,#8]
548C94:  STRD.W          R8, R2, [R0,#4]
548C98:  STR             R5, [R0,#0xC]
548C9A:  VLDR            S12, [R1]
548C9E:  ADDS            R3, #1
548CA0:  VLDR            D18, [R1,#4]
548CA4:  ADDS            R1, #0xC
548CA6:  VADD.F32        S10, S10, S12
548CAA:  LDR             R0, [SP,#0x1A8+var_18C]
548CAC:  VADD.F32        D16, D16, D18
548CB0:  CMP             R3, R0
548CB2:  BLT             loc_548C68
548CB4:  STR.W           LR, [SP,#0x1A8+var_188]
548CB8:  ADD.W           R12, SP, #0x1A8+var_188
548CBC:  LDR.W           LR, [SP,#0x1A8+var_18C]
548CC0:  VMOV            S12, LR
548CC4:  CMP             R6, #1
548CC6:  VMUL.F32        S4, S4, S6
548CCA:  VCVT.F32.S32    S12, S12
548CCE:  VMUL.F32        D3, D17, D3[0]
548CD2:  BLT             loc_548D12
548CD4:  LDR             R0, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548CE0)
548CD6:  MOVS            R1, #0
548CD8:  VLDR            S2, =0.0
548CDC:  ADD             R0, PC; _ZN10CFormation14m_DestinationsE_ptr
548CDE:  LDR             R0, [R0]; CFormation::m_Destinations ...
548CE0:  ADDS            R0, #4
548CE2:  VLDR            S14, [R0]
548CE6:  ADDS            R1, #1
548CE8:  VLDR            D17, [R0,#4]
548CEC:  ADDS            R0, #0xC
548CEE:  VSUB.F32        S14, S14, S4
548CF2:  CMP             R1, R6
548CF4:  VSUB.F32        D17, D17, D3
548CF8:  VMUL.F32        D8, D17, D17
548CFC:  VMUL.F32        S14, S14, S14
548D00:  VADD.F32        S14, S14, S16
548D04:  VADD.F32        S14, S14, S17
548D08:  VSQRT.F32       S14, S14
548D0C:  VADD.F32        S2, S2, S14
548D10:  BLT             loc_548CE2
548D12:  CMP.W           LR, #1
548D16:  BLT.W           loc_548F04
548D1A:  VDIV.F32        S14, S0, S12
548D1E:  ADD.W           R0, R12, #4
548D22:  MOVS            R1, #0
548D24:  VDIV.F32        S2, S2, S8
548D28:  VMUL.F32        S10, S10, S14
548D2C:  VLDR            S8, =0.0
548D30:  VMUL.F32        D7, D16, D7[0]
548D34:  VLDR            S5, [R0]
548D38:  ADDS            R1, #1
548D3A:  VLDR            D16, [R0,#4]
548D3E:  ADDS            R0, #0xC
548D40:  VSUB.F32        S5, S5, S10
548D44:  CMP             R1, LR
548D46:  VSUB.F32        D16, D16, D7
548D4A:  VMUL.F32        D8, D16, D16
548D4E:  VMUL.F32        S5, S5, S5
548D52:  VADD.F32        S5, S5, S16
548D56:  VADD.F32        S5, S5, S17
548D5A:  VSQRT.F32       S5, S5
548D5E:  VADD.F32        S8, S8, S5
548D62:  BLT             loc_548D34
548D64:  CMP.W           LR, #1
548D68:  BLT.W           loc_548F04
548D6C:  VDIV.F32        S8, S8, S12
548D70:  ADD.W           R0, R12, #8
548D74:  MOVS            R1, #0
548D76:  VMAX.F32        D4, D4, D0
548D7A:  VMAX.F32        D0, D1, D0
548D7E:  VDIV.F32        S0, S0, S8
548D82:  VLDR            S2, [R0,#-4]
548D86:  ADDS            R1, #1
548D88:  VLDR            S8, [R0]
548D8C:  CMP             R1, LR
548D8E:  VLDR            S12, [R0,#4]
548D92:  VSUB.F32        S2, S2, S10
548D96:  VSUB.F32        S8, S8, S14
548D9A:  VSUB.F32        S12, S12, S15
548D9E:  VMUL.F32        S2, S0, S2
548DA2:  VMUL.F32        S8, S0, S8
548DA6:  VMUL.F32        S12, S0, S12
548DAA:  VADD.F32        S2, S4, S2
548DAE:  VADD.F32        S8, S6, S8
548DB2:  VADD.F32        S12, S7, S12
548DB6:  VSTR            S2, [R0,#-4]
548DBA:  VSTR            S8, [R0]
548DBE:  VSTR            S12, [R0,#4]
548DC2:  ADD.W           R0, R0, #0xC
548DC6:  BLT             loc_548D82
548DC8:  CMP.W           LR, #1
548DCC:  BLT.W           loc_548F04
548DD0:  MOV.W           R0, LR,LSL#2
548DD4:  LDR             R1, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548DE2)
548DD6:  STR             R0, [SP,#0x1A8+var_19C]
548DD8:  VMOV.I32        Q4, #0
548DDC:  LDR             R0, =(_ZN10CFormation24m_aPedLinkToDestinationsE_ptr - 0x548DEC)
548DDE:  ADD             R1, PC; _ZN10CFormation14m_DestinationsE_ptr
548DE0:  VLDR            S0, =1000000.0
548DE4:  MOV.W           R8, #1
548DE8:  ADD             R0, PC; _ZN10CFormation24m_aPedLinkToDestinationsE_ptr
548DEA:  VLDR            S20, =0.0
548DEE:  VLDR            S22, =1.0e7
548DF2:  LDR             R0, [R0]; CFormation::m_aPedLinkToDestinations ...
548DF4:  STR             R0, [SP,#0x1A8+var_194]
548DF6:  LDR             R0, [R1]; CFormation::m_Destinations ...
548DF8:  STR             R0, [SP,#0x1A8+var_198]
548DFA:  LDR             R0, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548E02)
548DFC:  LDR             R1, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548E04)
548DFE:  ADD             R0, PC; _ZN10CFormation14m_DestinationsE_ptr
548E00:  ADD             R1, PC; _ZN10CFormation14m_DestinationsE_ptr
548E02:  LDR.W           R11, [R0]; CFormation::m_Destinations ...
548E06:  LDR             R0, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548E0E)
548E08:  LDR             R5, [R1]; CFormation::m_Destinations ...
548E0A:  ADD             R0, PC; _ZN10CFormation14m_DestinationsE_ptr
548E0C:  LDR             R1, =(_ZN10CFormation24m_aPedLinkToDestinationsE_ptr - 0x548E16)
548E0E:  LDR.W           R9, [R0]; CFormation::m_Destinations ...
548E12:  ADD             R1, PC; _ZN10CFormation24m_aPedLinkToDestinationsE_ptr
548E14:  LDR             R0, =(_ZN10CFormation24m_aPedLinkToDestinationsE_ptr - 0x548E1A)
548E16:  ADD             R0, PC; _ZN10CFormation24m_aPedLinkToDestinationsE_ptr
548E18:  LDR.W           R10, [R0]; CFormation::m_aPedLinkToDestinations ...
548E1C:  LDR             R0, =(_ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr - 0x548E22)
548E1E:  ADD             R0, PC; _ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr
548E20:  LDR             R0, [R0]; CFormation::m_aFinalPedLinkToDestinations ...
548E22:  STR             R0, [SP,#0x1A8+var_1A0]
548E24:  LDR             R0, [R1]; CFormation::m_aPedLinkToDestinations ...
548E26:  STR             R0, [SP,#0x1A8+var_1A4]
548E28:  MOVS            R0, #0
548E2A:  STR             R0, [SP,#0x1A8+var_190]
548E2C:  MOV.W           R1, #0xFFFFFFFF
548E30:  LDR             R0, [SP,#0x1A8+var_194]
548E32:  VMOV.F32        S24, S20
548E36:  STRD.W          R1, R1, [R0]
548E3A:  STRD.W          R1, R1, [R0,#8]
548E3E:  STRD.W          R1, R1, [R0,#0x10]
548E42:  STR             R1, [R0,#0x18]
548E44:  MOVS            R0, #0
548E46:  LDR             R1, [SP,#0x1A8+var_198]
548E48:  STRD.W          R0, R0, [R1,#0x134]
548E4C:  ADD.W           R0, R1, #0x124
548E50:  VST1.32         {D8-D9}, [R0]
548E54:  MOVS            R0, #0
548E56:  CMP             R6, #1
548E58:  BLT             loc_548EC0
548E5A:  VMOV.F32        S4, S22
548E5E:  ADD.W           R1, R0, R0,LSL#1
548E62:  ADD.W           R2, R11, #4
548E66:  ADD.W           R3, R12, R1,LSL#2
548E6A:  MOV.W           R1, #0xFFFFFFFF
548E6E:  VLDR            S2, [R3,#4]
548E72:  VLDR            D16, [R3,#8]
548E76:  MOVS            R3, #0
548E78:  ADD.W           R4, R9, R3
548E7C:  LDRB.W          R4, [R4,#0x124]
548E80:  CBNZ            R4, loc_548EB6
548E82:  VLDR            S6, [R2]
548E86:  VLDR            D17, [R2,#4]
548E8A:  VSUB.F32        S6, S6, S2
548E8E:  VSUB.F32        D17, D17, D16
548E92:  VMUL.F32        D4, D17, D17
548E96:  VMUL.F32        S6, S6, S6
548E9A:  VADD.F32        S6, S6, S8
548E9E:  VADD.F32        S6, S6, S9
548EA2:  VSQRT.F32       S6, S6
548EA6:  VCMPE.F32       S6, S4
548EAA:  VMRS            APSR_nzcv, FPSCR
548EAE:  ITT LT
548EB0:  MOVLT           R1, R3
548EB2:  VMOVLT.F32      S4, S6
548EB6:  ADDS            R3, #1
548EB8:  ADDS            R2, #0xC
548EBA:  CMP             R6, R3
548EBC:  BNE             loc_548E78
548EBE:  B               loc_548EC8
548EC0:  MOV.W           R1, #0xFFFFFFFF
548EC4:  VMOV.F32        S4, S22
548EC8:  VADD.F32        S24, S24, S4
548ECC:  STR.W           R1, [R10,R0,LSL#2]
548ED0:  ADD             R1, R5
548ED2:  ADDS            R0, #1
548ED4:  CMP             R0, LR
548ED6:  STRB.W          R8, [R1,#0x124]
548EDA:  BNE             loc_548E56
548EDC:  VCMPE.F32       S24, S0
548EE0:  VMRS            APSR_nzcv, FPSCR
548EE4:  BGE             loc_548EFC
548EE6:  LDRD.W          R1, R0, [SP,#0x1A8+var_1A4]; void *
548EEA:  LDR             R2, [SP,#0x1A8+var_19C]; size_t
548EEC:  BLX             memcpy_0
548EF0:  VMOV.F32        S0, S24
548EF4:  LDR.W           LR, [SP,#0x1A8+var_18C]
548EF8:  ADD.W           R12, SP, #0x1A8+var_188
548EFC:  LDR             R0, [SP,#0x1A8+var_190]
548EFE:  ADDS            R0, #1
548F00:  CMP             R0, LR
548F02:  BLT             loc_548E2A
548F04:  LDR             R0, =(__stack_chk_guard_ptr - 0x548F0C)
548F06:  LDR             R1, [SP,#0x1A8+var_4C]
548F08:  ADD             R0, PC; __stack_chk_guard_ptr
548F0A:  LDR             R0, [R0]; __stack_chk_guard
548F0C:  LDR             R0, [R0]
548F0E:  SUBS            R0, R0, R1
548F10:  ITTTT EQ
548F12:  ADDEQ           SP, SP, #0x160
548F14:  VPOPEQ          {D8-D12}
548F18:  ADDEQ           SP, SP, #4
548F1A:  POPEQ.W         {R8-R11}
548F1E:  IT EQ
548F20:  POPEQ           {R4-R7,PC}
548F22:  BLX             __stack_chk_fail
