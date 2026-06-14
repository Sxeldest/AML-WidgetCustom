; =========================================================
; Game Engine Function: _ZN15CCutsceneObject13SetupLightingEv
; Address            : 0x41078C - 0x410830
; =========================================================

41078C:  PUSH            {R4-R7,LR}
41078E:  ADD             R7, SP, #0xC
410790:  PUSH.W          {R11}
410794:  SUB             SP, SP, #0x10
410796:  MOV             R4, R0
410798:  BLX             j__Z19ActivateDirectionalv; ActivateDirectional(void)
41079C:  MOV.W           R0, #0x3F800000; this
4107A0:  BLX             j__ZN14CCarFXRenderer20SetFxEnvMapLightMultEf; CCarFXRenderer::SetFxEnvMapLightMult(float)
4107A4:  LDRB.W          R0, [R4,#0x47]
4107A8:  LSLS            R0, R0, #0x1A
4107AA:  BMI             loc_410810
4107AC:  LDR             R0, [R4,#0x14]
4107AE:  MOV             R2, R4; float *
4107B0:  ADD.W           R1, R0, #0x30 ; '0'
4107B4:  CMP             R0, #0
4107B6:  IT EQ
4107B8:  ADDEQ           R1, R4, #4
4107BA:  VLDR            D16, [R1]
4107BE:  LDR             R0, [R1,#8]
4107C0:  ADD.W           R1, R4, #0x134; CVector *
4107C4:  STR             R0, [SP,#0x20+var_18]
4107C6:  MOVS            R0, #0
4107C8:  VSTR            D16, [SP,#0x20+var_20]
4107CC:  STR.W           R0, [R4,#0x134]
4107D0:  MOV             R0, SP; this
4107D2:  BLX             j__ZN12CPointLights29GenerateLightsAffectingObjectEPK7CVectorPfP7CEntity; CPointLights::GenerateLightsAffectingObject(CVector const*,float *,CEntity *)
4107D6:  MOV             R6, R0
4107D8:  MOV             R0, R4; this
4107DA:  MOVS            R1, #1; bool
4107DC:  MOVS            R5, #1
4107DE:  BLX             j__ZNK9CPhysical18GetLightingFromColEb; CPhysical::GetLightingFromCol(bool)
4107E2:  VLDR            S0, =0.95
4107E6:  VMOV            S2, R0
4107EA:  VMUL.F32        S0, S2, S0
4107EE:  VLDR            S2, =0.05
4107F2:  VADD.F32        S0, S0, S2
4107F6:  VMOV            S2, R6
4107FA:  VMUL.F32        S0, S2, S0
4107FE:  VMOV            R4, S0
410802:  MOV             R0, R4; this
410804:  BLX             j__ZN14CCarFXRenderer20SetFxEnvMapLightMultEf; CCarFXRenderer::SetFxEnvMapLightMult(float)
410808:  MOV             R0, R4; float
41080A:  BLX             j__Z36SetLightColoursForPedsCarsAndObjectsf; SetLightColoursForPedsCarsAndObjects(float)
41080E:  B               loc_410826
410810:  LDR             R0, =(Scene_ptr - 0x41081E)
410812:  MOV             R1, #0x3E3851EC
41081A:  ADD             R0, PC; Scene_ptr
41081C:  LDR             R0, [R0]; Scene
41081E:  LDR             R0, [R0]
410820:  BLX             j__Z36WorldReplaceNormalLightsWithScorchedP7RpWorldf; WorldReplaceNormalLightsWithScorched(RpWorld *,float)
410824:  MOVS            R5, #0
410826:  MOV             R0, R5
410828:  ADD             SP, SP, #0x10
41082A:  POP.W           {R11}
41082E:  POP             {R4-R7,PC}
