; =========================================================
; Game Engine Function: sub_20B9A0
; Address            : 0x20B9A0 - 0x20BDE2
; =========================================================

20B9A0:  PUSH            {R4-R7,LR}
20B9A2:  ADD             R7, SP, #0xC
20B9A4:  PUSH.W          {R8-R11}
20B9A8:  SUB             SP, SP, #0x1C
20B9AA:  MOV             R5, R0
20B9AC:  MOVW            R0, #0x1694
20B9B0:  ADD             R0, R5
20B9B2:  STR             R0, [SP,#0x38+var_24]
20B9B4:  MOVW            R0, #0x1690
20B9B8:  MOV             R10, R1
20B9BA:  ADD             R0, R5
20B9BC:  STR             R0, [SP,#0x38+var_20]
20B9BE:  MOVW            R0, #0x1698
20B9C2:  ADD.W           R9, R5, R0
20B9C6:  MOVW            R0, #0x169C
20B9CA:  ADD.W           R11, R5, R0
20B9CE:  LDR.W           R0, =(_length_code_ptr - 0x20B9DA)
20B9D2:  MOV.W           R8, #0
20B9D6:  ADD             R0, PC; _length_code_ptr
20B9D8:  LDR             R0, [R0]; _length_code
20B9DA:  STR             R0, [SP,#0x38+var_28]
20B9DC:  LDR.W           R0, =(_dist_code_ptr - 0x20B9E4)
20B9E0:  ADD             R0, PC; _dist_code_ptr
20B9E2:  LDR             R0, [R0]; _dist_code
20B9E4:  STR             R0, [SP,#0x38+var_2C]
20B9E6:  LDR             R0, [R5,#0x6C]
20B9E8:  B               loc_20B9FA
20B9EA:  LDR             R0, [R5,#0x64]
20B9EC:  MOVS            R2, #1
20B9EE:  LDR             R1, [R5,#0x6C]
20B9F0:  ADDS            R0, #1
20B9F2:  STRD.W          R2, R0, [R5,#0x60]
20B9F6:  SUBS            R0, R1, #1
20B9F8:  STR             R0, [R5,#0x6C]
20B9FA:  LSRS            R0, R0, #1
20B9FC:  CMP             R0, #0x82
20B9FE:  BHI             loc_20BA20
20BA00:  MOV             R0, R5
20BA02:  BL              sub_20BDEC
20BA06:  LDR             R0, [R5,#0x6C]
20BA08:  CMP.W           R10, #0
20BA0C:  BNE             loc_20BA16
20BA0E:  CMP.W           R0, #0x106
20BA12:  BCC.W           loc_20BD10
20BA16:  CMP             R0, #0
20BA18:  BEQ.W           loc_20BD14
20BA1C:  CMP             R0, #3
20BA1E:  BCC             loc_20BA54
20BA20:  LDRD.W          R12, R1, [R5,#0x2C]
20BA24:  LDRD.W          LR, R3, [R5,#0x38]
20BA28:  LDR             R4, [R5,#0x64]
20BA2A:  LDR             R6, [R5,#0x40]
20BA2C:  ADD             R1, R4
20BA2E:  LDRD.W          R0, R2, [R5,#0x4C]
20BA32:  LDRB            R1, [R1,#2]
20BA34:  LSL.W           R2, R6, R2
20BA38:  EORS            R1, R2
20BA3A:  ANDS            R0, R1
20BA3C:  STR             R0, [R5,#0x40]
20BA3E:  LDRH.W          R8, [R3,R0,LSL#1]
20BA42:  AND.W           R0, R12, R4
20BA46:  STRH.W          R8, [LR,R0,LSL#1]
20BA4A:  LDRD.W          R0, R1, [R5,#0x3C]
20BA4E:  LDR             R2, [R5,#0x64]
20BA50:  STRH.W          R2, [R0,R1,LSL#1]
20BA54:  LDR             R1, [R5,#0x58]
20BA56:  MOVS            R0, #2
20BA58:  LDR             R2, [R5,#0x68]
20BA5A:  CMP.W           R8, #0
20BA5E:  STR             R1, [R5,#0x70]
20BA60:  STRD.W          R0, R2, [R5,#0x58]
20BA64:  BEQ             loc_20BA86
20BA66:  LDR             R0, [R5,#0x78]
20BA68:  CMP             R1, R0
20BA6A:  BCS             loc_20BA92
20BA6C:  LDR             R0, [R5,#0x24]
20BA6E:  LDR             R1, [R5,#0x64]
20BA70:  SUB.W           R0, R0, #0x106
20BA74:  SUB.W           R1, R1, R8
20BA78:  CMP             R1, R0
20BA7A:  BHI             loc_20BA84
20BA7C:  LDR.W           R0, [R5,#0x80]
20BA80:  CMP             R0, #2
20BA82:  BNE             loc_20BB5E
20BA84:  MOVS            R0, #2
20BA86:  LDR             R1, [R5,#0x70]
20BA88:  CMP             R1, #3
20BA8A:  BCC             loc_20BA98
20BA8C:  CMP             R0, R1
20BA8E:  BHI             loc_20BA98
20BA90:  B               loc_20BB90
20BA92:  MOVS            R0, #2
20BA94:  CMP             R1, #3
20BA96:  BCS             loc_20BA8C
20BA98:  LDR             R0, [R5,#0x60]
20BA9A:  CMP             R0, #0
20BA9C:  BEQ             loc_20B9EA
20BA9E:  LDR             R0, [R5,#0x30]
20BAA0:  LDR             R1, [R5,#0x64]
20BAA2:  LDR.W           R2, [R9]
20BAA6:  LDR.W           R3, [R11]
20BAAA:  ADD             R0, R1
20BAAC:  MOVS            R1, #0
20BAAE:  LDRB.W          R0, [R0,#-1]
20BAB2:  STRH.W          R1, [R3,R2,LSL#1]
20BAB6:  LDR             R1, [SP,#0x38+var_20]
20BAB8:  LDR.W           R2, [R9]
20BABC:  LDR             R1, [R1]
20BABE:  ADDS            R3, R2, #1
20BAC0:  STR.W           R3, [R9]
20BAC4:  STRB            R0, [R1,R2]
20BAC6:  ADD.W           R0, R5, R0,LSL#2
20BACA:  LDRH.W          R1, [R0,#0x8C]
20BACE:  ADDS            R1, #1
20BAD0:  STRH.W          R1, [R0,#0x8C]
20BAD4:  LDR             R0, [SP,#0x38+var_24]
20BAD6:  LDR.W           R1, [R9]
20BADA:  LDR             R0, [R0]
20BADC:  SUBS            R0, #1
20BADE:  CMP             R1, R0
20BAE0:  BNE             loc_20BB46
20BAE2:  LDR             R0, [R5,#0x54]
20BAE4:  MOVS            R3, #0
20BAE6:  CMP             R0, #0
20BAE8:  ITTE GE
20BAEA:  LDRGE           R1, [R5,#0x30]
20BAEC:  ADDGE           R1, R0
20BAEE:  MOVLT           R1, #0
20BAF0:  LDR             R2, [R5,#0x64]
20BAF2:  SUBS            R2, R2, R0
20BAF4:  MOV             R0, R5
20BAF6:  BLX             j__tr_flush_block
20BAFA:  LDR             R6, [R5]
20BAFC:  LDR             R0, [R5,#0x64]
20BAFE:  STR             R0, [R5,#0x54]
20BB00:  LDR             R0, [R6,#0x1C]
20BB02:  LDR             R1, [R6,#0x10]
20BB04:  LDR             R4, [R0,#0x14]
20BB06:  CMP             R4, R1
20BB08:  IT HI
20BB0A:  MOVHI           R4, R1
20BB0C:  CBZ             R4, loc_20BB46
20BB0E:  LDR             R1, [R0,#0x10]; void *
20BB10:  MOV             R2, R4; size_t
20BB12:  LDR             R0, [R6,#0xC]; void *
20BB14:  BLX             memcpy_1
20BB18:  LDR             R0, [R6,#0xC]
20BB1A:  LDR             R1, [R6,#0x1C]
20BB1C:  ADD             R0, R4
20BB1E:  STR             R0, [R6,#0xC]
20BB20:  LDR             R0, [R1,#0x10]
20BB22:  ADD             R0, R4
20BB24:  STR             R0, [R1,#0x10]
20BB26:  LDRD.W          R0, R1, [R6,#0x10]
20BB2A:  LDR             R2, [R6,#0x1C]
20BB2C:  ADD             R1, R4
20BB2E:  SUBS            R0, R0, R4
20BB30:  STRD.W          R0, R1, [R6,#0x10]
20BB34:  LDR             R0, [R2,#0x14]
20BB36:  SUBS            R0, R0, R4
20BB38:  STR             R0, [R2,#0x14]
20BB3A:  LDR             R0, [R6,#0x1C]
20BB3C:  LDR             R1, [R0,#0x14]
20BB3E:  CMP             R1, #0
20BB40:  ITT EQ
20BB42:  LDREQ           R1, [R0,#8]
20BB44:  STREQ           R1, [R0,#0x10]
20BB46:  LDR             R0, [R5,#0x64]
20BB48:  LDR             R1, [R5]
20BB4A:  LDR             R2, [R5,#0x6C]
20BB4C:  ADDS            R0, #1
20BB4E:  STR             R0, [R5,#0x64]
20BB50:  SUBS            R0, R2, #1
20BB52:  STR             R0, [R5,#0x6C]
20BB54:  LDR             R1, [R1,#0x10]
20BB56:  CMP             R1, #0
20BB58:  BNE.W           loc_20B9FA
20BB5C:  B               loc_20BD10
20BB5E:  MOV             R0, R5
20BB60:  MOV             R1, R8
20BB62:  BL              sub_20C01E
20BB66:  CMP             R0, #5
20BB68:  STR             R0, [R5,#0x58]
20BB6A:  BHI             loc_20BA86
20BB6C:  LDR.W           R1, [R5,#0x80]
20BB70:  CMP             R1, #1
20BB72:  BNE             loc_20BB7A
20BB74:  MOVS            R0, #2
20BB76:  STR             R0, [R5,#0x58]
20BB78:  B               loc_20BA86
20BB7A:  CMP             R0, #3
20BB7C:  BNE.W           loc_20BA86
20BB80:  LDRD.W          R0, R1, [R5,#0x64]
20BB84:  SUBS            R0, R0, R1
20BB86:  CMP.W           R0, #0x1000
20BB8A:  BHI             loc_20BB74
20BB8C:  MOVS            R0, #3
20BB8E:  B               loc_20BA86
20BB90:  STR.W           R10, [SP,#0x38+var_30]
20BB94:  MOVW            LR, #0xFFFF
20BB98:  LDR.W           R10, [R5,#0x64]
20BB9C:  ADDS            R1, #0xFD
20BB9E:  LDR.W           R6, [R9]
20BBA2:  LDR.W           R4, [R11]
20BBA6:  ADD.W           R3, R10, LR
20BBAA:  LDR             R0, [R5,#0x5C]
20BBAC:  LDR.W           R12, [R5,#0x6C]
20BBB0:  SUBS            R0, R3, R0
20BBB2:  STRH.W          R0, [R4,R6,LSL#1]
20BBB6:  ADD             R0, LR
20BBB8:  LDR             R6, [SP,#0x38+var_20]
20BBBA:  LDR.W           R3, [R9]
20BBBE:  UXTH            R0, R0
20BBC0:  CMP.W           R0, #0x100
20BBC4:  LDR             R6, [R6]
20BBC6:  ADD.W           R4, R3, #1
20BBCA:  STR.W           R4, [R9]
20BBCE:  UXTB            R4, R1
20BBD0:  LDR             R2, [SP,#0x38+var_28]
20BBD2:  STRB            R1, [R6,R3]
20BBD4:  MOV.W           R1, #0x100
20BBD8:  IT CS
20BBDA:  ADDCS.W         R0, R1, R0,LSR#7
20BBDE:  LDRB            R4, [R2,R4]
20BBE0:  LDR             R2, [SP,#0x38+var_2C]
20BBE2:  ORR.W           R1, R4, #0x100
20BBE6:  LDRB            R0, [R2,R0]
20BBE8:  ADD.W           R1, R5, R1,LSL#2
20BBEC:  LDRH.W          R3, [R1,#0x90]
20BBF0:  ADD.W           R0, R5, R0,LSL#2
20BBF4:  ADDS            R3, #1
20BBF6:  STRH.W          R3, [R1,#0x90]
20BBFA:  LDRH.W          R1, [R0,#0x980]
20BBFE:  ADDS            R1, #1
20BC00:  STRH.W          R1, [R0,#0x980]
20BC04:  LDRD.W          R1, R3, [R5,#0x6C]
20BC08:  SUBS            R6, R3, #2
20BC0A:  LDR.W           R0, [R9]
20BC0E:  RSB.W           R3, R3, #1
20BC12:  STR             R0, [SP,#0x38+var_34]
20BC14:  ADD             R1, R3
20BC16:  LDR             R0, [SP,#0x38+var_24]
20BC18:  LDR             R4, [R0]
20BC1A:  STRD.W          R1, R6, [R5,#0x6C]
20BC1E:  ADD.W           R1, R10, R12
20BC22:  SUB.W           R10, R1, #3
20BC26:  SUBS            R0, R4, #1
20BC28:  STR             R0, [SP,#0x38+var_38]
20BC2A:  LDR             R4, [R5,#0x64]
20BC2C:  ADDS            R3, R4, #1
20BC2E:  STR             R3, [R5,#0x64]
20BC30:  CMP             R3, R10
20BC32:  BHI             loc_20BC6A
20BC34:  LDRD.W          R6, R0, [R5,#0x2C]
20BC38:  ADD             R0, R4
20BC3A:  LDRD.W          R1, R8, [R5,#0x38]
20BC3E:  LDR             R2, [R5,#0x40]
20BC40:  LDRD.W          LR, R12, [R5,#0x4C]
20BC44:  LDRB            R0, [R0,#3]
20BC46:  LSL.W           R2, R2, R12
20BC4A:  EORS            R0, R2
20BC4C:  AND.W           R0, R0, LR
20BC50:  STR             R0, [R5,#0x40]
20BC52:  LDRH.W          R8, [R8,R0,LSL#1]
20BC56:  AND.W           R0, R6, R3
20BC5A:  STRH.W          R8, [R1,R0,LSL#1]
20BC5E:  LDRD.W          R0, R1, [R5,#0x3C]
20BC62:  LDR             R2, [R5,#0x64]
20BC64:  STRH.W          R2, [R0,R1,LSL#1]
20BC68:  LDR             R6, [R5,#0x70]
20BC6A:  SUBS            R6, #1
20BC6C:  STR             R6, [R5,#0x70]
20BC6E:  BNE             loc_20BC2A
20BC70:  LDR             R0, [R5,#0x64]
20BC72:  MOVS            R1, #2
20BC74:  STR             R1, [R5,#0x58]
20BC76:  ADDS            R2, R0, #1
20BC78:  MOVS            R0, #0
20BC7A:  STRD.W          R0, R2, [R5,#0x60]
20BC7E:  LDRD.W          R1, R0, [SP,#0x38+var_38]
20BC82:  LDR.W           R10, [SP,#0x38+var_30]
20BC86:  CMP             R0, R1
20BC88:  BNE.W           loc_20B9E6
20BC8C:  LDR             R0, [R5,#0x54]
20BC8E:  MOVS            R3, #0
20BC90:  CMP             R0, #0
20BC92:  SUB.W           R2, R2, R0
20BC96:  ITTE GE
20BC98:  LDRGE           R1, [R5,#0x30]
20BC9A:  ADDGE           R1, R0
20BC9C:  MOVLT           R1, #0
20BC9E:  MOV             R0, R5
20BCA0:  BLX             j__tr_flush_block
20BCA4:  LDR.W           R10, [R5]
20BCA8:  LDR             R0, [R5,#0x64]
20BCAA:  STR             R0, [R5,#0x54]
20BCAC:  LDR.W           R0, [R10,#0x1C]
20BCB0:  LDR.W           R1, [R10,#0x10]
20BCB4:  LDR             R4, [R0,#0x14]
20BCB6:  CMP             R4, R1
20BCB8:  IT HI
20BCBA:  MOVHI           R4, R1
20BCBC:  CBZ             R4, loc_20BD02
20BCBE:  LDR             R1, [R0,#0x10]; void *
20BCC0:  MOV             R2, R4; size_t
20BCC2:  LDR.W           R0, [R10,#0xC]; void *
20BCC6:  BLX             memcpy_1
20BCCA:  LDR.W           R0, [R10,#0xC]
20BCCE:  LDR.W           R1, [R10,#0x1C]
20BCD2:  ADD             R0, R4
20BCD4:  STR.W           R0, [R10,#0xC]
20BCD8:  LDR             R0, [R1,#0x10]
20BCDA:  ADD             R0, R4
20BCDC:  STR             R0, [R1,#0x10]
20BCDE:  LDRD.W          R0, R1, [R10,#0x10]
20BCE2:  LDR.W           R2, [R10,#0x1C]
20BCE6:  ADD             R1, R4
20BCE8:  SUBS            R0, R0, R4
20BCEA:  STRD.W          R0, R1, [R10,#0x10]
20BCEE:  LDR             R0, [R2,#0x14]
20BCF0:  SUBS            R0, R0, R4
20BCF2:  STR             R0, [R2,#0x14]
20BCF4:  LDR.W           R0, [R10,#0x1C]
20BCF8:  LDR             R1, [R0,#0x14]
20BCFA:  CMP             R1, #0
20BCFC:  ITT EQ
20BCFE:  LDREQ           R1, [R0,#8]
20BD00:  STREQ           R1, [R0,#0x10]
20BD02:  LDR             R0, [R5]
20BD04:  LDR.W           R10, [SP,#0x38+var_30]
20BD08:  LDR             R0, [R0,#0x10]
20BD0A:  CMP             R0, #0
20BD0C:  BNE.W           loc_20B9E6
20BD10:  MOVS            R0, #0
20BD12:  B               loc_20BDDA
20BD14:  LDR             R0, [R5,#0x60]
20BD16:  CBZ             R0, loc_20BD50
20BD18:  LDR             R0, [R5,#0x30]
20BD1A:  LDR             R1, [R5,#0x64]
20BD1C:  LDR.W           R2, [R9]
20BD20:  LDR.W           R3, [R11]
20BD24:  ADD             R0, R1
20BD26:  MOVS            R1, #0
20BD28:  LDRB.W          R0, [R0,#-1]
20BD2C:  STRH.W          R1, [R3,R2,LSL#1]
20BD30:  LDR             R2, [SP,#0x38+var_20]
20BD32:  LDR.W           R3, [R9]
20BD36:  LDR             R2, [R2]
20BD38:  ADDS            R6, R3, #1
20BD3A:  STR.W           R6, [R9]
20BD3E:  STRB            R0, [R2,R3]
20BD40:  ADD.W           R0, R5, R0,LSL#2
20BD44:  LDRH.W          R2, [R0,#0x8C]
20BD48:  ADDS            R2, #1
20BD4A:  STRH.W          R2, [R0,#0x8C]
20BD4E:  STR             R1, [R5,#0x60]
20BD50:  LDR             R0, [R5,#0x54]
20BD52:  MOVS            R3, #0
20BD54:  CMP             R0, #0
20BD56:  ITTE GE
20BD58:  LDRGE           R1, [R5,#0x30]
20BD5A:  ADDGE           R1, R0
20BD5C:  MOVLT           R1, #0
20BD5E:  LDR             R2, [R5,#0x64]
20BD60:  CMP.W           R10, #4
20BD64:  SUB.W           R2, R2, R0
20BD68:  IT EQ
20BD6A:  MOVEQ           R3, #1
20BD6C:  MOV             R0, R5
20BD6E:  BLX             j__tr_flush_block
20BD72:  LDR             R6, [R5]
20BD74:  LDR             R0, [R5,#0x64]
20BD76:  STR             R0, [R5,#0x54]
20BD78:  LDR             R0, [R6,#0x1C]
20BD7A:  LDR             R1, [R6,#0x10]
20BD7C:  LDR             R4, [R0,#0x14]
20BD7E:  CMP             R4, R1
20BD80:  IT HI
20BD82:  MOVHI           R4, R1
20BD84:  CBZ             R4, loc_20BDBE
20BD86:  LDR             R1, [R0,#0x10]; void *
20BD88:  MOV             R2, R4; size_t
20BD8A:  LDR             R0, [R6,#0xC]; void *
20BD8C:  BLX             memcpy_1
20BD90:  LDR             R0, [R6,#0xC]
20BD92:  LDR             R1, [R6,#0x1C]
20BD94:  ADD             R0, R4
20BD96:  STR             R0, [R6,#0xC]
20BD98:  LDR             R0, [R1,#0x10]
20BD9A:  ADD             R0, R4
20BD9C:  STR             R0, [R1,#0x10]
20BD9E:  LDRD.W          R0, R1, [R6,#0x10]
20BDA2:  LDR             R2, [R6,#0x1C]
20BDA4:  ADD             R1, R4
20BDA6:  SUBS            R0, R0, R4
20BDA8:  STRD.W          R0, R1, [R6,#0x10]
20BDAC:  LDR             R0, [R2,#0x14]
20BDAE:  SUBS            R0, R0, R4
20BDB0:  STR             R0, [R2,#0x14]
20BDB2:  LDR             R0, [R6,#0x1C]
20BDB4:  LDR             R1, [R0,#0x14]
20BDB6:  CMP             R1, #0
20BDB8:  ITT EQ
20BDBA:  LDREQ           R1, [R0,#8]
20BDBC:  STREQ           R1, [R0,#0x10]
20BDBE:  LDR             R0, [R5]
20BDC0:  LDR             R0, [R0,#0x10]
20BDC2:  CBZ             R0, loc_20BDD0
20BDC4:  MOVS            R0, #1
20BDC6:  CMP.W           R10, #4
20BDCA:  IT EQ
20BDCC:  MOVEQ           R0, #3
20BDCE:  B               loc_20BDDA
20BDD0:  MOVS            R0, #0
20BDD2:  CMP.W           R10, #4
20BDD6:  IT EQ
20BDD8:  MOVEQ           R0, #2
20BDDA:  ADD             SP, SP, #0x1C
20BDDC:  POP.W           {R8-R11}
20BDE0:  POP             {R4-R7,PC}
