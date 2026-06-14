; =========================================================
; Game Engine Function: _ZN6CRadar19RemoveRadarSectionsEv
; Address            : 0x43DEF4 - 0x43E05A
; =========================================================

43DEF4:  PUSH            {R4-R7,LR}
43DEF6:  ADD             R7, SP, #0xC
43DEF8:  PUSH.W          {R8-R11}
43DEFC:  SUB             SP, SP, #0x24
43DEFE:  LDR             R0, =(gRadarTextures_ptr - 0x43DF0A)
43DF00:  MOVS            R4, #0
43DF02:  MOV.W           R9, #0
43DF06:  ADD             R0, PC; gRadarTextures_ptr
43DF08:  LDR             R5, [R0]; gRadarTextures
43DF0A:  LDR             R0, =(gRadarTextures_ptr - 0x43DF10)
43DF0C:  ADD             R0, PC; gRadarTextures_ptr
43DF0E:  LDR             R0, [R0]; gRadarTextures
43DF10:  STR             R0, [SP,#0x40+var_20]
43DF12:  LDR             R0, =(gRadarTextures_ptr - 0x43DF18)
43DF14:  ADD             R0, PC; gRadarTextures_ptr
43DF16:  LDR             R0, [R0]; gRadarTextures
43DF18:  STR             R0, [SP,#0x40+var_24]
43DF1A:  LDR             R0, =(gRadarTextures_ptr - 0x43DF20)
43DF1C:  ADD             R0, PC; gRadarTextures_ptr
43DF1E:  LDR             R0, [R0]; gRadarTextures
43DF20:  STR             R0, [SP,#0x40+var_28]
43DF22:  LDR             R0, =(gRadarTextures_ptr - 0x43DF28)
43DF24:  ADD             R0, PC; gRadarTextures_ptr
43DF26:  LDR             R0, [R0]; gRadarTextures
43DF28:  STR             R0, [SP,#0x40+var_2C]
43DF2A:  LDR             R0, =(gRadarTextures_ptr - 0x43DF30)
43DF2C:  ADD             R0, PC; gRadarTextures_ptr
43DF2E:  LDR             R0, [R0]; gRadarTextures
43DF30:  STR             R0, [SP,#0x40+var_30]
43DF32:  LDR             R0, =(gRadarTextures_ptr - 0x43DF38)
43DF34:  ADD             R0, PC; gRadarTextures_ptr
43DF36:  LDR             R0, [R0]; gRadarTextures
43DF38:  STR             R0, [SP,#0x40+var_34]
43DF3A:  LDR             R0, =(gRadarTextures_ptr - 0x43DF40)
43DF3C:  ADD             R0, PC; gRadarTextures_ptr
43DF3E:  LDR             R0, [R0]; gRadarTextures
43DF40:  STR             R0, [SP,#0x40+var_38]
43DF42:  LDR             R0, =(gRadarTextures_ptr - 0x43DF48)
43DF44:  ADD             R0, PC; gRadarTextures_ptr
43DF46:  LDR             R0, [R0]; gRadarTextures
43DF48:  STR             R0, [SP,#0x40+var_3C]
43DF4A:  LDR             R0, =(gRadarTextures_ptr - 0x43DF50)
43DF4C:  ADD             R0, PC; gRadarTextures_ptr
43DF4E:  LDR             R0, [R0]; gRadarTextures
43DF50:  STR             R0, [SP,#0x40+var_40]
43DF52:  LDR             R0, =(gRadarTextures_ptr - 0x43DF58)
43DF54:  ADD             R0, PC; gRadarTextures_ptr
43DF56:  LDR.W           R11, [R0]; gRadarTextures
43DF5A:  LDR             R0, =(gRadarTextures_ptr - 0x43DF60)
43DF5C:  ADD             R0, PC; gRadarTextures_ptr
43DF5E:  LDR.W           R8, [R0]; gRadarTextures
43DF62:  LDR.W           R0, [R5,R9]
43DF66:  CBZ             R0, loc_43DF72
43DF68:  ADD.W           R6, R5, R9
43DF6C:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DF70:  STR             R4, [R6]
43DF72:  LDR             R0, [SP,#0x40+var_20]
43DF74:  ADD.W           R10, R0, R9
43DF78:  LDR.W           R0, [R10,#0x30]
43DF7C:  CBZ             R0, loc_43DF86
43DF7E:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DF82:  STR.W           R4, [R10,#0x30]
43DF86:  LDR             R0, [SP,#0x40+var_24]
43DF88:  ADD.W           R6, R0, R9
43DF8C:  LDR             R0, [R6,#0x60]
43DF8E:  CBZ             R0, loc_43DF96
43DF90:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DF94:  STR             R4, [R6,#0x60]
43DF96:  LDR             R0, [SP,#0x40+var_28]
43DF98:  ADD.W           R6, R0, R9
43DF9C:  LDR.W           R0, [R6,#0x90]
43DFA0:  CBZ             R0, loc_43DFAA
43DFA2:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DFA6:  STR.W           R4, [R6,#0x90]
43DFAA:  LDR             R0, [SP,#0x40+var_2C]
43DFAC:  ADD.W           R6, R0, R9
43DFB0:  LDR.W           R0, [R6,#0xC0]
43DFB4:  CBZ             R0, loc_43DFBE
43DFB6:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DFBA:  STR.W           R4, [R6,#0xC0]
43DFBE:  LDR             R0, [SP,#0x40+var_30]
43DFC0:  ADD.W           R6, R0, R9
43DFC4:  LDR.W           R0, [R6,#0xF0]
43DFC8:  CBZ             R0, loc_43DFD2
43DFCA:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DFCE:  STR.W           R4, [R6,#0xF0]
43DFD2:  LDR             R0, [SP,#0x40+var_34]
43DFD4:  ADD.W           R6, R0, R9
43DFD8:  LDR.W           R0, [R6,#0x120]
43DFDC:  CBZ             R0, loc_43DFE6
43DFDE:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DFE2:  STR.W           R4, [R6,#0x120]
43DFE6:  LDR             R0, [SP,#0x40+var_38]
43DFE8:  ADD.W           R6, R0, R9
43DFEC:  LDR.W           R0, [R6,#0x150]
43DFF0:  CBZ             R0, loc_43DFFA
43DFF2:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DFF6:  STR.W           R4, [R6,#0x150]
43DFFA:  LDR             R0, [SP,#0x40+var_3C]
43DFFC:  ADD.W           R6, R0, R9
43E000:  LDR.W           R0, [R6,#0x180]
43E004:  CBZ             R0, loc_43E00E
43E006:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43E00A:  STR.W           R4, [R6,#0x180]
43E00E:  LDR             R0, [SP,#0x40+var_40]
43E010:  ADD.W           R6, R0, R9
43E014:  LDR.W           R0, [R6,#0x1B0]
43E018:  CBZ             R0, loc_43E022
43E01A:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43E01E:  STR.W           R4, [R6,#0x1B0]
43E022:  ADD.W           R6, R11, R9
43E026:  LDR.W           R0, [R6,#0x1E0]
43E02A:  CBZ             R0, loc_43E034
43E02C:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43E030:  STR.W           R4, [R6,#0x1E0]
43E034:  ADD.W           R6, R8, R9
43E038:  LDR.W           R0, [R6,#0x210]
43E03C:  CBZ             R0, loc_43E046
43E03E:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43E042:  STR.W           R4, [R6,#0x210]
43E046:  ADD.W           R9, R9, #4
43E04A:  CMP.W           R9, #0x30 ; '0'
43E04E:  BNE.W           loc_43DF62
43E052:  ADD             SP, SP, #0x24 ; '$'
43E054:  POP.W           {R8-R11}
43E058:  POP             {R4-R7,PC}
