; =========================================================
; Game Engine Function: _ZN7CWidget16GetNumTapsInTimeEf
; Address            : 0x2B3968 - 0x2B3B78
; =========================================================

2B3968:  MOV             R2, R0
2B396A:  VLDR            S0, [R2,#0x50]
2B396E:  VCMPE.F32       S0, #0.0
2B3972:  VMRS            APSR_nzcv, FPSCR
2B3976:  ITT LE
2B3978:  MOVLE           R0, #0
2B397A:  BXLE            LR
2B397C:  LDR             R0, =(_ZN7CWidget7m_fTimeE_ptr - 0x2B3986)
2B397E:  VCVT.F64.F32    D17, S0
2B3982:  ADD             R0, PC; _ZN7CWidget7m_fTimeE_ptr
2B3984:  LDR             R0, [R0]; CWidget::m_fTime ...
2B3986:  VLDR            D16, [R0]
2B398A:  MOVS            R0, #0
2B398C:  VSUB.F64        D18, D16, D17
2B3990:  VCMPE.F64       D18, #0.0
2B3994:  VMRS            APSR_nzcv, FPSCR
2B3998:  BLE.W           locret_2B3B76
2B399C:  VMOV            S0, R1
2B39A0:  VCVT.F64.F32    D17, S0
2B39A4:  VCMPE.F64       D18, D17
2B39A8:  VMRS            APSR_nzcv, FPSCR
2B39AC:  BGE.W           locret_2B3B76
2B39B0:  VLDR            S0, [R2,#0x54]
2B39B4:  VCMPE.F32       S0, #0.0
2B39B8:  VMRS            APSR_nzcv, FPSCR
2B39BC:  BLE.W           loc_2B3B74
2B39C0:  VCVT.F64.F32    D18, S0
2B39C4:  MOVS            R0, #1
2B39C6:  VSUB.F64        D18, D16, D18
2B39CA:  VCMPE.F64       D18, #0.0
2B39CE:  VMRS            APSR_nzcv, FPSCR
2B39D2:  BLE.W           locret_2B3B76
2B39D6:  VCMPE.F64       D18, D17
2B39DA:  VMRS            APSR_nzcv, FPSCR
2B39DE:  BGE.W           locret_2B3B76
2B39E2:  VLDR            S0, [R2,#0x58]
2B39E6:  VCMPE.F32       S0, #0.0
2B39EA:  VMRS            APSR_nzcv, FPSCR
2B39EE:  ITT LE
2B39F0:  MOVLE           R0, #2
2B39F2:  BXLE            LR
2B39F4:  VCVT.F64.F32    D18, S0
2B39F8:  MOVS            R0, #2
2B39FA:  VSUB.F64        D18, D16, D18
2B39FE:  VCMPE.F64       D18, #0.0
2B3A02:  VMRS            APSR_nzcv, FPSCR
2B3A06:  BLE.W           locret_2B3B76
2B3A0A:  VCMPE.F64       D18, D17
2B3A0E:  VMRS            APSR_nzcv, FPSCR
2B3A12:  BGE.W           locret_2B3B76
2B3A16:  VLDR            S0, [R2,#0x5C]
2B3A1A:  VCMPE.F32       S0, #0.0
2B3A1E:  VMRS            APSR_nzcv, FPSCR
2B3A22:  ITT LE
2B3A24:  MOVLE           R0, #3
2B3A26:  BXLE            LR
2B3A28:  VCVT.F64.F32    D18, S0
2B3A2C:  MOVS            R0, #3
2B3A2E:  VSUB.F64        D18, D16, D18
2B3A32:  VCMPE.F64       D18, #0.0
2B3A36:  VMRS            APSR_nzcv, FPSCR
2B3A3A:  BLE.W           locret_2B3B76
2B3A3E:  VCMPE.F64       D18, D17
2B3A42:  VMRS            APSR_nzcv, FPSCR
2B3A46:  BGE.W           locret_2B3B76
2B3A4A:  VLDR            S0, [R2,#0x60]
2B3A4E:  VCMPE.F32       S0, #0.0
2B3A52:  VMRS            APSR_nzcv, FPSCR
2B3A56:  ITT LE
2B3A58:  MOVLE           R0, #4
2B3A5A:  BXLE            LR
2B3A5C:  VCVT.F64.F32    D18, S0
2B3A60:  MOVS            R0, #4
2B3A62:  VSUB.F64        D18, D16, D18
2B3A66:  VCMPE.F64       D18, #0.0
2B3A6A:  VMRS            APSR_nzcv, FPSCR
2B3A6E:  BLE.W           locret_2B3B76
2B3A72:  VCMPE.F64       D18, D17
2B3A76:  VMRS            APSR_nzcv, FPSCR
2B3A7A:  BGE             locret_2B3B76
2B3A7C:  VLDR            S0, [R2,#0x64]
2B3A80:  VCMPE.F32       S0, #0.0
2B3A84:  VMRS            APSR_nzcv, FPSCR
2B3A88:  ITT LE
2B3A8A:  MOVLE           R0, #5
2B3A8C:  BXLE            LR
2B3A8E:  VCVT.F64.F32    D18, S0
2B3A92:  MOVS            R0, #5
2B3A94:  VSUB.F64        D18, D16, D18
2B3A98:  VCMPE.F64       D18, #0.0
2B3A9C:  VMRS            APSR_nzcv, FPSCR
2B3AA0:  BLE             locret_2B3B76
2B3AA2:  VCMPE.F64       D18, D17
2B3AA6:  VMRS            APSR_nzcv, FPSCR
2B3AAA:  BGE             locret_2B3B76
2B3AAC:  VLDR            S0, [R2,#0x68]
2B3AB0:  VCMPE.F32       S0, #0.0
2B3AB4:  VMRS            APSR_nzcv, FPSCR
2B3AB8:  ITT LE
2B3ABA:  MOVLE           R0, #6
2B3ABC:  BXLE            LR
2B3ABE:  VCVT.F64.F32    D18, S0
2B3AC2:  MOVS            R0, #6
2B3AC4:  VSUB.F64        D18, D16, D18
2B3AC8:  VCMPE.F64       D18, #0.0
2B3ACC:  VMRS            APSR_nzcv, FPSCR
2B3AD0:  BLE             locret_2B3B76
2B3AD2:  VCMPE.F64       D18, D17
2B3AD6:  VMRS            APSR_nzcv, FPSCR
2B3ADA:  BGE             locret_2B3B76
2B3ADC:  VLDR            S0, [R2,#0x6C]
2B3AE0:  VCMPE.F32       S0, #0.0
2B3AE4:  VMRS            APSR_nzcv, FPSCR
2B3AE8:  ITT LE
2B3AEA:  MOVLE           R0, #7
2B3AEC:  BXLE            LR
2B3AEE:  VCVT.F64.F32    D18, S0
2B3AF2:  MOVS            R0, #7
2B3AF4:  VSUB.F64        D18, D16, D18
2B3AF8:  VCMPE.F64       D18, #0.0
2B3AFC:  VMRS            APSR_nzcv, FPSCR
2B3B00:  BLE             locret_2B3B76
2B3B02:  VCMPE.F64       D18, D17
2B3B06:  VMRS            APSR_nzcv, FPSCR
2B3B0A:  BGE             locret_2B3B76
2B3B0C:  VLDR            S0, [R2,#0x70]
2B3B10:  VCMPE.F32       S0, #0.0
2B3B14:  VMRS            APSR_nzcv, FPSCR
2B3B18:  ITT LE
2B3B1A:  MOVLE           R0, #8
2B3B1C:  BXLE            LR
2B3B1E:  VCVT.F64.F32    D18, S0
2B3B22:  MOVS            R0, #8
2B3B24:  VSUB.F64        D18, D16, D18
2B3B28:  VCMPE.F64       D18, #0.0
2B3B2C:  VMRS            APSR_nzcv, FPSCR
2B3B30:  BLE             locret_2B3B76
2B3B32:  VCMPE.F64       D18, D17
2B3B36:  VMRS            APSR_nzcv, FPSCR
2B3B3A:  BGE             locret_2B3B76
2B3B3C:  VLDR            S0, [R2,#0x74]
2B3B40:  MOVS            R0, #9
2B3B42:  VCMPE.F32       S0, #0.0
2B3B46:  VMRS            APSR_nzcv, FPSCR
2B3B4A:  IT LE
2B3B4C:  BXLE            LR
2B3B4E:  VCVT.F64.F32    D18, S0
2B3B52:  MOVS            R1, #9
2B3B54:  VSUB.F64        D16, D16, D18
2B3B58:  VCMPE.F64       D16, D17
2B3B5C:  VMRS            APSR_nzcv, FPSCR
2B3B60:  VCMPE.F64       D16, #0.0
2B3B64:  IT LT
2B3B66:  MOVLT           R1, #0xA
2B3B68:  VMRS            APSR_nzcv, FPSCR
2B3B6C:  IT LE
2B3B6E:  MOVLE           R1, R0
2B3B70:  MOV             R0, R1
2B3B72:  BX              LR
2B3B74:  MOVS            R0, #1
2B3B76:  BX              LR
