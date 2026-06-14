; =========================================================
; Game Engine Function: sub_167054
; Address            : 0x167054 - 0x16715E
; =========================================================

167054:  LDR             R2, =(dword_381B58 - 0x16705A)
167056:  ADD             R2, PC; dword_381B58
167058:  LDR.W           R12, [R2]
16705C:  MOVW            R2, #0x19AC
167060:  LDR.W           R2, [R12,R2]
167064:  LDRB.W          R3, [R2,#0x7F]
167068:  CBZ             R3, loc_16706C
16706A:  BX              LR
16706C:  VLDR            S6, [R0,#4]
167070:  VMOV            S0, R1
167074:  VLDR            S2, [R2,#0xEC]
167078:  ADD.W           R1, R12, #0x1560
16707C:  VLDR            S4, [R0]
167080:  MOVS            R0, #0
167082:  VCMP.F32        S2, S6
167086:  VMRS            APSR_nzcv, FPSCR
16708A:  IT GE
16708C:  VMOVGE.F32      S6, S2
167090:  VLDR            S2, [R2,#0xCC]
167094:  VLDR            S1, [R1,#4]
167098:  VADD.F32        S14, S6, S2
16709C:  VLDR            S8, [R2,#0xC]
1670A0:  VLDR            S3, [R2,#0x1B4]
1670A4:  VLDR            S10, [R2,#0xC8]
1670A8:  VADD.F32        S8, S8, S3
1670AC:  VLDR            S3, [R2,#0x1BC]
1670B0:  VADD.F32        S4, S10, S4
1670B4:  VLDR            S12, [R2,#0xE0]
1670B8:  VADD.F32        S14, S14, S1
1670BC:  VADD.F32        S8, S8, S3
1670C0:  VCMP.F32        S12, S4
1670C4:  VMRS            APSR_nzcv, FPSCR
1670C8:  VCVT.S32.F32    S14, S14
1670CC:  VCVT.S32.F32    S8, S8
1670D0:  VCVT.F32.S32    S14, S14
1670D4:  VCVT.F32.S32    S8, S8
1670D8:  VSUB.F32        S10, S14, S1
1670DC:  VMOV.F32        S1, S4
1670E0:  IT GE
1670E2:  VMOVGE.F32      S1, S12
1670E6:  VLDR            S12, [R2,#0xF8]
1670EA:  VLDR            S3, [R2,#0xE4]
1670EE:  VCMP.F32        S12, S0
1670F2:  VMRS            APSR_nzcv, FPSCR
1670F6:  IT GE
1670F8:  VMOVGE.F32      S0, S12
1670FC:  VCMP.F32        S3, S10
167100:  VMRS            APSR_nzcv, FPSCR
167104:  IT GE
167106:  VMOVGE.F32      S10, S3
16710A:  STR.W           R0, [R2,#0xF8]
16710E:  STR.W           R0, [R2,#0xEC]
167112:  LDR.W           R0, [R2,#0x15C]
167116:  VSTR            S8, [R2,#0xC8]
16711A:  CMP             R0, #0
16711C:  VSTR            S14, [R2,#0xCC]
167120:  VSTR            S4, [R2,#0xD0]
167124:  VSTR            S2, [R2,#0xD4]
167128:  VSTR            S6, [R2,#0xF4]
16712C:  VSTR            S0, [R2,#0xFC]
167130:  VSTR            S1, [R2,#0xE0]
167134:  VSTR            S10, [R2,#0xE4]
167138:  BNE             locret_16706A
16713A:  VLDR            S6, [R1]
16713E:  MOVS            R3, #1
167140:  LDRD.W          R0, R1, [R2,#0xF0]
167144:  VADD.F32        S4, S4, S6
167148:  STRB.W          R3, [R2,#0x7C]
16714C:  VSTR            S0, [R2,#0xF8]
167150:  STRD.W          R0, R1, [R2,#0xE8]
167154:  VSTR            S2, [R2,#0xCC]
167158:  VSTR            S4, [R2,#0xC8]
16715C:  BX              LR
