; =========================================================
; Game Engine Function: _ZN11CAutomobile33CustomCarPlate_AfterRenderingStopEP17CVehicleModelInfo
; Address            : 0x55BE74 - 0x55BE9A
; =========================================================

55BE74:  LDR             R0, [R1,#0x3C]
55BE76:  CMP             R0, #0
55BE78:  IT EQ
55BE7A:  BXEQ            LR
55BE7C:  PUSH            {R4,R6,R7,LR}
55BE7E:  ADD             R7, SP, #0x10+var_8
55BE80:  LDR             R4, =(dword_A01CF8 - 0x55BE86)
55BE82:  ADD             R4, PC; dword_A01CF8
55BE84:  LDR             R1, [R4]
55BE86:  BLX             j__Z20RpMaterialSetTextureP10RpMaterialP9RwTexture; RpMaterialSetTexture(RpMaterial *,RwTexture *)
55BE8A:  LDR             R0, [R4]
55BE8C:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
55BE90:  MOVS            R0, #0
55BE92:  STR             R0, [R4]
55BE94:  POP.W           {R4,R6,R7,LR}
55BE98:  BX              LR
