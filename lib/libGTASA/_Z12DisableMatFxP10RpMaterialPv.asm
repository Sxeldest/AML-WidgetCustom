; =========================================================
; Game Engine Function: _Z12DisableMatFxP10RpMaterialPv
; Address            : 0x5533A0 - 0x5533B0
; =========================================================

5533A0:  PUSH            {R4,R6,R7,LR}
5533A2:  ADD             R7, SP, #8
5533A4:  MOVS            R1, #0
5533A6:  MOV             R4, R0
5533A8:  BLX             j__Z25RpMatFXMaterialSetEffectsP10RpMaterial20RpMatFXMaterialFlags; RpMatFXMaterialSetEffects(RpMaterial *,RpMatFXMaterialFlags)
5533AC:  MOV             R0, R4
5533AE:  POP             {R4,R6,R7,PC}
