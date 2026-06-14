; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline17SetFxEnvShininessEP10RpMaterialf
; Address            : 0x2CAF04 - 0x2CAF36
; =========================================================

2CAF04:  PUSH            {R4,R6,R7,LR}
2CAF06:  ADD             R7, SP, #8
2CAF08:  MOV             R4, R1
2CAF0A:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr - 0x2CAF10)
2CAF0C:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21ms_envMapPluginOffsetE_ptr
2CAF0E:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset ...
2CAF10:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_envMapPluginOffset
2CAF12:  ADD             R0, R1
2CAF14:  BLX             j__ZN24CCustomCarEnvMapPipeline37DuplicateCustomEnvMapPipeMaterialDataEPP28CustomEnvMapPipeMaterialData; CCustomCarEnvMapPipeline::DuplicateCustomEnvMapPipeMaterialData(CustomEnvMapPipeMaterialData **)
2CAF18:  CMP             R0, #0
2CAF1A:  ITTTT NE
2CAF1C:  VMOVNE          S0, R4
2CAF20:  VLDRNE          S2, =255.0
2CAF24:  VMULNE.F32      S0, S0, S2
2CAF28:  VCVTNE.U32.F32  S0, S0
2CAF2C:  ITT NE
2CAF2E:  VMOVNE          R1, S0
2CAF32:  STRBNE          R1, [R0,#4]
2CAF34:  POP             {R4,R6,R7,PC}
