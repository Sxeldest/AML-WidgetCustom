; =========================================================
; Game Engine Function: _ZN7CCamera29CameraGenericModeSpecialCasesEP4CPed
; Address            : 0x3D245C - 0x3D2496
; =========================================================

3D245C:  PUSH            {R4,R6,R7,LR}
3D245E:  ADD             R7, SP, #8
3D2460:  MOV             R4, R0
3D2462:  MOVS            R0, #0
3D2464:  CMP             R1, #0
3D2466:  STR.W           R0, [R4,#0xBD0]
3D246A:  IT EQ
3D246C:  POPEQ           {R4,R6,R7,PC}
3D246E:  LDR.W           R0, [R1,#0x440]; this
3D2472:  MOVS            R1, #0; bool
3D2474:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
3D2478:  CBZ             R0, locret_3D2494
3D247A:  LDR             R0, [R0,#8]
3D247C:  CMP             R0, #0
3D247E:  ITTTT NE
3D2480:  LDRNE.W         R1, [R4,#0xBD0]
3D2484:  ADDNE           R2, R1, #1
3D2486:  STRNE.W         R2, [R4,#0xBD0]
3D248A:  ADDNE.W         R1, R4, R1,LSL#2
3D248E:  IT NE
3D2490:  STRNE.W         R0, [R1,#0xBD4]
3D2494:  POP             {R4,R6,R7,PC}
