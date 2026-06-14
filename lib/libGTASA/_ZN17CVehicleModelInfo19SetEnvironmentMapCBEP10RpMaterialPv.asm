; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo19SetEnvironmentMapCBEP10RpMaterialPv
; Address            : 0x388E78 - 0x388EC8
; =========================================================

388E78:  PUSH            {R4,R6,R7,LR}
388E7A:  ADD             R7, SP, #8
388E7C:  MOV             R4, R0
388E7E:  MOVW            R0, #0xFFFF
388E82:  CMP             R1, R0
388E84:  BEQ             loc_388EBC
388E86:  MOV             R0, R4
388E88:  BLX             j__Z25RpMatFXMaterialGetEffectsPK10RpMaterial; RpMatFXMaterialGetEffects(RpMaterial const*)
388E8C:  CMP             R0, #2
388E8E:  BNE             loc_388EB8
388E90:  LDR             R0, =(dword_932090 - 0x388E96)
388E92:  ADD             R0, PC; dword_932090
388E94:  LDR             R1, [R0]
388E96:  MOV             R0, R4
388E98:  BLX             j__Z29RpMatFXMaterialSetEnvMapFrameP10RpMaterialP7RwFrame; RpMatFXMaterialSetEnvMapFrame(RpMaterial *,RwFrame *)
388E9C:  LDR             R0, [R4]
388E9E:  CBNZ            R0, loc_388EAE
388EA0:  LDR             R0, =(gpWhiteTexture_ptr - 0x388EA6)
388EA2:  ADD             R0, PC; gpWhiteTexture_ptr
388EA4:  LDR             R0, [R0]; gpWhiteTexture
388EA6:  LDR             R1, [R0]
388EA8:  MOV             R0, R4
388EAA:  BLX             j__Z20RpMaterialSetTextureP10RpMaterialP9RwTexture; RpMaterialSetTexture(RpMaterial *,RwTexture *)
388EAE:  MOV             R0, R4
388EB0:  MOV.W           R1, #0x3E800000
388EB4:  BLX             j__Z35RpMatFXMaterialSetEnvMapCoefficientP10RpMaterialf; RpMatFXMaterialSetEnvMapCoefficient(RpMaterial *,float)
388EB8:  MOV             R0, R4
388EBA:  POP             {R4,R6,R7,PC}
388EBC:  MOV             R0, R4
388EBE:  MOVS            R1, #0
388EC0:  BLX             j__Z25RpMatFXMaterialSetEffectsP10RpMaterial20RpMatFXMaterialFlags; RpMatFXMaterialSetEffects(RpMaterial *,RpMatFXMaterialFlags)
388EC4:  MOV             R0, R4
388EC6:  POP             {R4,R6,R7,PC}
