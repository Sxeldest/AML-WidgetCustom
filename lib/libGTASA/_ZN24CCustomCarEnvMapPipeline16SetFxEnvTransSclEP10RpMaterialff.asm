; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline16SetFxEnvTransSclEP10RpMaterialff
; Address            : 0x2CC404 - 0x2CC4DE
; =========================================================

2CC404:  PUSH            {R4-R7,LR}
2CC406:  ADD             R7, SP, #0xC
2CC408:  PUSH.W          {R8}
2CC40C:  LDR             R3, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CC414)
2CC40E:  LDR             R6, =(_ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr - 0x2CC416)
2CC410:  ADD             R3, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CC412:  ADD             R6, PC; _ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr
2CC414:  LDR             R3, [R3]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CC416:  LDR             R6, [R6]; CCustomCarEnvMapPipeline::fakeEnvMapPipeMatData ...
2CC418:  LDR.W           R12, [R3]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CC41C:  LDR.W           R3, [R0,R12]
2CC420:  CMP             R3, R6
2CC422:  BEQ             loc_2CC454
2CC424:  CBZ             R3, loc_2CC44E
2CC426:  VMOV.F32        S4, #8.0
2CC42A:  VMOV            S0, R2
2CC42E:  VMOV            S2, R1
2CC432:  VMUL.F32        S0, S0, S4
2CC436:  VMUL.F32        S2, S2, S4
2CC43A:  VCVT.S32.F32    S0, S0
2CC43E:  VCVT.S32.F32    S2, S2
2CC442:  VMOV            R0, S0
2CC446:  STRB            R0, [R3,#3]
2CC448:  VMOV            R0, S2
2CC44C:  STRB            R0, [R3,#2]
2CC44E:  POP.W           {R8}
2CC452:  POP             {R4-R7,PC}
2CC454:  LDR             R3, =(_ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr - 0x2CC45C)
2CC456:  MOVS            R5, #0
2CC458:  ADD             R3, PC; _ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr
2CC45A:  LDR             R3, [R3]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool ...
2CC45C:  LDR.W           LR, [R3]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool
2CC460:  LDRD.W          R8, R3, [LR,#8]
2CC464:  ADDS            R3, #1
2CC466:  STR.W           R3, [LR,#0xC]
2CC46A:  CMP             R3, R8
2CC46C:  BNE             loc_2CC47A
2CC46E:  MOVS            R3, #0
2CC470:  LSLS            R4, R5, #0x1F
2CC472:  STR.W           R3, [LR,#0xC]
2CC476:  BNE             loc_2CC4D4
2CC478:  MOVS            R5, #1
2CC47A:  LDR.W           R6, [LR,#4]
2CC47E:  LDRSB           R4, [R6,R3]
2CC480:  CMP.W           R4, #0xFFFFFFFF
2CC484:  BGT             loc_2CC464
2CC486:  AND.W           R4, R4, #0x7F
2CC48A:  STRB            R4, [R6,R3]
2CC48C:  LDR.W           R3, [LR,#4]
2CC490:  LDR.W           R4, [LR,#0xC]
2CC494:  LDRB            R5, [R3,R4]
2CC496:  AND.W           R6, R5, #0x80
2CC49A:  ADDS            R5, #1
2CC49C:  AND.W           R5, R5, #0x7F
2CC4A0:  ORRS            R5, R6
2CC4A2:  STRB            R5, [R3,R4]
2CC4A4:  LDR.W           R6, [LR,#0xC]
2CC4A8:  LDR.W           R3, [LR]
2CC4AC:  ADD.W           R6, R6, R6,LSL#1
2CC4B0:  ADD.W           R3, R3, R6,LSL#2
2CC4B4:  STR.W           R3, [R0,R12]
2CC4B8:  CMP             R3, #0
2CC4BA:  BEQ             loc_2CC44E
2CC4BC:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr - 0x2CC4C2)
2CC4BE:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr
2CC4C0:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::fakeEnvMapPipeMatData ...
2CC4C2:  VLDR            D16, [R0]
2CC4C6:  LDR             R0, [R0,#(dword_70BF6C - 0x70BF64)]
2CC4C8:  STR             R0, [R3,#8]
2CC4CA:  VSTR            D16, [R3]
2CC4CE:  CMP             R3, #0
2CC4D0:  BNE             loc_2CC426
2CC4D2:  B               loc_2CC44E
2CC4D4:  STR.W           R3, [R0,R12]
2CC4D8:  POP.W           {R8}
2CC4DC:  POP             {R4-R7,PC}
