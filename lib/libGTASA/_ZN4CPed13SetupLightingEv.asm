; =========================================================
; Game Engine Function: _ZN4CPed13SetupLightingEv
; Address            : 0x4105F4 - 0x410698
; =========================================================

4105F4:  PUSH            {R4-R7,LR}
4105F6:  ADD             R7, SP, #0xC
4105F8:  PUSH.W          {R11}
4105FC:  SUB             SP, SP, #0x10
4105FE:  MOV             R4, R0
410600:  BLX             j__Z19ActivateDirectionalv; ActivateDirectional(void)
410604:  MOV.W           R0, #0x3F800000; this
410608:  BLX             j__ZN14CCarFXRenderer20SetFxEnvMapLightMultEf; CCarFXRenderer::SetFxEnvMapLightMult(float)
41060C:  LDRB.W          R0, [R4,#0x47]
410610:  LSLS            R0, R0, #0x1A
410612:  BMI             loc_410678
410614:  LDR             R0, [R4,#0x14]
410616:  MOV             R2, R4; float *
410618:  ADD.W           R1, R0, #0x30 ; '0'
41061C:  CMP             R0, #0
41061E:  IT EQ
410620:  ADDEQ           R1, R4, #4
410622:  VLDR            D16, [R1]
410626:  LDR             R0, [R1,#8]
410628:  ADD.W           R1, R4, #0x134; CVector *
41062C:  STR             R0, [SP,#0x20+var_18]
41062E:  MOVS            R0, #0
410630:  VSTR            D16, [SP,#0x20+var_20]
410634:  STR.W           R0, [R4,#0x134]
410638:  MOV             R0, SP; this
41063A:  BLX             j__ZN12CPointLights29GenerateLightsAffectingObjectEPK7CVectorPfP7CEntity; CPointLights::GenerateLightsAffectingObject(CVector const*,float *,CEntity *)
41063E:  MOV             R6, R0
410640:  MOV             R0, R4; this
410642:  MOVS            R1, #1; bool
410644:  MOVS            R5, #1
410646:  BLX             j__ZNK9CPhysical18GetLightingFromColEb; CPhysical::GetLightingFromCol(bool)
41064A:  VLDR            S0, =0.95
41064E:  VMOV            S2, R0
410652:  VMUL.F32        S0, S2, S0
410656:  VLDR            S2, =0.05
41065A:  VADD.F32        S0, S0, S2
41065E:  VMOV            S2, R6
410662:  VMUL.F32        S0, S2, S0
410666:  VMOV            R4, S0
41066A:  MOV             R0, R4; this
41066C:  BLX             j__ZN14CCarFXRenderer20SetFxEnvMapLightMultEf; CCarFXRenderer::SetFxEnvMapLightMult(float)
410670:  MOV             R0, R4; float
410672:  BLX             j__Z36SetLightColoursForPedsCarsAndObjectsf; SetLightColoursForPedsCarsAndObjects(float)
410676:  B               loc_41068E
410678:  LDR             R0, =(Scene_ptr - 0x410686)
41067A:  MOV             R1, #0x3E3851EC
410682:  ADD             R0, PC; Scene_ptr
410684:  LDR             R0, [R0]; Scene
410686:  LDR             R0, [R0]
410688:  BLX             j__Z36WorldReplaceNormalLightsWithScorchedP7RpWorldf; WorldReplaceNormalLightsWithScorched(RpWorld *,float)
41068C:  MOVS            R5, #0
41068E:  MOV             R0, R5
410690:  ADD             SP, SP, #0x10
410692:  POP.W           {R11}
410696:  POP             {R4-R7,PC}
