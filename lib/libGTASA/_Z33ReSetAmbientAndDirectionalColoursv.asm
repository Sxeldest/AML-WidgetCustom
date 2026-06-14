; =========================================================
; Game Engine Function: _Z33ReSetAmbientAndDirectionalColoursv
; Address            : 0x5D1F0C - 0x5D1F38
; =========================================================

5D1F0C:  PUSH            {R7,LR}
5D1F0E:  MOV             R7, SP
5D1F10:  LDR             R0, =(pAmbient_ptr - 0x5D1F18)
5D1F12:  LDR             R1, =(AmbientLightColourForFrame_ptr - 0x5D1F1A)
5D1F14:  ADD             R0, PC; pAmbient_ptr
5D1F16:  ADD             R1, PC; AmbientLightColourForFrame_ptr
5D1F18:  LDR             R0, [R0]; pAmbient
5D1F1A:  LDR             R1, [R1]; AmbientLightColourForFrame
5D1F1C:  LDR             R0, [R0]
5D1F1E:  BLX.W           j__Z15RpLightSetColorP7RpLightPK10RwRGBAReal; RpLightSetColor(RpLight *,RwRGBAReal const*)
5D1F22:  LDR             R0, =(pDirect_ptr - 0x5D1F2A)
5D1F24:  LDR             R1, =(DirectionalLightColourForFrame_ptr - 0x5D1F2C)
5D1F26:  ADD             R0, PC; pDirect_ptr
5D1F28:  ADD             R1, PC; DirectionalLightColourForFrame_ptr
5D1F2A:  LDR             R0, [R0]; pDirect
5D1F2C:  LDR             R1, [R1]; DirectionalLightColourForFrame
5D1F2E:  LDR             R0, [R0]
5D1F30:  POP.W           {R7,LR}
5D1F34:  B.W             sub_193254
