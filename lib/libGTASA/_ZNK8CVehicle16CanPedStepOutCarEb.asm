; =========================================================
; Game Engine Function: _ZNK8CVehicle16CanPedStepOutCarEb
; Address            : 0x584E64 - 0x584F7A
; =========================================================

584E64:  LDR             R2, [R0,#0x14]
584E66:  VLDR            S2, =0.1
584E6A:  VLDR            S0, [R2,#0x28]
584E6E:  VCMPE.F32       S0, S2
584E72:  VMRS            APSR_nzcv, FPSCR
584E76:  BGT             loc_584EF8
584E78:  VLDR            S2, =-0.1
584E7C:  VCMPE.F32       S0, S2
584E80:  VMRS            APSR_nzcv, FPSCR
584E84:  BLT             loc_584EF8
584E86:  VLDR            S0, [R0,#0x50]
584E8A:  VLDR            S2, =0.05
584E8E:  VABS.F32        S0, S0
584E92:  VCMPE.F32       S0, S2
584E96:  VMRS            APSR_nzcv, FPSCR
584E9A:  BGT             loc_584EF4
584E9C:  VLDR            S0, [R0,#0x48]
584EA0:  VLDR            S2, [R0,#0x4C]
584EA4:  VMUL.F32        S0, S0, S0
584EA8:  VMUL.F32        S2, S2, S2
584EAC:  VADD.F32        S0, S0, S2
584EB0:  VLDR            S2, =0.01
584EB4:  VSQRT.F32       S0, S0
584EB8:  VCMPE.F32       S0, S2
584EBC:  VMRS            APSR_nzcv, FPSCR
584EC0:  BGT             loc_584EF4
584EC2:  VLDR            S0, [R0,#0x54]
584EC6:  VLDR            S2, [R0,#0x58]
584ECA:  VMUL.F32        S0, S0, S0
584ECE:  VLDR            S4, [R0,#0x5C]
584ED2:  VMUL.F32        S2, S2, S2
584ED6:  VMUL.F32        S4, S4, S4
584EDA:  VADD.F32        S0, S0, S2
584EDE:  VLDR            S2, =0.0004
584EE2:  VADD.F32        S0, S0, S4
584EE6:  VCMPE.F32       S0, S2
584EEA:  VMRS            APSR_nzcv, FPSCR
584EEE:  ITT LE
584EF0:  MOVLE           R0, #1
584EF2:  BXLE            LR
584EF4:  MOVS            R0, #0
584EF6:  BX              LR
584EF8:  LDR.W           R2, [R0,#0x5A0]
584EFC:  CMP             R2, #5
584EFE:  ITT EQ
584F00:  MOVEQ           R0, #1
584F02:  BXEQ            LR
584F04:  CBNZ            R1, loc_584F46
584F06:  VLDR            S0, [R0,#0x48]
584F0A:  VLDR            S2, [R0,#0x4C]
584F0E:  VMUL.F32        S0, S0, S0
584F12:  VMUL.F32        S2, S2, S2
584F16:  VADD.F32        S0, S0, S2
584F1A:  VLDR            S2, =0.01
584F1E:  VSQRT.F32       S0, S0
584F22:  VCMPE.F32       S0, S2
584F26:  VMRS            APSR_nzcv, FPSCR
584F2A:  BGT             loc_584F42
584F2C:  VLDR            S0, [R0,#0x50]
584F30:  VLDR            S2, =0.05
584F34:  VABS.F32        S0, S0
584F38:  VCMPE.F32       S0, S2
584F3C:  VMRS            APSR_nzcv, FPSCR
584F40:  BLE             loc_584F46
584F42:  MOVS            R0, #0
584F44:  BX              LR
584F46:  VLDR            S0, [R0,#0x54]
584F4A:  VLDR            S2, [R0,#0x58]
584F4E:  VMUL.F32        S0, S0, S0
584F52:  VLDR            S4, [R0,#0x5C]
584F56:  VMUL.F32        S2, S2, S2
584F5A:  MOVS            R0, #0
584F5C:  VMUL.F32        S4, S4, S4
584F60:  VADD.F32        S0, S0, S2
584F64:  VLDR            S2, =0.0004
584F68:  VADD.F32        S0, S0, S4
584F6C:  VCMPE.F32       S0, S2
584F70:  VMRS            APSR_nzcv, FPSCR
584F74:  IT LE
584F76:  MOVLE           R0, #1
584F78:  BX              LR
