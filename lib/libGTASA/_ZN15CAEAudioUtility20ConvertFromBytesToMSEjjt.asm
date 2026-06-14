; =========================================================
; Game Engine Function: _ZN15CAEAudioUtility20ConvertFromBytesToMSEjjt
; Address            : 0x3935C8 - 0x393600
; =========================================================

3935C8:  PUSH            {R7,LR}
3935CA:  MOV             R7, SP
3935CC:  MULS            R1, R2
3935CE:  VLDR            S2, =0.002
3935D2:  VMOV            S4, R0
3935D6:  VMOV            S0, R1
3935DA:  VCVT.F32.U32    S0, S0
3935DE:  VCVT.F32.U32    S4, S4
3935E2:  VMUL.F32        S0, S0, S2
3935E6:  VDIV.F32        S0, S4, S0
3935EA:  VMOV            R0, S0; x
3935EE:  BLX             floorf
3935F2:  VMOV            S0, R0
3935F6:  VCVT.S32.F32    S0, S0
3935FA:  VMOV            R0, S0
3935FE:  POP             {R7,PC}
