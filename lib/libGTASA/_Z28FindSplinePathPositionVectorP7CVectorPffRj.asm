; =========================================================
; Game Engine Function: _Z28FindSplinePathPositionVectorP7CVectorPffRj
; Address            : 0x462D7C - 0x462FCC
; =========================================================

462D7C:  PUSH            {R4-R7,LR}
462D7E:  ADD             R7, SP, #0xC
462D80:  PUSH.W          {R11}
462D84:  VLDR            S0, [R1]
462D88:  MOV             R5, #0xFFFFFFF7
462D8C:  LDR.W           LR, [R3]
462D90:  VCVT.U32.F32    S0, S0
462D94:  VLDR            S4, =1000.0
462D98:  ADD.W           R6, R1, LR,LSL#2
462D9C:  VLDR            S2, [R6,#-0x28]
462DA0:  VMOV            R4, S0
462DA4:  VLDR            S0, [R6]
462DA8:  VSUB.F32        S0, S0, S2
462DAC:  VMUL.F32        S0, S0, S4
462DB0:  ADD.W           R6, R4, R4,LSL#2
462DB4:  ADD.W           R12, R5, R6,LSL#1
462DB8:  ADD.W           R5, R1, R12,LSL#2
462DBC:  VLDR            S2, [R5]
462DC0:  VMUL.F32        S2, S2, S4
462DC4:  VMOV            S4, R2
462DC8:  VCMPE.F32       S2, S4
462DCC:  VMRS            APSR_nzcv, FPSCR
462DD0:  BLE             loc_462DFC
462DD2:  MOVW            R2, #0xCCCD
462DD6:  SUB.W           R5, LR, #1
462DDA:  MOVT            R2, #0xCCCC
462DDE:  UMULL.W         R5, R6, R5, R2
462DE2:  LSRS            R5, R6, #3
462DE4:  CMP             R5, R4
462DE6:  BHI             loc_462E12
462DE8:  LDR             R5, =(MAX_CUTJUMP_TIME_ptr - 0x462DEE)
462DEA:  ADD             R5, PC; MAX_CUTJUMP_TIME_ptr
462DEC:  LDR             R5, [R5]; MAX_CUTJUMP_TIME
462DEE:  VLDR            S6, [R5]
462DF2:  VCMPE.F32       S0, S6
462DF6:  VMRS            APSR_nzcv, FPSCR
462DFA:  BLE             loc_462E00
462DFC:  MOV             R12, LR
462DFE:  B               loc_462E16
462E00:  ADD.W           R5, LR, #9
462E04:  UMULL.W         R2, R5, R5, R2
462E08:  LSRS            R2, R5, #3
462E0A:  CMP             R2, R4
462E0C:  IT LS
462E0E:  ADDLS.W         R12, LR, #0xA
462E12:  STR.W           R12, [R3]
462E16:  ADD.W           R4, R1, R12,LSL#2
462E1A:  VLDR            S6, =-1000.0
462E1E:  VMOV.F32        S14, #1.0
462E22:  VLDR            S8, [R4,#-0x28]
462E26:  VMUL.F32        S6, S8, S6
462E2A:  VADD.F32        S6, S4, S6
462E2E:  VDIV.F32        S6, S6, S0
462E32:  VMOV.F32        S0, S14
462E36:  VCMPE.F32       S6, S14
462E3A:  VMRS            APSR_nzcv, FPSCR
462E3E:  BGT             loc_462E52
462E40:  VCMPE.F32       S6, #0.0
462E44:  VMRS            APSR_nzcv, FPSCR
462E48:  VMOV.F32        S0, S6
462E4C:  IT LT
462E4E:  VLDRLT          S0, =0.0
462E52:  VCMPE.F32       S2, S4
462E56:  LDRD.W          R5, R2, [R4,#-0x20]
462E5A:  VMRS            APSR_nzcv, FPSCR
462E5E:  LDRD.W          R6, R1, [R4,#-8]
462E62:  VLDR            S8, [R4,#0x10]
462E66:  VLDR            S12, [R4,#0x14]
462E6A:  VLDR            S6, [R4,#0x18]
462E6E:  VLDR            S10, [R4,#-0xC]
462E72:  IT LT
462E74:  VMOVLT.F32      S0, S14
462E78:  LDRD.W          LR, R3, [R4,#4]
462E7C:  VLDR            S2, [R4,#-0x24]
462E80:  LDR.W           R12, [R4,#0xC]
462E84:  VCMP.F32        S10, S2
462E88:  VMRS            APSR_nzcv, FPSCR
462E8C:  BNE             loc_462EE0
462E8E:  VMOV            S4, R5
462E92:  VMOV            S14, R6
462E96:  VCMP.F32        S14, S4
462E9A:  VMRS            APSR_nzcv, FPSCR
462E9E:  BNE             loc_462EE8
462EA0:  VMOV            S1, R2
462EA4:  VMOV            S3, R1
462EA8:  VCMP.F32        S3, S1
462EAC:  VMRS            APSR_nzcv, FPSCR
462EB0:  BNE             loc_462EE8
462EB2:  VMOV            S6, R3
462EB6:  VMOV            S8, LR
462EBA:  VSUB.F32        S6, S6, S4
462EBE:  VSUB.F32        S8, S8, S2
462EC2:  VMOV            S10, R12
462EC6:  VSUB.F32        S10, S10, S1
462ECA:  VMUL.F32        S6, S0, S6
462ECE:  VMUL.F32        S8, S0, S8
462ED2:  VMUL.F32        S0, S0, S10
462ED6:  VADD.F32        S4, S6, S4
462EDA:  VADD.F32        S2, S2, S8
462EDE:  B               loc_462F80
462EE0:  VMOV            S14, R6
462EE4:  VMOV            S4, R5
462EE8:  VMOV.F32        S1, #1.0
462EEC:  VMOV.F32        S3, #3.0
462EF0:  VMUL.F32        S5, S0, S0
462EF4:  VMOV            S11, R2
462EF8:  VSUB.F32        S1, S1, S0
462EFC:  VMUL.F32        S7, S0, S3
462F00:  VMUL.F32        S3, S5, S3
462F04:  VMUL.F32        S0, S0, S5
462F08:  VMOV            S5, R1
462F0C:  VMUL.F32        S9, S1, S1
462F10:  VMUL.F32        S12, S3, S12
462F14:  VMUL.F32        S8, S3, S8
462F18:  VMUL.F32        S6, S3, S6
462F1C:  VMUL.F32        S7, S7, S9
462F20:  VMUL.F32        S9, S1, S9
462F24:  VMUL.F32        S12, S1, S12
462F28:  VMUL.F32        S8, S1, S8
462F2C:  VMUL.F32        S6, S1, S6
462F30:  VMUL.F32        S14, S7, S14
462F34:  VMUL.F32        S4, S9, S4
462F38:  VMUL.F32        S10, S7, S10
462F3C:  VMUL.F32        S2, S2, S9
462F40:  VMUL.F32        S3, S9, S11
462F44:  VADD.F32        S4, S4, S14
462F48:  VMUL.F32        S14, S7, S5
462F4C:  VADD.F32        S2, S2, S10
462F50:  VMOV            S10, R3
462F54:  VMOV            S5, LR
462F58:  VMUL.F32        S10, S0, S10
462F5C:  VADD.F32        S4, S4, S12
462F60:  VMUL.F32        S12, S0, S5
462F64:  VADD.F32        S2, S2, S8
462F68:  VADD.F32        S8, S3, S14
462F6C:  VADD.F32        S4, S10, S4
462F70:  VMOV            S10, R12
462F74:  VADD.F32        S2, S12, S2
462F78:  VMUL.F32        S0, S0, S10
462F7C:  VADD.F32        S1, S8, S6
462F80:  LDR             R1, =(TheCamera_ptr - 0x462F8E)
462F82:  VADD.F32        S0, S0, S1
462F86:  VSTR            S2, [R0]
462F8A:  ADD             R1, PC; TheCamera_ptr
462F8C:  VSTR            S4, [R0,#4]
462F90:  LDR             R1, [R1]; TheCamera
462F92:  ADDW            R2, R1, #0x808
462F96:  VSTR            S0, [R0,#8]
462F9A:  VLDR            S6, [R2]
462F9E:  ADDW            R2, R1, #0x80C
462FA2:  ADD.W           R1, R1, #0x810
462FA6:  VADD.F32        S2, S6, S2
462FAA:  VSTR            S2, [R0]
462FAE:  VLDR            S2, [R2]
462FB2:  VADD.F32        S2, S2, S4
462FB6:  VSTR            S2, [R0,#4]
462FBA:  VLDR            S2, [R1]
462FBE:  VADD.F32        S0, S2, S0
462FC2:  VSTR            S0, [R0,#8]
462FC6:  POP.W           {R11}
462FCA:  POP             {R4-R7,PC}
