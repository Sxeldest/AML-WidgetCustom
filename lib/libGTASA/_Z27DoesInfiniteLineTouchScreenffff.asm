; =========================================================
; Game Engine Function: _Z27DoesInfiniteLineTouchScreenffff
; Address            : 0x5AE070 - 0x5AE158
; =========================================================

5AE070:  LDR.W           R12, =(RsGlobal_ptr - 0x5AE07C)
5AE074:  VMOV            S2, R0
5AE078:  ADD             R12, PC; RsGlobal_ptr
5AE07A:  VCMPE.F32       S2, #0.0
5AE07E:  VMRS            APSR_nzcv, FPSCR
5AE082:  LDR.W           R12, [R12]; RsGlobal
5AE086:  LDR.W           R12, [R12,#(dword_9FC900 - 0x9FC8FC)]
5AE08A:  VMOV            S0, R12
5AE08E:  VCVT.F32.S32    S4, S0
5AE092:  VMOV            S0, R1
5AE096:  BLE             loc_5AE0C4
5AE098:  VCMPE.F32       S0, #0.0
5AE09C:  VMRS            APSR_nzcv, FPSCR
5AE0A0:  ITT GT
5AE0A2:  VCMPEGT.F32     S4, S2
5AE0A6:  VMRSGT          APSR_nzcv, FPSCR
5AE0AA:  BLE             loc_5AE0C4
5AE0AC:  LDR             R0, =(RsGlobal_ptr - 0x5AE0B2)
5AE0AE:  ADD             R0, PC; RsGlobal_ptr
5AE0B0:  LDR             R0, [R0]; RsGlobal
5AE0B2:  VLDR            S4, [R0,#8]
5AE0B6:  VCVT.F32.S32    S4, S4
5AE0BA:  VCMPE.F32       S4, S0
5AE0BE:  VMRS            APSR_nzcv, FPSCR
5AE0C2:  BGT             loc_5AE140
5AE0C4:  VMOV            S8, R12
5AE0C8:  VLDR            S10, =0.0
5AE0CC:  VMOV            S6, R3
5AE0D0:  VCVT.F32.S32    S8, S8
5AE0D4:  VSUB.F32        S12, S10, S0
5AE0D8:  VSUB.F32        S10, S10, S2
5AE0DC:  VMOV            S4, R2
5AE0E0:  VSUB.F32        S2, S8, S2
5AE0E4:  VMUL.F32        S12, S12, S4
5AE0E8:  VMUL.F32        S8, S10, S6
5AE0EC:  VMUL.F32        S2, S2, S6
5AE0F0:  VSUB.F32        S10, S8, S12
5AE0F4:  VSUB.F32        S6, S2, S12
5AE0F8:  VMUL.F32        S12, S10, S6
5AE0FC:  VCMPE.F32       S12, #0.0
5AE100:  VMRS            APSR_nzcv, FPSCR
5AE104:  BLT             loc_5AE140
5AE106:  LDR             R0, =(RsGlobal_ptr - 0x5AE10C)
5AE108:  ADD             R0, PC; RsGlobal_ptr
5AE10A:  LDR             R0, [R0]; RsGlobal
5AE10C:  VLDR            S12, [R0,#8]
5AE110:  VCVT.F32.S32    S12, S12
5AE114:  VSUB.F32        S0, S12, S0
5AE118:  VMUL.F32        S4, S0, S4
5AE11C:  VSUB.F32        S0, S8, S4
5AE120:  VMUL.F32        S8, S10, S0
5AE124:  VCMPE.F32       S8, #0.0
5AE128:  VMRS            APSR_nzcv, FPSCR
5AE12C:  BLT             loc_5AE140
5AE12E:  VSUB.F32        S2, S2, S4
5AE132:  VMUL.F32        S4, S6, S2
5AE136:  VCMPE.F32       S4, #0.0
5AE13A:  VMRS            APSR_nzcv, FPSCR
5AE13E:  BGE             loc_5AE144
5AE140:  MOVS            R0, #1
5AE142:  BX              LR
5AE144:  VMUL.F32        S0, S0, S2
5AE148:  MOVS            R0, #0
5AE14A:  VCMPE.F32       S0, #0.0
5AE14E:  VMRS            APSR_nzcv, FPSCR
5AE152:  IT LT
5AE154:  MOVLT           R0, #1
5AE156:  BX              LR
