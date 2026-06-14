; =========================================================
; Game Engine Function: _Z37SetLightsForInfraredVisionHeatObjectsv
; Address            : 0x5D217C - 0x5D21A6
; =========================================================

5D217C:  PUSH            {R4,R6,R7,LR}
5D217E:  ADD             R7, SP, #8
5D2180:  LDR             R0, =(pAmbient_ptr - 0x5D2188)
5D2182:  LDR             R1, =(_ZN12CPostEffects30m_fInfraredVisionHeatObjectColE_ptr - 0x5D218A)
5D2184:  ADD             R0, PC; pAmbient_ptr
5D2186:  ADD             R1, PC; _ZN12CPostEffects30m_fInfraredVisionHeatObjectColE_ptr
5D2188:  LDR             R0, [R0]; pAmbient
5D218A:  LDR             R4, [R1]; CPostEffects::m_fInfraredVisionHeatObjectCol ...
5D218C:  LDR             R0, [R0]
5D218E:  MOV             R1, R4
5D2190:  BLX.W           j__Z15RpLightSetColorP7RpLightPK10RwRGBAReal; RpLightSetColor(RpLight *,RwRGBAReal const*)
5D2194:  LDR             R0, =(pDirect_ptr - 0x5D219C)
5D2196:  MOV             R1, R4
5D2198:  ADD             R0, PC; pDirect_ptr
5D219A:  LDR             R0, [R0]; pDirect
5D219C:  LDR             R0, [R0]
5D219E:  POP.W           {R4,R6,R7,LR}
5D21A2:  B.W             sub_193254
