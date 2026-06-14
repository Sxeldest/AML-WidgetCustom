; =========================================================
; Game Engine Function: _ZN10CCollision15PointInTriangleERK7CVectorPS1_
; Address            : 0x2DA174 - 0x2DA27E
; =========================================================

2DA174:  VLDR            S2, [R2]
2DA178:  VLDR            S12, [R2,#0x18]
2DA17C:  VLDR            S1, [R1]
2DA180:  VLDR            S0, [R2,#4]
2DA184:  VSUB.F32        S12, S12, S2
2DA188:  VLDR            S14, [R2,#0x1C]
2DA18C:  VSUB.F32        S1, S1, S2
2DA190:  VLDR            S3, [R1,#4]
2DA194:  VLDR            S6, [R2,#0xC]
2DA198:  VSUB.F32        S14, S14, S0
2DA19C:  VLDR            S8, [R2,#0x10]
2DA1A0:  VSUB.F32        S3, S3, S0
2DA1A4:  VSUB.F32        S2, S6, S2
2DA1A8:  VLDR            S4, [R2,#8]
2DA1AC:  VSUB.F32        S0, S8, S0
2DA1B0:  VLDR            S8, [R2,#0x20]
2DA1B4:  VLDR            S5, [R1,#8]
2DA1B8:  VLDR            S10, [R2,#0x14]
2DA1BC:  VMUL.F32        S7, S12, S1
2DA1C0:  VSUB.F32        S6, S5, S4
2DA1C4:  VSUB.F32        S8, S8, S4
2DA1C8:  VMUL.F32        S5, S14, S3
2DA1CC:  VSUB.F32        S4, S10, S4
2DA1D0:  VMUL.F32        S10, S0, S14
2DA1D4:  VMUL.F32        S9, S2, S12
2DA1D8:  VMUL.F32        S3, S0, S3
2DA1DC:  VMUL.F32        S1, S2, S1
2DA1E0:  VMUL.F32        S14, S14, S14
2DA1E4:  VMUL.F32        S12, S12, S12
2DA1E8:  VADD.F32        S5, S7, S5
2DA1EC:  VMUL.F32        S11, S8, S6
2DA1F0:  VMUL.F32        S7, S4, S8
2DA1F4:  VADD.F32        S10, S9, S10
2DA1F8:  VMUL.F32        S9, S4, S6
2DA1FC:  VADD.F32        S1, S1, S3
2DA200:  VADD.F32        S3, S12, S14
2DA204:  VMUL.F32        S8, S8, S8
2DA208:  VADD.F32        S12, S5, S11
2DA20C:  VADD.F32        S6, S10, S7
2DA210:  VADD.F32        S14, S1, S9
2DA214:  VADD.F32        S10, S3, S8
2DA218:  VMUL.F32        S8, S6, S12
2DA21C:  VMUL.F32        S1, S10, S14
2DA220:  VSUB.F32        S8, S1, S8
2DA224:  VCMPE.F32       S8, #0.0
2DA228:  VMRS            APSR_nzcv, FPSCR
2DA22C:  ITT LT
2DA22E:  MOVLT           R0, #0
2DA230:  BXLT            LR
2DA232:  VMUL.F32        S0, S0, S0
2DA236:  MOVS            R0, #0
2DA238:  VMUL.F32        S2, S2, S2
2DA23C:  VMUL.F32        S4, S4, S4
2DA240:  VADD.F32        S0, S2, S0
2DA244:  VMUL.F32        S2, S6, S14
2DA248:  VADD.F32        S0, S0, S4
2DA24C:  VMUL.F32        S4, S0, S12
2DA250:  VSUB.F32        S2, S4, S2
2DA254:  VCMPE.F32       S2, #0.0
2DA258:  VMRS            APSR_nzcv, FPSCR
2DA25C:  IT LT
2DA25E:  BXLT            LR
2DA260:  VMUL.F32        S0, S0, S10
2DA264:  VMUL.F32        S4, S6, S6
2DA268:  VADD.F32        S2, S8, S2
2DA26C:  VSUB.F32        S0, S0, S4
2DA270:  VCMPE.F32       S2, S0
2DA274:  VMRS            APSR_nzcv, FPSCR
2DA278:  IT LE
2DA27A:  MOVLE           R0, #1
2DA27C:  BX              LR
