; =========================================================
; Game Engine Function: _ZN7CEntity13SetupLightingEv
; Address            : 0x41048C - 0x4104CC
; =========================================================

41048C:  PUSH            {R4,R6,R7,LR}
41048E:  ADD             R7, SP, #8
410490:  MOV             R4, R0
410492:  LDRB            R0, [R4,#0x1F]
410494:  LSLS            R0, R0, #0x1B
410496:  ITT PL
410498:  MOVPL           R0, #0
41049A:  POPPL           {R4,R6,R7,PC}
41049C:  BLX             j__Z19ActivateDirectionalv; ActivateDirectional(void)
4104A0:  LDR             R1, [R4,#0x14]
4104A2:  MOV             R2, R4; float *
4104A4:  ADD.W           R0, R1, #0x30 ; '0'
4104A8:  CMP             R1, #0
4104AA:  IT EQ
4104AC:  ADDEQ           R0, R4, #4; this
4104AE:  MOVS            R1, #0; CVector *
4104B0:  BLX             j__ZN12CPointLights29GenerateLightsAffectingObjectEPK7CVectorPfP7CEntity; CPointLights::GenerateLightsAffectingObject(CVector const*,float *,CEntity *)
4104B4:  VMOV.F32        S0, #0.5
4104B8:  VMOV            S2, R0
4104BC:  VMUL.F32        S0, S2, S0
4104C0:  VMOV            R0, S0; float
4104C4:  BLX             j__Z36SetLightColoursForPedsCarsAndObjectsf; SetLightColoursForPedsCarsAndObjects(float)
4104C8:  MOVS            R0, #1
4104CA:  POP             {R4,R6,R7,PC}
