; =========================================================
; Game Engine Function: opus_multistream_packet_pad
; Address            : 0xDBB5C - 0xDBC3E
; =========================================================

DBB5C:  PUSH            {R4-R7,LR}
DBB5E:  ADD             R7, SP, #0xC
DBB60:  PUSH.W          {R8-R11}
DBB64:  SUB             SP, SP, #0x1AC
DBB66:  MOV             R4, R0
DBB68:  LDR             R0, =(__stack_chk_guard_ptr - 0xDBB72)
DBB6A:  MOV             R5, R1
DBB6C:  MOV             R6, R2
DBB6E:  ADD             R0, PC; __stack_chk_guard_ptr
DBB70:  CMP             R5, #1
DBB72:  LDR             R0, [R0]; __stack_chk_guard
DBB74:  LDR             R0, [R0]
DBB76:  STR             R0, [SP,#0x1C8+var_20]
DBB78:  BLT             loc_DBB84
DBB7A:  CMP             R6, R5
DBB7C:  BNE             loc_DBB82
DBB7E:  MOVS            R0, #0
DBB80:  B               loc_DBB88
DBB82:  BGE             loc_DBBA2
DBB84:  MOV.W           R0, #0xFFFFFFFF
DBB88:  LDR             R1, =(__stack_chk_guard_ptr - 0xDBB90)
DBB8A:  LDR             R2, [SP,#0x1C8+var_20]
DBB8C:  ADD             R1, PC; __stack_chk_guard_ptr
DBB8E:  LDR             R1, [R1]; __stack_chk_guard
DBB90:  LDR             R1, [R1]
DBB92:  SUBS            R1, R1, R2
DBB94:  ITTT EQ
DBB96:  ADDEQ           SP, SP, #0x1AC
DBB98:  POPEQ.W         {R8-R11}
DBB9C:  POPEQ           {R4-R7,PC}
DBB9E:  BLX             __stack_chk_fail
DBBA2:  SUBS            R0, R6, R5
DBBA4:  CMP             R3, #1
DBBA6:  BLE             loc_DBBF4
DBBA8:  SUBS            R6, R3, #1
DBBAA:  ADD.W           R8, SP, #0x1C8+var_1AC
DBBAE:  ADD.W           R9, SP, #0x1C8+var_1AD
DBBB2:  MOV.W           R10, #0
DBBB6:  MOV.W           R11, #0
DBBBA:  STR             R0, [SP,#0x1C8+var_1B8]
DBBBC:  CMP             R5, #1
DBBBE:  BLT             loc_DBC38
DBBC0:  ADD             R0, SP, #0x1C8+var_1B4
DBBC2:  STRD.W          R10, R8, [SP,#0x1C8+var_1C8]
DBBC6:  STR.W           R10, [SP,#0x1C8+var_1C0]
DBBCA:  MOV             R1, R5
DBBCC:  STR             R0, [SP,#0x1C8+var_1BC]
DBBCE:  MOV             R0, R4
DBBD0:  MOVS            R2, #1
DBBD2:  MOV             R3, R9
DBBD4:  BLX             j_opus_packet_parse_impl
DBBD8:  CMP             R0, #0
DBBDA:  BLT             loc_DBB88
DBBDC:  LDR             R0, [SP,#0x1C8+var_1B4]
DBBDE:  ADD.W           R11, R11, #1
DBBE2:  CMP             R11, R6
DBBE4:  SUB.W           R5, R5, R0
DBBE8:  ADD             R4, R0
DBBEA:  BLT             loc_DBBBC
DBBEC:  CMP             R5, #1
DBBEE:  BLT             loc_DBB84
DBBF0:  LDR             R0, [SP,#0x1C8+var_1B8]
DBBF2:  ADDS            R6, R5, R0
DBBF4:  CMP             R0, #0
DBBF6:  BEQ             loc_DBB7E
DBBF8:  BLT             loc_DBB84
DBBFA:  ADD.W           R8, R4, R0
DBBFE:  MOV.W           R9, #0
DBC02:  MOV             R1, R4; src
DBC04:  MOV             R2, R5; n
DBC06:  MOV             R0, R8; dest
DBC08:  STR.W           R9, [SP,#0x1C8+var_148]
DBC0C:  BLX             j_memmove
DBC10:  ADD             R0, SP, #0x1C8+var_14C
DBC12:  MOV             R1, R8
DBC14:  MOV             R2, R5
DBC16:  BLX             j_opus_repacketizer_cat
DBC1A:  CMP             R0, #0
DBC1C:  BNE             loc_DBB88
DBC1E:  LDR             R2, [SP,#0x1C8+var_148]
DBC20:  MOVS            R0, #1
DBC22:  STRD.W          R6, R9, [SP,#0x1C8+var_1C8]
DBC26:  MOVS            R1, #0
DBC28:  STR             R0, [SP,#0x1C8+var_1C0]
DBC2A:  ADD             R0, SP, #0x1C8+var_14C
DBC2C:  MOV             R3, R4
DBC2E:  BLX             j_opus_repacketizer_out_range_impl
DBC32:  AND.W           R0, R0, R0,ASR#31
DBC36:  B               loc_DBB88
DBC38:  MOV             R0, #0xFFFFFFFC
DBC3C:  B               loc_DBB88
