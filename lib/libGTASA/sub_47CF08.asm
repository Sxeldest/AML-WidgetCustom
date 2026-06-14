; =========================================================
; Game Engine Function: sub_47CF08
; Address            : 0x47CF08 - 0x47D018
; =========================================================

47CF08:  PUSH            {R4-R7,LR}
47CF0A:  ADD             R7, SP, #0xC
47CF0C:  PUSH.W          {R8-R10}
47CF10:  MOV             R4, R0
47CF12:  LDR.W           R0, [R4,#0x16C]
47CF16:  LDR.W           R10, [R4,#0x198]
47CF1A:  CBNZ            R0, loc_47CF2C
47CF1C:  LDR.W           R0, [R4,#0x170]
47CF20:  CMP             R0, #0x3F ; '?'
47CF22:  ITT EQ
47CF24:  LDREQ.W         R0, [R4,#0x174]
47CF28:  CMPEQ           R0, #0
47CF2A:  BEQ             loc_47D00E
47CF2C:  LDR             R0, [R4]
47CF2E:  MOVS            R1, #0x7A ; 'z'
47CF30:  STR             R1, [R0,#0x14]
47CF32:  MOV.W           R1, #0xFFFFFFFF
47CF36:  LDR             R0, [R4]
47CF38:  LDR             R2, [R0,#4]
47CF3A:  MOV             R0, R4
47CF3C:  BLX             R2
47CF3E:  LDR.W           R0, [R4,#0x124]
47CF42:  CMP             R0, #1
47CF44:  BLT             loc_47CF8C
47CF46:  ADD.W           R8, R10, #0x14
47CF4A:  MOV.W           R9, #0
47CF4E:  MOVS            R6, #0
47CF50:  ADD.W           R0, R4, R6,LSL#2
47CF54:  MOVS            R1, #1
47CF56:  LDR.W           R0, [R0,#0x128]
47CF5A:  LDRD.W          R2, R5, [R0,#0x14]
47CF5E:  ADD.W           R0, R10, R2,LSL#2
47CF62:  ADD.W           R3, R0, #0x28 ; '('
47CF66:  MOV             R0, R4
47CF68:  BLX             j__Z23jpeg_make_d_derived_tblP22jpeg_decompress_structhiPP13d_derived_tbl; jpeg_make_d_derived_tbl(jpeg_decompress_struct *,uchar,int,d_derived_tbl **)
47CF6C:  ADD.W           R0, R10, R5,LSL#2
47CF70:  MOVS            R1, #0
47CF72:  ADD.W           R3, R0, #0x38 ; '8'
47CF76:  MOV             R0, R4
47CF78:  MOV             R2, R5
47CF7A:  BLX             j__Z23jpeg_make_d_derived_tblP22jpeg_decompress_structhiPP13d_derived_tbl; jpeg_make_d_derived_tbl(jpeg_decompress_struct *,uchar,int,d_derived_tbl **)
47CF7E:  STR.W           R9, [R8,R6,LSL#2]
47CF82:  ADDS            R6, #1
47CF84:  LDR.W           R0, [R4,#0x124]
47CF88:  CMP             R6, R0
47CF8A:  BLT             loc_47CF50
47CF8C:  LDR.W           R0, [R4,#0x140]
47CF90:  CMP             R0, #1
47CF92:  BLT             loc_47CFF6
47CF94:  ADD.W           R0, R4, #0x144
47CF98:  MOVS            R1, #0
47CF9A:  MOVS            R2, #1
47CF9C:  LDR.W           R3, [R0,R1,LSL#2]
47CFA0:  ADD.W           R5, R10, R1,LSL#2
47CFA4:  ADD.W           R3, R4, R3,LSL#2
47CFA8:  LDR.W           R3, [R3,#0x128]
47CFAC:  LDR             R6, [R3,#0x14]
47CFAE:  ADD.W           R6, R10, R6,LSL#2
47CFB2:  LDR             R6, [R6,#0x28]
47CFB4:  STR             R6, [R5,#0x48]
47CFB6:  LDR             R6, [R3,#0x18]
47CFB8:  ADD.W           R6, R10, R6,LSL#2
47CFBC:  LDR             R6, [R6,#0x38]
47CFBE:  STR             R6, [R5,#0x70]
47CFC0:  LDRB.W          R6, [R3,#0x30]
47CFC4:  CBZ             R6, loc_47CFDE
47CFC6:  ADD.W           R6, R10, R1
47CFCA:  STRB.W          R2, [R6,#0x98]
47CFCE:  ADDS            R6, #0xA2
47CFD0:  LDR             R3, [R3,#0x24]
47CFD2:  CMP             R3, #1
47CFD4:  MOV.W           R3, #0
47CFD8:  IT GT
47CFDA:  MOVGT           R3, #1
47CFDC:  B               loc_47CFEA
47CFDE:  ADD.W           R6, R10, R1
47CFE2:  MOVS            R3, #0
47CFE4:  STRB.W          R3, [R6,#0xA2]
47CFE8:  ADDS            R6, #0x98
47CFEA:  STRB            R3, [R6]
47CFEC:  ADDS            R1, #1
47CFEE:  LDR.W           R3, [R4,#0x140]
47CFF2:  CMP             R1, R3
47CFF4:  BLT             loc_47CF9C
47CFF6:  MOVS            R0, #0
47CFF8:  STRB.W          R0, [R10,#8]
47CFFC:  STRD.W          R0, R0, [R10,#0xC]
47D000:  LDR.W           R0, [R4,#0xFC]
47D004:  STR.W           R0, [R10,#0x24]
47D008:  POP.W           {R8-R10}
47D00C:  POP             {R4-R7,PC}
47D00E:  LDR.W           R0, [R4,#0x178]
47D012:  CMP             R0, #0
47D014:  BNE             loc_47CF2C
47D016:  B               loc_47CF3E
