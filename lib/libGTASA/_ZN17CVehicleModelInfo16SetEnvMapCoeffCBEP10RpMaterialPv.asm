; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo16SetEnvMapCoeffCBEP10RpMaterialPv
; Address            : 0x388ED0 - 0x388EFE
; =========================================================

388ED0:  PUSH            {R4,R5,R7,LR}
388ED2:  ADD             R7, SP, #8
388ED4:  MOV             R5, R1
388ED6:  MOV             R4, R0
388ED8:  BLX             j__Z25RpMatFXMaterialGetEffectsPK10RpMaterial; RpMatFXMaterialGetEffects(RpMaterial const*)
388EDC:  CMP             R0, #2
388EDE:  BNE             loc_388EFA
388EE0:  VMOV            S0, R5
388EE4:  VLDR            S2, =1000.0
388EE8:  MOV             R0, R4
388EEA:  VCVT.F32.U32    S0, S0
388EEE:  VDIV.F32        S0, S0, S2
388EF2:  VMOV            R1, S0
388EF6:  BLX             j__Z35RpMatFXMaterialSetEnvMapCoefficientP10RpMaterialf; RpMatFXMaterialSetEnvMapCoefficient(RpMaterial *,float)
388EFA:  MOV             R0, R4
388EFC:  POP             {R4,R5,R7,PC}
