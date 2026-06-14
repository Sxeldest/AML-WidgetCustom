; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWandering19ComputeDetourTargetERK4CPedR10CColSphere
; Address            : 0x52226C - 0x5222B8
; =========================================================

52226C:  PUSH            {R7,LR}
52226E:  MOV             R7, SP
522270:  SUB             SP, SP, #0x28
522272:  LDRD.W          R12, R3, [R0,#0x10]
522276:  STRD.W          R12, R3, [SP,#0x30+var_18]
52227A:  LDRD.W          R12, R3, [R0,#0x1C]
52227E:  STRD.W          R12, R3, [SP,#0x30+var_28]; CVector *
522282:  LDR.W           R12, [R1,#0x14]
522286:  ADD.W           R3, R12, #0x30 ; '0'
52228A:  CMP.W           R12, #0
52228E:  IT EQ
522290:  ADDEQ           R3, R1, #4
522292:  ADD.W           R12, SP, #0x30+var_18
522296:  LDR             R3, [R3,#8]
522298:  STR             R3, [SP,#0x30+var_10]
52229A:  STR             R3, [SP,#0x30+var_20]
52229C:  STR             R3, [R2,#8]
52229E:  ADD.W           R3, R0, #0x28 ; '('
5222A2:  ADDS            R0, #0x34 ; '4'
5222A4:  STRD.W          R0, R3, [SP,#0x30+var_30]; CVector *
5222A8:  ADD             R3, SP, #0x30+var_28; CVector *
5222AA:  MOV             R0, R1; this
5222AC:  MOV             R1, R2; CPed *
5222AE:  MOV             R2, R12; CColSphere *
5222B0:  BLX             j__ZN20CPedGeometryAnalyser23ComputeRouteRoundSphereERK4CPedRK10CColSphereRK7CVectorS8_RS6_S9_; CPedGeometryAnalyser::ComputeRouteRoundSphere(CPed const&,CColSphere const&,CVector const&,CVector const&,CVector&,CVector&)
5222B4:  ADD             SP, SP, #0x28 ; '('
5222B6:  POP             {R7,PC}
