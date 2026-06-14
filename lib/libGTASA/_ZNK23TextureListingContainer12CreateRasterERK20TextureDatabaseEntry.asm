; =========================================================
; Game Engine Function: _ZNK23TextureListingContainer12CreateRasterERK20TextureDatabaseEntry
; Address            : 0x1E8D78 - 0x1E8EF4
; =========================================================

1E8D78:  PUSH            {R4-R7,LR}
1E8D7A:  ADD             R7, SP, #0xC
1E8D7C:  PUSH.W          {R8-R11}
1E8D80:  SUB             SP, SP, #0xC
1E8D82:  MOV             R6, R1
1E8D84:  MOVW            R3, #0x604
1E8D88:  LDRH            R2, [R6,#8]
1E8D8A:  MOV             R9, R0
1E8D8C:  LDRH            R4, [R6,#0xA]
1E8D8E:  AND.W           R5, R2, #0xF
1E8D92:  LDRH.W          R1, [R6,#0x11]; int
1E8D96:  CMP             R5, #7
1E8D98:  LDRH.W          R0, [R6,#0xF]; int
1E8D9C:  IT EQ
1E8D9E:  MOVWEQ          R3, #0x504
1E8DA2:  TST.W           R2, #0xF0
1E8DA6:  MOV.W           R2, R4,LSL#15
1E8DAA:  IT NE
1E8DAC:  MOVWNE          R3, #0x504
1E8DB0:  UXTH            R2, R2
1E8DB2:  ORRS            R3, R2; int
1E8DB4:  MOVS            R2, #0x20 ; ' '; int
1E8DB6:  BLX             j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
1E8DBA:  MOV             R5, R0
1E8DBC:  LDR             R0, =(RasterExtOffset_ptr - 0x1E8DC4)
1E8DBE:  MOVS            R4, #0
1E8DC0:  ADD             R0, PC; RasterExtOffset_ptr
1E8DC2:  LDR             R0, [R0]; RasterExtOffset
1E8DC4:  LDR             R1, [R0]
1E8DC6:  STR             R1, [SP,#0x28+var_20]
1E8DC8:  LDRH            R0, [R6,#8]
1E8DCA:  ADD.W           R10, R5, R1
1E8DCE:  MOVS            R1, #1
1E8DD0:  TST.W           R0, #0xF0
1E8DD4:  IT NE
1E8DD6:  MOVNE           R1, #5
1E8DD8:  STRB.W          R1, [R10,#0x14]
1E8DDC:  LDRH            R0, [R6,#8]
1E8DDE:  STRB.W          R4, [R10,#0x15]
1E8DE2:  ANDS.W          R0, R0, #0xF0
1E8DE6:  IT NE
1E8DE8:  MOVNE           R0, #1
1E8DEA:  STRB.W          R0, [R10,#0x16]
1E8DEE:  MOV             R0, R9; this
1E8DF0:  BLX             j__ZNK14TextureListing11GetRQFormatEv; TextureListing::GetRQFormat(void)
1E8DF4:  MOV             R8, R0
1E8DF6:  MOV             R0, R9; this
1E8DF8:  BLX             j__ZNK14TextureListing11GetMipCountEv; TextureListing::GetMipCount(void)
1E8DFC:  MOV             R11, R0
1E8DFE:  CMP.W           R11, #1
1E8E02:  IT HI
1E8E04:  MOVHI           R4, #1
1E8E06:  LDRH.W          R2, [R9,#6]
1E8E0A:  LDRH.W          R1, [R9,#4]
1E8E0E:  MOV             R0, R8
1E8E10:  MOV             R3, R4
1E8E12:  STR.W           R8, [SP,#0x28+var_24]
1E8E16:  BFC.W           R2, #0xF, #0x11
1E8E1A:  BLX             j__ZN9RQTexture6CreateE15RQTextureFormatjjb; RQTexture::Create(RQTextureFormat,uint,uint,bool)
1E8E1E:  LDR             R1, [SP,#0x28+var_20]
1E8E20:  MOVW            R2, #0xFFFF
1E8E24:  STR             R0, [R5,R1]
1E8E26:  LDRH.W          R1, [R9,#4]
1E8E2A:  ADD             R2, R1
1E8E2C:  TST             R2, R1
1E8E2E:  BNE             loc_1E8E42
1E8E30:  LDRH.W          R1, [R9,#6]
1E8E34:  MOVW            R2, #0x7FFF
1E8E38:  BFC.W           R1, #0xF, #0x11
1E8E3C:  ADD             R2, R1
1E8E3E:  TST             R2, R1
1E8E40:  BEQ             loc_1E8EEA
1E8E42:  LDR             R1, [R0]
1E8E44:  MOVS            R2, #1
1E8E46:  LDR             R3, [R1,#0xC]
1E8E48:  MOVS            R1, #1
1E8E4A:  BLX             R3
1E8E4C:  LDR.W           R4, [R9,#8]
1E8E50:  STR             R6, [SP,#0x28+var_20]
1E8E52:  LDRH            R0, [R6,#8]
1E8E54:  AND.W           R0, R0, #0xF
1E8E58:  CMP             R0, #7
1E8E5A:  BNE             loc_1E8E8C
1E8E5C:  LDRH.W          R6, [R9,#6]
1E8E60:  LDRH.W          R8, [R9,#4]
1E8E64:  BFC.W           R6, #0xF, #0x11
1E8E68:  MUL.W           R0, R8, R6
1E8E6C:  LSLS            R0, R0, #2; byte_count
1E8E6E:  BLX             malloc
1E8E72:  LDRH            R1, [R5,#0x30]
1E8E74:  MOV             R3, R6; int
1E8E76:  STR             R0, [R5,#4]
1E8E78:  ORR.W           R1, R1, #0x100
1E8E7C:  STRH            R1, [R5,#0x30]
1E8E7E:  LDR.W           R1, [R9,#8]; void *
1E8E82:  LDR             R2, [SP,#0x28+var_24]
1E8E84:  STR             R2, [SP,#0x28+var_28]; int
1E8E86:  MOV             R2, R8; int
1E8E88:  BLX             j__ZN9RQTexture14ConvertToRaw32EPhS0_jj15RQTextureFormat; RQTexture::ConvertToRaw32(uchar *,uchar *,uint,uint,RQTextureFormat)
1E8E8C:  MOVS            R6, #0
1E8E8E:  STR             R5, [SP,#0x28+var_24]
1E8E90:  MOV             R0, R9; this
1E8E92:  MOV             R1, R6; unsigned int
1E8E94:  BLX             j__ZNK14TextureListing10GetMipSizeEj; TextureListing::GetMipSize(uint)
1E8E98:  MOV             R8, R0
1E8E9A:  LDR.W           R0, [R10]
1E8E9E:  MOV             R2, R4
1E8EA0:  LDR             R1, [R0]
1E8EA2:  LDR             R3, [R1,#0x14]
1E8EA4:  MOV             R1, R6
1E8EA6:  BLX             R3
1E8EA8:  ADDS            R5, R6, #1
1E8EAA:  MOV             R0, R9; this
1E8EAC:  MOV             R1, R5; unsigned int
1E8EAE:  BLX             j__ZNK14TextureListing10GetMipSizeEj; TextureListing::GetMipSize(uint)
1E8EB2:  CMP             R8, R0
1E8EB4:  BLS             loc_1E8EC0
1E8EB6:  MOV             R0, R9; this
1E8EB8:  MOV             R1, R6; unsigned int
1E8EBA:  BLX             j__ZNK14TextureListing10GetMipSizeEj; TextureListing::GetMipSize(uint)
1E8EBE:  ADD             R4, R0
1E8EC0:  CMP             R5, R11
1E8EC2:  MOV             R6, R5
1E8EC4:  BCC             loc_1E8E90
1E8EC6:  LDR.W           R0, [R10]
1E8ECA:  MOVS            R1, #2
1E8ECC:  CMP.W           R11, #1
1E8ED0:  LDR             R2, [R0]
1E8ED2:  LDR             R2, [R2,#0x10]
1E8ED4:  IT EQ
1E8ED6:  MOVEQ           R1, #0
1E8ED8:  BLX             R2
1E8EDA:  LDRD.W          R1, R0, [SP,#0x28+var_24]
1E8EDE:  STR             R0, [R1,#0x2C]
1E8EE0:  MOV             R0, R1
1E8EE2:  ADD             SP, SP, #0xC
1E8EE4:  POP.W           {R8-R11}
1E8EE8:  POP             {R4-R7,PC}
1E8EEA:  LDR             R1, [R0]
1E8EEC:  MOVS            R2, #0
1E8EEE:  LDR             R3, [R1,#0xC]
1E8EF0:  MOVS            R1, #0
1E8EF2:  B               loc_1E8E4A
