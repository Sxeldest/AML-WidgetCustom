; =========================================================
; Game Engine Function: _ZN10CFormation31FindNearestAvailableDestinationE7CVectorRf
; Address            : 0x548AE4 - 0x548B8C
; =========================================================

548AE4:  PUSH            {R4,R5,R7,LR}
548AE6:  ADD             R7, SP, #8
548AE8:  MOV             R12, R0
548AEA:  LDR             R0, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548AF0)
548AEC:  ADD             R0, PC; _ZN10CFormation14m_DestinationsE_ptr
548AEE:  LDR             R0, [R0]; CFormation::m_Destinations ...
548AF0:  LDR.W           LR, [R0]; CFormation::m_Destinations
548AF4:  CMP.W           LR, #1
548AF8:  BLT             loc_548B76
548AFA:  LDR             R4, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548B0A)
548AFC:  VMOV            S6, R2
548B00:  LDR             R2, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548B10)
548B02:  VMOV            S2, R12
548B06:  ADD             R4, PC; _ZN10CFormation14m_DestinationsE_ptr
548B08:  VMOV            S4, R1
548B0C:  ADD             R2, PC; _ZN10CFormation14m_DestinationsE_ptr
548B0E:  VLDR            S0, =1.0e7
548B12:  LDR.W           R12, [R4]; CFormation::m_Destinations ...
548B16:  MOV.W           R0, #0xFFFFFFFF
548B1A:  LDR             R2, [R2]; CFormation::m_Destinations ...
548B1C:  MOVS            R1, #0
548B1E:  MOVS            R4, #0
548B20:  ADDS            R5, R2, R4
548B22:  LDRB.W          R5, [R5,#0x124]
548B26:  CBNZ            R5, loc_548B6C
548B28:  ADD.W           R5, R12, R1
548B2C:  VLDR            S8, [R5,#4]
548B30:  VLDR            S10, [R5,#8]
548B34:  VSUB.F32        S8, S8, S2
548B38:  VLDR            S12, [R5,#0xC]
548B3C:  VSUB.F32        S10, S10, S4
548B40:  VSUB.F32        S12, S12, S6
548B44:  VMUL.F32        S8, S8, S8
548B48:  VMUL.F32        S10, S10, S10
548B4C:  VMUL.F32        S12, S12, S12
548B50:  VADD.F32        S8, S8, S10
548B54:  VADD.F32        S8, S8, S12
548B58:  VSQRT.F32       S8, S8
548B5C:  VCMPE.F32       S8, S0
548B60:  VMRS            APSR_nzcv, FPSCR
548B64:  ITT LT
548B66:  MOVLT           R0, R4
548B68:  VMOVLT.F32      S0, S8
548B6C:  ADDS            R4, #1
548B6E:  ADDS            R1, #0xC
548B70:  CMP             R4, LR
548B72:  BLT             loc_548B20
548B74:  B               loc_548B7E
548B76:  VLDR            S0, =1.0e7
548B7A:  MOV.W           R0, #0xFFFFFFFF
548B7E:  VLDR            S2, [R3]
548B82:  VADD.F32        S0, S0, S2
548B86:  VSTR            S0, [R3]
548B8A:  POP             {R4,R5,R7,PC}
