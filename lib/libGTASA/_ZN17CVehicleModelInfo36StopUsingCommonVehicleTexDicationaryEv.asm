; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo36StopUsingCommonVehicleTexDicationaryEv
; Address            : 0x386E30 - 0x386E44
; =========================================================

386E30:  PUSH            {R4,R6,R7,LR}
386E32:  ADD             R7, SP, #8
386E34:  LDR             R4, =(dword_931878 - 0x386E3A)
386E36:  ADD             R4, PC; dword_931878
386E38:  LDR             R0, [R4]
386E3A:  BLX             j__Z24RwTextureSetFindCallBackPFP9RwTexturePKcE; RwTextureSetFindCallBack(RwTexture * (*)(char const*))
386E3E:  MOVS            R0, #0
386E40:  STR             R0, [R4]
386E42:  POP             {R4,R6,R7,PC}
