; =========================================================
; Game Engine Function: _ZN10MobileMenu17GetRandomBGCoordsEv
; Address            : 0x299AA4 - 0x299B0A
; =========================================================

299AA4:  PUSH            {R4,R5,R7,LR}
299AA6:  ADD             R7, SP, #8
299AA8:  VPUSH           {D8-D11}
299AAC:  MOV             R4, R1
299AAE:  MOV             R5, R0
299AB0:  VLDR            S16, [R4]
299AB4:  BLX             rand
299AB8:  VMOV            S0, R0
299ABC:  VLDR            S20, [R4,#4]
299AC0:  VMOV.F32        S18, #1.0
299AC4:  VCVT.F32.S32    S22, S0
299AC8:  BLX             rand
299ACC:  VMOV            S0, R0
299AD0:  VLDR            S2, =4.6566e-10
299AD4:  VSUB.F32        S4, S18, S16
299AD8:  VCVT.F32.S32    S0, S0
299ADC:  VMUL.F32        S6, S22, S2
299AE0:  VSUB.F32        S8, S18, S20
299AE4:  VMUL.F32        S0, S0, S2
299AE8:  VMUL.F32        S2, S4, S6
299AEC:  VLDR            S4, =0.0
299AF0:  VMUL.F32        S0, S8, S0
299AF4:  VADD.F32        S2, S2, S4
299AF8:  VADD.F32        S0, S0, S4
299AFC:  VSTR            S2, [R5]
299B00:  VSTR            S0, [R5,#4]
299B04:  VPOP            {D8-D11}
299B08:  POP             {R4,R5,R7,PC}
