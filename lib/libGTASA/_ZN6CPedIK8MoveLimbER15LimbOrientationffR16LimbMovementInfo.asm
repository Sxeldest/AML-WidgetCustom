; =========================================================
; Game Engine Function: _ZN6CPedIK8MoveLimbER15LimbOrientationffR16LimbMovementInfo
; Address            : 0x4B8EF0 - 0x4B8FC8
; =========================================================

4B8EF0:  VMOV            S2, R2
4B8EF4:  VLDR            S0, [R1]
4B8EF8:  LDR             R2, [SP,#arg_0]
4B8EFA:  VSUB.F32        S4, S0, S2
4B8EFE:  VABS.F32        S6, S4
4B8F02:  VLDR            S4, [R2,#8]
4B8F06:  VCMPE.F32       S6, S4
4B8F0A:  VMRS            APSR_nzcv, FPSCR
4B8F0E:  BGE             loc_4B8F14
4B8F10:  MOVS            R0, #2
4B8F12:  B               loc_4B8F34
4B8F14:  VCMPE.F32       S0, S2
4B8F18:  VMRS            APSR_nzcv, FPSCR
4B8F1C:  BGE             loc_4B8F24
4B8F1E:  VADD.F32        S2, S0, S4
4B8F22:  B               loc_4B8F32
4B8F24:  VCMPE.F32       S0, S2
4B8F28:  VMRS            APSR_nzcv, FPSCR
4B8F2C:  BLE             loc_4B8FBA
4B8F2E:  VSUB.F32        S2, S0, S4
4B8F32:  MOVS            R0, #1
4B8F34:  VSTR            S2, [R1]
4B8F38:  VLDR            S4, [R2]
4B8F3C:  VMOV            S0, R3
4B8F40:  VCMPE.F32       S2, S4
4B8F44:  VMRS            APSR_nzcv, FPSCR
4B8F48:  BGT             loc_4B8F58
4B8F4A:  VLDR            S4, [R2,#4]
4B8F4E:  VCMPE.F32       S2, S4
4B8F52:  VMRS            APSR_nzcv, FPSCR
4B8F56:  BGE             loc_4B8F5E
4B8F58:  MOVS            R0, #0
4B8F5A:  VSTR            S4, [R1]
4B8F5E:  VLDR            S2, [R1,#4]
4B8F62:  VSUB.F32        S4, S2, S0
4B8F66:  VABS.F32        S6, S4
4B8F6A:  VLDR            S4, [R2,#0x14]
4B8F6E:  VCMPE.F32       S6, S4
4B8F72:  VMRS            APSR_nzcv, FPSCR
4B8F76:  BLT             loc_4B8F90
4B8F78:  VCMPE.F32       S2, S0
4B8F7C:  VMRS            APSR_nzcv, FPSCR
4B8F80:  BGE             loc_4B8F88
4B8F82:  VADD.F32        S0, S2, S4
4B8F86:  B               loc_4B8F8E
4B8F88:  BLE             loc_4B8FC2
4B8F8A:  VSUB.F32        S0, S2, S4
4B8F8E:  MOVS            R0, #1
4B8F90:  VSTR            S0, [R1,#4]
4B8F94:  VLDR            S2, [R2,#0xC]
4B8F98:  VCMPE.F32       S0, S2
4B8F9C:  VMRS            APSR_nzcv, FPSCR
4B8FA0:  BGT             loc_4B8FB2
4B8FA2:  VLDR            S2, [R2,#0x10]
4B8FA6:  VCMPE.F32       S0, S2
4B8FAA:  VMRS            APSR_nzcv, FPSCR
4B8FAE:  IT GE
4B8FB0:  BXGE            LR
4B8FB2:  MOVS            R0, #0
4B8FB4:  VSTR            S2, [R1,#4]
4B8FB8:  BX              LR
4B8FBA:  MOVS            R0, #1
4B8FBC:  VMOV.F32        S2, S0
4B8FC0:  B               loc_4B8F38
4B8FC2:  VMOV.F32        S0, S2
4B8FC6:  B               loc_4B8F94
