; =========================================================
; Game Engine Function: _ZN4CPed14RemoveLightingEb
; Address            : 0x4106A4 - 0x4106C0
; =========================================================

4106A4:  PUSH            {R7,LR}
4106A6:  MOV             R7, SP
4106A8:  LDRB.W          R0, [R0,#0x47]
4106AC:  LSLS            R0, R0, #0x1A; this
4106AE:  IT PL
4106B0:  BLXPL           j__ZN12CPointLights27RemoveLightsAffectingObjectEv; CPointLights::RemoveLightsAffectingObject(void)
4106B4:  BLX             j__Z17SetAmbientColoursv; SetAmbientColours(void)
4106B8:  POP.W           {R7,LR}
4106BC:  B.W             sub_18FE0C
