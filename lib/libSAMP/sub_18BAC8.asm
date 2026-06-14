; =========================================================
; Game Engine Function: sub_18BAC8
; Address            : 0x18BAC8 - 0x18C9EC
; =========================================================

18BAC8:  PUSH            {R4-R7,LR}
18BACA:  ADD             R7, SP, #0xC
18BACC:  PUSH.W          {R8-R11}
18BAD0:  SUB             SP, SP, #0x14C
18BAD2:  MOV             R5, R0
18BAD4:  ADDS            R0, #0x74 ; 't'; dest
18BAD6:  STR             R1, [SP,#0x168+var_158]
18BAD8:  MOV             R1, R2; src
18BADA:  MOVS            R2, #0x40 ; '@'; n
18BADC:  BLX             j_memcpy
18BAE0:  LDRD.W          LR, R11, [R5,#0x7C]
18BAE4:  LDR             R0, [R5,#0x74]
18BAE6:  LDR.W           R2, [R5,#0x94]
18BAEA:  STR             R0, [SP,#0x168+var_14C]
18BAEC:  EOR.W           R0, R0, LR
18BAF0:  LDR.W           R1, [R5,#0xA8]
18BAF4:  EORS            R0, R2
18BAF6:  LDR.W           R3, [R5,#0x88]
18BAFA:  LDR.W           R8, [R5,#0xA0]
18BAFE:  EOR.W           R4, R0, R1
18BB02:  EOR.W           R0, R3, R11
18BB06:  STR             R3, [SP,#0x168+var_64]
18BB08:  LDR.W           R3, [R5,#0x8C]
18BB0C:  EOR.W           R0, R0, R8
18BB10:  LDR.W           R6, [R5,#0xAC]
18BB14:  LDR.W           R12, [R5,#0x78]
18BB18:  STR             R4, [SP,#0x168+var_58]
18BB1A:  EOR.W           R4, R0, R4,ROR#31
18BB1E:  EOR.W           R0, R2, R3
18BB22:  MOV             R9, R3
18BB24:  STR             R3, [SP,#0x168+var_13C]
18BB26:  EORS            R0, R6
18BB28:  LDR.W           R3, [R5,#0x98]
18BB2C:  EOR.W           R10, R0, R4,ROR#31
18BB30:  EOR.W           R0, R11, R12
18BB34:  STR             R2, [SP,#0x168+var_60]
18BB36:  EORS            R0, R3
18BB38:  STR.W           R12, [SP,#0x168+var_150]
18BB3C:  EOR.W           R2, R0, R6
18BB40:  EOR.W           R0, R8, R3
18BB44:  LDR.W           R12, [R5,#0x84]
18BB48:  EOR.W           R0, R0, R2,ROR#31
18BB4C:  STR.W           R11, [SP,#0x168+var_144]
18BB50:  EOR.W           R11, R0, R10,ROR#31
18BB54:  STR.W           R10, [SP,#0x168+var_20]
18BB58:  LDR.W           R10, [R5,#0xA4]
18BB5C:  EOR.W           R0, R9, R12
18BB60:  STR.W           R8, [SP,#0x168+var_54]
18BB64:  MOV             R8, R3
18BB66:  EOR.W           R0, R0, R10
18BB6A:  STR             R3, [SP,#0x168+var_138]
18BB6C:  EOR.W           R3, R0, R2,ROR#31
18BB70:  STR             R1, [SP,#0x168+var_5C]
18BB72:  EOR.W           R1, R6, R10
18BB76:  STR             R6, [SP,#0x168+var_50]
18BB78:  LDR.W           R6, [R5,#0x90]
18BB7C:  EOR.W           R1, R1, R3,ROR#31
18BB80:  LDR.W           R0, [R5,#0xB0]
18BB84:  STR.W           R11, [SP,#0x168+var_6C]
18BB88:  EOR.W           R11, R1, R11,ROR#31
18BB8C:  EOR.W           R1, R8, R6
18BB90:  STR             R4, [SP,#0x168+var_24]
18BB92:  EORS            R1, R0
18BB94:  STR.W           R11, [SP,#0x168+var_68]
18BB98:  EOR.W           R9, R1, R3,ROR#31
18BB9C:  EOR.W           R1, R0, R2,ROR#31
18BBA0:  MOV             R4, R3
18BBA2:  STR             R3, [SP,#0x168+var_38]
18BBA4:  EOR.W           R1, R1, R9,ROR#31
18BBA8:  STR.W           LR, [SP,#0x168+var_15C]
18BBAC:  EOR.W           R3, R1, R11,ROR#31
18BBB0:  LDR.W           R11, [R5,#0x9C]
18BBB4:  EOR.W           R1, R12, LR
18BBB8:  STR             R2, [SP,#0x168+var_4C]
18BBBA:  EOR.W           R1, R1, R11
18BBBE:  MOV             R8, R0
18BBC0:  EOR.W           LR, R1, R0
18BBC4:  EOR.W           R1, R10, R11
18BBC8:  STR             R0, [SP,#0x168+var_12C]
18BBCA:  MOV.W           R0, R4,ROR#31
18BBCE:  EOR.W           R1, R1, LR,ROR#31
18BBD2:  STR             R0, [SP,#0x168+var_104]
18BBD4:  EOR.W           R2, R1, R9,ROR#31
18BBD8:  EOR.W           R1, R0, LR,ROR#31
18BBDC:  LDR             R0, [SP,#0x168+var_64]
18BBDE:  STR.W           R12, [SP,#0x168+var_154]
18BBE2:  EOR.W           R1, R1, R2,ROR#31
18BBE6:  MOV             R12, R9
18BBE8:  STR.W           R9, [SP,#0x168+var_30]
18BBEC:  LDR.W           R9, [SP,#0x168+var_5C]
18BBF0:  EOR.W           R4, R1, R3,ROR#31
18BBF4:  EOR.W           R1, R6, R0
18BBF8:  STR             R3, [SP,#0x168+var_48]
18BBFA:  EOR.W           R1, R1, R9
18BBFE:  MOV.W           R0, R12,ROR#31
18BC02:  EOR.W           R3, R1, LR,ROR#31
18BC06:  EOR.W           R1, R8, R9
18BC0A:  STR             R6, [SP,#0x168+var_148]
18BC0C:  MOV             R8, R2
18BC0E:  EOR.W           R1, R1, R3,ROR#31
18BC12:  STR.W           R10, [SP,#0x168+var_134]
18BC16:  EOR.W           R6, R1, R2,ROR#31
18BC1A:  EOR.W           R1, R0, R3,ROR#31
18BC1E:  STR             R0, [SP,#0x168+var_F4]
18BC20:  LDR             R0, [SP,#0x168+var_60]
18BC22:  EOR.W           R1, R1, R6,ROR#31
18BC26:  LDR.W           R10, [SP,#0x168+var_58]
18BC2A:  STR             R4, [SP,#0x168+var_44]
18BC2C:  EOR.W           R4, R1, R4,ROR#31
18BC30:  EOR.W           R1, R11, R0
18BC34:  MOV.W           R0, LR,ROR#31
18BC38:  EOR.W           R1, R1, R10,ROR#31
18BC3C:  STR             R2, [SP,#0x168+var_88]
18BC3E:  EOR.W           R1, R1, R3,ROR#31
18BC42:  EOR.W           R2, R0, R10,ROR#31
18BC46:  STR             R0, [SP,#0x168+var_120]
18BC48:  MOV.W           R0, R8,ROR#31
18BC4C:  EOR.W           R2, R2, R1,ROR#31
18BC50:  STR.W           R11, [SP,#0x168+var_140]
18BC54:  EOR.W           R12, R2, R6,ROR#31
18BC58:  EOR.W           R2, R0, R1,ROR#31
18BC5C:  STR             R0, [SP,#0x168+var_EC]
18BC5E:  EOR.W           R2, R2, R12,ROR#31
18BC62:  STR             R4, [SP,#0x168+var_40]
18BC64:  EOR.W           R11, R2, R4,ROR#31
18BC68:  LDR             R0, [SP,#0x168+var_54]
18BC6A:  LDR             R4, [SP,#0x168+var_24]
18BC6C:  MOV             R8, R12
18BC6E:  EOR.W           R2, R9, R0
18BC72:  MOV.W           R0, R3,ROR#31
18BC76:  STR             R0, [SP,#0x168+var_118]
18BC78:  EOR.W           R2, R2, R4,ROR#31
18BC7C:  LDR             R3, [SP,#0x168+var_20]
18BC7E:  EOR.W           R12, R2, R1,ROR#31
18BC82:  EOR.W           R2, R0, R4,ROR#31
18BC86:  MOV.W           R0, R6,ROR#31
18BC8A:  STR             R6, [SP,#0x168+var_84]
18BC8C:  EOR.W           R2, R2, R12,ROR#31
18BC90:  STR             R0, [SP,#0x168+var_E0]
18BC92:  EOR.W           R4, R2, R8,ROR#31
18BC96:  EOR.W           R2, R0, R12,ROR#31
18BC9A:  LDR             R0, [SP,#0x168+var_50]
18BC9C:  EOR.W           R2, R2, R4,ROR#31
18BCA0:  MOV             R9, R4
18BCA2:  EOR.W           R6, R2, R11,ROR#31
18BCA6:  EOR.W           R2, R0, R10,ROR#31
18BCAA:  EOR.W           R2, R2, R3,ROR#31
18BCAE:  MOV.W           R0, R1,ROR#31
18BCB2:  EOR.W           LR, R2, R12,ROR#31
18BCB6:  EOR.W           R1, R0, R3,ROR#31
18BCBA:  STR             R0, [SP,#0x168+var_110]
18BCBC:  MOV.W           R0, R8,ROR#31
18BCC0:  EOR.W           R1, R1, LR,ROR#31
18BCC4:  STR             R0, [SP,#0x168+var_D4]
18BCC6:  EOR.W           R3, R1, R4,ROR#31
18BCCA:  EOR.W           R1, R0, LR,ROR#31
18BCCE:  LDR             R0, [SP,#0x168+var_24]
18BCD0:  EOR.W           R1, R1, R3,ROR#31
18BCD4:  STR             R4, [SP,#0x168+var_78]
18BCD6:  EOR.W           R4, R1, R6,ROR#31
18BCDA:  STR.W           R11, [SP,#0x168+var_3C]
18BCDE:  MOV.W           R1, R0,ROR#31
18BCE2:  LDR             R0, [SP,#0x168+var_4C]
18BCE4:  LDR.W           R11, [SP,#0x168+var_6C]
18BCE8:  STR             R1, [SP,#0x168+var_130]
18BCEA:  EOR.W           R1, R1, R0,ROR#31
18BCEE:  MOV.W           R0, R12,ROR#31
18BCF2:  EOR.W           R1, R1, R11,ROR#31
18BCF6:  STR             R0, [SP,#0x168+var_108]
18BCF8:  EOR.W           R1, R1, LR,ROR#31
18BCFC:  EOR.W           R0, R0, R11,ROR#31
18BD00:  LDR             R2, [SP,#0x168+var_38]
18BD02:  EOR.W           R0, R0, R1,ROR#31
18BD06:  STR             R4, [SP,#0x168+var_28]
18BD08:  EOR.W           R10, R0, R3,ROR#31
18BD0C:  MOV.W           R0, R9,ROR#31
18BD10:  STR             R0, [SP,#0x168+var_C8]
18BD12:  EOR.W           R0, R0, R1,ROR#31
18BD16:  EOR.W           R0, R0, R10,ROR#31
18BD1A:  STR             R3, [SP,#0x168+var_70]
18BD1C:  EOR.W           R12, R0, R4,ROR#31
18BD20:  LDR             R0, [SP,#0x168+var_20]
18BD22:  LDR             R4, [SP,#0x168+var_68]
18BD24:  STR             R6, [SP,#0x168+var_34]
18BD26:  MOV             R6, R10
18BD28:  MOV.W           R0, R0,ROR#31
18BD2C:  STR.W           R10, [SP,#0x168+var_7C]
18BD30:  STR             R0, [SP,#0x168+var_128]
18BD32:  EOR.W           R0, R0, R2,ROR#31
18BD36:  EOR.W           R0, R0, R4,ROR#31
18BD3A:  MOV.W           R2, LR,ROR#31
18BD3E:  EOR.W           R0, R0, R1,ROR#31
18BD42:  STR             R2, [SP,#0x168+var_FC]
18BD44:  EOR.W           R2, R2, R4,ROR#31
18BD48:  MOV             R9, R4
18BD4A:  EOR.W           R2, R2, R0,ROR#31
18BD4E:  MOV.W           R1, R1,ROR#31
18BD52:  EOR.W           R4, R2, R10,ROR#31
18BD56:  MOV.W           R2, R3,ROR#31
18BD5A:  STR             R2, [SP,#0x168+var_BC]
18BD5C:  EOR.W           R2, R2, R0,ROR#31
18BD60:  LDR             R3, [SP,#0x168+var_30]
18BD62:  EOR.W           R2, R2, R4,ROR#31
18BD66:  LDR.W           R10, [SP,#0x168+var_48]
18BD6A:  EOR.W           LR, R2, R12,ROR#31
18BD6E:  MOV.W           R2, R11,ROR#31
18BD72:  STR             R1, [SP,#0x168+var_F0]
18BD74:  STR             R2, [SP,#0x168+var_124]
18BD76:  EOR.W           R2, R2, R3,ROR#31
18BD7A:  EOR.W           R2, R2, R10,ROR#31
18BD7E:  EOR.W           R1, R1, R10,ROR#31
18BD82:  EOR.W           R2, R2, R0,ROR#31
18BD86:  LDR.W           R11, [SP,#0x168+var_44]
18BD8A:  STR.W           R8, [SP,#0x168+var_80]
18BD8E:  MOV.W           R0, R0,ROR#31
18BD92:  EOR.W           R1, R1, R2,ROR#31
18BD96:  STR             R0, [SP,#0x168+var_E4]
18BD98:  EOR.W           R3, R1, R4,ROR#31
18BD9C:  MOV.W           R1, R6,ROR#31
18BDA0:  STR             R1, [SP,#0x168+var_B4]
18BDA2:  EOR.W           R1, R1, R2,ROR#31
18BDA6:  EOR.W           R1, R1, R3,ROR#31
18BDAA:  MOV             R6, R3
18BDAC:  LDR             R3, [SP,#0x168+var_88]
18BDAE:  EOR.W           R8, R1, LR,ROR#31
18BDB2:  MOV.W           R1, R9,ROR#31
18BDB6:  EOR.W           R0, R0, R11,ROR#31
18BDBA:  STR             R1, [SP,#0x168+var_11C]
18BDBC:  MOV             R9, R6
18BDBE:  EOR.W           R1, R1, R3,ROR#31
18BDC2:  STR.W           LR, [SP,#0x168+var_38]
18BDC6:  EOR.W           R1, R1, R11,ROR#31
18BDCA:  STR             R6, [SP,#0x168+var_74]
18BDCC:  EOR.W           R1, R1, R2,ROR#31
18BDD0:  STR             R4, [SP,#0x168+var_20]
18BDD2:  MOV.W           R2, R2,ROR#31
18BDD6:  STR.W           R12, [SP,#0x168+var_2C]
18BDDA:  EOR.W           R0, R0, R1,ROR#31
18BDDE:  STR             R2, [SP,#0x168+var_DC]
18BDE0:  EOR.W           LR, R0, R6,ROR#31
18BDE4:  MOV.W           R0, R4,ROR#31
18BDE8:  STR             R0, [SP,#0x168+var_A8]
18BDEA:  EOR.W           R0, R0, R1,ROR#31
18BDEE:  LDR             R6, [SP,#0x168+var_84]
18BDF0:  EOR.W           R0, R0, LR,ROR#31
18BDF4:  EOR.W           R4, R0, R8,ROR#31
18BDF8:  MOV.W           R0, R10,ROR#31
18BDFC:  STR             R0, [SP,#0x168+var_114]
18BDFE:  EOR.W           R0, R0, R6,ROR#31
18BE02:  LDR             R6, [SP,#0x168+var_40]
18BE04:  STR             R4, [SP,#0x168+var_24]
18BE06:  STR.W           R8, [SP,#0x168+var_30]
18BE0A:  EOR.W           R0, R0, R6,ROR#31
18BE0E:  EOR.W           R2, R2, R6,ROR#31
18BE12:  EOR.W           R0, R0, R1,ROR#31
18BE16:  MOV             R8, R6
18BE18:  LDR             R6, [SP,#0x168+var_3C]
18BE1A:  MOV.W           R1, R1,ROR#31
18BE1E:  EOR.W           R2, R2, R0,ROR#31
18BE22:  STR             R1, [SP,#0x168+var_CC]
18BE24:  EOR.W           R3, R2, LR,ROR#31
18BE28:  MOV.W           R2, R9,ROR#31
18BE2C:  STR             R2, [SP,#0x168+var_9C]
18BE2E:  EOR.W           R2, R2, R0,ROR#31
18BE32:  EOR.W           R2, R2, R3,ROR#31
18BE36:  EOR.W           R1, R1, R6,ROR#31
18BE3A:  EOR.W           R12, R2, R4,ROR#31
18BE3E:  LDR             R4, [SP,#0x168+var_80]
18BE40:  MOV.W           R2, R11,ROR#31
18BE44:  MOV             R10, R3
18BE46:  STR             R2, [SP,#0x168+var_10C]
18BE48:  EOR.W           R2, R2, R4,ROR#31
18BE4C:  STR             R3, [SP,#0x168+var_88]
18BE4E:  EOR.W           R2, R2, R6,ROR#31
18BE52:  LDR.W           R11, [SP,#0x168+var_34]
18BE56:  EOR.W           R2, R2, R0,ROR#31
18BE5A:  MOV.W           R0, R0,ROR#31
18BE5E:  STR.W           R12, [SP,#0x168+var_48]
18BE62:  EOR.W           R1, R1, R2,ROR#31
18BE66:  STR             R0, [SP,#0x168+var_C0]
18BE68:  EOR.W           R9, R1, R3,ROR#31
18BE6C:  LDR             R3, [SP,#0x168+var_78]
18BE6E:  MOV.W           R1, LR,ROR#31
18BE72:  EOR.W           R4, R1, R2,ROR#31
18BE76:  STR             R1, [SP,#0x168+var_94]
18BE78:  MOV.W           R1, R8,ROR#31
18BE7C:  EOR.W           R3, R1, R3,ROR#31
18BE80:  EOR.W           R4, R4, R9,ROR#31
18BE84:  EOR.W           R3, R3, R11,ROR#31
18BE88:  EOR.W           R12, R4, R12,ROR#31
18BE8C:  EOR.W           R4, R3, R2,ROR#31
18BE90:  EOR.W           R0, R0, R11,ROR#31
18BE94:  STR             R1, [SP,#0x168+var_100]
18BE96:  MOV             R8, R11
18BE98:  EOR.W           R0, R0, R4,ROR#31
18BE9C:  LDR             R1, [SP,#0x168+var_70]
18BE9E:  EOR.W           R3, R0, R9,ROR#31
18BEA2:  MOV.W           R0, R10,ROR#31
18BEA6:  STR             R0, [SP,#0x168+var_84]
18BEA8:  EOR.W           R0, R0, R4,ROR#31
18BEAC:  STR.W           LR, [SP,#0x168+var_6C]
18BEB0:  EOR.W           R0, R0, R3,ROR#31
18BEB4:  LDR.W           LR, [SP,#0x168+var_28]
18BEB8:  EOR.W           R10, R0, R12,ROR#31
18BEBC:  MOV.W           R0, R6,ROR#31
18BEC0:  STR.W           R12, [SP,#0x168+var_44]
18BEC4:  STR             R0, [SP,#0x168+var_F8]
18BEC6:  EOR.W           R0, R0, R1,ROR#31
18BECA:  EOR.W           R0, R0, LR,ROR#31
18BECE:  MOV.W           R1, R2,ROR#31
18BED2:  EOR.W           R0, R0, R4,ROR#31
18BED6:  EOR.W           R2, R1, LR,ROR#31
18BEDA:  STR             R1, [SP,#0x168+var_B8]
18BEDC:  MOV.W           R1, R9,ROR#31
18BEE0:  EOR.W           R2, R2, R0,ROR#31
18BEE4:  EOR.W           R6, R1, R0,ROR#31
18BEE8:  EOR.W           R11, R2, R3,ROR#31
18BEEC:  MOV             R12, R3
18BEEE:  STR             R3, [SP,#0x168+var_40]
18BEF0:  EOR.W           R6, R6, R11,ROR#31
18BEF4:  LDR             R3, [SP,#0x168+var_7C]
18BEF6:  EOR.W           R2, R6, R10,ROR#31
18BEFA:  STR.W           R10, [SP,#0x168+var_80]
18BEFE:  LDR.W           R10, [SP,#0x168+var_2C]
18BF02:  STR             R1, [SP,#0x168+var_78]
18BF04:  MOV.W           R1, R8,ROR#31
18BF08:  EOR.W           R6, R1, R3,ROR#31
18BF0C:  STR             R1, [SP,#0x168+var_E8]
18BF0E:  EOR.W           R6, R6, R10,ROR#31
18BF12:  MOV.W           R1, R4,ROR#31
18BF16:  EOR.W           R6, R6, R0,ROR#31
18BF1A:  EOR.W           R4, R1, R10,ROR#31
18BF1E:  LDR             R3, [SP,#0x168+var_20]
18BF20:  MOV.W           R0, R0,ROR#31
18BF24:  EOR.W           R4, R4, R6,ROR#31
18BF28:  STR             R1, [SP,#0x168+var_AC]
18BF2A:  EOR.W           R8, R4, R11,ROR#31
18BF2E:  MOV.W           R1, R12,ROR#31
18BF32:  EOR.W           R4, R1, R6,ROR#31
18BF36:  STR             R1, [SP,#0x168+var_70]
18BF38:  EOR.W           R4, R4, R8,ROR#31
18BF3C:  MOV.W           R1, LR,ROR#31
18BF40:  EOR.W           R12, R4, R2,ROR#31
18BF44:  STR             R1, [SP,#0x168+var_D8]
18BF46:  EOR.W           R4, R1, R3,ROR#31
18BF4A:  LDR             R1, [SP,#0x168+var_38]
18BF4C:  STR             R0, [SP,#0x168+var_A0]
18BF4E:  STR             R2, [SP,#0x168+var_3C]
18BF50:  EOR.W           R4, R4, R1,ROR#31
18BF54:  EOR.W           R0, R0, R1,ROR#31
18BF58:  EOR.W           R4, R4, R6,ROR#31
18BF5C:  STR.W           R9, [SP,#0x168+var_90]
18BF60:  MOV             R9, R10
18BF62:  MOV             LR, R1
18BF64:  EOR.W           R0, R0, R4,ROR#31
18BF68:  STR.W           R12, [SP,#0x168+var_160]
18BF6C:  EOR.W           R2, R0, R8,ROR#31
18BF70:  MOV.W           R0, R11,ROR#31
18BF74:  EOR.W           R10, R0, R4,ROR#31
18BF78:  STR             R0, [SP,#0x168+var_68]
18BF7A:  EOR.W           R1, R10, R2,ROR#31
18BF7E:  MOV.W           R0, R9,ROR#31
18BF82:  EOR.W           R10, R1, R12,ROR#31
18BF86:  LDR             R1, [SP,#0x168+var_74]
18BF88:  STR             R0, [SP,#0x168+var_D0]
18BF8A:  STR             R2, [SP,#0x168+var_164]
18BF8C:  EOR.W           R3, R0, R1,ROR#31
18BF90:  LDR             R1, [SP,#0x168+var_30]
18BF92:  MOV.W           R0, R6,ROR#31
18BF96:  STR             R0, [SP,#0x168+var_98]
18BF98:  EOR.W           R3, R3, R1,ROR#31
18BF9C:  EOR.W           R6, R0, R1,ROR#31
18BFA0:  EOR.W           R3, R3, R4,ROR#31
18BFA4:  MOV.W           R0, R8,ROR#31
18BFA8:  STR             R0, [SP,#0x168+var_34]
18BFAA:  MOV.W           R1, R1,ROR#31
18BFAE:  EOR.W           R6, R6, R3,ROR#31
18BFB2:  EOR.W           R0, R0, R3,ROR#31
18BFB6:  EOR.W           R9, R6, R2,ROR#31
18BFBA:  LDR             R6, [SP,#0x168+var_6C]
18BFBC:  STR             R1, [SP,#0x168+var_B0]
18BFBE:  EOR.W           R0, R0, R9,ROR#31
18BFC2:  LDR             R2, [SP,#0x168+var_90]
18BFC4:  EOR.W           R0, R0, R10,ROR#31
18BFC8:  STR             R0, [SP,#0x168+var_2C]
18BFCA:  MOV.W           R0, R10,ROR#31
18BFCE:  STR             R0, [SP,#0x168+var_20]
18BFD0:  MOV.W           R0, LR,ROR#31
18BFD4:  STR             R0, [SP,#0x168+var_C4]
18BFD6:  EOR.W           R0, R0, R6,ROR#31
18BFDA:  LDR             R6, [SP,#0x168+var_24]
18BFDC:  EOR.W           R0, R0, R6,ROR#31
18BFE0:  EOR.W           R12, R0, R3,ROR#31
18BFE4:  MOV.W           R0, R4,ROR#31
18BFE8:  LDR             R4, [SP,#0x168+var_88]
18BFEA:  STR             R0, [SP,#0x168+var_8C]
18BFEC:  EOR.W           R0, R0, R6,ROR#31
18BFF0:  EOR.W           R0, R0, R12,ROR#31
18BFF4:  EOR.W           R1, R1, R4,ROR#31
18BFF8:  LDR             R4, [SP,#0x168+var_48]
18BFFA:  EOR.W           R0, R0, R9,ROR#31
18BFFE:  EOR.W           R1, R1, R4,ROR#31
18C002:  EOR.W           R10, R1, R12,ROR#31
18C006:  MOV.W           R1, R3,ROR#31
18C00A:  STR             R1, [SP,#0x168+var_7C]
18C00C:  EOR.W           R1, R1, R4,ROR#31
18C010:  EOR.W           R1, R1, R10,ROR#31
18C014:  MOV.W           R3, R4,ROR#31
18C018:  EOR.W           R1, R1, R0,ROR#31
18C01C:  STR             R3, [SP,#0x168+var_90]
18C01E:  LDR             R4, [SP,#0x168+var_3C]
18C020:  MOV.W           R0, R0,ROR#31
18C024:  MOV.W           R1, R1,ROR#31
18C028:  STR             R0, [SP,#0x168+var_30]
18C02A:  STR             R1, [SP,#0x168+var_28]
18C02C:  MOV.W           R1, R6,ROR#31
18C030:  LDR             R6, [SP,#0x168+var_44]
18C032:  STR             R1, [SP,#0x168+var_A4]
18C034:  EOR.W           R1, R1, R2,ROR#31
18C038:  EOR.W           R1, R1, R6,ROR#31
18C03C:  MOV.W           R2, R6,ROR#31
18C040:  EOR.W           LR, R1, R10,ROR#31
18C044:  LDR             R1, [SP,#0x168+var_40]
18C046:  STR             R2, [SP,#0x168+var_48]
18C048:  EOR.W           R2, R2, R11,ROR#31
18C04C:  EOR.W           R2, R2, R4,ROR#31
18C050:  LDR             R6, [SP,#0x168+var_48]
18C052:  EOR.W           R3, R3, R1,ROR#31
18C056:  LDR             R1, [SP,#0x168+var_80]
18C058:  EOR.W           R3, R3, R1,ROR#31
18C05C:  EOR.W           R3, R3, LR,ROR#31
18C060:  EOR.W           R2, R2, R3,ROR#31
18C064:  MOV.W           R0, R3,ROR#31
18C068:  STR             R0, [SP,#0x168+var_40]
18C06A:  MOV.W           R0, LR,ROR#31
18C06E:  MOV.W           R2, R2,ROR#31
18C072:  STR             R0, [SP,#0x168+var_44]
18C074:  MOV.W           R0, R4,ROR#31
18C078:  MOV.W           R4, R9,ROR#31
18C07C:  LDR.W           R9, [SP,#0x168+var_158]
18C080:  MOV.W           LR, R1,ROR#31
18C084:  STR             R2, [SP,#0x168+var_24]
18C086:  LDR             R2, [SP,#0x168+var_160]
18C088:  STR             R0, [SP,#0x168+var_3C]
18C08A:  LDR             R0, [SP,#0x168+var_164]
18C08C:  LDR.W           R8, [R9,#0x10]
18C090:  MOV.W           R2, R2,ROR#31
18C094:  STR.W           R8, [SP,#0x168+var_160]
18C098:  MOV.W           R3, R0,ROR#31
18C09C:  MOV.W           R0, R12,ROR#31
18C0A0:  LDR.W           R8, [SP,#0x168+var_34]
18C0A4:  STR             R2, [SP,#0x168+var_38]
18C0A6:  MOV.W           R2, R10,ROR#31
18C0AA:  STR             R0, [SP,#0x168+var_88]
18C0AC:  LDRD.W          R12, R1, [R9]
18C0B0:  LDRD.W          R10, R11, [R9,#8]
18C0B4:  STRD.W          R8, R0, [R5,#0x78]
18C0B8:  MOVW            R8, #0x7999
18C0BC:  LDR             R0, [SP,#0x168+var_3C]
18C0BE:  MOVT            R8, #0x5A82
18C0C2:  STR             R6, [R5,#0x74]
18C0C4:  STRD.W          R0, R4, [R5,#0x8C]
18C0C8:  STR             R4, [SP,#0x168+var_6C]
18C0CA:  LDR             R4, [SP,#0x168+var_2C]
18C0CC:  LDR             R6, [SP,#0x168+var_30]
18C0CE:  LDR             R0, [SP,#0x168+var_44]
18C0D0:  STR.W           R6, [R5,#0x9C]
18C0D4:  MOV.W           R4, R4,ROR#31
18C0D8:  LDR             R6, [SP,#0x168+var_20]
18C0DA:  STR.W           R0, [R5,#0x94]
18C0DE:  STR.W           R6, [R5,#0xA4]
18C0E2:  LDR             R6, [SP,#0x168+var_28]
18C0E4:  STR             R2, [SP,#0x168+var_74]
18C0E6:  STR.W           R2, [R5,#0x88]
18C0EA:  LDR             R2, [SP,#0x168+var_38]
18C0EC:  LDR             R0, [SP,#0x168+var_160]
18C0EE:  STR.W           R2, [R5,#0x98]
18C0F2:  LDR             R2, [SP,#0x168+var_40]
18C0F4:  STR.W           R6, [R5,#0xA8]
18C0F8:  LDR             R6, [SP,#0x168+var_24]
18C0FA:  STRD.W          R6, R4, [R5,#0xAC]
18C0FE:  EOR.W           R4, R10, R1,ROR#2
18C102:  ADD.W           R6, R0, R12,ROR#27
18C106:  LDR             R0, [SP,#0x168+var_14C]
18C108:  STRD.W          LR, R3, [R5,#0x80]
18C10C:  AND.W           R4, R4, R12
18C110:  STR.W           R2, [R5,#0xA0]
18C114:  EOR.W           R5, R11, R10
18C118:  ANDS            R5, R1
18C11A:  ADD             R6, R0
18C11C:  EOR.W           R5, R5, R11
18C120:  EOR.W           R4, R4, R10
18C124:  LDR             R0, [SP,#0x168+var_150]
18C126:  ADD             R6, R5
18C128:  STR             R3, [SP,#0x168+var_80]
18C12A:  ADD.W           R3, R11, R4
18C12E:  MOV.W           R4, R1,ROR#2
18C132:  ADD             R3, R0
18C134:  ADD             R6, R8
18C136:  EOR.W           R4, R4, R12,ROR#2
18C13A:  LDR             R0, [SP,#0x168+var_15C]
18C13C:  ANDS            R4, R6
18C13E:  EOR.W           R4, R4, R1,ROR#2
18C142:  ADD.W           R3, R3, R6,ROR#27
18C146:  ADD.W           R2, R10, R0
18C14A:  LDR             R0, [SP,#0x168+var_144]
18C14C:  ADD             R2, R4
18C14E:  MOV.W           R4, R6,ROR#2
18C152:  ADD             R3, R8
18C154:  EOR.W           R4, R4, R12,ROR#2
18C158:  ANDS            R4, R3
18C15A:  ADD.W           R1, R0, R1,ROR#2
18C15E:  EOR.W           R4, R4, R12,ROR#2
18C162:  ADD.W           R2, R2, R3,ROR#27
18C166:  ADD             R1, R4
18C168:  MOV.W           R4, R3,ROR#2
18C16C:  LDR             R0, [SP,#0x168+var_154]
18C16E:  ADD             R2, R8
18C170:  EOR.W           R4, R4, R6,ROR#2
18C174:  LDR             R5, [SP,#0x168+var_64]
18C176:  ANDS            R4, R2
18C178:  ADD.W           R0, R0, R12,ROR#2
18C17C:  EOR.W           R4, R4, R6,ROR#2
18C180:  ADD.W           R1, R1, R2,ROR#27
18C184:  ADD             R0, R4
18C186:  MOV.W           R4, R2,ROR#2
18C18A:  ADD             R1, R8
18C18C:  EOR.W           R4, R4, R3,ROR#2
18C190:  ANDS            R4, R1
18C192:  ADD.W           R6, R5, R6,ROR#2
18C196:  EOR.W           R4, R4, R3,ROR#2
18C19A:  ADD.W           R0, R0, R1,ROR#27
18C19E:  ADD             R6, R4
18C1A0:  MOV.W           R4, R1,ROR#2
18C1A4:  ADD             R0, R8
18C1A6:  EOR.W           R4, R4, R2,ROR#2
18C1AA:  LDR             R5, [SP,#0x168+var_13C]
18C1AC:  ANDS            R4, R0
18C1AE:  EOR.W           R4, R4, R2,ROR#2
18C1B2:  ADD.W           R6, R6, R0,ROR#27
18C1B6:  ADD.W           R3, R5, R3,ROR#2
18C1BA:  LDR             R5, [SP,#0x168+var_148]
18C1BC:  ADD             R3, R4
18C1BE:  MOV.W           R4, R0,ROR#2
18C1C2:  ADD             R6, R8
18C1C4:  EOR.W           R4, R4, R1,ROR#2
18C1C8:  ANDS            R4, R6
18C1CA:  ADD.W           R2, R5, R2,ROR#2
18C1CE:  EOR.W           R4, R4, R1,ROR#2
18C1D2:  ADD.W           R3, R3, R6,ROR#27
18C1D6:  ADD             R2, R4
18C1D8:  MOV.W           R4, R6,ROR#2
18C1DC:  ADD             R3, R8
18C1DE:  EOR.W           R4, R4, R0,ROR#2
18C1E2:  LDR             R5, [SP,#0x168+var_60]
18C1E4:  ANDS            R4, R3
18C1E6:  ADD.W           R2, R2, R3,ROR#27
18C1EA:  EOR.W           R4, R4, R0,ROR#2
18C1EE:  ADD.W           R1, R5, R1,ROR#2
18C1F2:  ADD             R2, R8
18C1F4:  ADD             R1, R4
18C1F6:  MOV.W           R4, R3,ROR#2
18C1FA:  EOR.W           R4, R4, R6,ROR#2
18C1FE:  LDR             R5, [SP,#0x168+var_138]
18C200:  ADD.W           R1, R1, R2,ROR#27
18C204:  ANDS            R4, R2
18C206:  ADD.W           R0, R5, R0,ROR#2
18C20A:  EOR.W           R4, R4, R6,ROR#2
18C20E:  ADD             R1, R8
18C210:  ADD             R0, R4
18C212:  LDR             R5, [SP,#0x168+var_140]
18C214:  MOVW            R12, #0xEBA1
18C218:  ADD.W           R0, R0, R1,ROR#27
18C21C:  MOVT            R12, #0x6ED9
18C220:  ADD.W           R4, R0, R8
18C224:  MOV.W           R0, R2,ROR#2
18C228:  EOR.W           R0, R0, R3,ROR#2
18C22C:  ADD.W           R6, R5, R6,ROR#2
18C230:  ANDS            R0, R1
18C232:  LDR             R5, [SP,#0x168+var_54]
18C234:  EOR.W           R0, R0, R3,ROR#2
18C238:  ADD             R0, R6
18C23A:  ADD.W           R3, R5, R3,ROR#2
18C23E:  ADD.W           R0, R0, R4,ROR#27
18C242:  LDR             R5, [SP,#0x168+var_134]
18C244:  ADD.W           R6, R0, R8
18C248:  MOV.W           R0, R1,ROR#2
18C24C:  EOR.W           R0, R0, R2,ROR#2
18C250:  ANDS            R0, R4
18C252:  EOR.W           R0, R0, R2,ROR#2
18C256:  ADD.W           R2, R5, R2,ROR#2
18C25A:  ADD             R0, R3
18C25C:  LDR             R5, [SP,#0x168+var_5C]
18C25E:  ADD.W           R0, R0, R6,ROR#27
18C262:  ADD.W           R3, R0, R8
18C266:  MOV.W           R0, R4,ROR#2
18C26A:  EOR.W           R0, R0, R1,ROR#2
18C26E:  ANDS            R0, R6
18C270:  EOR.W           R0, R0, R1,ROR#2
18C274:  ADD.W           R1, R5, R1,ROR#2
18C278:  ADD             R0, R2
18C27A:  MOV.W           R2, R6,ROR#2
18C27E:  EOR.W           R2, R2, R4,ROR#2
18C282:  ADD.W           R0, R0, R3,ROR#27
18C286:  ANDS            R2, R3
18C288:  ADD             R0, R8
18C28A:  EOR.W           R2, R2, R4,ROR#2
18C28E:  LDR             R5, [SP,#0x168+var_50]
18C290:  ADD             R1, R2
18C292:  MOV.W           R2, R3,ROR#2
18C296:  EOR.W           R2, R2, R6,ROR#2
18C29A:  ADD.W           R4, R5, R4,ROR#2
18C29E:  ANDS            R2, R0
18C2A0:  ADD.W           R1, R1, R0,ROR#27
18C2A4:  EOR.W           R2, R2, R6,ROR#2
18C2A8:  LDR             R5, [SP,#0x168+var_12C]
18C2AA:  ADD             R2, R4
18C2AC:  MOV.W           R4, R0,ROR#2
18C2B0:  ADD             R1, R8
18C2B2:  EOR.W           R4, R4, R3,ROR#2
18C2B6:  ANDS            R4, R1
18C2B8:  ADD.W           R6, R5, R6,ROR#2
18C2BC:  EOR.W           R4, R4, R3,ROR#2
18C2C0:  ADD.W           R2, R2, R1,ROR#27
18C2C4:  LDR             R5, [SP,#0x168+var_58]
18C2C6:  ADD             R6, R4
18C2C8:  MOV.W           R4, R1,ROR#2
18C2CC:  ADD             R2, R8
18C2CE:  EOR.W           R4, R4, R0,ROR#2
18C2D2:  ANDS            R4, R2
18C2D4:  ADD.W           R6, R6, R2,ROR#27
18C2D8:  MOV.W           R5, R5,ROR#31
18C2DC:  ADD.W           R3, R5, R3,ROR#2
18C2E0:  EOR.W           R4, R4, R0,ROR#2
18C2E4:  MOV.W           R5, R2,ROR#2
18C2E8:  ADD             R3, R4
18C2EA:  LDR             R4, [SP,#0x168+var_4C]
18C2EC:  ADD             R6, R8
18C2EE:  EOR.W           R5, R5, R1,ROR#2
18C2F2:  ANDS            R5, R6
18C2F4:  ADD.W           R3, R3, R6,ROR#27
18C2F8:  MOV.W           R4, R4,ROR#31
18C2FC:  ADD             R3, R8
18C2FE:  EOR.W           R5, R5, R1,ROR#2
18C302:  ADD.W           R0, R4, R0,ROR#2
18C306:  ADD             R0, R5
18C308:  LDR             R5, [SP,#0x168+var_120]
18C30A:  ADD.W           R0, R0, R3,ROR#27
18C30E:  ADD.W           R4, R0, R8
18C312:  MOV.W           R0, R6,ROR#2
18C316:  EOR.W           R0, R0, R2,ROR#2
18C31A:  ADD.W           R1, R5, R1,ROR#2
18C31E:  ANDS            R0, R3
18C320:  LDR             R5, [SP,#0x168+var_130]
18C322:  EOR.W           R0, R0, R2,ROR#2
18C326:  ADD             R0, R1
18C328:  ADD.W           R2, R5, R2,ROR#2
18C32C:  ADD.W           R0, R0, R4,ROR#27
18C330:  LDR             R5, [SP,#0x168+var_104]
18C332:  ADD.W           R1, R0, R8
18C336:  MOV.W           R0, R3,ROR#2
18C33A:  EOR.W           R0, R0, R6,ROR#2
18C33E:  ANDS            R0, R4
18C340:  EOR.W           R0, R0, R6,ROR#2
18C344:  ADD.W           R6, R5, R6,ROR#2
18C348:  ADD             R0, R2
18C34A:  LDR             R5, [SP,#0x168+var_118]
18C34C:  ADD.W           R0, R0, R1,ROR#27
18C350:  ADD.W           R2, R0, R8
18C354:  MOV.W           R0, R4,ROR#2
18C358:  EOR.W           R0, R0, R3,ROR#2
18C35C:  ADD.W           R3, R5, R3,ROR#2
18C360:  EORS            R0, R1
18C362:  LDR             R5, [SP,#0x168+var_128]
18C364:  ADD             R0, R6
18C366:  ADD.W           R0, R0, R2,ROR#27
18C36A:  ADD.W           R5, R5, R4,ROR#2
18C36E:  ADD.W           R6, R0, R12
18C372:  MOV.W           R0, R1,ROR#2
18C376:  EOR.W           R0, R0, R4,ROR#2
18C37A:  LDR             R4, [SP,#0x168+var_F4]
18C37C:  EORS            R0, R2
18C37E:  ADD             R0, R3
18C380:  ADD.W           R0, R0, R6,ROR#27
18C384:  ADD.W           R3, R0, R12
18C388:  MOV.W           R0, R2,ROR#2
18C38C:  EOR.W           R0, R0, R1,ROR#2
18C390:  ADD.W           R1, R4, R1,ROR#2
18C394:  EORS            R0, R6
18C396:  LDR             R4, [SP,#0x168+var_110]
18C398:  ADD             R0, R5
18C39A:  ADD.W           R0, R0, R3,ROR#27
18C39E:  ADD.W           R5, R0, R12
18C3A2:  MOV.W           R0, R6,ROR#2
18C3A6:  EOR.W           R0, R0, R2,ROR#2
18C3AA:  ADD.W           R2, R4, R2,ROR#2
18C3AE:  EORS            R0, R3
18C3B0:  LDR             R4, [SP,#0x168+var_124]
18C3B2:  ADD             R0, R1
18C3B4:  ADD.W           R0, R0, R5,ROR#27
18C3B8:  ADD.W           R1, R0, R12
18C3BC:  MOV.W           R0, R3,ROR#2
18C3C0:  EOR.W           R0, R0, R6,ROR#2
18C3C4:  ADD.W           R6, R4, R6,ROR#2
18C3C8:  EORS            R0, R5
18C3CA:  LDR             R4, [SP,#0x168+var_EC]
18C3CC:  ADD             R0, R2
18C3CE:  ADD.W           R0, R0, R1,ROR#27
18C3D2:  ADD.W           R2, R0, R12
18C3D6:  MOV.W           R0, R5,ROR#2
18C3DA:  EOR.W           R0, R0, R3,ROR#2
18C3DE:  ADD.W           R3, R4, R3,ROR#2
18C3E2:  EORS            R0, R1
18C3E4:  LDR             R4, [SP,#0x168+var_108]
18C3E6:  ADD             R0, R6
18C3E8:  ADD.W           R0, R0, R2,ROR#27
18C3EC:  ADD.W           R6, R0, R12
18C3F0:  MOV.W           R0, R1,ROR#2
18C3F4:  EOR.W           R0, R0, R5,ROR#2
18C3F8:  ADD.W           R5, R4, R5,ROR#2
18C3FC:  EORS            R0, R2
18C3FE:  LDR             R4, [SP,#0x168+var_11C]
18C400:  ADD             R0, R3
18C402:  ADD.W           R0, R0, R6,ROR#27
18C406:  ADD.W           R3, R0, R12
18C40A:  MOV.W           R0, R2,ROR#2
18C40E:  EOR.W           R0, R0, R1,ROR#2
18C412:  ADD.W           R1, R4, R1,ROR#2
18C416:  EORS            R0, R6
18C418:  LDR             R4, [SP,#0x168+var_E0]
18C41A:  ADD             R0, R5
18C41C:  ADD.W           R0, R0, R3,ROR#27
18C420:  ADD.W           R5, R0, R12
18C424:  MOV.W           R0, R6,ROR#2
18C428:  EOR.W           R0, R0, R2,ROR#2
18C42C:  ADD.W           R2, R4, R2,ROR#2
18C430:  EORS            R0, R3
18C432:  LDR             R4, [SP,#0x168+var_FC]
18C434:  ADD             R0, R1
18C436:  ADD.W           R0, R0, R5,ROR#27
18C43A:  ADD.W           R1, R0, R12
18C43E:  MOV.W           R0, R3,ROR#2
18C442:  EOR.W           R0, R0, R6,ROR#2
18C446:  ADD.W           R6, R4, R6,ROR#2
18C44A:  EORS            R0, R5
18C44C:  LDR             R4, [SP,#0x168+var_114]
18C44E:  ADD             R0, R2
18C450:  ADD.W           R0, R0, R1,ROR#27
18C454:  ADD.W           R2, R0, R12
18C458:  MOV.W           R0, R5,ROR#2
18C45C:  EOR.W           R0, R0, R3,ROR#2
18C460:  ADD.W           R3, R4, R3,ROR#2
18C464:  EORS            R0, R1
18C466:  ADD             R0, R6
18C468:  ADD.W           R0, R0, R2,ROR#27
18C46C:  ADD.W           R6, R0, R12
18C470:  MOV.W           R0, R1,ROR#2
18C474:  EOR.W           R0, R0, R5,ROR#2
18C478:  EORS            R0, R2
18C47A:  ADD             R0, R3
18C47C:  LDR             R3, [SP,#0x168+var_D4]
18C47E:  ADD.W           R0, R0, R6,ROR#27
18C482:  ADD.W           R4, R0, R12
18C486:  MOV.W           R0, R2,ROR#2
18C48A:  EOR.W           R0, R0, R1,ROR#2
18C48E:  ADD.W           R3, R3, R5,ROR#2
18C492:  EORS            R0, R6
18C494:  ADD             R0, R3
18C496:  LDR             R3, [SP,#0x168+var_F0]
18C498:  ADD.W           R0, R0, R4,ROR#27
18C49C:  ADD.W           R5, R0, R12
18C4A0:  MOV.W           R0, R6,ROR#2
18C4A4:  EOR.W           R0, R0, R2,ROR#2
18C4A8:  ADD.W           R1, R3, R1,ROR#2
18C4AC:  EORS            R0, R4
18C4AE:  LDR             R3, [SP,#0x168+var_10C]
18C4B0:  ADD             R0, R1
18C4B2:  ADD.W           R0, R0, R5,ROR#27
18C4B6:  ADD.W           R2, R3, R2,ROR#2
18C4BA:  ADD.W           R1, R0, R12
18C4BE:  MOV.W           R0, R4,ROR#2
18C4C2:  EOR.W           R0, R0, R6,ROR#2
18C4C6:  LDR             R3, [SP,#0x168+var_C8]
18C4C8:  EORS            R0, R5
18C4CA:  ADD             R0, R2
18C4CC:  MOV.W           R2, R5,ROR#2
18C4D0:  ADD.W           R0, R0, R1,ROR#27
18C4D4:  EOR.W           R2, R2, R4,ROR#2
18C4D8:  ADD.W           R3, R3, R6,ROR#2
18C4DC:  EORS            R2, R1
18C4DE:  ADD             R0, R12
18C4E0:  ADD             R2, R3
18C4E2:  LDR             R6, [SP,#0x168+var_E4]
18C4E4:  ADD.W           R2, R2, R0,ROR#27
18C4E8:  ADD.W           R3, R2, R12
18C4EC:  MOV.W           R2, R1,ROR#2
18C4F0:  EOR.W           R2, R2, R5,ROR#2
18C4F4:  ADD.W           R6, R6, R4,ROR#2
18C4F8:  EORS            R2, R0
18C4FA:  LDR             R4, [SP,#0x168+var_100]
18C4FC:  ADD             R2, R6
18C4FE:  ADD.W           R2, R2, R3,ROR#27
18C502:  ADD.W           R5, R4, R5,ROR#2
18C506:  ADD.W           R6, R2, R12
18C50A:  MOV.W           R2, R0,ROR#2
18C50E:  EOR.W           R2, R2, R1,ROR#2
18C512:  LDR             R4, [SP,#0x168+var_BC]
18C514:  EORS            R2, R3
18C516:  ADD             R2, R5
18C518:  ADD.W           R1, R4, R1,ROR#2
18C51C:  ADD.W           R2, R2, R6,ROR#27
18C520:  LDR             R4, [SP,#0x168+var_DC]
18C522:  ADD.W           R5, R2, R12
18C526:  MOV.W           R2, R3,ROR#2
18C52A:  EOR.W           R2, R2, R0,ROR#2
18C52E:  ADD.W           R0, R4, R0,ROR#2
18C532:  EORS            R2, R6
18C534:  ADD             R1, R2
18C536:  ADD.W           R1, R1, R5,ROR#27
18C53A:  ADD.W           R2, R1, R12
18C53E:  MOV.W           R1, R6,ROR#2
18C542:  EOR.W           R1, R1, R3,ROR#2
18C546:  AND.W           R4, R2, R5,ROR#2
18C54A:  EORS            R1, R5
18C54C:  ADD             R0, R1
18C54E:  ADD.W           R0, R0, R2,ROR#27
18C552:  ADD.W           R1, R0, R12
18C556:  ORR.W           R0, R2, R5,ROR#2
18C55A:  AND.W           R0, R0, R6,ROR#2
18C55E:  MOVW            R12, #0xBCDC
18C562:  ORRS            R0, R4
18C564:  LDR             R4, [SP,#0x168+var_F8]
18C566:  MOVT            R12, #0x8F1B
18C56A:  ADD.W           R3, R4, R3,ROR#2
18C56E:  ORR.W           R4, R1, R2,ROR#2
18C572:  ADD             R0, R3
18C574:  AND.W           R4, R4, R5,ROR#2
18C578:  ADD.W           R3, R0, R1,ROR#27
18C57C:  AND.W           R0, R1, R2,ROR#2
18C580:  ORRS            R0, R4
18C582:  LDR             R4, [SP,#0x168+var_B4]
18C584:  ADD             R3, R12
18C586:  ADD.W           R6, R4, R6,ROR#2
18C58A:  AND.W           R4, R3, R1,ROR#2
18C58E:  ADD             R0, R6
18C590:  ADD.W           R0, R0, R3,ROR#27
18C594:  ADD.W           R6, R0, R12
18C598:  ORR.W           R0, R3, R1,ROR#2
18C59C:  AND.W           R0, R0, R2,ROR#2
18C5A0:  ORRS            R0, R4
18C5A2:  LDR             R4, [SP,#0x168+var_CC]
18C5A4:  ADD.W           R5, R4, R5,ROR#2
18C5A8:  AND.W           R4, R6, R3,ROR#2
18C5AC:  ADD             R0, R5
18C5AE:  ADD.W           R0, R0, R6,ROR#27
18C5B2:  ADD.W           R5, R0, R12
18C5B6:  ORR.W           R0, R6, R3,ROR#2
18C5BA:  AND.W           R0, R0, R1,ROR#2
18C5BE:  ORRS            R0, R4
18C5C0:  LDR             R4, [SP,#0x168+var_E8]
18C5C2:  ADD.W           R2, R4, R2,ROR#2
18C5C6:  AND.W           R4, R5, R6,ROR#2
18C5CA:  ADD             R0, R2
18C5CC:  ADD.W           R0, R0, R5,ROR#27
18C5D0:  ADD.W           R2, R0, R12
18C5D4:  ORR.W           R0, R5, R6,ROR#2
18C5D8:  AND.W           R0, R0, R3,ROR#2
18C5DC:  ORRS            R0, R4
18C5DE:  LDR             R4, [SP,#0x168+var_A8]
18C5E0:  ADD.W           R1, R4, R1,ROR#2
18C5E4:  AND.W           R4, R2, R5,ROR#2
18C5E8:  ADD             R0, R1
18C5EA:  ADD.W           R0, R0, R2,ROR#27
18C5EE:  ADD.W           R1, R0, R12
18C5F2:  ORR.W           R0, R2, R5,ROR#2
18C5F6:  AND.W           R0, R0, R6,ROR#2
18C5FA:  ORRS            R0, R4
18C5FC:  LDR             R4, [SP,#0x168+var_C0]
18C5FE:  ADD.W           R3, R4, R3,ROR#2
18C602:  AND.W           R4, R1, R2,ROR#2
18C606:  ADD             R0, R3
18C608:  ADD.W           R0, R0, R1,ROR#27
18C60C:  ADD.W           R3, R0, R12
18C610:  ORR.W           R0, R1, R2,ROR#2
18C614:  AND.W           R0, R0, R5,ROR#2
18C618:  ORRS            R0, R4
18C61A:  LDR             R4, [SP,#0x168+var_D8]
18C61C:  ADD.W           R6, R4, R6,ROR#2
18C620:  AND.W           R4, R3, R1,ROR#2
18C624:  ADD             R0, R6
18C626:  ADD.W           R0, R0, R3,ROR#27
18C62A:  ADD.W           R6, R0, R12
18C62E:  ORR.W           R0, R3, R1,ROR#2
18C632:  AND.W           R0, R0, R2,ROR#2
18C636:  ORRS            R0, R4
18C638:  LDR             R4, [SP,#0x168+var_9C]
18C63A:  ADD.W           R5, R4, R5,ROR#2
18C63E:  AND.W           R4, R6, R3,ROR#2
18C642:  ADD             R0, R5
18C644:  ADD.W           R0, R0, R6,ROR#27
18C648:  ADD.W           R5, R0, R12
18C64C:  ORR.W           R0, R6, R3,ROR#2
18C650:  AND.W           R0, R0, R1,ROR#2
18C654:  ORRS            R0, R4
18C656:  LDR             R4, [SP,#0x168+var_B8]
18C658:  ADD.W           R2, R4, R2,ROR#2
18C65C:  AND.W           R4, R5, R6,ROR#2
18C660:  ADD             R0, R2
18C662:  ADD.W           R0, R0, R5,ROR#27
18C666:  ADD.W           R2, R0, R12
18C66A:  ORR.W           R0, R5, R6,ROR#2
18C66E:  AND.W           R0, R0, R3,ROR#2
18C672:  ORRS            R0, R4
18C674:  LDR             R4, [SP,#0x168+var_D0]
18C676:  ADD.W           R1, R4, R1,ROR#2
18C67A:  AND.W           R4, R2, R5,ROR#2
18C67E:  ADD             R0, R1
18C680:  ADD.W           R0, R0, R2,ROR#27
18C684:  ADD.W           R1, R0, R12
18C688:  ORR.W           R0, R2, R5,ROR#2
18C68C:  AND.W           R0, R0, R6,ROR#2
18C690:  ORRS            R0, R4
18C692:  LDR             R4, [SP,#0x168+var_94]
18C694:  ADD.W           R3, R4, R3,ROR#2
18C698:  AND.W           R4, R1, R2,ROR#2
18C69C:  ADD             R0, R3
18C69E:  ADD.W           R0, R0, R1,ROR#27
18C6A2:  ADD.W           R3, R0, R12
18C6A6:  ORR.W           R0, R1, R2,ROR#2
18C6AA:  AND.W           R0, R0, R5,ROR#2
18C6AE:  ORRS            R0, R4
18C6B0:  LDR             R4, [SP,#0x168+var_AC]
18C6B2:  ADD.W           R6, R4, R6,ROR#2
18C6B6:  AND.W           R4, R3, R1,ROR#2
18C6BA:  ADD             R0, R6
18C6BC:  ADD.W           R0, R0, R3,ROR#27
18C6C0:  ADD.W           R6, R0, R12
18C6C4:  ORR.W           R0, R3, R1,ROR#2
18C6C8:  AND.W           R0, R0, R2,ROR#2
18C6CC:  ORRS            R0, R4
18C6CE:  LDR             R4, [SP,#0x168+var_C4]
18C6D0:  ADD.W           R5, R4, R5,ROR#2
18C6D4:  AND.W           R4, R6, R3,ROR#2
18C6D8:  ADD             R0, R5
18C6DA:  ADD.W           R0, R0, R6,ROR#27
18C6DE:  ADD.W           R5, R0, R12
18C6E2:  ORR.W           R0, R6, R3,ROR#2
18C6E6:  AND.W           R0, R0, R1,ROR#2
18C6EA:  ORRS            R0, R4
18C6EC:  LDR             R4, [SP,#0x168+var_84]
18C6EE:  ADD.W           R2, R4, R2,ROR#2
18C6F2:  AND.W           R4, R5, R6,ROR#2
18C6F6:  ADD             R0, R2
18C6F8:  ADD.W           R0, R0, R5,ROR#27
18C6FC:  ADD.W           R2, R0, R12
18C700:  ORR.W           R0, R5, R6,ROR#2
18C704:  AND.W           R0, R0, R3,ROR#2
18C708:  ORRS            R0, R4
18C70A:  LDR             R4, [SP,#0x168+var_A0]
18C70C:  ADD.W           R1, R4, R1,ROR#2
18C710:  AND.W           R4, R2, R5,ROR#2
18C714:  ADD             R0, R1
18C716:  ADD.W           R0, R0, R2,ROR#27
18C71A:  ADD.W           R1, R0, R12
18C71E:  ORR.W           R0, R2, R5,ROR#2
18C722:  AND.W           R0, R0, R6,ROR#2
18C726:  ORRS            R0, R4
18C728:  LDR             R4, [SP,#0x168+var_B0]
18C72A:  ADD.W           R3, R4, R3,ROR#2
18C72E:  AND.W           R4, R1, R2,ROR#2
18C732:  ADD             R0, R3
18C734:  ADD.W           R0, R0, R1,ROR#27
18C738:  ADD.W           R3, R0, R12
18C73C:  ORR.W           R0, R1, R2,ROR#2
18C740:  AND.W           R0, R0, R5,ROR#2
18C744:  ORRS            R0, R4
18C746:  LDR             R4, [SP,#0x168+var_78]
18C748:  ADD.W           R6, R4, R6,ROR#2
18C74C:  AND.W           R4, R3, R1,ROR#2
18C750:  ADD             R0, R6
18C752:  ADD.W           R0, R0, R3,ROR#27
18C756:  ADD.W           R6, R0, R12
18C75A:  ORR.W           R0, R3, R1,ROR#2
18C75E:  AND.W           R0, R0, R2,ROR#2
18C762:  ORRS            R0, R4
18C764:  LDR             R4, [SP,#0x168+var_98]
18C766:  ADD.W           R5, R4, R5,ROR#2
18C76A:  AND.W           R4, R6, R3,ROR#2
18C76E:  ADD             R0, R5
18C770:  ADD.W           R0, R0, R6,ROR#27
18C774:  ADD.W           R5, R0, R12
18C778:  ORR.W           R0, R6, R3,ROR#2
18C77C:  AND.W           R0, R0, R1,ROR#2
18C780:  ORRS            R0, R4
18C782:  LDR             R4, [SP,#0x168+var_A4]
18C784:  ADD.W           R2, R4, R2,ROR#2
18C788:  AND.W           R4, R5, R6,ROR#2
18C78C:  ADD             R0, R2
18C78E:  ADD.W           R0, R0, R5,ROR#27
18C792:  ADD.W           R2, R0, R12
18C796:  ORR.W           R0, R5, R6,ROR#2
18C79A:  AND.W           R0, R0, R3,ROR#2
18C79E:  ORRS            R0, R4
18C7A0:  LDR             R4, [SP,#0x168+var_70]
18C7A2:  ADD.W           R1, R4, R1,ROR#2
18C7A6:  LDR             R4, [SP,#0x168+var_8C]
18C7A8:  ADD             R0, R1
18C7AA:  ADD.W           R0, R0, R2,ROR#27
18C7AE:  ADD.W           R3, R4, R3,ROR#2
18C7B2:  ADD.W           R1, R0, R12
18C7B6:  MOV.W           R0, R5,ROR#2
18C7BA:  EOR.W           R0, R0, R6,ROR#2
18C7BE:  MOVW            R12, #0xC1D6
18C7C2:  EORS            R0, R2
18C7C4:  LDR             R4, [SP,#0x168+var_90]
18C7C6:  ADD             R0, R3
18C7C8:  MOVT            R12, #0xCA62
18C7CC:  ADD.W           R0, R0, R1,ROR#27
18C7D0:  ADD.W           R6, R4, R6,ROR#2
18C7D4:  ADD.W           R3, R0, R12
18C7D8:  MOV.W           R0, R2,ROR#2
18C7DC:  EOR.W           R0, R0, R5,ROR#2
18C7E0:  LDR             R4, [SP,#0x168+var_68]
18C7E2:  EORS            R0, R1
18C7E4:  ADD             R0, R6
18C7E6:  ADD.W           R5, R4, R5,ROR#2
18C7EA:  ADD.W           R0, R0, R3,ROR#27
18C7EE:  LDR             R4, [SP,#0x168+var_7C]
18C7F0:  ADD.W           R6, R0, R12
18C7F4:  MOV.W           R0, R1,ROR#2
18C7F8:  EOR.W           R0, R0, R2,ROR#2
18C7FC:  ADD.W           R2, R4, R2,ROR#2
18C800:  EORS            R0, R3
18C802:  LDR             R4, [SP,#0x168+var_48]
18C804:  ADD             R0, R5
18C806:  ADD.W           R0, R0, R6,ROR#27
18C80A:  ADD.W           R5, R0, R12
18C80E:  MOV.W           R0, R3,ROR#2
18C812:  EOR.W           R0, R0, R1,ROR#2
18C816:  ADD.W           R1, R4, R1,ROR#2
18C81A:  EORS            R0, R6
18C81C:  LDR             R4, [SP,#0x168+var_34]
18C81E:  ADD             R0, R2
18C820:  ADD.W           R0, R0, R5,ROR#27
18C824:  ADD.W           R2, R0, R12
18C828:  MOV.W           R0, R6,ROR#2
18C82C:  EOR.W           R0, R0, R3,ROR#2
18C830:  ADD.W           R3, R4, R3,ROR#2
18C834:  EORS            R0, R5
18C836:  LDR             R4, [SP,#0x168+var_88]
18C838:  ADD             R0, R1
18C83A:  ADD.W           R0, R0, R2,ROR#27
18C83E:  ADD.W           R1, R0, R12
18C842:  MOV.W           R0, R5,ROR#2
18C846:  EOR.W           R0, R0, R6,ROR#2
18C84A:  ADD.W           R6, R4, R6,ROR#2
18C84E:  EORS            R0, R2
18C850:  ADD             R0, R3
18C852:  ADD.W           R0, R0, R1,ROR#27
18C856:  ADD.W           R3, R0, R12
18C85A:  MOV.W           R0, R2,ROR#2
18C85E:  EOR.W           R0, R0, R5,ROR#2
18C862:  ADD.W           R5, LR, R5,ROR#2
18C866:  EORS            R0, R1
18C868:  LDRD.W          LR, R8, [R9]
18C86C:  ADD             R0, R6
18C86E:  ADD.W           R0, R0, R3,ROR#27
18C872:  ADD.W           R6, R0, R12
18C876:  MOV.W           R0, R1,ROR#2
18C87A:  EOR.W           R0, R0, R2,ROR#2
18C87E:  EORS            R0, R3
18C880:  ADD             R0, R5
18C882:  LDR             R5, [SP,#0x168+var_80]
18C884:  ADD.W           R0, R0, R6,ROR#27
18C888:  ADD.W           R4, R0, R12
18C88C:  MOV.W           R0, R3,ROR#2
18C890:  EOR.W           R0, R0, R1,ROR#2
18C894:  ADD.W           R2, R5, R2,ROR#2
18C898:  EORS            R0, R6
18C89A:  LDR             R5, [SP,#0x168+var_74]
18C89C:  ADD             R0, R2
18C89E:  ADD.W           R0, R0, R4,ROR#27
18C8A2:  ADD.W           R1, R5, R1,ROR#2
18C8A6:  ADD.W           R2, R0, R12
18C8AA:  MOV.W           R0, R6,ROR#2
18C8AE:  EOR.W           R0, R0, R3,ROR#2
18C8B2:  LDR             R5, [SP,#0x168+var_3C]
18C8B4:  EORS            R0, R4
18C8B6:  ADD             R0, R1
18C8B8:  ADD.W           R3, R5, R3,ROR#2
18C8BC:  ADD.W           R0, R0, R2,ROR#27
18C8C0:  LDR             R5, [SP,#0x168+var_6C]
18C8C2:  ADD.W           R1, R0, R12
18C8C6:  MOV.W           R0, R4,ROR#2
18C8CA:  EOR.W           R0, R0, R6,ROR#2
18C8CE:  ADD.W           R6, R5, R6,ROR#2
18C8D2:  EORS            R0, R2
18C8D4:  ADD             R0, R3
18C8D6:  MOV.W           R3, R2,ROR#2
18C8DA:  ADD.W           R0, R0, R1,ROR#27
18C8DE:  EOR.W           R3, R3, R4,ROR#2
18C8E2:  EORS            R3, R1
18C8E4:  ADD             R0, R12
18C8E6:  ADD             R3, R6
18C8E8:  LDR             R6, [SP,#0x168+var_44]
18C8EA:  ADD.W           R3, R3, R0,ROR#27
18C8EE:  ADD.W           R5, R3, R12
18C8F2:  MOV.W           R3, R1,ROR#2
18C8F6:  EOR.W           R3, R3, R2,ROR#2
18C8FA:  ADD.W           R6, R6, R4,ROR#2
18C8FE:  EORS            R3, R0
18C900:  LDR             R4, [SP,#0x168+var_38]
18C902:  ADD             R3, R6
18C904:  MOV.W           R6, R0,ROR#2
18C908:  ADD.W           R3, R3, R5,ROR#27
18C90C:  EOR.W           R6, R6, R1,ROR#2
18C910:  ADD.W           R2, R4, R2,ROR#2
18C914:  EORS            R6, R5
18C916:  ADD             R3, R12
18C918:  ADD             R2, R6
18C91A:  MOV.W           R6, R5,ROR#2
18C91E:  LDR             R4, [SP,#0x168+var_30]
18C920:  ADD.W           R2, R2, R3,ROR#27
18C924:  EOR.W           R6, R6, R0,ROR#2
18C928:  ADD.W           R1, R4, R1,ROR#2
18C92C:  EORS            R6, R3
18C92E:  ADD             R2, R12
18C930:  ADD             R1, R6
18C932:  MOV.W           R6, R3,ROR#2
18C936:  LDR             R4, [SP,#0x168+var_40]
18C938:  ADD.W           R1, R1, R2,ROR#27
18C93C:  EOR.W           R6, R6, R5,ROR#2
18C940:  ADD.W           R0, R4, R0,ROR#2
18C944:  EORS            R6, R2
18C946:  ADD             R1, R12
18C948:  ADD             R0, R6
18C94A:  LDR             R4, [SP,#0x168+var_20]
18C94C:  ADD.W           R0, R0, R1,ROR#27
18C950:  ADD.W           R6, R0, R12
18C954:  LDR.W           R0, [R9,#0x10]
18C958:  ADD.W           R5, R4, R5,ROR#2
18C95C:  LDRD.W          R10, R4, [R9,#8]
18C960:  ADD.W           R0, R0, R6,ROR#2
18C964:  STR.W           R0, [R9,#0x10]
18C968:  MOV.W           R0, R2,ROR#2
18C96C:  EOR.W           R0, R0, R3,ROR#2
18C970:  EORS            R0, R1
18C972:  ADD             R0, R5
18C974:  ADD.W           R0, R0, R6,ROR#27
18C978:  ADD.W           R5, R0, R12
18C97C:  LDR             R0, [SP,#0x168+var_28]
18C97E:  ADD.W           R4, R4, R5,ROR#2
18C982:  STR.W           R4, [R9,#0xC]
18C986:  MOV.W           R4, R1,ROR#2
18C98A:  ADD.W           R3, R0, R3,ROR#2
18C98E:  EOR.W           R4, R4, R2,ROR#2
18C992:  EORS            R4, R6
18C994:  ADD             R3, R4
18C996:  LDR             R4, [SP,#0x168+var_24]
18C998:  ADD.W           R3, R3, R5,ROR#27
18C99C:  ADD             R3, R12
18C99E:  ADD.W           R2, R4, R2,ROR#2
18C9A2:  ADD.W           R0, R10, R3,ROR#2
18C9A6:  STR.W           R0, [R9,#8]
18C9AA:  MOV.W           R0, R6,ROR#2
18C9AE:  EOR.W           R0, R0, R1,ROR#2
18C9B2:  EORS            R0, R5
18C9B4:  ADD             R0, R2
18C9B6:  ADD.W           R0, R0, R3,ROR#27
18C9BA:  ADD             R0, R12
18C9BC:  ADD.W           R2, R0, R8
18C9C0:  STR.W           R2, [R9,#4]
18C9C4:  MOV.W           R2, R5,ROR#2
18C9C8:  EOR.W           R2, R2, R6,ROR#2
18C9CC:  EORS            R2, R3
18C9CE:  LDR             R3, [SP,#0x168+var_2C]
18C9D0:  ADD.W           R3, LR, R3,ROR#31
18C9D4:  ADD.W           R1, R3, R1,ROR#2
18C9D8:  ADD             R1, R2
18C9DA:  ADD.W           R0, R1, R0,ROR#27
18C9DE:  ADD             R0, R12
18C9E0:  STR.W           R0, [R9]
18C9E4:  ADD             SP, SP, #0x14C
18C9E6:  POP.W           {R8-R11}
18C9EA:  POP             {R4-R7,PC}
