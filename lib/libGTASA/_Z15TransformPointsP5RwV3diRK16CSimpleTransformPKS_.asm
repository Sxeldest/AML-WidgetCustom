; =========================================================
; Game Engine Function: _Z15TransformPointsP5RwV3diRK16CSimpleTransformPKS_
; Address            : 0x408368 - 0x4083F6
; =========================================================

408368:  PUSH            {R4-R7,LR}
40836A:  ADD             R7, SP, #0xC
40836C:  PUSH.W          {R8-R10}
408370:  MOV             R8, R2
408372:  MOV             R5, R0
408374:  LDR.W           R10, [R8,#0xC]
408378:  MOV             R4, R3
40837A:  MOV             R6, R1
40837C:  MOV             R0, R10; x
40837E:  BLX             cosf
408382:  MOV             R9, R0
408384:  MOV             R0, R10; x
408386:  BLX             sinf
40838A:  CBZ             R6, loc_4083F0
40838C:  VMOV            S0, R0
408390:  VMOV            S2, R9
408394:  VLDR            S4, [R4]
408398:  SUBS            R6, #1
40839A:  VLDR            S6, [R4,#4]
40839E:  VMUL.F32        S4, S2, S4
4083A2:  VMUL.F32        S6, S0, S6
4083A6:  VSUB.F32        S4, S4, S6
4083AA:  VLDR            S6, [R8]
4083AE:  VADD.F32        S4, S6, S4
4083B2:  VSTR            S4, [R5]
4083B6:  VLDR            S4, [R4]
4083BA:  VLDR            S6, [R4,#4]
4083BE:  VMUL.F32        S4, S0, S4
4083C2:  VMUL.F32        S6, S2, S6
4083C6:  VADD.F32        S4, S4, S6
4083CA:  VLDR            S6, [R8,#4]
4083CE:  VADD.F32        S4, S6, S4
4083D2:  VSTR            S4, [R5,#4]
4083D6:  VLDR            S6, [R4,#8]
4083DA:  ADD.W           R4, R4, #0xC
4083DE:  VLDR            S4, [R8,#8]
4083E2:  VADD.F32        S4, S6, S4
4083E6:  VSTR            S4, [R5,#8]
4083EA:  ADD.W           R5, R5, #0xC
4083EE:  BNE             loc_408394
4083F0:  POP.W           {R8-R10}
4083F4:  POP             {R4-R7,PC}
