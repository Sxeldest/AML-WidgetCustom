; =========================================================
; Game Engine Function: _ZN8CVehicle14RemoveLightingEb
; Address            : 0x410770 - 0x41078C
; =========================================================

410770:  PUSH            {R7,LR}
410772:  MOV             R7, SP
410774:  LDRB.W          R0, [R0,#0x47]
410778:  LSLS            R0, R0, #0x1A; this
41077A:  IT PL
41077C:  BLXPL           j__ZN12CPointLights27RemoveLightsAffectingObjectEv; CPointLights::RemoveLightsAffectingObject(void)
410780:  BLX             j__Z17SetAmbientColoursv; SetAmbientColours(void)
410784:  POP.W           {R7,LR}
410788:  B.W             sub_18FE0C
