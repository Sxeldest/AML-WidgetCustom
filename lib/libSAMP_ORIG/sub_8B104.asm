; =========================================================
; Game Engine Function: sub_8B104
; Address            : 0x8B104 - 0x8B210
; =========================================================

8B104:  LDR             R2, =(dword_1ACF68 - 0x8B10A)
8B106:  ADD             R2, PC; dword_1ACF68
8B108:  LDR.W           R12, [R2]
8B10C:  MOVW            R2, #0x19AC
8B110:  LDR.W           R2, [R12,R2]
8B114:  LDRB.W          R3, [R2,#0x7F]
8B118:  CBZ             R3, loc_8B11C
8B11A:  BX              LR
8B11C:  VLDR            S6, [R0,#4]
8B120:  VMOV            S0, R1
8B124:  VLDR            S2, [R2,#0xEC]
8B128:  ADD.W           R1, R12, #0x1560
8B12C:  VLDR            S4, [R0]
8B130:  MOVS            R0, #0
8B132:  VCMP.F32        S2, S6
8B136:  VMRS            APSR_nzcv, FPSCR
8B13A:  IT GE
8B13C:  VMOVGE.F32      S6, S2
8B140:  VLDR            S2, [R2,#0xCC]
8B144:  VLDR            S1, [R1,#4]
8B148:  VADD.F32        S14, S6, S2
8B14C:  VLDR            S8, [R2,#0xC]
8B150:  VLDR            S3, [R2,#0x1B4]
8B154:  VLDR            S10, [R2,#0xC8]
8B158:  VADD.F32        S8, S8, S3
8B15C:  VLDR            S3, [R2,#0x1BC]
8B160:  VADD.F32        S4, S10, S4
8B164:  VLDR            S12, [R2,#0xE0]
8B168:  VADD.F32        S14, S14, S1
8B16C:  VADD.F32        S8, S8, S3
8B170:  VCMP.F32        S12, S4
8B174:  VMRS            APSR_nzcv, FPSCR
8B178:  VCVT.S32.F32    S14, S14
8B17C:  VCVT.S32.F32    S8, S8
8B180:  VCVT.F32.S32    S14, S14
8B184:  VCVT.F32.S32    S8, S8
8B188:  VSUB.F32        S10, S14, S1
8B18C:  VMOV.F32        S1, S4
8B190:  IT GE
8B192:  VMOVGE.F32      S1, S12
8B196:  VLDR            S12, [R2,#0xF8]
8B19A:  VLDR            S3, [R2,#0xE4]
8B19E:  VCMP.F32        S12, S0
8B1A2:  VMRS            APSR_nzcv, FPSCR
8B1A6:  IT GE
8B1A8:  VMOVGE.F32      S0, S12
8B1AC:  VCMP.F32        S3, S10
8B1B0:  VMRS            APSR_nzcv, FPSCR
8B1B4:  IT GE
8B1B6:  VMOVGE.F32      S10, S3
8B1BA:  STR.W           R0, [R2,#0xF8]
8B1BE:  STR.W           R0, [R2,#0xEC]
8B1C2:  LDR.W           R0, [R2,#0x15C]
8B1C6:  VSTR            S8, [R2,#0xC8]
8B1CA:  CMP             R0, #0
8B1CC:  VSTR            S14, [R2,#0xCC]
8B1D0:  VSTR            S4, [R2,#0xD0]
8B1D4:  VSTR            S2, [R2,#0xD4]
8B1D8:  VSTR            S6, [R2,#0xF4]
8B1DC:  VSTR            S0, [R2,#0xFC]
8B1E0:  VSTR            S1, [R2,#0xE0]
8B1E4:  VSTR            S10, [R2,#0xE4]
8B1E8:  IT NE
8B1EA:  BXNE            LR
8B1EC:  VLDR            S6, [R1]
8B1F0:  MOVS            R3, #1
8B1F2:  LDRD.W          R0, R1, [R2,#0xF0]
8B1F6:  VADD.F32        S4, S4, S6
8B1FA:  STRB.W          R3, [R2,#0x7C]
8B1FE:  VSTR            S0, [R2,#0xF8]
8B202:  STRD.W          R0, R1, [R2,#0xE8]
8B206:  VSTR            S2, [R2,#0xCC]
8B20A:  VSTR            S4, [R2,#0xC8]
8B20E:  BX              LR
