; =========================================================
; Game Engine Function: _Z12LightsCreateP7RpWorld
; Address            : 0x46FB98 - 0x46FD10
; =========================================================

46FB98:  PUSH            {R4-R7,LR}
46FB9A:  ADD             R7, SP, #0xC
46FB9C:  PUSH.W          {R8-R11}
46FBA0:  SUB             SP, SP, #0x1C
46FBA2:  MOV             R11, R0
46FBA4:  MOVS            R5, #0
46FBA6:  CMP.W           R11, #0
46FBAA:  BEQ.W           loc_46FD06
46FBAE:  MOVS            R0, #2; int
46FBB0:  BLX             j__Z13RpLightCreatei; RpLightCreate(int)
46FBB4:  LDR             R1, =(pAmbient_ptr - 0x46FBC0)
46FBB6:  MOVS            R6, #1
46FBB8:  ADD.W           R8, SP, #0x38+var_2C
46FBBC:  ADD             R1, PC; pAmbient_ptr
46FBBE:  LDR.W           R10, [R1]; pAmbient
46FBC2:  MOV             R1, #0x3E4CCCCD
46FBCA:  STR.W           R0, [R10]
46FBCE:  STRB            R6, [R0,#2]
46FBD0:  MOV.W           R0, #0x3E800000
46FBD4:  STRD.W          R0, R0, [SP,#0x38+var_2C]
46FBD8:  LDR.W           R0, [R10]
46FBDC:  STR             R1, [SP,#0x38+var_24]
46FBDE:  MOV             R1, R8
46FBE0:  BLX             j__Z15RpLightSetColorP7RpLightPK10RwRGBAReal; RpLightSetColor(RpLight *,RwRGBAReal const*)
46FBE4:  MOVS            R0, #1; int
46FBE6:  BLX             j__Z13RpLightCreatei; RpLightCreate(int)
46FBEA:  LDR             R1, =(pDirect_ptr - 0x46FBF4)
46FBEC:  MOV.W           R9, #0x3F800000
46FBF0:  ADD             R1, PC; pDirect_ptr
46FBF2:  LDR             R4, [R1]; pDirect
46FBF4:  MOV             R1, #0x3EE66666
46FBFC:  STR             R0, [R4]
46FBFE:  STRB            R6, [R0,#2]
46FC00:  MOV             R0, #0x3F59999A
46FC08:  STR             R0, [SP,#0x38+var_28]
46FC0A:  LDR             R0, [R4]
46FC0C:  STR.W           R9, [SP,#0x38+var_2C]
46FC10:  STR             R1, [SP,#0x38+var_24]
46FC12:  MOV             R1, R8
46FC14:  BLX             j__Z15RpLightSetColorP7RpLightPK10RwRGBAReal; RpLightSetColor(RpLight *,RwRGBAReal const*)
46FC18:  LDR             R0, [R4]
46FC1A:  MOV.W           R1, #0x40000000
46FC1E:  BLX             j__Z16RpLightSetRadiusP7RpLightf; RpLightSetRadius(RpLight *,float)
46FC22:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
46FC26:  MOV             R6, R0
46FC28:  LDR             R0, [R4]
46FC2A:  MOV             R1, R6
46FC2C:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
46FC30:  MOVS            R2, #0
46FC32:  MOV             R1, SP
46FC34:  MOVT            R2, #0x4320
46FC38:  MOV             R0, R6
46FC3A:  MOVS            R3, #1
46FC3C:  STRD.W          R9, R9, [SP,#0x38+var_38]
46FC40:  STR             R5, [SP,#0x38+var_30]
46FC42:  BLX             j__Z13RwFrameRotateP7RwFramePK5RwV3df15RwOpCombineType; RwFrameRotate(RwFrame *,RwV3d const*,float,RwOpCombineType)
46FC46:  LDR.W           R1, [R10]
46FC4A:  MOV             R0, R11
46FC4C:  BLX             j__Z15RpWorldAddLightP7RpWorldP7RpLight; RpWorldAddLight(RpWorld *,RpLight *)
46FC50:  LDR             R1, [R4]
46FC52:  MOV             R0, R11
46FC54:  BLX             j__Z15RpWorldAddLightP7RpWorldP7RpLight; RpWorldAddLight(RpWorld *,RpLight *)
46FC58:  MOVS            R0, #1; int
46FC5A:  BLX             j__Z13RpLightCreatei; RpLightCreate(int)
46FC5E:  LDR             R1, =(pExtraDirectionals_ptr - 0x46FC68)
46FC60:  MOV.W           R10, #0x3F000000
46FC64:  ADD             R1, PC; pExtraDirectionals_ptr
46FC66:  LDR             R6, [R1]; pExtraDirectionals
46FC68:  MOV             R1, R8
46FC6A:  STR             R0, [R6]
46FC6C:  STRB            R5, [R0,#2]
46FC6E:  LDR             R0, [R6]
46FC70:  STRD.W          R9, R10, [SP,#0x38+var_2C]
46FC74:  STR             R5, [SP,#0x38+var_24]
46FC76:  BLX             j__Z15RpLightSetColorP7RpLightPK10RwRGBAReal; RpLightSetColor(RpLight *,RwRGBAReal const*)
46FC7A:  LDR             R0, [R6]
46FC7C:  MOV.W           R1, #0x40000000
46FC80:  BLX             j__Z16RpLightSetRadiusP7RpLightf; RpLightSetRadius(RpLight *,float)
46FC84:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
46FC88:  MOV             R1, R0
46FC8A:  LDR             R0, [R6]
46FC8C:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
46FC90:  LDR             R1, [R6]
46FC92:  MOV             R0, R11
46FC94:  BLX             j__Z15RpWorldAddLightP7RpWorldP7RpLight; RpWorldAddLight(RpWorld *,RpLight *)
46FC98:  MOVS            R0, #1; int
46FC9A:  BLX             j__Z13RpLightCreatei; RpLightCreate(int)
46FC9E:  STR             R0, [R6,#(dword_A83CD8 - 0xA83CD4)]
46FCA0:  MOV             R1, R8
46FCA2:  STRB            R5, [R0,#2]
46FCA4:  LDR             R0, [R6,#(dword_A83CD8 - 0xA83CD4)]
46FCA6:  STRD.W          R9, R10, [SP,#0x38+var_2C]
46FCAA:  STR             R5, [SP,#0x38+var_24]
46FCAC:  BLX             j__Z15RpLightSetColorP7RpLightPK10RwRGBAReal; RpLightSetColor(RpLight *,RwRGBAReal const*)
46FCB0:  LDR             R0, [R6,#(dword_A83CD8 - 0xA83CD4)]
46FCB2:  MOV.W           R1, #0x40000000
46FCB6:  BLX             j__Z16RpLightSetRadiusP7RpLightf; RpLightSetRadius(RpLight *,float)
46FCBA:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
46FCBE:  MOV             R1, R0
46FCC0:  LDR             R0, [R6,#(dword_A83CD8 - 0xA83CD4)]
46FCC2:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
46FCC6:  LDR             R1, [R6,#(dword_A83CD8 - 0xA83CD4)]
46FCC8:  MOV             R0, R11
46FCCA:  BLX             j__Z15RpWorldAddLightP7RpWorldP7RpLight; RpWorldAddLight(RpWorld *,RpLight *)
46FCCE:  MOVS            R0, #1; int
46FCD0:  BLX             j__Z13RpLightCreatei; RpLightCreate(int)
46FCD4:  STR             R0, [R6,#(dword_A83CDC - 0xA83CD4)]
46FCD6:  MOV             R1, R8
46FCD8:  STRB            R5, [R0,#2]
46FCDA:  LDR             R0, [R6,#(dword_A83CDC - 0xA83CD4)]
46FCDC:  STRD.W          R9, R10, [SP,#0x38+var_2C]
46FCE0:  STR             R5, [SP,#0x38+var_24]
46FCE2:  BLX             j__Z15RpLightSetColorP7RpLightPK10RwRGBAReal; RpLightSetColor(RpLight *,RwRGBAReal const*)
46FCE6:  LDR             R0, [R6,#(dword_A83CDC - 0xA83CD4)]
46FCE8:  MOV.W           R1, #0x40000000
46FCEC:  BLX             j__Z16RpLightSetRadiusP7RpLightf; RpLightSetRadius(RpLight *,float)
46FCF0:  BLX             j__Z13RwFrameCreatev; RwFrameCreate(void)
46FCF4:  MOV             R1, R0
46FCF6:  LDR             R0, [R6,#(dword_A83CDC - 0xA83CD4)]
46FCF8:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
46FCFC:  LDR             R1, [R6,#(dword_A83CDC - 0xA83CD4)]
46FCFE:  MOV             R0, R11
46FD00:  BLX             j__Z15RpWorldAddLightP7RpWorldP7RpLight; RpWorldAddLight(RpWorld *,RpLight *)
46FD04:  MOV             R5, R11
46FD06:  MOV             R0, R5
46FD08:  ADD             SP, SP, #0x1C
46FD0A:  POP.W           {R8-R11}
46FD0E:  POP             {R4-R7,PC}
