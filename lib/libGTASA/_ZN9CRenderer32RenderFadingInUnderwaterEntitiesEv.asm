; =========================================================
; Game Engine Function: _ZN9CRenderer32RenderFadingInUnderwaterEntitiesEv
; Address            : 0x40FC7A - 0x40FC8E
; =========================================================

40FC7A:  PUSH            {R7,LR}
40FC7C:  MOV             R7, SP
40FC7E:  BLX             j__Z21DeActivateDirectionalv; DeActivateDirectional(void)
40FC82:  BLX             j__Z17SetAmbientColoursv; SetAmbientColours(void)
40FC86:  POP.W           {R7,LR}
40FC8A:  B.W             sub_19C378
