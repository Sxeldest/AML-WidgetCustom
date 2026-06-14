; =========================================================
; Game Engine Function: _Z40SetLightsForInfraredVisionDefaultObjectsv
; Address            : 0x5D2254 - 0x5D2288
; =========================================================

5D2254:  PUSH            {R4,R6,R7,LR}
5D2256:  ADD             R7, SP, #8
5D2258:  SUB             SP, SP, #0x10
5D225A:  LDR             R0, =(pAmbient_ptr - 0x5D2264)
5D225C:  MOV             R4, SP
5D225E:  LDR             R1, =(unk_60F038 - 0x5D2266)
5D2260:  ADD             R0, PC; pAmbient_ptr
5D2262:  ADD             R1, PC; unk_60F038
5D2264:  LDR             R0, [R0]; pAmbient
5D2266:  VLD1.64         {D16-D17}, [R1]
5D226A:  MOV             R1, R4
5D226C:  LDR             R0, [R0]
5D226E:  VST1.64         {D16-D17}, [R4,#0x18+var_18]
5D2272:  BLX.W           j__Z15RpLightSetColorP7RpLightPK10RwRGBAReal; RpLightSetColor(RpLight *,RwRGBAReal const*)
5D2276:  LDR             R0, =(pDirect_ptr - 0x5D227E)
5D2278:  MOV             R1, R4
5D227A:  ADD             R0, PC; pDirect_ptr
5D227C:  LDR             R0, [R0]; pDirect
5D227E:  LDR             R0, [R0]
5D2280:  BLX.W           j__Z15RpLightSetColorP7RpLightPK10RwRGBAReal; RpLightSetColor(RpLight *,RwRGBAReal const*)
5D2284:  ADD             SP, SP, #0x10
5D2286:  POP             {R4,R6,R7,PC}
