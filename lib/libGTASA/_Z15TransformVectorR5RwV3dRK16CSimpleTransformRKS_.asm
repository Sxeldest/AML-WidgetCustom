; =========================================================
; Game Engine Function: _Z15TransformVectorR5RwV3dRK16CSimpleTransformRKS_
; Address            : 0x408452 - 0x4084B0
; =========================================================

408452:  PUSH            {R4-R7,LR}
408454:  ADD             R7, SP, #0xC
408456:  PUSH.W          {R8}
40845A:  LDR             R6, [R1,#0xC]
40845C:  MOV             R5, R0
40845E:  MOV             R4, R2
408460:  MOV             R0, R6; x
408462:  BLX             cosf
408466:  MOV             R8, R0
408468:  MOV             R0, R6; x
40846A:  BLX             sinf
40846E:  VLDR            S0, [R4]
408472:  VMOV            S6, R8
408476:  VLDR            S2, [R4,#4]
40847A:  VMOV            S4, R0
40847E:  VMUL.F32        S0, S6, S0
408482:  VMUL.F32        S2, S4, S2
408486:  VSUB.F32        S0, S0, S2
40848A:  VSTR            S0, [R5]
40848E:  VLDR            S0, [R4]
408492:  VLDR            S2, [R4,#4]
408496:  VMUL.F32        S0, S4, S0
40849A:  VMUL.F32        S2, S6, S2
40849E:  VADD.F32        S0, S0, S2
4084A2:  VSTR            S0, [R5,#4]
4084A6:  LDR             R0, [R4,#8]
4084A8:  STR             R0, [R5,#8]
4084AA:  POP.W           {R8}
4084AE:  POP             {R4-R7,PC}
