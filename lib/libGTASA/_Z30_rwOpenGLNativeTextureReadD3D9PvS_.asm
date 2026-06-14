; =========================================================
; Game Engine Function: _Z30_rwOpenGLNativeTextureReadD3D9PvS_
; Address            : 0x1B3D20 - 0x1B4134
; =========================================================

1B3D20:  PUSH            {R4-R7,LR}
1B3D22:  ADD             R7, SP, #0xC
1B3D24:  PUSH.W          {R8-R11}
1B3D28:  SUB             SP, SP, #4
1B3D2A:  VPUSH           {D8-D11}
1B3D2E:  SUB             SP, SP, #0x80
1B3D30:  MOV             R8, R0
1B3D32:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1B3D3E)
1B3D36:  MOV             R9, R1
1B3D38:  MOVS            R2, #0x44 ; 'D'; size_t
1B3D3A:  ADD             R0, PC; __stack_chk_guard_ptr
1B3D3C:  LDR             R0, [R0]; __stack_chk_guard
1B3D3E:  LDR             R0, [R0]
1B3D40:  STR             R0, [SP,#0xC0+var_44]
1B3D42:  MOVS            R0, #9
1B3D44:  STR             R0, [SP,#0xC0+var_8C]
1B3D46:  ADD             R0, SP, #0xC0+var_8C
1B3D48:  ADDS            R1, R0, #4; void *
1B3D4A:  MOV             R0, R8; int
1B3D4C:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1B3D50:  MOV             R1, R0
1B3D52:  CMP             R1, #0x44 ; 'D'
1B3D54:  ITT EQ
1B3D56:  LDREQ           R1, [SP,#0xC0+var_8C]
1B3D58:  CMPEQ           R1, #9
1B3D5A:  MOV.W           R0, #0
1B3D5E:  BNE.W           loc_1B410E
1B3D62:  ADD             R1, SP, #0xC0+var_9C; void *
1B3D64:  MOV             R0, R8; int
1B3D66:  MOVS            R2, #0x10; size_t
1B3D68:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1B3D6C:  CMP             R0, #0x10
1B3D6E:  BNE.W           loc_1B410C
1B3D72:  LDR             R4, [SP,#0xC0+var_98]
1B3D74:  MOVS            R6, #1
1B3D76:  SUB.W           R11, R4, #0x15
1B3D7A:  CMP.W           R11, #2
1B3D7E:  BCC             loc_1B3DA0
1B3D80:  MOV             R0, #0x33545844
1B3D88:  CMP             R4, R0
1B3D8A:  BEQ             loc_1B3DA0
1B3D8C:  MOV             R0, #0x35545844
1B3D94:  CMP             R4, R0
1B3D96:  ITT NE
1B3D98:  LDRBNE.W        R0, [SP,#0xC0+var_8D]
1B3D9C:  ANDNE.W         R6, R0, #1
1B3DA0:  LDRB.W          R2, [SP,#0xC0+var_8F]
1B3DA4:  MOV.W           R3, #0x600
1B3DA8:  CMP             R6, #0
1B3DAA:  LDRH.W          R1, [SP,#0xC0+var_94+2]; int
1B3DAE:  LDRH.W          R0, [SP,#0xC0+var_94]; int
1B3DB2:  IT NE
1B3DB4:  MOVNE.W         R3, #0x500
1B3DB8:  CMP             R2, #1
1B3DBA:  MOV.W           R5, #4
1B3DBE:  IT HI
1B3DC0:  MOVWHI          R5, #0x8004
1B3DC4:  MOVS            R2, #0x20 ; ' '; int
1B3DC6:  ORRS            R3, R5; int
1B3DC8:  BLX             j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
1B3DCC:  MOV             R5, R0
1B3DCE:  CMP             R5, #0
1B3DD0:  BEQ.W           loc_1B410C
1B3DD4:  LDR             R0, =(RasterExtOffset_ptr - 0x1B3DDE)
1B3DD6:  LDRB.W          R10, [SP,#0xC0+var_8F]
1B3DDA:  ADD             R0, PC; RasterExtOffset_ptr
1B3DDC:  LDRB.W          R2, [SP,#0xC0+var_8D]
1B3DE0:  LDR             R1, [R0]; RasterExtOffset
1B3DE2:  MOV             R3, R10
1B3DE4:  LDRSB.W         R0, [R5,#0x22]
1B3DE8:  LDR             R1, [R1]
1B3DEA:  CMP             R0, #0
1B3DEC:  IT GE
1B3DEE:  MOVGE           R3, #1
1B3DF0:  STR             R3, [SP,#0xC0+var_A4]
1B3DF2:  ADDS            R3, R5, R1
1B3DF4:  LSLS            R1, R2, #0x1E
1B3DF6:  STRD.W          R3, R5, [SP,#0xC0+var_B4]
1B3DFA:  BMI             loc_1B3E20
1B3DFC:  MOVS            R0, #0
1B3DFE:  STRB            R6, [R3,#0x16]
1B3E00:  STRB            R4, [R3,#0x14]
1B3E02:  MOV             R6, R3
1B3E04:  STRB            R0, [R3,#0x15]
1B3E06:  MOV             R0, #0x33545843
1B3E0E:  CMP             R4, R0
1B3E10:  STR.W           R9, [SP,#0xC0+var_BC]
1B3E14:  BGT             loc_1B3ECA
1B3E16:  CMP.W           R11, #2
1B3E1A:  BCS             loc_1B3EE6
1B3E1C:  MOVS            R4, #0
1B3E1E:  B               loc_1B3F00
1B3E20:  LDR             R1, [SP,#0xC0+var_9C]
1B3E22:  UXTB            R0, R0
1B3E24:  CMP.W           R1, R0,LSL#8
1B3E28:  BNE.W           loc_1B4106
1B3E2C:  LDRH.W          R1, [SP,#0xC0+var_94]
1B3E30:  LDR             R2, [R5,#0xC]
1B3E32:  CMP             R2, R1
1B3E34:  BNE.W           loc_1B4106
1B3E38:  LDRH.W          R1, [SP,#0xC0+var_94+2]
1B3E3C:  LDR             R2, [R5,#0x10]
1B3E3E:  CMP             R2, R1
1B3E40:  BNE.W           loc_1B4106
1B3E44:  ORR.W           R1, R0, #0xEF
1B3E48:  STR.W           R9, [SP,#0xC0+var_BC]
1B3E4C:  EOR.W           R1, R1, #0x10
1B3E50:  MOVS            R6, #6
1B3E52:  ANDS            R1, R0
1B3E54:  STRB.W          R1, [R5,#0x22]
1B3E58:  LDR             R1, [SP,#0xC0+var_B4]
1B3E5A:  ADD.W           R9, SP, #0xC0+var_A0
1B3E5E:  AND.W           R0, R0, #0x10
1B3E62:  LDRB            R1, [R1,#0x15]
1B3E64:  CMP             R1, #0
1B3E66:  IT EQ
1B3E68:  MOVEQ           R6, #1
1B3E6A:  STR             R0, [SP,#0xC0+var_A4]
1B3E6C:  CMP.W           R10, #0
1B3E70:  BEQ             loc_1B3EB8
1B3E72:  MOV.W           R11, #0
1B3E76:  UXTB.W          R1, R11
1B3E7A:  MOV             R0, R5
1B3E7C:  MOVS            R2, #1
1B3E7E:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
1B3E82:  MOV             R4, R0
1B3E84:  MOV             R0, R8; int
1B3E86:  MOV             R1, R9; void *
1B3E88:  MOVS            R2, #4; size_t
1B3E8A:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1B3E8E:  CMP             R0, #4
1B3E90:  BNE.W           loc_1B4100
1B3E94:  LDR             R2, [SP,#0xC0+var_A0]; size_t
1B3E96:  MOV             R0, R8; int
1B3E98:  MOV             R1, R4; void *
1B3E9A:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1B3E9E:  MOV             R4, R0
1B3EA0:  MOV             R0, R5
1B3EA2:  LDR             R5, [SP,#0xC0+var_A0]
1B3EA4:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
1B3EA8:  CMP             R4, R5
1B3EAA:  BNE.W           loc_1B4130
1B3EAE:  LDR             R5, [SP,#0xC0+var_B0]
1B3EB0:  ADD.W           R11, R11, #1
1B3EB4:  CMP             R11, R10
1B3EB6:  BCC             loc_1B3E76
1B3EB8:  SUBS            R6, #1
1B3EBA:  BNE             loc_1B3E6C
1B3EBC:  LDRB.W          R0, [R5,#0x22]
1B3EC0:  LDR             R1, [SP,#0xC0+var_A4]
1B3EC2:  ORRS            R0, R1
1B3EC4:  STRB.W          R0, [R5,#0x22]
1B3EC8:  B               loc_1B40B6
1B3ECA:  MOV             R0, #0x33545844
1B3ED2:  CMP             R4, R0
1B3ED4:  BEQ             loc_1B3EFE
1B3ED6:  MOV             R0, #0x35545844
1B3EDE:  CMP             R4, R0
1B3EE0:  BNE             loc_1B3E1C
1B3EE2:  MOVS            R4, #0xA
1B3EE4:  B               loc_1B3F00
1B3EE6:  MOV             R0, #0x31545844
1B3EEE:  CMP             R4, R0
1B3EF0:  BNE             loc_1B3E1C
1B3EF2:  LDRB.W          R0, [SP,#0xC0+var_8D]
1B3EF6:  AND.W           R0, R0, #1
1B3EFA:  ADDS            R4, R0, #7
1B3EFC:  B               loc_1B3F00
1B3EFE:  MOVS            R4, #9
1B3F00:  STR.W           R11, [SP,#0xC0+var_B8]
1B3F04:  MOV             R2, R4
1B3F06:  LDRD.W          R0, R1, [R5,#0xC]
1B3F0A:  BLX             j__ZN9RQTexture14GetTextureSizeEjj15RQTextureFormat; RQTexture::GetTextureSize(uint,uint,RQTextureFormat)
1B3F0E:  LDRD.W          R9, R10, [R5,#0xC]
1B3F12:  BLX             malloc
1B3F16:  STR             R0, [SP,#0xC0+p]
1B3F18:  LDR             R0, [R6]
1B3F1A:  CBNZ            R0, loc_1B3F3C
1B3F1C:  LDRD.W          R1, R2, [R5,#0xC]
1B3F20:  MOVS            R3, #0
1B3F22:  LDR             R0, [SP,#0xC0+var_A4]
1B3F24:  CMP             R0, #1
1B3F26:  MOV             R0, R4
1B3F28:  IT HI
1B3F2A:  MOVHI           R3, #1
1B3F2C:  BLX             j__ZN9RQTexture6CreateE15RQTextureFormatjjb; RQTexture::Create(RQTextureFormat,uint,uint,bool)
1B3F30:  STR             R0, [R6]
1B3F32:  MOVS            R2, #0
1B3F34:  LDR             R1, [R0]
1B3F36:  LDR             R3, [R1,#0xC]
1B3F38:  MOVS            R1, #0
1B3F3A:  BLX             R3
1B3F3C:  VMOV.I32        Q4, #0xFF
1B3F40:  ADD.W           R11, SP, #0xC0+var_A0
1B3F44:  VMOV.I32        Q5, #0xFF0000
1B3F48:  MOVS            R0, #0
1B3F4A:  STR             R0, [SP,#0xC0+var_A8]
1B3F4C:  MOV             R0, R8; int
1B3F4E:  MOV             R1, R11; void *
1B3F50:  MOVS            R2, #4; size_t
1B3F52:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1B3F56:  CMP             R0, #4
1B3F58:  BNE             loc_1B3FCC
1B3F5A:  LDR             R2, [SP,#0xC0+var_A0]; size_t
1B3F5C:  CMP             R2, #0
1B3F5E:  BEQ             loc_1B4038
1B3F60:  LDR             R1, [SP,#0xC0+p]; void *
1B3F62:  MOV             R0, R8; int
1B3F64:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1B3F68:  MOV             R4, R0
1B3F6A:  LDR             R0, [SP,#0xC0+var_A0]
1B3F6C:  CMP             R4, R0
1B3F6E:  BNE             loc_1B3FCC
1B3F70:  LDR             R0, [SP,#0xC0+var_B8]
1B3F72:  CMP             R0, #1
1B3F74:  BHI             loc_1B400E
1B3F76:  CMP             R4, #4
1B3F78:  BCC             loc_1B400E
1B3F7A:  LSRS            R0, R4, #2
1B3F7C:  CMP             R0, #1
1B3F7E:  MOV.W           R3, #1
1B3F82:  IT HI
1B3F84:  LSRHI           R3, R4, #2
1B3F86:  CMP             R3, #4
1B3F88:  BCC             loc_1B3FE6
1B3F8A:  MOV             R1, #0x3FFFFFFC
1B3F92:  ANDS            R1, R3
1B3F94:  BEQ             loc_1B3FE6
1B3F96:  LDR             R5, [SP,#0xC0+p]
1B3F98:  MOV             R6, R1
1B3F9A:  ADD.W           R2, R5, R1,LSL#2
1B3F9E:  VLD1.32         {D16-D17}, [R5]
1B3FA2:  SUBS            R6, #4
1B3FA4:  VSHR.U32        Q9, Q8, #0x10
1B3FA8:  VSHL.I32        Q10, Q8, #0x10
1B3FAC:  VBIC.I16        Q8, #0xFF
1B3FB0:  VAND            Q9, Q9, Q4
1B3FB4:  VAND            Q10, Q10, Q5
1B3FB8:  VORR            Q8, Q9, Q8
1B3FBC:  VORR            Q8, Q8, Q10
1B3FC0:  VST1.32         {D16-D17}, [R5]!
1B3FC4:  BNE             loc_1B3F9E
1B3FC6:  CMP             R3, R1
1B3FC8:  BNE             loc_1B3FEA
1B3FCA:  B               loc_1B400E
1B3FCC:  MOV             R0, R5
1B3FCE:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
1B3FD2:  MOV             R0, R5
1B3FD4:  BLX             j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
1B3FD8:  MOVS            R0, #1
1B3FDA:  MOV             R1, R10
1B3FDC:  MOV             R2, R9
1B3FDE:  ANDS.W          R3, R0, #3
1B3FE2:  BEQ             loc_1B408C
1B3FE4:  B               loc_1B409A
1B3FE6:  MOVS            R1, #0
1B3FE8:  LDR             R2, [SP,#0xC0+p]
1B3FEA:  LDR             R3, [R2]
1B3FEC:  ADDS            R1, #1
1B3FEE:  CMP             R1, R0
1B3FF0:  BIC.W           R6, R3, #0xFF00FF
1B3FF4:  UBFX.W          R5, R3, #0x10, #8
1B3FF8:  MOV.W           R3, R3,LSL#16
1B3FFC:  ORR.W           R6, R6, R5
1B4000:  UXTB16.W        R3, R3
1B4004:  ORR.W           R3, R3, R6
1B4008:  STR.W           R3, [R2],#4
1B400C:  BCC             loc_1B3FEA
1B400E:  LDR             R0, [SP,#0xC0+var_A8]
1B4010:  LDRD.W          R6, R5, [SP,#0xC0+var_B4]
1B4014:  CBNZ            R0, loc_1B4038
1B4016:  LDRH            R0, [R5,#0x30]
1B4018:  ANDS.W          R0, R0, #0x100
1B401C:  BEQ             loc_1B4038
1B401E:  MUL.W           R0, R10, R9
1B4022:  CMP.W           R4, R0,LSL#2
1B4026:  BNE             loc_1B4038
1B4028:  MOV             R0, R4; byte_count
1B402A:  BLX             malloc
1B402E:  STR             R0, [R5,#4]
1B4030:  MOV             R2, R4; size_t
1B4032:  LDR             R1, [SP,#0xC0+p]; void *
1B4034:  BLX             memcpy_1
1B4038:  LDR             R0, [R6]
1B403A:  LDR             R4, [SP,#0xC0+var_A8]
1B403C:  LDR             R2, [SP,#0xC0+p]
1B403E:  LDR             R1, [R0]
1B4040:  LDR             R3, [R1,#0x14]
1B4042:  MOV             R1, R4
1B4044:  BLX             R3
1B4046:  CMP.W           R10, #1
1B404A:  ADD.W           R4, R4, #1
1B404E:  STR             R4, [SP,#0xC0+var_A8]
1B4050:  IT EQ
1B4052:  CMPEQ.W         R9, #1
1B4056:  BNE             loc_1B4066
1B4058:  MOVS            R0, #2
1B405A:  MOVS            R1, #1
1B405C:  MOVS            R2, #1
1B405E:  ANDS.W          R3, R0, #3
1B4062:  BEQ             loc_1B408C
1B4064:  B               loc_1B409A
1B4066:  CMP.W           R9, #2
1B406A:  MOV.W           R2, #1
1B406E:  IT HI
1B4070:  MOVHI.W         R2, R9,LSR#1
1B4074:  CMP.W           R10, #2
1B4078:  MOV.W           R1, #1
1B407C:  MOV.W           R0, #0
1B4080:  IT HI
1B4082:  MOVHI.W         R1, R10,LSR#1
1B4086:  ANDS.W          R3, R0, #3
1B408A:  BNE             loc_1B409A
1B408C:  LDR             R0, [SP,#0xC0+var_A4]
1B408E:  MOV             R10, R1
1B4090:  MOV             R9, R2
1B4092:  CMP             R0, #1
1B4094:  BNE.W           loc_1B3F4C
1B4098:  B               loc_1B409E
1B409A:  CMP             R3, #2
1B409C:  BNE             loc_1B40FC
1B409E:  LDR             R0, [R6]
1B40A0:  MOVS            R1, #2
1B40A2:  LDR             R3, [SP,#0xC0+var_A4]
1B40A4:  LDR             R2, [R0]
1B40A6:  CMP             R3, #1
1B40A8:  LDR             R2, [R2,#0x10]
1B40AA:  IT EQ
1B40AC:  MOVEQ           R1, #0
1B40AE:  BLX             R2
1B40B0:  LDR             R0, [SP,#0xC0+p]; p
1B40B2:  BLX             free
1B40B6:  MOV             R0, R5
1B40B8:  BLX             j__Z15RwTextureCreateP8RwRaster; RwTextureCreate(RwRaster *)
1B40BC:  MOV             R4, R0
1B40BE:  CBZ             R4, loc_1B4106
1B40C0:  LDR             R0, [SP,#0xC0+var_88]
1B40C2:  MOVW            R2, #0xFFFF
1B40C6:  LDR             R1, [R4,#0x50]
1B40C8:  BICS            R1, R2
1B40CA:  UXTB            R2, R0
1B40CC:  ORRS            R1, R2
1B40CE:  AND.W           R2, R0, #0xF00
1B40D2:  ORRS            R1, R2
1B40D4:  AND.W           R0, R0, #0xF000
1B40D8:  ORRS            R0, R1
1B40DA:  STR             R0, [R4,#0x50]
1B40DC:  ADD             R0, SP, #0xC0+var_8C
1B40DE:  MOV             R5, R0
1B40E0:  ADD.W           R1, R5, #8
1B40E4:  MOV             R0, R4
1B40E6:  BLX             j__Z16RwTextureSetNameP9RwTexturePKc; RwTextureSetName(RwTexture *,char const*)
1B40EA:  ADD.W           R1, R5, #0x28 ; '('
1B40EE:  MOV             R0, R4
1B40F0:  BLX             j__Z20RwTextureSetMaskNameP9RwTexturePKc; RwTextureSetMaskName(RwTexture *,char const*)
1B40F4:  LDR             R0, [SP,#0xC0+var_BC]
1B40F6:  STR             R4, [R0]
1B40F8:  MOVS            R0, #1
1B40FA:  B               loc_1B410E
1B40FC:  CBNZ            R0, loc_1B410C
1B40FE:  B               loc_1B40B6
1B4100:  MOV             R0, R5
1B4102:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
1B4106:  MOV             R0, R5
1B4108:  BLX             j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
1B410C:  MOVS            R0, #0
1B410E:  LDR             R1, =(__stack_chk_guard_ptr - 0x1B4116)
1B4110:  LDR             R2, [SP,#0xC0+var_44]
1B4112:  ADD             R1, PC; __stack_chk_guard_ptr
1B4114:  LDR             R1, [R1]; __stack_chk_guard
1B4116:  LDR             R1, [R1]
1B4118:  SUBS            R1, R1, R2
1B411A:  ITTTT EQ
1B411C:  ADDEQ           SP, SP, #0x80
1B411E:  VPOPEQ          {D8-D11}
1B4122:  ADDEQ           SP, SP, #4
1B4124:  POPEQ.W         {R8-R11}
1B4128:  IT EQ
1B412A:  POPEQ           {R4-R7,PC}
1B412C:  BLX             __stack_chk_fail
1B4130:  LDR             R0, [SP,#0xC0+var_B0]
1B4132:  B               loc_1B4108
