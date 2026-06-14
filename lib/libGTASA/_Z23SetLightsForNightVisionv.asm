; =========================================================
; Game Engine Function: _Z23SetLightsForNightVisionv
; Address            : 0x5D2294 - 0x5D22C8
; =========================================================

5D2294:  PUSH            {R4,R6,R7,LR}
5D2296:  ADD             R7, SP, #8
5D2298:  SUB             SP, SP, #0x10
5D229A:  LDR             R0, =(pAmbient_ptr - 0x5D22A4)
5D229C:  MOV             R4, SP
5D229E:  LDR             R1, =(unk_61FCC0 - 0x5D22A6)
5D22A0:  ADD             R0, PC; pAmbient_ptr
5D22A2:  ADD             R1, PC; unk_61FCC0
5D22A4:  LDR             R0, [R0]; pAmbient
5D22A6:  VLD1.64         {D16-D17}, [R1]
5D22AA:  MOV             R1, R4
5D22AC:  LDR             R0, [R0]
5D22AE:  VST1.64         {D16-D17}, [R4,#0x18+var_18]
5D22B2:  BLX.W           j__Z15RpLightSetColorP7RpLightPK10RwRGBAReal; RpLightSetColor(RpLight *,RwRGBAReal const*)
5D22B6:  LDR             R0, =(pDirect_ptr - 0x5D22BE)
5D22B8:  MOV             R1, R4
5D22BA:  ADD             R0, PC; pDirect_ptr
5D22BC:  LDR             R0, [R0]; pDirect
5D22BE:  LDR             R0, [R0]
5D22C0:  BLX.W           j__Z15RpLightSetColorP7RpLightPK10RwRGBAReal; RpLightSetColor(RpLight *,RwRGBAReal const*)
5D22C4:  ADD             SP, SP, #0x10
5D22C6:  POP             {R4,R6,R7,PC}
