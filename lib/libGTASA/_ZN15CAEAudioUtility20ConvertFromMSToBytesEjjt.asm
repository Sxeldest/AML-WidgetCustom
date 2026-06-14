; =========================================================
; Game Engine Function: _ZN15CAEAudioUtility20ConvertFromMSToBytesEjjt
; Address            : 0x393604 - 0x393648
; =========================================================

393604:  PUSH            {R4,R5,R7,LR}
393606:  ADD             R7, SP, #8
393608:  MOV             R4, R2
39360A:  VLDR            S2, =0.002
39360E:  MULS            R1, R4
393610:  VMOV            S4, R0
393614:  VMOV            S0, R1
393618:  VCVT.F32.U32    S0, S0
39361C:  VCVT.F32.U32    S4, S4
393620:  VMUL.F32        S0, S0, S2
393624:  VMUL.F32        S0, S0, S4
393628:  VMOV            R0, S0; x
39362C:  BLX             floorf
393630:  VMOV            S0, R0
393634:  LSLS            R1, R4, #1
393636:  VCVT.S32.F32    S0, S0
39363A:  VMOV            R5, S0
39363E:  MOV             R0, R5
393640:  BLX             __aeabi_idivmod
393644:  ADDS            R0, R1, R5
393646:  POP             {R4,R5,R7,PC}
