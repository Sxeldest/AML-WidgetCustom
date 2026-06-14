; =========================================================
; Game Engine Function: opus_multistream_packet_unpad
; Address            : 0xDBC48 - 0xDBDA6
; =========================================================

DBC48:  PUSH            {R4-R7,LR}
DBC4A:  ADD             R7, SP, #0xC
DBC4C:  PUSH.W          {R8-R11}
DBC50:  SUB             SP, SP, #0x1B4
DBC52:  MOV             R6, R0
DBC54:  LDR             R0, =(__stack_chk_guard_ptr - 0xDBC5E)
DBC56:  MOV             R8, R1
DBC58:  MOV             R4, R2
DBC5A:  ADD             R0, PC; __stack_chk_guard_ptr
DBC5C:  CMP.W           R8, #1
DBC60:  LDR             R0, [R0]; __stack_chk_guard
DBC62:  LDR             R0, [R0]
DBC64:  STR             R0, [SP,#0x1D0+var_20]
DBC66:  BLT.W           loc_DBD78
DBC6A:  CMP             R4, #1
DBC6C:  BLT.W           loc_DBD7E
DBC70:  MOVS            R5, #0
DBC72:  MOVS            R1, #0
DBC74:  MOV             R11, R6
DBC76:  SUBS            R0, R4, #1
DBC78:  STR             R0, [SP,#0x1D0+var_1C0]
DBC7A:  LDR             R0, [SP,#0x1D0+var_1C0]
DBC7C:  MOV.W           R9, #0
DBC80:  CMP             R0, R1
DBC82:  IT NE
DBC84:  MOVNE.W         R9, #1
DBC88:  CMP.W           R8, #1
DBC8C:  BLT             loc_DBD82
DBC8E:  MOVS            R0, #0
DBC90:  STR             R1, [SP,#0x1D0+var_1B8]
DBC92:  STR             R0, [SP,#0x1D0+var_1A8]
DBC94:  ADD             R1, SP, #0x1D0+var_80
DBC96:  STR             R0, [SP,#0x1D0+var_1D0]
DBC98:  ADD.W           R3, SP, #0x1D0+var_1AE
DBC9C:  STRD.W          R1, R0, [SP,#0x1D0+var_1CC]
DBCA0:  ADD             R0, SP, #0x1D0+var_1B4
DBCA2:  STR             R0, [SP,#0x1D0+var_1C4]
DBCA4:  MOV             R0, R11
DBCA6:  MOV             R1, R8
DBCA8:  MOV             R2, R9
DBCAA:  BLX             j_opus_packet_parse_impl
DBCAE:  CMP             R0, #0
DBCB0:  BLT             loc_DBD88
DBCB2:  LDR.W           R10, [SP,#0x1D0+var_1B4]
DBCB6:  STR.W           R8, [SP,#0x1D0+var_1BC]
DBCBA:  CMP.W           R10, #1
DBCBE:  BLT             loc_DBD82
DBCC0:  LDR             R0, [SP,#0x1D0+var_1A8]
DBCC2:  CBZ             R0, loc_DBCD6
DBCC4:  LDRB.W          R0, [SP,#0x1D0+var_1AC]
DBCC8:  LDRB.W          R1, [R11]
DBCCC:  EORS            R0, R1
DBCCE:  UXTB            R0, R0
DBCD0:  CMP             R0, #3
DBCD2:  BLS             loc_DBCEA
DBCD4:  B               loc_DBD82
DBCD6:  LDRB.W          R0, [R11]
DBCDA:  MOV.W           R1, #0x1F40
DBCDE:  STRB.W          R0, [SP,#0x1D0+var_1AC]
DBCE2:  MOV             R0, R11
DBCE4:  BLX             j_opus_packet_get_samples_per_frame
DBCE8:  STR             R0, [SP,#0x1D0+var_84]
DBCEA:  MOV             R0, R11
DBCEC:  MOV             R1, R10
DBCEE:  BLX             j_opus_packet_get_nb_frames
DBCF2:  MOV             R8, R0
DBCF4:  CMP.W           R8, #1
DBCF8:  BLT             loc_DBD82
DBCFA:  LDR             R0, [SP,#0x1D0+var_1A8]
DBCFC:  LDR             R1, [SP,#0x1D0+var_84]
DBCFE:  ADD.W           R2, R0, R8
DBD02:  MULS            R1, R2
DBD04:  CMP.W           R1, #0x3C0
DBD08:  BGT             loc_DBD82
DBD0A:  ADD             R1, SP, #0x1D0+var_1AC
DBD0C:  ADD.W           R3, SP, #0x1D0+var_1AD
DBD10:  MOV             R2, R1
DBD12:  ADD.W           R1, R2, R0,LSL#1
DBD16:  ADD.W           R0, R2, R0,LSL#2
DBD1A:  ADDS            R1, #0xC8
DBD1C:  ADDS            R0, #8
DBD1E:  MOV             R2, R9
DBD20:  STRD.W          R0, R1, [SP,#0x1D0+var_1D0]
DBD24:  MOVS            R0, #0
DBD26:  STRD.W          R0, R0, [SP,#0x1D0+var_1C8]
DBD2A:  MOV             R0, R11
DBD2C:  MOV             R1, R10
DBD2E:  BLX             j_opus_packet_parse_impl
DBD32:  CMP             R0, #1
DBD34:  BLT             loc_DBD40
DBD36:  LDR             R0, [SP,#0x1D0+var_1A8]
DBD38:  ADD.W           R2, R0, R8
DBD3C:  STR             R2, [SP,#0x1D0+var_1A8]
DBD3E:  B               loc_DBD46
DBD40:  CMP             R0, #0
DBD42:  BLT             loc_DBD88
DBD44:  LDR             R2, [SP,#0x1D0+var_1A8]
DBD46:  LDR.W           R8, [SP,#0x1D0+var_1BC]
DBD4A:  MOVS            R0, #0
DBD4C:  STRD.W          R8, R9, [SP,#0x1D0+var_1D0]
DBD50:  MOVS            R1, #0
DBD52:  STR             R0, [SP,#0x1D0+var_1C8]
DBD54:  ADD             R0, SP, #0x1D0+var_1AC
DBD56:  MOV             R3, R6
DBD58:  BLX             j_opus_repacketizer_out_range_impl
DBD5C:  CMP             R0, #0
DBD5E:  BLT             loc_DBD88
DBD60:  LDR             R1, [SP,#0x1D0+var_1B4]
DBD62:  ADD             R6, R0
DBD64:  ADD             R5, R0
DBD66:  SUB.W           R8, R8, R1
DBD6A:  ADD             R11, R1
DBD6C:  LDR             R1, [SP,#0x1D0+var_1B8]
DBD6E:  ADDS            R1, #1
DBD70:  CMP             R1, R4
DBD72:  BLT.W           loc_DBC7A
DBD76:  B               loc_DBD8A
DBD78:  MOV.W           R5, #0xFFFFFFFF
DBD7C:  B               loc_DBD8A
DBD7E:  MOVS            R5, #0
DBD80:  B               loc_DBD8A
DBD82:  MOV             R5, #0xFFFFFFFC
DBD86:  B               loc_DBD8A
DBD88:  MOV             R5, R0
DBD8A:  LDR             R0, =(__stack_chk_guard_ptr - 0xDBD92)
DBD8C:  LDR             R1, [SP,#0x1D0+var_20]
DBD8E:  ADD             R0, PC; __stack_chk_guard_ptr
DBD90:  LDR             R0, [R0]; __stack_chk_guard
DBD92:  LDR             R0, [R0]
DBD94:  SUBS            R0, R0, R1
DBD96:  ITTTT EQ
DBD98:  MOVEQ           R0, R5
DBD9A:  ADDEQ           SP, SP, #0x1B4
DBD9C:  POPEQ.W         {R8-R11}
DBDA0:  POPEQ           {R4-R7,PC}
DBDA2:  BLX             __stack_chk_fail
