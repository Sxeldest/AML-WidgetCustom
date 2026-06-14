; =========================================================
; Game Engine Function: _ZNK20CPedShelterAttractor21ComputeAttractHeadingEiRf
; Address            : 0x4A9464 - 0x4A9494
; =========================================================

4A9464:  PUSH            {R4,R6,R7,LR}
4A9466:  ADD             R7, SP, #8
4A9468:  MOV             R4, R2
4A946A:  BLX             rand
4A946E:  VMOV            S0, R0
4A9472:  VLDR            S2, =4.6566e-10
4A9476:  VCVT.F32.S32    S0, S0
4A947A:  VMUL.F32        S0, S0, S2
4A947E:  VLDR            S2, =6.2832
4A9482:  VMUL.F32        S0, S0, S2
4A9486:  VLDR            S2, =0.0
4A948A:  VADD.F32        S0, S0, S2
4A948E:  VSTR            S0, [R4]
4A9492:  POP             {R4,R6,R7,PC}
