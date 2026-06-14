; =========================================================
; Game Engine Function: _ZN4CBmx14GetFrameOffsetERfS0_
; Address            : 0x56A398 - 0x56A3FC
; =========================================================

56A398:  PUSH            {R4,R6,R7,LR}
56A39A:  ADD             R7, SP, #8
56A39C:  MOV             R4, R2
56A39E:  ADD.W           R2, R0, #0x778
56A3A2:  ADDW            R3, R0, #0x77C
56A3A6:  VLDR            S4, [R2]
56A3AA:  ADDW            R2, R0, #0x774
56A3AE:  VLDR            S0, [R3]
56A3B2:  ADD.W           R3, R0, #0x780
56A3B6:  VLDR            S6, [R2]
56A3BA:  ADDW            R2, R0, #0x844
56A3BE:  VLDR            S2, [R3]
56A3C2:  VSUB.F32        S0, S6, S0
56A3C6:  VLDR            S6, [R2]
56A3CA:  VSUB.F32        S2, S4, S2
56A3CE:  VMOV.F32        S4, #1.0
56A3D2:  VSUB.F32        S8, S0, S2
56A3D6:  VSUB.F32        S4, S4, S6
56A3DA:  VMUL.F32        S2, S6, S2
56A3DE:  VMOV            R2, S8
56A3E2:  VMUL.F32        S0, S0, S4
56A3E6:  VADD.F32        S0, S2, S0
56A3EA:  VSTR            S0, [R1]
56A3EE:  LDR.W           R1, [R0,#0x840]; x
56A3F2:  MOV             R0, R2; y
56A3F4:  BLX             atan2f
56A3F8:  STR             R0, [R4]
56A3FA:  POP             {R4,R6,R7,PC}
