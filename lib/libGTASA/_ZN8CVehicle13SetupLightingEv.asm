; =========================================================
; Game Engine Function: _ZN8CVehicle13SetupLightingEv
; Address            : 0x4106C0 - 0x410764
; =========================================================

4106C0:  PUSH            {R4-R7,LR}
4106C2:  ADD             R7, SP, #0xC
4106C4:  PUSH.W          {R11}
4106C8:  SUB             SP, SP, #0x10
4106CA:  MOV             R4, R0
4106CC:  BLX             j__Z19ActivateDirectionalv; ActivateDirectional(void)
4106D0:  MOV.W           R0, #0x3F800000; this
4106D4:  BLX             j__ZN14CCarFXRenderer20SetFxEnvMapLightMultEf; CCarFXRenderer::SetFxEnvMapLightMult(float)
4106D8:  LDRB.W          R0, [R4,#0x47]
4106DC:  LSLS            R0, R0, #0x1A
4106DE:  BMI             loc_410744
4106E0:  LDR             R0, [R4,#0x14]
4106E2:  MOV             R2, R4; float *
4106E4:  ADD.W           R1, R0, #0x30 ; '0'
4106E8:  CMP             R0, #0
4106EA:  IT EQ
4106EC:  ADDEQ           R1, R4, #4
4106EE:  VLDR            D16, [R1]
4106F2:  LDR             R0, [R1,#8]
4106F4:  ADD.W           R1, R4, #0x134; CVector *
4106F8:  STR             R0, [SP,#0x20+var_18]
4106FA:  MOVS            R0, #0
4106FC:  VSTR            D16, [SP,#0x20+var_20]
410700:  STR.W           R0, [R4,#0x134]
410704:  MOV             R0, SP; this
410706:  BLX             j__ZN12CPointLights29GenerateLightsAffectingObjectEPK7CVectorPfP7CEntity; CPointLights::GenerateLightsAffectingObject(CVector const*,float *,CEntity *)
41070A:  MOV             R6, R0
41070C:  MOV             R0, R4; this
41070E:  MOVS            R1, #1; bool
410710:  MOVS            R5, #1
410712:  BLX             j__ZNK9CPhysical18GetLightingFromColEb; CPhysical::GetLightingFromCol(bool)
410716:  VLDR            S0, =0.95
41071A:  VMOV            S2, R0
41071E:  VMUL.F32        S0, S2, S0
410722:  VLDR            S2, =0.05
410726:  VADD.F32        S0, S0, S2
41072A:  VMOV            S2, R6
41072E:  VMUL.F32        S0, S2, S0
410732:  VMOV            R4, S0
410736:  MOV             R0, R4; this
410738:  BLX             j__ZN14CCarFXRenderer20SetFxEnvMapLightMultEf; CCarFXRenderer::SetFxEnvMapLightMult(float)
41073C:  MOV             R0, R4; float
41073E:  BLX             j__Z36SetLightColoursForPedsCarsAndObjectsf; SetLightColoursForPedsCarsAndObjects(float)
410742:  B               loc_41075A
410744:  LDR             R0, =(Scene_ptr - 0x410752)
410746:  MOV             R1, #0x3E3851EC
41074E:  ADD             R0, PC; Scene_ptr
410750:  LDR             R0, [R0]; Scene
410752:  LDR             R0, [R0]
410754:  BLX             j__Z36WorldReplaceNormalLightsWithScorchedP7RpWorldf; WorldReplaceNormalLightsWithScorched(RpWorld *,float)
410758:  MOVS            R5, #0
41075A:  MOV             R0, R5
41075C:  ADD             SP, SP, #0x10
41075E:  POP.W           {R11}
410762:  POP             {R4-R7,PC}
