; =========================================================
; Game Engine Function: _ZN8CGeneral10LimitAngleEf
; Address            : 0x3F49CC - 0x3F4A16
; =========================================================

3F49CC:  VLDR            S2, =180.0
3F49D0:  VMOV            S0, R0
3F49D4:  VCMPE.F32       S0, S2
3F49D8:  VMRS            APSR_nzcv, FPSCR
3F49DC:  BLT             loc_3F49F0
3F49DE:  VLDR            S4, =-360.0
3F49E2:  VADD.F32        S0, S0, S4
3F49E6:  VCMPE.F32       S0, S2
3F49EA:  VMRS            APSR_nzcv, FPSCR
3F49EE:  BGE             loc_3F49E2
3F49F0:  VLDR            S2, =-180.0
3F49F4:  VCMPE.F32       S0, S2
3F49F8:  VMRS            APSR_nzcv, FPSCR
3F49FC:  BGE             loc_3F4A10
3F49FE:  VLDR            S4, =360.0
3F4A02:  VADD.F32        S0, S0, S4
3F4A06:  VCMPE.F32       S0, S2
3F4A0A:  VMRS            APSR_nzcv, FPSCR
3F4A0E:  BLT             loc_3F4A02
3F4A10:  VMOV            R0, S0
3F4A14:  BX              LR
