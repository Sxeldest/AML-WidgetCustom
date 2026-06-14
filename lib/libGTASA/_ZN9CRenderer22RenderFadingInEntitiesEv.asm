; =========================================================
; Game Engine Function: _ZN9CRenderer22RenderFadingInEntitiesEv
; Address            : 0x40FC4E - 0x40FC7A
; =========================================================

40FC4E:  PUSH            {R7,LR}
40FC50:  MOV             R7, SP
40FC52:  MOVS            R0, #0xE
40FC54:  MOVS            R1, #1
40FC56:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
40FC5A:  MOVS            R0, #0xC
40FC5C:  MOVS            R1, #1
40FC5E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
40FC62:  MOVS            R0, #0x14
40FC64:  MOVS            R1, #2
40FC66:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
40FC6A:  BLX             j__Z21DeActivateDirectionalv; DeActivateDirectional(void)
40FC6E:  BLX             j__Z17SetAmbientColoursv; SetAmbientColours(void)
40FC72:  POP.W           {R7,LR}
40FC76:  B.W             sub_18A878
