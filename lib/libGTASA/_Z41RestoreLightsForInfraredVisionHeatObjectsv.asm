; =========================================================
; Game Engine Function: _Z41RestoreLightsForInfraredVisionHeatObjectsv
; Address            : 0x5D221C - 0x5D2244
; =========================================================

5D221C:  PUSH            {R7,LR}
5D221E:  MOV             R7, SP
5D2220:  LDR             R0, =(pAmbient_ptr - 0x5D2228)
5D2222:  LDR             R1, =(unk_A83D50 - 0x5D222A)
5D2224:  ADD             R0, PC; pAmbient_ptr
5D2226:  ADD             R1, PC; unk_A83D50
5D2228:  LDR             R0, [R0]; pAmbient
5D222A:  LDR             R0, [R0]
5D222C:  BLX.W           j__Z15RpLightSetColorP7RpLightPK10RwRGBAReal; RpLightSetColor(RpLight *,RwRGBAReal const*)
5D2230:  LDR             R0, =(pDirect_ptr - 0x5D2238)
5D2232:  LDR             R1, =(unk_A83D60 - 0x5D223A)
5D2234:  ADD             R0, PC; pDirect_ptr
5D2236:  ADD             R1, PC; unk_A83D60
5D2238:  LDR             R0, [R0]; pDirect
5D223A:  LDR             R0, [R0]
5D223C:  POP.W           {R7,LR}
5D2240:  B.W             sub_193254
