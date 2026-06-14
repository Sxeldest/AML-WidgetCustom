; =========================================================
; Game Engine Function: _ZN6CRadar8ShutdownEv
; Address            : 0x43DD34 - 0x43DEBC
; =========================================================

43DD34:  PUSH            {R4-R7,LR}
43DD36:  ADD             R7, SP, #0xC
43DD38:  PUSH.W          {R8-R11}
43DD3C:  SUB             SP, SP, #0x24
43DD3E:  LDR             R0, =(_ZN6CRadar16RadarBlipSpritesE_ptr - 0x43DD46)
43DD40:  MOVS            R4, #0
43DD42:  ADD             R0, PC; _ZN6CRadar16RadarBlipSpritesE_ptr
43DD44:  LDR             R5, [R0]; CRadar::RadarBlipSprites ...
43DD46:  ADDS            R0, R5, R4; this
43DD48:  BLX             j__ZN9CSprite2d6DeleteEv; CSprite2d::Delete(void)
43DD4C:  ADDS            R4, #4
43DD4E:  CMP.W           R4, #0x100
43DD52:  BNE             loc_43DD46
43DD54:  LDR             R0, =(gRadarTextures_ptr - 0x43DD60)
43DD56:  MOVS            R4, #0
43DD58:  MOV.W           R9, #0
43DD5C:  ADD             R0, PC; gRadarTextures_ptr
43DD5E:  LDR             R5, [R0]; gRadarTextures
43DD60:  LDR             R0, =(gRadarTextures_ptr - 0x43DD66)
43DD62:  ADD             R0, PC; gRadarTextures_ptr
43DD64:  LDR             R0, [R0]; gRadarTextures
43DD66:  STR             R0, [SP,#0x40+var_20]
43DD68:  LDR             R0, =(gRadarTextures_ptr - 0x43DD6E)
43DD6A:  ADD             R0, PC; gRadarTextures_ptr
43DD6C:  LDR             R0, [R0]; gRadarTextures
43DD6E:  STR             R0, [SP,#0x40+var_24]
43DD70:  LDR             R0, =(gRadarTextures_ptr - 0x43DD76)
43DD72:  ADD             R0, PC; gRadarTextures_ptr
43DD74:  LDR             R0, [R0]; gRadarTextures
43DD76:  STR             R0, [SP,#0x40+var_28]
43DD78:  LDR             R0, =(gRadarTextures_ptr - 0x43DD7E)
43DD7A:  ADD             R0, PC; gRadarTextures_ptr
43DD7C:  LDR             R0, [R0]; gRadarTextures
43DD7E:  STR             R0, [SP,#0x40+var_2C]
43DD80:  LDR             R0, =(gRadarTextures_ptr - 0x43DD86)
43DD82:  ADD             R0, PC; gRadarTextures_ptr
43DD84:  LDR             R0, [R0]; gRadarTextures
43DD86:  STR             R0, [SP,#0x40+var_30]
43DD88:  LDR             R0, =(gRadarTextures_ptr - 0x43DD8E)
43DD8A:  ADD             R0, PC; gRadarTextures_ptr
43DD8C:  LDR             R0, [R0]; gRadarTextures
43DD8E:  STR             R0, [SP,#0x40+var_34]
43DD90:  LDR             R0, =(gRadarTextures_ptr - 0x43DD96)
43DD92:  ADD             R0, PC; gRadarTextures_ptr
43DD94:  LDR             R0, [R0]; gRadarTextures
43DD96:  STR             R0, [SP,#0x40+var_38]
43DD98:  LDR             R0, =(gRadarTextures_ptr - 0x43DD9E)
43DD9A:  ADD             R0, PC; gRadarTextures_ptr
43DD9C:  LDR             R0, [R0]; gRadarTextures
43DD9E:  STR             R0, [SP,#0x40+var_3C]
43DDA0:  LDR             R0, =(gRadarTextures_ptr - 0x43DDA6)
43DDA2:  ADD             R0, PC; gRadarTextures_ptr
43DDA4:  LDR             R0, [R0]; gRadarTextures
43DDA6:  STR             R0, [SP,#0x40+var_40]
43DDA8:  LDR             R0, =(gRadarTextures_ptr - 0x43DDAE)
43DDAA:  ADD             R0, PC; gRadarTextures_ptr
43DDAC:  LDR.W           R11, [R0]; gRadarTextures
43DDB0:  LDR             R0, =(gRadarTextures_ptr - 0x43DDB6)
43DDB2:  ADD             R0, PC; gRadarTextures_ptr
43DDB4:  LDR.W           R8, [R0]; gRadarTextures
43DDB8:  LDR.W           R0, [R5,R9]
43DDBC:  CBZ             R0, loc_43DDC8
43DDBE:  ADD.W           R6, R5, R9
43DDC2:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DDC6:  STR             R4, [R6]
43DDC8:  LDR             R0, [SP,#0x40+var_20]
43DDCA:  ADD.W           R6, R0, R9
43DDCE:  LDR             R0, [R6,#0x30]
43DDD0:  CBZ             R0, loc_43DDD8
43DDD2:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DDD6:  STR             R4, [R6,#0x30]
43DDD8:  LDR             R0, [SP,#0x40+var_24]
43DDDA:  ADD.W           R10, R0, R9
43DDDE:  LDR.W           R0, [R10,#0x60]
43DDE2:  CBZ             R0, loc_43DDEC
43DDE4:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DDE8:  STR.W           R4, [R10,#0x60]
43DDEC:  LDR             R0, [SP,#0x40+var_28]
43DDEE:  ADD.W           R6, R0, R9
43DDF2:  LDR.W           R0, [R6,#0x90]
43DDF6:  CBZ             R0, loc_43DE00
43DDF8:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DDFC:  STR.W           R4, [R6,#0x90]
43DE00:  LDR             R0, [SP,#0x40+var_2C]
43DE02:  ADD.W           R6, R0, R9
43DE06:  LDR.W           R0, [R6,#0xC0]
43DE0A:  CBZ             R0, loc_43DE14
43DE0C:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DE10:  STR.W           R4, [R6,#0xC0]
43DE14:  LDR             R0, [SP,#0x40+var_30]
43DE16:  ADD.W           R6, R0, R9
43DE1A:  LDR.W           R0, [R6,#0xF0]
43DE1E:  CBZ             R0, loc_43DE28
43DE20:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DE24:  STR.W           R4, [R6,#0xF0]
43DE28:  LDR             R0, [SP,#0x40+var_34]
43DE2A:  ADD.W           R6, R0, R9
43DE2E:  LDR.W           R0, [R6,#0x120]
43DE32:  CBZ             R0, loc_43DE3C
43DE34:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DE38:  STR.W           R4, [R6,#0x120]
43DE3C:  LDR             R0, [SP,#0x40+var_38]
43DE3E:  ADD.W           R6, R0, R9
43DE42:  LDR.W           R0, [R6,#0x150]
43DE46:  CBZ             R0, loc_43DE50
43DE48:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DE4C:  STR.W           R4, [R6,#0x150]
43DE50:  LDR             R0, [SP,#0x40+var_3C]
43DE52:  ADD.W           R6, R0, R9
43DE56:  LDR.W           R0, [R6,#0x180]
43DE5A:  CBZ             R0, loc_43DE64
43DE5C:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DE60:  STR.W           R4, [R6,#0x180]
43DE64:  LDR             R0, [SP,#0x40+var_40]
43DE66:  ADD.W           R6, R0, R9
43DE6A:  LDR.W           R0, [R6,#0x1B0]
43DE6E:  CBZ             R0, loc_43DE78
43DE70:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DE74:  STR.W           R4, [R6,#0x1B0]
43DE78:  ADD.W           R6, R11, R9
43DE7C:  LDR.W           R0, [R6,#0x1E0]
43DE80:  CBZ             R0, loc_43DE8A
43DE82:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DE86:  STR.W           R4, [R6,#0x1E0]
43DE8A:  ADD.W           R6, R8, R9
43DE8E:  LDR.W           R0, [R6,#0x210]
43DE92:  CBZ             R0, loc_43DE9C
43DE94:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
43DE98:  STR.W           R4, [R6,#0x210]
43DE9C:  ADD.W           R9, R9, #4
43DEA0:  CMP.W           R9, #0x30 ; '0'
43DEA4:  BNE.W           loc_43DDB8
43DEA8:  LDR             R0, =(circleTex_ptr - 0x43DEAE)
43DEAA:  ADD             R0, PC; circleTex_ptr
43DEAC:  LDR             R0, [R0]; circleTex ; this
43DEAE:  ADD             SP, SP, #0x24 ; '$'
43DEB0:  POP.W           {R8-R11}
43DEB4:  POP.W           {R4-R7,LR}
43DEB8:  B.W             j_j__ZN9CSprite2d6DeleteEv; j_CSprite2d::Delete(void)
