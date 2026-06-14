; =========================================================
; Game Engine Function: _ZN7CObject14RemoveLightingEb
; Address            : 0x4105C4 - 0x4105E6
; =========================================================

4105C4:  CMP             R1, #1
4105C6:  IT NE
4105C8:  BXNE            LR
4105CA:  PUSH            {R7,LR}
4105CC:  MOV             R7, SP
4105CE:  LDRB.W          R0, [R0,#0x47]
4105D2:  LSLS            R0, R0, #0x1A; this
4105D4:  IT PL
4105D6:  BLXPL           j__ZN12CPointLights27RemoveLightsAffectingObjectEv; CPointLights::RemoveLightsAffectingObject(void)
4105DA:  BLX             j__Z17SetAmbientColoursv; SetAmbientColours(void)
4105DE:  POP.W           {R7,LR}
4105E2:  B.W             sub_18FE0C
