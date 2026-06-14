; =========================================================
; Game Engine Function: _Z25HandleTextureEnhancementsP8RwRaster
; Address            : 0x1AFF00 - 0x1B00FA
; =========================================================

1AFF00:  PUSH            {R4,R5,R7,LR}
1AFF02:  ADD             R7, SP, #8
1AFF04:  MOV             R4, R0
1AFF06:  CBZ             R4, loc_1AFF2E
1AFF08:  LDR             R0, =(textureEnhanced_ptr - 0x1AFF12)
1AFF0A:  LDRB.W          R1, [R4,#0x30]
1AFF0E:  ADD             R0, PC; textureEnhanced_ptr
1AFF10:  LDR             R0, [R0]; textureEnhanced
1AFF12:  LSLS            R1, R1, #0x18
1AFF14:  LDR             R0, [R0]
1AFF16:  BMI.W           loc_1B0024
1AFF1A:  CMP             R0, #0
1AFF1C:  BEQ.W           loc_1B0036
1AFF20:  MOVS            R0, #0; unsigned __int8
1AFF22:  MOVS            R5, #0
1AFF24:  BLX             j__Z30emu_TexturingSetEnhancedDetailh; emu_TexturingSetEnhancedDetail(uchar)
1AFF28:  LDR             R0, =(textureEnhanced_ptr - 0x1AFF2E)
1AFF2A:  ADD             R0, PC; textureEnhanced_ptr
1AFF2C:  B               loc_1B0032
1AFF2E:  LDR             R0, =(textureEnhanced_ptr - 0x1AFF34)
1AFF30:  ADD             R0, PC; textureEnhanced_ptr
1AFF32:  LDR             R0, [R0]; textureEnhanced
1AFF34:  LDR             R0, [R0]
1AFF36:  CBZ             R0, loc_1AFF48
1AFF38:  MOVS            R0, #0; unsigned __int8
1AFF3A:  MOVS            R4, #0
1AFF3C:  BLX             j__Z30emu_TexturingSetEnhancedDetailh; emu_TexturingSetEnhancedDetail(uchar)
1AFF40:  LDR             R0, =(textureEnhanced_ptr - 0x1AFF46)
1AFF42:  ADD             R0, PC; textureEnhanced_ptr
1AFF44:  LDR             R0, [R0]; textureEnhanced
1AFF46:  STR             R4, [R0]
1AFF48:  LDR             R0, =(textureCameraNormals_ptr - 0x1AFF4E)
1AFF4A:  ADD             R0, PC; textureCameraNormals_ptr
1AFF4C:  LDR             R0, [R0]; textureCameraNormals
1AFF4E:  LDR             R0, [R0]
1AFF50:  CBZ             R0, loc_1AFF62
1AFF52:  MOVS            R0, #0; unsigned __int8
1AFF54:  MOVS            R4, #0
1AFF56:  BLX             j__Z25emu_SetCameraBasedNormalsh; emu_SetCameraBasedNormals(uchar)
1AFF5A:  LDR             R0, =(textureCameraNormals_ptr - 0x1AFF60)
1AFF5C:  ADD             R0, PC; textureCameraNormals_ptr
1AFF5E:  LDR             R0, [R0]; textureCameraNormals
1AFF60:  STR             R4, [R0]
1AFF62:  LDR             R0, =(textureForceZOff_ptr - 0x1AFF68)
1AFF64:  ADD             R0, PC; textureForceZOff_ptr
1AFF66:  LDR             R0, [R0]; textureForceZOff
1AFF68:  LDR             R0, [R0]
1AFF6A:  CMP             R0, #0
1AFF6C:  BEQ             loc_1B001A
1AFF6E:  LDR             R0, =(dword_6B3208 - 0x1AFF74)
1AFF70:  ADD             R0, PC; dword_6B3208
1AFF72:  LDR             R0, [R0,#(dword_6B3228 - 0x6B3208)]
1AFF74:  CMP             R0, #0
1AFF76:  BEQ             loc_1B0010
1AFF78:  LDR             R0, =(renderQueue_ptr - 0x1AFF80)
1AFF7A:  MOVS            R3, #0x21 ; '!'
1AFF7C:  ADD             R0, PC; renderQueue_ptr
1AFF7E:  LDR             R0, [R0]; renderQueue
1AFF80:  LDR             R1, [R0]
1AFF82:  LDR.W           R2, [R1,#0x274]
1AFF86:  STR.W           R3, [R1,#0x278]
1AFF8A:  STR             R3, [R2]
1AFF8C:  MOVS            R3, #1
1AFF8E:  LDR.W           R2, [R1,#0x274]
1AFF92:  ADDS            R2, #4
1AFF94:  STR.W           R2, [R1,#0x274]
1AFF98:  LDR             R1, [R0]
1AFF9A:  LDR.W           R2, [R1,#0x274]
1AFF9E:  STR             R3, [R2]
1AFFA0:  LDR.W           R2, [R1,#0x274]
1AFFA4:  ADDS            R2, #4
1AFFA6:  STR.W           R2, [R1,#0x274]
1AFFAA:  LDR             R4, [R0]
1AFFAC:  LDRB.W          R0, [R4,#0x259]
1AFFB0:  CMP             R0, #0
1AFFB2:  ITT NE
1AFFB4:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AFFB8:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1AFFBC:  LDRD.W          R1, R2, [R4,#0x270]
1AFFC0:  ADD.W           R0, R4, #0x270
1AFFC4:  DMB.W           ISH
1AFFC8:  SUBS            R1, R2, R1
1AFFCA:  LDREX.W         R2, [R0]
1AFFCE:  ADD             R2, R1
1AFFD0:  STREX.W         R3, R2, [R0]
1AFFD4:  CMP             R3, #0
1AFFD6:  BNE             loc_1AFFCA
1AFFD8:  DMB.W           ISH
1AFFDC:  LDRB.W          R0, [R4,#0x259]
1AFFE0:  CMP             R0, #0
1AFFE2:  ITT NE
1AFFE4:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AFFE8:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1AFFEC:  LDRB.W          R0, [R4,#0x258]
1AFFF0:  CMP             R0, #0
1AFFF2:  ITT EQ
1AFFF4:  MOVEQ           R0, R4; this
1AFFF6:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1AFFFA:  LDR.W           R1, [R4,#0x270]
1AFFFE:  LDR.W           R0, [R4,#0x264]
1B0002:  ADD.W           R1, R1, #0x400
1B0006:  CMP             R1, R0
1B0008:  ITT HI
1B000A:  MOVHI           R0, R4; this
1B000C:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1B0010:  LDR             R0, =(textureForceZOff_ptr - 0x1B0018)
1B0012:  MOVS            R1, #0
1B0014:  ADD             R0, PC; textureForceZOff_ptr
1B0016:  LDR             R0, [R0]; textureForceZOff
1B0018:  STR             R1, [R0]
1B001A:  MOVS            R0, #0; unsigned __int16
1B001C:  POP.W           {R4,R5,R7,LR}
1B0020:  B.W             j_j__Z12HandleDecalZt; j_HandleDecalZ(ushort)
1B0024:  CBNZ            R0, loc_1B0036
1B0026:  MOVS            R0, #1; unsigned __int8
1B0028:  MOVS            R5, #1
1B002A:  BLX             j__Z30emu_TexturingSetEnhancedDetailh; emu_TexturingSetEnhancedDetail(uchar)
1B002E:  LDR             R0, =(textureEnhanced_ptr - 0x1B0034)
1B0030:  ADD             R0, PC; textureEnhanced_ptr
1B0032:  LDR             R0, [R0]; textureEnhanced
1B0034:  STR             R5, [R0]
1B0036:  LDR             R0, =(textureCameraNormals_ptr - 0x1B0040)
1B0038:  LDRB.W          R1, [R4,#0x30]
1B003C:  ADD             R0, PC; textureCameraNormals_ptr
1B003E:  LDR             R0, [R0]; textureCameraNormals
1B0040:  LSLS            R1, R1, #0x1A
1B0042:  LDR             R0, [R0]
1B0044:  BMI             loc_1B0056
1B0046:  CBZ             R0, loc_1B0068
1B0048:  MOVS            R0, #0; unsigned __int8
1B004A:  MOVS            R5, #0
1B004C:  BLX             j__Z25emu_SetCameraBasedNormalsh; emu_SetCameraBasedNormals(uchar)
1B0050:  LDR             R0, =(textureCameraNormals_ptr - 0x1B0056)
1B0052:  ADD             R0, PC; textureCameraNormals_ptr
1B0054:  B               loc_1B0064
1B0056:  CBNZ            R0, loc_1B0068
1B0058:  MOVS            R0, #1; unsigned __int8
1B005A:  MOVS            R5, #1
1B005C:  BLX             j__Z25emu_SetCameraBasedNormalsh; emu_SetCameraBasedNormals(uchar)
1B0060:  LDR             R0, =(textureCameraNormals_ptr - 0x1B0066)
1B0062:  ADD             R0, PC; textureCameraNormals_ptr
1B0064:  LDR             R0, [R0]; textureCameraNormals
1B0066:  STR             R5, [R0]
1B0068:  LDRB.W          R0, [R4,#0x30]
1B006C:  LSLS            R0, R0, #0x19
1B006E:  BPL             loc_1B00BC
1B0070:  LDR             R0, =(gNoDetailTextures_ptr - 0x1B0076)
1B0072:  ADD             R0, PC; gNoDetailTextures_ptr
1B0074:  LDR             R0, [R0]; gNoDetailTextures
1B0076:  LDR             R0, [R0]
1B0078:  CBNZ            R0, loc_1B00BC
1B007A:  BLX             j__Z22GetMobileEffectSettingv; GetMobileEffectSetting(void)
1B007E:  CMP             R0, #2
1B0080:  BLT             loc_1B00BC
1B0082:  LDR             R0, [R4,#0x2C]
1B0084:  LDRB            R1, [R0,#0xA]
1B0086:  LSLS            R1, R1, #0x1A
1B0088:  BPL             loc_1B00D8
1B008A:  LDRB            R1, [R0,#0xD]
1B008C:  CBZ             R1, loc_1B00D8
1B008E:  LDR             R2, =(_ZN22TextureDatabaseRuntime14detailTexturesE_ptr - 0x1B0096)
1B0090:  LDR             R3, =(RasterExtOffset_ptr - 0x1B0098)
1B0092:  ADD             R2, PC; _ZN22TextureDatabaseRuntime14detailTexturesE_ptr
1B0094:  ADD             R3, PC; RasterExtOffset_ptr
1B0096:  LDR             R2, [R2]; TextureDatabaseRuntime::detailTextures ...
1B0098:  LDR             R3, [R3]; RasterExtOffset
1B009A:  LDR             R2, [R2,#(dword_6BD1D8 - 0x6BD1D0)]
1B009C:  ADD.W           R1, R2, R1,LSL#2
1B00A0:  LDR             R2, [R3]
1B00A2:  LDR.W           R1, [R1,#-4]
1B00A6:  LDR             R3, [R1]
1B00A8:  LDRB            R1, [R0,#0xE]; unsigned int
1B00AA:  LDR             R0, [R3,R2]; void *
1B00AC:  BLX             j__Z27emu_TextureSetDetailTexturePvj; emu_TextureSetDetailTexture(void *,uint)
1B00B0:  LDR             R0, =(textureDetail_ptr - 0x1B00B8)
1B00B2:  MOVS            R1, #1
1B00B4:  ADD             R0, PC; textureDetail_ptr
1B00B6:  LDR             R0, [R0]; textureDetail
1B00B8:  STR             R1, [R0]
1B00BA:  B               loc_1B00D8
1B00BC:  LDR             R0, =(textureDetail_ptr - 0x1B00C2)
1B00BE:  ADD             R0, PC; textureDetail_ptr
1B00C0:  LDR             R0, [R0]; textureDetail
1B00C2:  LDR             R0, [R0]
1B00C4:  CBZ             R0, loc_1B00D8
1B00C6:  MOVS            R0, #0; void *
1B00C8:  MOVS            R1, #0; unsigned int
1B00CA:  MOVS            R5, #0
1B00CC:  BLX             j__Z27emu_TextureSetDetailTexturePvj; emu_TextureSetDetailTexture(void *,uint)
1B00D0:  LDR             R0, =(textureDetail_ptr - 0x1B00D6)
1B00D2:  ADD             R0, PC; textureDetail_ptr
1B00D4:  LDR             R0, [R0]; textureDetail
1B00D6:  STR             R5, [R0]
1B00D8:  LDRH            R0, [R4,#0x30]; unsigned __int16
1B00DA:  BLX             j__Z15HandleForceZOfft; HandleForceZOff(ushort)
1B00DE:  LDRH            R0, [R4,#0x30]; unsigned __int16
1B00E0:  BLX             j__Z12HandleDecalZt; HandleDecalZ(ushort)
1B00E4:  LDRB.W          R0, [R4,#0x31]
1B00E8:  LSLS            R0, R0, #0x1D
1B00EA:  IT PL
1B00EC:  POPPL           {R4,R5,R7,PC}
1B00EE:  MOV.W           R0, #0xBC0; unsigned int
1B00F2:  POP.W           {R4,R5,R7,LR}
1B00F6:  B.W             j_j__Z13emu_glDisablej; j_emu_glDisable(uint)
