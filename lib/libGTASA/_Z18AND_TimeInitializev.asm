; =========================================================
; Game Engine Function: _Z18AND_TimeInitializev
; Address            : 0x26A100 - 0x26A138
; =========================================================

26A100:  PUSH            {R7,LR}
26A102:  MOV             R7, SP
26A104:  SUB             SP, SP, #8
26A106:  MOV             R0, SP; tv
26A108:  MOVS            R1, #0; tz
26A10A:  BLX             gettimeofday
26A10E:  VLDR            S2, [SP,#0x10+var_C]
26A112:  VLDR            S0, [SP,#0x10+var_10]
26A116:  VCVT.F64.S32    D16, S2
26A11A:  LDR             R0, =(base_time_ptr - 0x26A120)
26A11C:  ADD             R0, PC; base_time_ptr
26A11E:  LDR             R0, [R0]; base_time
26A120:  VLDR            D17, =1000000.0
26A124:  VDIV.F64        D16, D16, D17
26A128:  VCVT.F64.S32    D17, S0
26A12C:  VADD.F64        D16, D16, D17
26A130:  VSTR            D16, [R0]
26A134:  ADD             SP, SP, #8
26A136:  POP             {R7,PC}
