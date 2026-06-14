; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo23ShutdownEnvironmentMapsEv
; Address            : 0x388E24 - 0x388E4E
; =========================================================

388E24:  PUSH            {R4,R5,R7,LR}
388E26:  ADD             R7, SP, #8
388E28:  LDR             R0, =(gpWhiteTexture_ptr - 0x388E2E)
388E2A:  ADD             R0, PC; gpWhiteTexture_ptr
388E2C:  LDR             R5, [R0]; gpWhiteTexture
388E2E:  LDR             R0, [R5]
388E30:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
388E34:  LDR             R0, =(dword_932090 - 0x388E3E)
388E36:  MOVS            R4, #0
388E38:  STR             R4, [R5]
388E3A:  ADD             R0, PC; dword_932090
388E3C:  LDR             R0, [R0]
388E3E:  CMP             R0, #0
388E40:  IT NE
388E42:  BLXNE           j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
388E46:  LDR             R0, =(dword_932090 - 0x388E4C)
388E48:  ADD             R0, PC; dword_932090
388E4A:  STR             R4, [R0]
388E4C:  POP             {R4,R5,R7,PC}
