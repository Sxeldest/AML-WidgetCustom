; =========================================================
; Game Engine Function: _Z15TransformVectorRK16CSimpleTransformRK5RwV3d
; Address            : 0x4083F6 - 0x408452
; =========================================================

4083F6:  PUSH            {R4-R7,LR}
4083F8:  ADD             R7, SP, #0xC
4083FA:  PUSH.W          {R11}
4083FE:  VPUSH           {D8-D10}
408402:  LDR             R6, [R1,#0xC]
408404:  MOV             R5, R0
408406:  MOV             R4, R2
408408:  MOV             R0, R6; x
40840A:  BLX             cosf
40840E:  VMOV            S20, R0
408412:  MOV             R0, R6; x
408414:  VLDR            S16, [R4]
408418:  VLDR            S18, [R4,#4]
40841C:  BLX             sinf
408420:  VMOV            S0, R0
408424:  VMUL.F32        S2, S20, S18
408428:  VMUL.F32        S4, S0, S16
40842C:  VMUL.F32        S0, S0, S18
408430:  VMUL.F32        S6, S20, S16
408434:  VADD.F32        S2, S4, S2
408438:  VSUB.F32        S0, S6, S0
40843C:  VSTR            S0, [R5]
408440:  VSTR            S2, [R5,#4]
408444:  LDR             R0, [R4,#8]
408446:  STR             R0, [R5,#8]
408448:  VPOP            {D8-D10}
40844C:  POP.W           {R11}
408450:  POP             {R4-R7,PC}
