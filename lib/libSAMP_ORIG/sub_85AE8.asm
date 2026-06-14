; =========================================================
; Game Engine Function: sub_85AE8
; Address            : 0x85AE8 - 0x85C0E
; =========================================================

85AE8:  PUSH            {R4-R7,LR}
85AEA:  ADD             R7, SP, #0xC
85AEC:  PUSH.W          {R8,R9,R11}
85AF0:  SUB             SP, SP, #0x48
85AF2:  MOV             R5, R0
85AF4:  LDR             R0, =(byte_1ABE3C - 0x85AFE)
85AF6:  MOV             R4, R1
85AF8:  LDR             R1, =(__stack_chk_guard_ptr - 0x85B00)
85AFA:  ADD             R0, PC; byte_1ABE3C
85AFC:  ADD             R1, PC; __stack_chk_guard_ptr
85AFE:  LDR             R1, [R1]; __stack_chk_guard
85B00:  LDR             R1, [R1]
85B02:  STR             R1, [SP,#0x60+var_1C]
85B04:  LDRB            R0, [R0]
85B06:  DMB.W           ISH
85B0A:  LSLS            R0, R0, #0x1F
85B0C:  BEQ             loc_85BEC
85B0E:  MOV             R0, R5
85B10:  MOV             R1, R4
85B12:  BL              sub_7E314
85B16:  LDR             R0, =(off_114AD8 - 0x85B1C)
85B18:  ADD             R0, PC; off_114AD8
85B1A:  LDR             R0, [R0]; dword_1A4434
85B1C:  LDR             R0, [R0]
85B1E:  CMP             R0, #0
85B20:  ITTT NE
85B22:  LDRNE.W         R0, [R0,#0x3B0]
85B26:  LDRNE           R0, [R0]
85B28:  CMPNE           R0, #0
85B2A:  BNE             loc_85B46
85B2C:  LDR             R0, [SP,#0x60+var_1C]
85B2E:  LDR             R1, =(__stack_chk_guard_ptr - 0x85B34)
85B30:  ADD             R1, PC; __stack_chk_guard_ptr
85B32:  LDR             R1, [R1]; __stack_chk_guard
85B34:  LDR             R1, [R1]
85B36:  CMP             R1, R0
85B38:  ITTT EQ
85B3A:  ADDEQ           SP, SP, #0x48 ; 'H'
85B3C:  POPEQ.W         {R8,R9,R11}
85B40:  POPEQ           {R4-R7,PC}
85B42:  BLX             __stack_chk_fail
85B46:  LDRH.W          R1, [R5,#0x5C]
85B4A:  CMP.W           R1, #0x3EC
85B4E:  BHI             loc_85B2C
85B50:  ADDS            R2, R0, R1
85B52:  LDRB.W          R2, [R2,#0xFB4]
85B56:  CMP             R2, #0
85B58:  ITTT NE
85B5A:  ADDNE.W         R0, R0, R1,LSL#2
85B5E:  LDRNE           R0, [R0,#4]
85B60:  CMPNE           R0, #0
85B62:  BEQ             loc_85B2C
85B64:  LDR             R0, [R0]
85B66:  CMP             R0, #0
85B68:  ITT NE
85B6A:  LDRNE.W         R0, [R0,#0x128]
85B6E:  CMPNE           R0, #0
85B70:  BEQ             loc_85B2C
85B72:  LDR             R0, [R0,#4]
85B74:  MOVS            R1, #0
85B76:  STR             R1, [SP,#0x60+var_54]
85B78:  STR             R1, [SP,#0x60+var_44]
85B7A:  CMP             R0, #0
85B7C:  STRD.W          R1, R1, [SP,#0x60+var_5C]
85B80:  STR             R1, [SP,#0x60+var_34]
85B82:  STRD.W          R1, R1, [SP,#0x60+var_4C]
85B86:  STR             R1, [SP,#0x60+var_24]
85B88:  STRD.W          R1, R1, [SP,#0x60+var_3C]
85B8C:  STRD.W          R1, R1, [SP,#0x60+var_2C]
85B90:  ITT NE
85B92:  LDRNE           R0, [R0,#0x14]
85B94:  CMPNE           R0, #0
85B96:  BEQ             loc_85BD0
85B98:  LDR             R1, [R0]
85B9A:  STR             R1, [SP,#0x60+var_5C]
85B9C:  LDR             R1, [R0,#0x24]
85B9E:  LDR.W           LR, [R0,#8]
85BA2:  LDR.W           R9, [R0,#0x14]
85BA6:  LDR             R6, [R0,#0x20]
85BA8:  LDR.W           R12, [R0,#4]
85BAC:  LDR.W           R8, [R0,#0x10]
85BB0:  LDR             R3, [R0,#0x18]
85BB2:  LDR             R5, [R0,#0x28]
85BB4:  LDR             R2, [R0,#0x30]
85BB6:  STRD.W          R6, R1, [SP,#0x60+var_3C]
85BBA:  LDR             R1, [R0,#0x34]
85BBC:  LDR             R0, [R0,#0x38]
85BBE:  STR             R2, [SP,#0x60+var_2C]
85BC0:  STR             R5, [SP,#0x60+var_34]
85BC2:  STR             R3, [SP,#0x60+var_44]
85BC4:  STRD.W          R8, R9, [SP,#0x60+var_4C]
85BC8:  STRD.W          R12, LR, [SP,#0x60+var_58]
85BCC:  STR             R1, [SP,#0x60+var_28]
85BCE:  STR             R0, [SP,#0x60+var_24]
85BD0:  LDR             R0, =(off_114D50 - 0x85BD6)
85BD2:  ADD             R0, PC; off_114D50
85BD4:  LDR             R0, [R0]; off_1ABF60
85BD6:  LDR             R5, [R0]
85BD8:  MOV             R0, R4
85BDA:  BL              sub_7DB44
85BDE:  LDR             R2, =(dword_1ABE30 - 0x85BE4)
85BE0:  ADD             R2, PC; dword_1ABE30
85BE2:  ADD             R1, SP, #0x60+var_5C
85BE4:  MOV             R3, R2
85BE6:  ADDS            R1, #0x30 ; '0'
85BE8:  BLX             R5
85BEA:  B               loc_85B2C
85BEC:  LDR             R0, =(byte_1ABE3C - 0x85BF2)
85BEE:  ADD             R0, PC; byte_1ABE3C ; __guard *
85BF0:  BLX             j___cxa_guard_acquire
85BF4:  CMP             R0, #0
85BF6:  BEQ             loc_85B0E
85BF8:  LDR             R1, =(dword_1ABE30 - 0x85C02)
85BFA:  MOVS            R2, #0
85BFC:  LDR             R0, =(byte_1ABE3C - 0x85C04)
85BFE:  ADD             R1, PC; dword_1ABE30
85C00:  ADD             R0, PC; byte_1ABE3C ; __guard *
85C02:  STRD.W          R2, R2, [R1]
85C06:  STR             R2, [R1,#(dword_1ABE38 - 0x1ABE30)]
85C08:  BLX             j___cxa_guard_release
85C0C:  B               loc_85B0E
