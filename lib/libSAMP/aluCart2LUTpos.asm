; =========================================================
; Game Engine Function: aluCart2LUTpos
; Address            : 0x1D8E54 - 0x1D8EC4
; =========================================================

1D8E54:  VMOV            S2, R0
1D8E58:  MOV             R0, #0
1D8E5C:  VMOV            S0, R1
1D8E60:  VABS.F32        S6, S2
1D8E64:  VABS.F32        S4, S0
1D8E68:  VADD.F32        S6, S4, S6
1D8E6C:  VCMPE.F32       S6, #0.0
1D8E70:  VMRS            APSR_nzcv, FPSCR
1D8E74:  BLE             loc_1D8E98
1D8E78:  VLDR            S8, =128.0
1D8E7C:  VMUL.F32        S4, S4, S8
1D8E80:  VDIV.F32        S4, S4, S6
1D8E84:  VCVT.F64.F32    D2, S4
1D8E88:  VMOV.F64        D3, #0.5
1D8E8C:  VADD.F64        D2, D2, D3
1D8E90:  VCVT.S32.F64    S4, D2
1D8E94:  VMOV            R0, S4
1D8E98:  VCMPE.F32       S2, #0.0
1D8E9C:  VMRS            APSR_nzcv, FPSCR
1D8EA0:  VCMPE.F32       S0, #0.0
1D8EA4:  RSBLT           R0, R0, #0x100
1D8EA8:  VMRS            APSR_nzcv, FPSCR
1D8EAC:  RSBLT           R0, R0, #0x200
1D8EB0:  MOV             R1, R0,ASR#31
1D8EB4:  ADD             R1, R0, R1,LSR#23
1D8EB8:  BFC             R1, #0, #9
1D8EBC:  SUB             R0, R0, R1
1D8EC0:  BX              LR
