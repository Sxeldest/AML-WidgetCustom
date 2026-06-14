; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo24GetMatFXEffectMaterialCBEP10RpMaterialPv
; Address            : 0x388E5C - 0x388E78
; =========================================================

388E5C:  PUSH            {R4,R5,R7,LR}
388E5E:  ADD             R7, SP, #8
388E60:  MOV             R5, R1
388E62:  MOV             R4, R0
388E64:  BLX             j__Z25RpMatFXMaterialGetEffectsPK10RpMaterial; RpMatFXMaterialGetEffects(RpMaterial const*)
388E68:  CBZ             R0, loc_388E74
388E6A:  MOV             R0, R4
388E6C:  BLX             j__Z25RpMatFXMaterialGetEffectsPK10RpMaterial; RpMatFXMaterialGetEffects(RpMaterial const*)
388E70:  MOVS            R4, #0
388E72:  STR             R0, [R5]
388E74:  MOV             R0, R4
388E76:  POP             {R4,R5,R7,PC}
