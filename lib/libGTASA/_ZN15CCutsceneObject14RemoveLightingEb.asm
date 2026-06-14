; =========================================================
; Game Engine Function: _ZN15CCutsceneObject14RemoveLightingEb
; Address            : 0x41083C - 0x410858
; =========================================================

41083C:  PUSH            {R7,LR}
41083E:  MOV             R7, SP
410840:  LDRB.W          R0, [R0,#0x47]
410844:  LSLS            R0, R0, #0x1A; this
410846:  IT PL
410848:  BLXPL           j__ZN12CPointLights27RemoveLightsAffectingObjectEv; CPointLights::RemoveLightsAffectingObject(void)
41084C:  BLX             j__Z17SetAmbientColoursv; SetAmbientColours(void)
410850:  POP.W           {R7,LR}
410854:  B.W             sub_18FE0C
