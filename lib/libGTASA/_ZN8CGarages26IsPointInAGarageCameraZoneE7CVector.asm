; =========================================================
; Game Engine Function: _ZN8CGarages26IsPointInAGarageCameraZoneE7CVector
; Address            : 0x3140DC - 0x3141B4
; =========================================================

3140DC:  LDR             R3, =(_ZN8CGarages8aGaragesE_ptr - 0x3140EA)
3140DE:  VMOV.F32        S6, #-0.5
3140E2:  VMOV.F32        S8, #0.5
3140E6:  ADD             R3, PC; _ZN8CGarages8aGaragesE_ptr
3140E8:  VMOV            S2, R0
3140EC:  VMOV            S0, R1
3140F0:  MOV.W           R1, #0xFFFFFFFF
3140F4:  LDR             R0, [R3]; CGarages::aGarages ...
3140F6:  VMOV            S4, R2
3140FA:  B               loc_314108
3140FC:  ADDS            R1, #1
3140FE:  ADDS            R0, #0xD8
314100:  CMP             R1, #0x31 ; '1'
314102:  ITT GE
314104:  MOVGE           R0, #0
314106:  BXGE            LR
314108:  LDRB.W          R2, [R0,#0x4C]
31410C:  SUB.W           R3, R2, #8
314110:  CMP             R3, #3
314112:  BCC             loc_31411A
314114:  CMP             R2, #0
314116:  BEQ             loc_3140FC
314118:  CMP             R2, #0x16
31411A:  VLDR            S10, [R0,#8]
31411E:  VADD.F32        S10, S10, S6
314122:  VCMPE.F32       S10, S4
314126:  VMRS            APSR_nzcv, FPSCR
31412A:  BGT             loc_3140FC
31412C:  VLDR            S10, [R0,#0x1C]
314130:  VADD.F32        S10, S10, S8
314134:  VCMPE.F32       S10, S4
314138:  VMRS            APSR_nzcv, FPSCR
31413C:  BLT             loc_3140FC
31413E:  VLDR            S10, [R0]
314142:  VLDR            S12, [R0,#4]
314146:  VSUB.F32        S10, S2, S10
31414A:  VLDR            S14, [R0,#0xC]
31414E:  VSUB.F32        S12, S0, S12
314152:  VLDR            S1, [R0,#0x10]
314156:  VMUL.F32        S14, S10, S14
31415A:  VMUL.F32        S1, S12, S1
31415E:  VADD.F32        S14, S14, S1
314162:  VCMPE.F32       S14, S6
314166:  VMRS            APSR_nzcv, FPSCR
31416A:  BLT             loc_3140FC
31416C:  VLDR            S1, [R0,#0x20]
314170:  VADD.F32        S1, S1, S8
314174:  VCMPE.F32       S14, S1
314178:  VMRS            APSR_nzcv, FPSCR
31417C:  BGT             loc_3140FC
31417E:  VLDR            S14, [R0,#0x14]
314182:  VLDR            S1, [R0,#0x18]
314186:  VMUL.F32        S10, S10, S14
31418A:  VMUL.F32        S12, S12, S1
31418E:  VADD.F32        S10, S10, S12
314192:  VCMPE.F32       S10, S6
314196:  VMRS            APSR_nzcv, FPSCR
31419A:  BLT             loc_3140FC
31419C:  VLDR            S12, [R0,#0x24]
3141A0:  VADD.F32        S12, S12, S8
3141A4:  VCMPE.F32       S10, S12
3141A8:  VMRS            APSR_nzcv, FPSCR
3141AC:  ITT LE
3141AE:  MOVLE           R0, #1
3141B0:  BXLE            LR
3141B2:  B               loc_3140FC
