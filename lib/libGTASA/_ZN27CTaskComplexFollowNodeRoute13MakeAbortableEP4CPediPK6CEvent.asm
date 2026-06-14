; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRoute13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x51F4C4 - 0x51F5CE
; =========================================================

51F4C4:  PUSH            {R4-R7,LR}
51F4C6:  ADD             R7, SP, #0xC
51F4C8:  PUSH.W          {R8-R10}
51F4CC:  MOV             R4, R3
51F4CE:  MOV             R8, R2
51F4D0:  MOV             R6, R1
51F4D2:  MOV             R5, R0
51F4D4:  CMP             R4, #0
51F4D6:  BEQ             loc_51F5B6
51F4D8:  LDR             R0, [R5,#0x30]
51F4DA:  LDR             R1, [R5,#0x38]
51F4DC:  LDR             R0, [R0]
51F4DE:  ADDS            R1, #1
51F4E0:  CMP             R1, R0
51F4E2:  BEQ             loc_51F5B6
51F4E4:  LDR             R0, [R4]
51F4E6:  LDR             R1, [R0,#8]
51F4E8:  MOV             R0, R4
51F4EA:  BLX             R1
51F4EC:  CMP             R0, #1
51F4EE:  BEQ             loc_51F4FA
51F4F0:  CMP             R0, #0x38 ; '8'
51F4F2:  BNE             loc_51F504
51F4F4:  ADD.W           R0, R4, #0x10
51F4F8:  B               loc_51F4FE
51F4FA:  ADD.W           R0, R4, #0x14
51F4FE:  LDR.W           R9, [R0]
51F502:  B               loc_51F508
51F504:  MOV.W           R9, #0
51F508:  LDR             R0, [R5,#8]
51F50A:  LDR             R1, [R0]
51F50C:  LDR             R1, [R1,#0x14]
51F50E:  BLX             R1
51F510:  MOVW            R1, #0x39E
51F514:  CMP             R0, R1
51F516:  IT NE
51F518:  CMPNE.W         R0, #0x384
51F51C:  BNE             loc_51F5B6
51F51E:  CMP.W           R9, #0
51F522:  ITT NE
51F524:  LDRNE.W         R10, [R5,#8]
51F528:  CMPNE.W         R10, #0
51F52C:  BEQ             loc_51F5B6
51F52E:  VLDR            S0, [R9,#0x48]
51F532:  VLDR            S2, [R9,#0x4C]
51F536:  VMUL.F32        S0, S0, S0
51F53A:  VLDR            S4, [R9,#0x50]
51F53E:  VMUL.F32        S2, S2, S2
51F542:  VMUL.F32        S4, S4, S4
51F546:  VADD.F32        S0, S0, S2
51F54A:  VLDR            S2, =0.015625
51F54E:  VADD.F32        S0, S0, S4
51F552:  VCMPE.F32       S0, S2
51F556:  VMRS            APSR_nzcv, FPSCR
51F55A:  BGE             loc_51F5B6
51F55C:  LDR.W           R2, [R10,#0x18]; CVector *
51F560:  ADD.W           R1, R10, #0xC; CEntity *
51F564:  MOV             R0, R9; this
51F566:  BLX             j__ZN20CPedGeometryAnalyser22IsEntityBlockingTargetEP7CEntityRK7CVectorf; CPedGeometryAnalyser::IsEntityBlockingTarget(CEntity *,CVector const&,float)
51F56A:  CMP             R0, #1
51F56C:  BNE             loc_51F5B6
51F56E:  LDR.W           R0, [R9,#0x14]
51F572:  LDR             R1, [R6,#0x14]
51F574:  ADD.W           R2, R0, #0x30 ; '0'
51F578:  CMP             R0, #0
51F57A:  IT EQ
51F57C:  ADDEQ.W         R2, R9, #4
51F580:  ADD.W           R0, R1, #0x30 ; '0'
51F584:  CMP             R1, #0
51F586:  VLDR            S0, [R2]
51F58A:  VLDR            S2, [R2,#4]
51F58E:  IT EQ
51F590:  ADDEQ           R0, R6, #4
51F592:  VLDR            S4, [R0]
51F596:  VLDR            S6, [R0,#4]
51F59A:  VSUB.F32        S0, S4, S0
51F59E:  VSUB.F32        S2, S6, S2
51F5A2:  VMUL.F32        S0, S0, S0
51F5A6:  VMUL.F32        S2, S2, S2
51F5AA:  VADD.F32        S0, S0, S2
51F5AE:  VSQRT.F32       S0, S0
51F5B2:  VSTR            S0, [R10,#0x18]
51F5B6:  LDR             R0, [R5,#8]
51F5B8:  MOV             R2, R8
51F5BA:  MOV             R3, R4
51F5BC:  LDR             R1, [R0]
51F5BE:  LDR.W           R12, [R1,#0x1C]
51F5C2:  MOV             R1, R6
51F5C4:  POP.W           {R8-R10}
51F5C8:  POP.W           {R4-R7,LR}
51F5CC:  BX              R12
