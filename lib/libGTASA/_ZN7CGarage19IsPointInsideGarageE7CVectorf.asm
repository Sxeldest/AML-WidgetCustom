; =========================================================
; Game Engine Function: _ZN7CGarage19IsPointInsideGarageE7CVectorf
; Address            : 0x313124 - 0x3131DA
; =========================================================

313124:  VLDR            S0, [SP,#arg_0]
313128:  VLDR            S2, [R0,#8]
31312C:  VSUB.F32        S4, S2, S0
313130:  VMOV            S2, R3
313134:  VCMPE.F32       S4, S2
313138:  VMRS            APSR_nzcv, FPSCR
31313C:  BGT             loc_31319C
31313E:  VLDR            S4, [R0,#0x1C]
313142:  VADD.F32        S4, S4, S0
313146:  VCMPE.F32       S4, S2
31314A:  VMRS            APSR_nzcv, FPSCR
31314E:  BLT             loc_31319C
313150:  VLDR            S2, [R0]
313154:  VMOV            S6, R2
313158:  VLDR            S4, [R0,#4]
31315C:  VMOV            S12, R1
313160:  VLDR            S8, [R0,#0xC]
313164:  VSUB.F32        S6, S6, S4
313168:  VLDR            S10, [R0,#0x10]
31316C:  VSUB.F32        S4, S12, S2
313170:  VNEG.F32        S2, S0
313174:  VMUL.F32        S10, S6, S10
313178:  VMUL.F32        S8, S4, S8
31317C:  VADD.F32        S8, S8, S10
313180:  VCMPE.F32       S8, S2
313184:  VMRS            APSR_nzcv, FPSCR
313188:  BLT             loc_31319C
31318A:  VLDR            S10, [R0,#0x20]
31318E:  VADD.F32        S10, S10, S0
313192:  VCMPE.F32       S8, S10
313196:  VMRS            APSR_nzcv, FPSCR
31319A:  BLE             loc_3131A2
31319C:  MOVS            R1, #0
31319E:  MOV             R0, R1
3131A0:  BX              LR
3131A2:  VLDR            S8, [R0,#0x14]
3131A6:  MOVS            R1, #0
3131A8:  VLDR            S10, [R0,#0x18]
3131AC:  VMUL.F32        S4, S4, S8
3131B0:  VMUL.F32        S6, S6, S10
3131B4:  VADD.F32        S4, S4, S6
3131B8:  VCMPE.F32       S4, S2
3131BC:  VMRS            APSR_nzcv, FPSCR
3131C0:  BLT             loc_3131D6
3131C2:  VLDR            S2, [R0,#0x24]
3131C6:  VADD.F32        S0, S2, S0
3131CA:  VCMPE.F32       S4, S0
3131CE:  VMRS            APSR_nzcv, FPSCR
3131D2:  IT LE
3131D4:  MOVLE           R1, #1
3131D6:  MOV             R0, R1
3131D8:  BX              LR
