; =========================================================
; Game Engine Function: _ZN7CObject13SetupLightingEv
; Address            : 0x4104E8 - 0x4105B2
; =========================================================

4104E8:  PUSH            {R4-R7,LR}
4104EA:  ADD             R7, SP, #0xC
4104EC:  PUSH.W          {R11}
4104F0:  SUB             SP, SP, #0x10
4104F2:  MOV             R4, R0
4104F4:  LDRB.W          R0, [R4,#0x47]
4104F8:  LSLS            R0, R0, #0x1A
4104FA:  BMI             loc_41057A
4104FC:  LDRB            R0, [R4,#0x1F]
4104FE:  LSLS            R0, R0, #0x1B
410500:  BPL             loc_4105A6
410502:  BLX             j__Z19ActivateDirectionalv; ActivateDirectional(void)
410506:  MOV.W           R0, #0x3F800000; this
41050A:  BLX             j__ZN14CCarFXRenderer20SetFxEnvMapLightMultEf; CCarFXRenderer::SetFxEnvMapLightMult(float)
41050E:  LDRB.W          R0, [R4,#0x47]
410512:  LSLS            R0, R0, #0x1A
410514:  BMI             loc_410592
410516:  LDR             R0, [R4,#0x14]
410518:  MOV             R2, R4; float *
41051A:  ADD.W           R1, R0, #0x30 ; '0'
41051E:  CMP             R0, #0
410520:  IT EQ
410522:  ADDEQ           R1, R4, #4
410524:  VLDR            D16, [R1]
410528:  LDR             R0, [R1,#8]
41052A:  ADD.W           R1, R4, #0x134; CVector *
41052E:  STR             R0, [SP,#0x20+var_18]
410530:  MOVS            R0, #0
410532:  VSTR            D16, [SP,#0x20+var_20]
410536:  STR.W           R0, [R4,#0x134]
41053A:  MOV             R0, SP; this
41053C:  BLX             j__ZN12CPointLights29GenerateLightsAffectingObjectEPK7CVectorPfP7CEntity; CPointLights::GenerateLightsAffectingObject(CVector const*,float *,CEntity *)
410540:  MOV             R6, R0
410542:  MOV             R0, R4; this
410544:  MOVS            R1, #1; bool
410546:  MOVS            R5, #1
410548:  BLX             j__ZNK9CPhysical18GetLightingFromColEb; CPhysical::GetLightingFromCol(bool)
41054C:  VLDR            S0, =0.95
410550:  VMOV            S2, R0
410554:  VMUL.F32        S0, S2, S0
410558:  VLDR            S2, =0.05
41055C:  VADD.F32        S0, S0, S2
410560:  VMOV            S2, R6
410564:  VMUL.F32        S0, S2, S0
410568:  VMOV            R4, S0
41056C:  MOV             R0, R4; this
41056E:  BLX             j__ZN14CCarFXRenderer20SetFxEnvMapLightMultEf; CCarFXRenderer::SetFxEnvMapLightMult(float)
410572:  MOV             R0, R4; float
410574:  BLX             j__Z36SetLightColoursForPedsCarsAndObjectsf; SetLightColoursForPedsCarsAndObjects(float)
410578:  B               loc_4105A8
41057A:  LDR             R0, =(Scene_ptr - 0x410588)
41057C:  MOV             R1, #0x3E3851EC
410584:  ADD             R0, PC; Scene_ptr
410586:  LDR             R0, [R0]; Scene
410588:  LDR             R0, [R0]
41058A:  BLX             j__Z36WorldReplaceNormalLightsWithScorchedP7RpWorldf; WorldReplaceNormalLightsWithScorched(RpWorld *,float)
41058E:  MOVS            R5, #1
410590:  B               loc_4105A8
410592:  LDR             R0, =(Scene_ptr - 0x4105A0)
410594:  MOV             R1, #0x3E3851EC
41059C:  ADD             R0, PC; Scene_ptr
41059E:  LDR             R0, [R0]; Scene
4105A0:  LDR             R0, [R0]
4105A2:  BLX             j__Z36WorldReplaceNormalLightsWithScorchedP7RpWorldf; WorldReplaceNormalLightsWithScorched(RpWorld *,float)
4105A6:  MOVS            R5, #0
4105A8:  MOV             R0, R5
4105AA:  ADD             SP, SP, #0x10
4105AC:  POP.W           {R11}
4105B0:  POP             {R4-R7,PC}
