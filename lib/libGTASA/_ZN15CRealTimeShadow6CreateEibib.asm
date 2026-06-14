; =========================================================
; Game Engine Function: _ZN15CRealTimeShadow6CreateEibib
; Address            : 0x5B7C50 - 0x5B7D44
; =========================================================

5B7C50:  PUSH            {R4-R7,LR}
5B7C52:  ADD             R7, SP, #0xC
5B7C54:  PUSH.W          {R8,R9,R11}
5B7C58:  SUB             SP, SP, #0x10
5B7C5A:  MOV             R4, SP
5B7C5C:  BFC.W           R4, #0, #4
5B7C60:  MOV             SP, R4
5B7C62:  MOV             R4, R0
5B7C64:  MOVS            R0, #1; int
5B7C66:  MOV             R9, R3
5B7C68:  MOV             R8, R2
5B7C6A:  MOV             R6, R1
5B7C6C:  BLX.W           j__Z13RpLightCreatei; RpLightCreate(int)
5B7C70:  MOVS            R5, #0
5B7C72:  CMP             R0, #0
5B7C74:  STR             R0, [R4,#0x1C]
5B7C76:  BEQ             loc_5B7D36
5B7C78:  ADR             R1, dword_5B7D50
5B7C7A:  VLD1.64         {D16-D17}, [R1@128]
5B7C7E:  MOV             R1, SP
5B7C80:  VST1.64         {D16-D17}, [R1@128,#0x28+var_28]
5B7C84:  BLX.W           j__Z15RpLightSetColorP7RpLightPK10RwRGBAReal; RpLightSetColor(RpLight *,RwRGBAReal const*)
5B7C88:  BLX.W           j__Z13RwFrameCreatev; RwFrameCreate(void)
5B7C8C:  MOV             R1, R0
5B7C8E:  LDR             R0, [R4,#0x1C]
5B7C90:  BLX.W           j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
5B7C94:  MOVS            R0, #8; unsigned int
5B7C96:  BLX.W           _Znwj; operator new(uint)
5B7C9A:  MOVS            R1, #4
5B7C9C:  CMP             R6, #1
5B7C9E:  STRD.W          R5, R5, [R0]
5B7CA2:  STR             R0, [R4,#8]
5B7CA4:  IT EQ
5B7CA6:  MOVEQ           R1, #8
5B7CA8:  CMP             R6, #0
5B7CAA:  IT EQ
5B7CAC:  MOVEQ           R1, #9; int
5B7CAE:  BLX.W           j__ZN13CShadowCamera6CreateEi; CShadowCamera::Create(int)
5B7CB2:  LDR             R5, [R4,#8]
5B7CB4:  CBZ             R0, loc_5B7D00
5B7CB6:  LDR             R0, [R4,#0x1C]
5B7CB8:  LDR             R1, [R5]
5B7CBA:  LDR             R6, [R7,#arg_0]
5B7CBC:  LDR             R0, [R0,#4]
5B7CBE:  LDR             R5, [R1,#4]
5B7CC0:  VLDR            D16, [R0,#0x10]
5B7CC4:  LDR             R1, [R0,#0x18]
5B7CC6:  STR             R1, [R5,#0x18]
5B7CC8:  VSTR            D16, [R5,#0x10]
5B7CCC:  VLDR            D16, [R0,#0x20]
5B7CD0:  LDR             R1, [R0,#0x28]
5B7CD2:  STR             R1, [R5,#0x28]
5B7CD4:  VSTR            D16, [R5,#0x20]
5B7CD8:  VLDR            D16, [R0,#0x30]
5B7CDC:  LDR             R0, [R0,#0x38]
5B7CDE:  STR             R0, [R5,#0x38]
5B7CE0:  ADD.W           R0, R5, #0x10
5B7CE4:  VSTR            D16, [R5,#0x30]
5B7CE8:  BLX.W           j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
5B7CEC:  MOV             R0, R5
5B7CEE:  BLX.W           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
5B7CF2:  MOVS            R5, #1
5B7CF4:  STR.W           R9, [R4,#0x10]
5B7CF8:  STRB.W          R8, [R4,#0xC]
5B7CFC:  STRB            R6, [R4,#0x14]
5B7CFE:  B               loc_5B7D36
5B7D00:  CBZ             R5, loc_5B7D12
5B7D02:  MOV             R0, R5; this
5B7D04:  BLX.W           j__ZN13CShadowCamera7DestroyEv; CShadowCamera::Destroy(void)
5B7D08:  MOV             R0, R5; void *
5B7D0A:  BLX.W           _ZdlPv; operator delete(void *)
5B7D0E:  MOVS            R0, #0
5B7D10:  STR             R0, [R4,#8]
5B7D12:  MOV.W           R0, #0xFFFFFFFF
5B7D16:  MOVS            R5, #0
5B7D18:  STR             R0, [R4,#0x18]
5B7D1A:  LDR             R0, [R4,#0x1C]
5B7D1C:  STR             R5, [R4]
5B7D1E:  CBZ             R0, loc_5B7D36
5B7D20:  MOVS            R1, #0
5B7D22:  LDR             R6, [R0,#4]
5B7D24:  BLX.W           j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
5B7D28:  MOV             R0, R6
5B7D2A:  BLX.W           j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
5B7D2E:  LDR             R0, [R4,#0x1C]
5B7D30:  BLX.W           j__Z14RpLightDestroyP7RpLight; RpLightDestroy(RpLight *)
5B7D34:  STR             R5, [R4,#0x1C]
5B7D36:  SUB.W           R4, R7, #-var_18
5B7D3A:  MOV             R0, R5
5B7D3C:  MOV             SP, R4
5B7D3E:  POP.W           {R8,R9,R11}
5B7D42:  POP             {R4-R7,PC}
