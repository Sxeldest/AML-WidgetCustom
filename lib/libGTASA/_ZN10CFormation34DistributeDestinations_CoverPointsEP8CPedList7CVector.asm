; =========================================================
; Game Engine Function: _ZN10CFormation34DistributeDestinations_CoverPointsEP8CPedList7CVector
; Address            : 0x548F70 - 0x5490D4
; =========================================================

548F70:  PUSH            {R4-R7,LR}
548F72:  ADD             R7, SP, #0xC
548F74:  PUSH.W          {R8-R10}
548F78:  VPUSH           {D8-D9}
548F7C:  MOV             R4, R1
548F7E:  MOV             R1, R0; void *
548F80:  LDR             R0, =(_ZN10CFormation6m_PedsE_ptr - 0x548F8A)
548F82:  MOV             R5, R2
548F84:  MOVS            R2, #0x7C ; '|'; size_t
548F86:  ADD             R0, PC; _ZN10CFormation6m_PedsE_ptr
548F88:  LDR             R6, [R0]; CFormation::m_Peds ...
548F8A:  MOV             R0, R6; void *
548F8C:  BLX             memcpy_0
548F90:  LDR             R0, [R6]; CFormation::m_Peds
548F92:  CMP             R0, #0
548F94:  BEQ.W           loc_5490CA
548F98:  LDR             R1, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548FA4)
548F9A:  MOV.W           R3, #0xFFFFFFFF
548F9E:  LDR             R2, =(_ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr - 0x548FA6)
548FA0:  ADD             R1, PC; _ZN10CFormation14m_DestinationsE_ptr
548FA2:  ADD             R2, PC; _ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr
548FA4:  LDR             R1, [R1]; CFormation::m_Destinations ...
548FA6:  LDR             R2, [R2]; CFormation::m_aFinalPedLinkToDestinations ...
548FA8:  LDR.W           R8, [R1]; CFormation::m_Destinations
548FAC:  STRD.W          R3, R3, [R2]; CFormation::m_aFinalPedLinkToDestinations
548FB0:  CMP.W           R8, #1
548FB4:  STRD.W          R3, R3, [R2,#(dword_9FFB70 - 0x9FFB68)]
548FB8:  STRD.W          R3, R3, [R2,#(dword_9FFB78 - 0x9FFB68)]
548FBC:  STRD.W          R3, R3, [R2,#(dword_9FFB80 - 0x9FFB68)]
548FC0:  BLT.W           loc_5490CA
548FC4:  LDR             R3, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548FD6)
548FC6:  VMOV.F32        S6, #1.0
548FCA:  VMOV            S0, R5
548FCE:  VLDR            S4, =0.4
548FD2:  ADD             R3, PC; _ZN10CFormation14m_DestinationsE_ptr
548FD4:  VMOV            S2, R4
548FD8:  MOV.W           R10, #0
548FDC:  LDR.W           LR, [R3]; CFormation::m_Destinations ...
548FE0:  LDR             R3, =(_ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr - 0x548FE6)
548FE2:  ADD             R3, PC; _ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr
548FE4:  LDR             R6, [R3]; CFormation::m_aFinalPedLinkToDestinations ...
548FE6:  LDR             R3, =(_ZN10CFormation6m_PedsE_ptr - 0x548FEC)
548FE8:  ADD             R3, PC; _ZN10CFormation6m_PedsE_ptr
548FEA:  LDR.W           R9, [R3]; CFormation::m_Peds ...
548FEE:  LDR             R3, =(_ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr - 0x548FF4)
548FF0:  ADD             R3, PC; _ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr
548FF2:  LDR.W           R12, [R3]; CFormation::m_aFinalPedLinkToDestinations ...
548FF6:  CMP             R0, #1
548FF8:  BLT             loc_5490C2
548FFA:  ADD.W           R3, R10, R10,LSL#1
548FFE:  MOV.W           R4, #0xFFFFFFFF
549002:  ADD.W           R3, LR, R3,LSL#2
549006:  VLDR            S8, [R3,#4]
54900A:  VLDR            S10, [R3,#8]
54900E:  MOVS            R3, #0
549010:  VSUB.F32        S14, S8, S2
549014:  VSUB.F32        S12, S10, S0
549018:  VMUL.F32        S14, S14, S14
54901C:  VMUL.F32        S12, S12, S12
549020:  VADD.F32        S12, S14, S12
549024:  VMOV            D7, D2
549028:  VSQRT.F32       S12, S12
54902C:  LDR.W           R1, [R6,R3,LSL#2]
549030:  CMP.W           R1, #0xFFFFFFFF
549034:  BGT             loc_5490B2
549036:  ADD.W           R1, R9, R3,LSL#2
54903A:  LDR             R1, [R1,#4]
54903C:  LDR             R5, [R1,#0x14]
54903E:  ADD.W           R2, R5, #0x30 ; '0'
549042:  CMP             R5, #0
549044:  IT EQ
549046:  ADDEQ           R2, R1, #4
549048:  VLDR            S1, [R2]
54904C:  VLDR            S5, [R2,#4]
549050:  VSUB.F32        S7, S1, S2
549054:  VSUB.F32        S3, S5, S0
549058:  VMUL.F32        S7, S7, S7
54905C:  VMUL.F32        S3, S3, S3
549060:  VADD.F32        S3, S7, S3
549064:  VSQRT.F32       S3, S3
549068:  VADD.F32        S7, S3, S6
54906C:  VCMPE.F32       S12, S7
549070:  VMRS            APSR_nzcv, FPSCR
549074:  BGT             loc_5490B2
549076:  VSUB.F32        S5, S5, S10
54907A:  VSUB.F32        S1, S1, S8
54907E:  VMUL.F32        S5, S5, S5
549082:  VMUL.F32        S1, S1, S1
549086:  VADD.F32        S1, S1, S5
54908A:  VSQRT.F32       S1, S1
54908E:  VADD.F32        S1, S12, S1
549092:  VSUB.F32        S1, S1, S3
549096:  VDIV.F32        S1, S1, S3
54909A:  VSUB.F32        S16, S6, S1
54909E:  VMAX.F32        D9, D8, D7
5490A2:  VCMPE.F32       S16, S14
5490A6:  VMRS            APSR_nzcv, FPSCR
5490AA:  VMOV            D7, D9
5490AE:  IT GT
5490B0:  MOVGT           R4, R3
5490B2:  ADDS            R3, #1
5490B4:  CMP             R0, R3
5490B6:  BNE             loc_54902C
5490B8:  CMP.W           R4, #0xFFFFFFFF
5490BC:  IT GT
5490BE:  STRGT.W         R10, [R12,R4,LSL#2]
5490C2:  ADD.W           R10, R10, #1
5490C6:  CMP             R10, R8
5490C8:  BLT             loc_548FF6
5490CA:  VPOP            {D8-D9}
5490CE:  POP.W           {R8-R10}
5490D2:  POP             {R4-R7,PC}
