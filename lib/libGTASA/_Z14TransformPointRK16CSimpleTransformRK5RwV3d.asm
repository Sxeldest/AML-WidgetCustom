; =========================================================
; Game Engine Function: _Z14TransformPointRK16CSimpleTransformRK5RwV3d
; Address            : 0x408278 - 0x4082EC
; =========================================================

408278:  PUSH            {R4-R7,LR}
40827A:  ADD             R7, SP, #0xC
40827C:  PUSH.W          {R8,R9,R11}
408280:  MOV             R5, R1
408282:  MOV             R8, R0
408284:  LDR             R6, [R5,#0xC]
408286:  MOV             R4, R2
408288:  MOV             R0, R6; x
40828A:  BLX             cosf
40828E:  MOV             R9, R0
408290:  MOV             R0, R6; x
408292:  BLX             sinf
408296:  VLDR            S0, [R4]
40829A:  VMOV            S6, R9
40829E:  VLDR            S2, [R4,#4]
4082A2:  VMOV            S4, R0
4082A6:  VMUL.F32        S10, S6, S0
4082AA:  VMUL.F32        S8, S4, S2
4082AE:  VMUL.F32        S2, S6, S2
4082B2:  VLDR            S6, [R5,#4]
4082B6:  VMUL.F32        S0, S4, S0
4082BA:  VLDR            S4, [R5]
4082BE:  VSUB.F32        S8, S10, S8
4082C2:  VLDR            S10, [R5,#8]
4082C6:  VADD.F32        S0, S0, S2
4082CA:  VLDR            S2, [R4,#8]
4082CE:  VADD.F32        S2, S2, S10
4082D2:  VADD.F32        S4, S4, S8
4082D6:  VADD.F32        S0, S6, S0
4082DA:  VSTR            S4, [R8]
4082DE:  VSTR            S0, [R8,#4]
4082E2:  VSTR            S2, [R8,#8]
4082E6:  POP.W           {R8,R9,R11}
4082EA:  POP             {R4-R7,PC}
