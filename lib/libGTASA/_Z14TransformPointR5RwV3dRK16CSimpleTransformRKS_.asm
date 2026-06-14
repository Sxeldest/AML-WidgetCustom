; =========================================================
; Game Engine Function: _Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_
; Address            : 0x4082EC - 0x408368
; =========================================================

4082EC:  PUSH            {R4-R7,LR}
4082EE:  ADD             R7, SP, #0xC
4082F0:  PUSH.W          {R8,R9,R11}
4082F4:  MOV             R6, R1
4082F6:  MOV             R8, R0
4082F8:  LDR             R4, [R6,#0xC]
4082FA:  MOV             R5, R2
4082FC:  MOV             R0, R4; x
4082FE:  BLX             cosf
408302:  MOV             R9, R0
408304:  MOV             R0, R4; x
408306:  BLX             sinf
40830A:  VLDR            S0, [R5]
40830E:  VMOV            S6, R9
408312:  VLDR            S2, [R5,#4]
408316:  VMOV            S4, R0
40831A:  VMUL.F32        S0, S6, S0
40831E:  VMUL.F32        S2, S4, S2
408322:  VSUB.F32        S0, S0, S2
408326:  VLDR            S2, [R6]
40832A:  VADD.F32        S0, S2, S0
40832E:  VSTR            S0, [R8]
408332:  VLDR            S0, [R5]
408336:  VLDR            S2, [R5,#4]
40833A:  VMUL.F32        S0, S4, S0
40833E:  VMUL.F32        S2, S6, S2
408342:  VADD.F32        S0, S0, S2
408346:  VLDR            S2, [R6,#4]
40834A:  VADD.F32        S0, S2, S0
40834E:  VSTR            S0, [R8,#4]
408352:  VLDR            S0, [R6,#8]
408356:  VLDR            S2, [R5,#8]
40835A:  VADD.F32        S0, S2, S0
40835E:  VSTR            S0, [R8,#8]
408362:  POP.W           {R8,R9,R11}
408366:  POP             {R4-R7,PC}
