; =========================================================
; Game Engine Function: _ZN10CCollision10RayPolyPOPEP7CVectorS1_P12CColTriangleS1_S1_
; Address            : 0x2E019A - 0x2E0244
; =========================================================

2E019A:  LDR             R2, [SP,#arg_0]
2E019C:  VLDR            S0, [R0]
2E01A0:  VLDR            S4, [R0,#4]
2E01A4:  VLDR            S8, [R2,#4]
2E01A8:  VLDR            S6, [R2]
2E01AC:  VSUB.F32        S8, S8, S4
2E01B0:  VLDR            S12, [R3,#4]
2E01B4:  VSUB.F32        S1, S6, S0
2E01B8:  VLDR            S6, [R3]
2E01BC:  VLDR            S2, [R0,#8]
2E01C0:  VLDR            S14, [R2,#8]
2E01C4:  VLDR            S10, [R3,#8]
2E01C8:  VSUB.F32        S14, S14, S2
2E01CC:  VMUL.F32        S8, S8, S12
2E01D0:  VMUL.F32        S1, S1, S6
2E01D4:  VMUL.F32        S14, S14, S10
2E01D8:  VADD.F32        S8, S1, S8
2E01DC:  VADD.F32        S8, S8, S14
2E01E0:  VCMPE.F32       S8, #0.0
2E01E4:  VMRS            APSR_nzcv, FPSCR
2E01E8:  BGT             loc_2E0240
2E01EA:  VLDR            S14, [R1]
2E01EE:  VLDR            S3, [R1,#4]
2E01F2:  VMUL.F32        S6, S6, S14
2E01F6:  VLDR            S1, [R1,#8]
2E01FA:  VMUL.F32        S12, S12, S3
2E01FE:  VMUL.F32        S10, S10, S1
2E0202:  VADD.F32        S6, S6, S12
2E0206:  VADD.F32        S6, S6, S10
2E020A:  VCMPE.F32       S8, S6
2E020E:  VMRS            APSR_nzcv, FPSCR
2E0212:  BLE             loc_2E0240
2E0214:  VDIV.F32        S6, S8, S6
2E0218:  VMUL.F32        S8, S3, S6
2E021C:  VMUL.F32        S10, S14, S6
2E0220:  VMUL.F32        S6, S1, S6
2E0224:  VADD.F32        S4, S8, S4
2E0228:  VADD.F32        S0, S0, S10
2E022C:  VADD.F32        S2, S6, S2
2E0230:  VSTR            S0, [R0]
2E0234:  VSTR            S4, [R0,#4]
2E0238:  VSTR            S2, [R0,#8]
2E023C:  MOVS            R0, #1
2E023E:  BX              LR
2E0240:  MOVS            R0, #0
2E0242:  BX              LR
