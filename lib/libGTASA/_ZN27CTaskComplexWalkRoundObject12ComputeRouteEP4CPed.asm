; =========================================================
; Game Engine Function: _ZN27CTaskComplexWalkRoundObject12ComputeRouteEP4CPed
; Address            : 0x50E308 - 0x50E3CA
; =========================================================

50E308:  PUSH            {R4-R7,LR}
50E30A:  ADD             R7, SP, #0xC
50E30C:  PUSH.W          {R8,R9,R11}
50E310:  SUB             SP, SP, #0x48
50E312:  MOV             R5, R0
50E314:  LDR             R0, =(_ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr - 0x50E320)
50E316:  MOV             R4, R1
50E318:  ADD.W           R2, R5, #0x10; CEntity *
50E31C:  ADD             R0, PC; _ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr
50E31E:  LDR             R6, [R0]; CPedGeometryAnalyser::ms_fPedNominalRadius ...
50E320:  MOV             R0, #0x3F333333
50E328:  LDR.W           R8, [R6]; CPedGeometryAnalyser::ms_fPedNominalRadius
50E32C:  STR             R0, [R6]; CPedGeometryAnalyser::ms_fPedNominalRadius
50E32E:  MOVS            R0, #0
50E330:  LDRD.W          R1, R3, [R5,#0x1C]; CVector *
50E334:  STR             R0, [SP,#0x60+var_60]; float *
50E336:  MOV             R0, R4; this
50E338:  BLX             j__ZN20CPedGeometryAnalyser34ComputeRouteRoundEntityBoundingBoxERK4CPedR7CEntityRK7CVectorR11CPointRoutei; CPedGeometryAnalyser::ComputeRouteRoundEntityBoundingBox(CPed const&,CEntity &,CVector const&,CPointRoute &,int)
50E33C:  STR.W           R8, [R6]; CPedGeometryAnalyser::ms_fPedNominalRadius
50E340:  ADDS            R6, R4, #4
50E342:  LDR             R0, [R4,#0x14]
50E344:  ADD.W           R8, SP, #0x60+var_58
50E348:  MOV             R2, R6
50E34A:  LDR             R1, [R5,#0x1C]; float
50E34C:  CMP             R0, #0
50E34E:  ADD.W           R9, SP, #0x60+var_48
50E352:  IT NE
50E354:  ADDNE.W         R2, R0, #0x30 ; '0'
50E358:  MOV             R3, R8; CVector *
50E35A:  LDR             R0, [R2,#8]; this
50E35C:  MOV             R2, R9; CEntity *
50E35E:  BLX             j__ZN20CPedGeometryAnalyser30ComputeEntityBoundingBoxPlanesEfR7CEntityP7CVectorPf; CPedGeometryAnalyser::ComputeEntityBoundingBoxPlanes(float,CEntity &,CVector *,float *)
50E362:  LDR             R2, [R4,#0x14]; CEntity *
50E364:  MOV             R0, R6
50E366:  LDR             R1, [R5,#0x1C]; CVector *
50E368:  CMP             R2, #0
50E36A:  IT NE
50E36C:  ADDNE.W         R0, R2, #0x30 ; '0'; this
50E370:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CVector const&,CEntity &)
50E374:  ADD.W           R2, R0, R0,LSL#1
50E378:  LDR             R1, [R4,#0x14]
50E37A:  ADD.W           R0, R8, R0,LSL#2
50E37E:  ADD.W           R2, R9, R2,LSL#2
50E382:  CMP             R1, #0
50E384:  VLDR            S0, [R2]
50E388:  VLDR            S2, [R2,#4]
50E38C:  VLDR            S4, [R2,#8]
50E390:  IT NE
50E392:  ADDNE.W         R6, R1, #0x30 ; '0'
50E396:  VLDR            S6, [R6]
50E39A:  VLDR            S8, [R6,#4]
50E39E:  VMUL.F32        S0, S0, S6
50E3A2:  VLDR            S10, [R6,#8]
50E3A6:  VMUL.F32        S2, S2, S8
50E3AA:  VMUL.F32        S4, S4, S10
50E3AE:  VADD.F32        S0, S0, S2
50E3B2:  VLDR            S2, [R0]
50E3B6:  VADD.F32        S0, S0, S4
50E3BA:  VADD.F32        S0, S2, S0
50E3BE:  VMOV            R0, S0
50E3C2:  ADD             SP, SP, #0x48 ; 'H'
50E3C4:  POP.W           {R8,R9,R11}
50E3C8:  POP             {R4-R7,PC}
