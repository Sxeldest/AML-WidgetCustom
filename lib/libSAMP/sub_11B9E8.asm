; =========================================================
; Game Engine Function: sub_11B9E8
; Address            : 0x11B9E8 - 0x11BC00
; =========================================================

11B9E8:  PUSH            {R4-R7,LR}
11B9EA:  ADD             R7, SP, #0xC
11B9EC:  PUSH.W          {R8-R11}
11B9F0:  SUB             SP, SP, #0x144
11B9F2:  MOVS            R5, #0
11B9F4:  CMP             R1, #0
11B9F6:  BEQ.W           loc_11BBF6
11B9FA:  MOV             R8, R2
11B9FC:  CMP             R2, #0
11B9FE:  BEQ.W           loc_11BBF6
11BA02:  MOV             R11, R0
11BA04:  LDRB.W          R0, [R8]
11BA08:  CMP             R0, #0
11BA0A:  BEQ.W           loc_11BBBC
11BA0E:  MOV             R6, R1
11BA10:  LDR             R1, [R1,#4]
11BA12:  LDR             R0, [R7,#arg_0]
11BA14:  MOV             R4, R3
11BA16:  CBZ             R1, loc_11BA42
11BA18:  LDRB            R2, [R1]
11BA1A:  CBZ             R2, loc_11BA42
11BA1C:  MOVW            R2, #0xE995
11BA20:  MOVW            R3, #0xA654
11BA24:  MOVT            R2, #0x5BD1
11BA28:  MOVT            R3, #0x6F47
11BA2C:  MULS            R1, R2
11BA2E:  EOR.W           R1, R1, R1,LSR#24
11BA32:  MULS            R1, R2
11BA34:  EORS            R1, R3
11BA36:  EOR.W           R1, R1, R1,LSR#13
11BA3A:  MULS            R1, R2
11BA3C:  EOR.W           R5, R1, R1,LSR#15
11BA40:  B               loc_11BA44
11BA42:  MOVS            R5, #0
11BA44:  CBNZ            R0, loc_11BA4C
11BA46:  MOV             R0, R8
11BA48:  BL              sub_11BC30
11BA4C:  MOV             R10, R11
11BA4E:  STR             R0, [SP,#0x160+var_24]
11BA50:  LDR.W           R2, [R10,#0x18]!
11BA54:  STR             R5, [SP,#0x160+var_28]
11BA56:  CBZ             R2, loc_11BA92
11BA58:  MOV             R12, R4
11BA5A:  MOV             R1, R10
11BA5C:  LDRD.W          R3, R4, [R2,#0x10]
11BA60:  SUBS            R3, R3, R5
11BA62:  SBCS.W          R3, R4, R0
11BA66:  MOV.W           R3, #0
11BA6A:  IT CC
11BA6C:  MOVCC           R3, #1
11BA6E:  CMP             R3, #0
11BA70:  MOV             R3, R2
11BA72:  IT NE
11BA74:  ADDNE           R3, #4
11BA76:  LDR             R3, [R3]
11BA78:  IT EQ
11BA7A:  MOVEQ           R1, R2
11BA7C:  CMP             R3, #0
11BA7E:  MOV             R2, R3
11BA80:  BNE             loc_11BA5C
11BA82:  CMP             R1, R10
11BA84:  MOV             R4, R12
11BA86:  BEQ             loc_11BA92
11BA88:  LDRD.W          R2, R3, [R1,#0x10]
11BA8C:  SUBS            R2, R5, R2
11BA8E:  SBCS            R0, R3
11BA90:  BCS             loc_11BB56
11BA92:  ADD             R5, SP, #0x160+var_128
11BA94:  MOV             R0, R6
11BA96:  MOV             R2, R8
11BA98:  MOV             R1, R5
11BA9A:  BL              sub_1638C8
11BA9E:  BL              sub_F97EC
11BAA2:  STR             R0, [SP,#0x160+var_148]
11BAA4:  ADD             R0, SP, #0x160+var_144; int
11BAA6:  ADD             R1, SP, #0x160+var_148
11BAA8:  MOVS            R2, #0
11BAAA:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IPKcvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char const*,void>(char const* const&,std::__fs::filesystem::path::format)
11BAAE:  ADD             R0, SP, #0x160+var_154; int
11BAB0:  MOV             R1, R5
11BAB2:  MOVS            R2, #0
11BAB4:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IA256_cvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char [256],void>(char [256] const&,std::__fs::filesystem::path::format)
11BAB8:  ADD             R0, SP, #0x160+var_138
11BABA:  ADD             R1, SP, #0x160+var_144
11BABC:  ADD             R2, SP, #0x160+var_154
11BABE:  BL              sub_F1DD4
11BAC2:  MOV             R9, R11
11BAC4:  LDRB.W          R0, [R9,#8]!
11BAC8:  LSLS            R0, R0, #0x1F
11BACA:  ITT NE
11BACC:  LDRNE.W         R0, [R11,#0x10]; void *
11BAD0:  BLXNE           j__ZdlPv; operator delete(void *)
11BAD4:  LDRB.W          R0, [SP,#0x160+var_154]
11BAD8:  VLDR            D16, [SP,#0x160+var_138]
11BADC:  LDR             R1, [SP,#0x160+var_130]
11BADE:  STR.W           R1, [R9,#8]
11BAE2:  MOVS            R1, #0
11BAE4:  LSLS            R0, R0, #0x1F
11BAE6:  VSTR            D16, [R9]
11BAEA:  STRH.W          R1, [SP,#0x160+var_138]
11BAEE:  ITT NE
11BAF0:  LDRNE           R0, [SP,#0x160+var_14C]; void *
11BAF2:  BLXNE           j__ZdlPv; operator delete(void *)
11BAF6:  LDRB.W          R0, [SP,#0x160+var_144]
11BAFA:  SUB.W           R6, R10, #4
11BAFE:  LSLS            R0, R0, #0x1F
11BB00:  ITT NE
11BB02:  LDRNE           R0, [SP,#0x160+var_13C]; void *
11BB04:  BLXNE           j__ZdlPv; operator delete(void *)
11BB08:  ADD             R0, SP, #0x160+var_138; this
11BB0A:  MOV             R1, R9; std::__fs::filesystem::path *
11BB0C:  MOVS            R2, #0; std::error_code *
11BB0E:  MOVS            R5, #0
11BB10:  BLX             j__ZNSt6__ndk14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__status(std::__fs::filesystem::path const&,std::error_code *)
11BB14:  LDRB.W          R0, [SP,#0x160+var_138]
11BB18:  ADD             R2, SP, #0x160+var_28
11BB1A:  LDR             R3, =(unk_B5E04 - 0x11BB22)
11BB1C:  SUBS            R0, #1
11BB1E:  ADD             R3, PC; unk_B5E04
11BB20:  CMP             R0, #0xFE
11BB22:  BCS             loc_11BB3E
11BB24:  ADD             R0, SP, #0x160+var_144
11BB26:  STR             R0, [SP,#0x160+var_160]
11BB28:  ADD             R0, SP, #0x160+var_154
11BB2A:  STR             R0, [SP,#0x160+var_15C]
11BB2C:  ADD             R0, SP, #0x160+var_138
11BB2E:  MOV             R1, R6
11BB30:  STR             R2, [SP,#0x160+var_144]
11BB32:  BL              sub_11C4C0
11BB36:  LDR             R0, [SP,#0x160+var_138]
11BB38:  MOVS            R1, #1
11BB3A:  STRB            R1, [R0,#0x18]
11BB3C:  B               loc_11BB64
11BB3E:  ADD             R0, SP, #0x160+var_144
11BB40:  STR             R0, [SP,#0x160+var_160]
11BB42:  ADD             R0, SP, #0x160+var_154
11BB44:  STR             R0, [SP,#0x160+var_15C]
11BB46:  ADD             R0, SP, #0x160+var_138
11BB48:  MOV             R1, R6
11BB4A:  STR             R2, [SP,#0x160+var_144]
11BB4C:  BL              sub_11C4C0
11BB50:  LDR             R0, [SP,#0x160+var_138]
11BB52:  STRB            R5, [R0,#0x18]
11BB54:  B               loc_11BBF6
11BB56:  LDRB            R0, [R1,#0x18]
11BB58:  CBZ             R0, loc_11BBBC
11BB5A:  ADD             R1, SP, #0x160+var_128
11BB5C:  MOV             R0, R6
11BB5E:  MOV             R2, R8
11BB60:  BL              sub_1638C8
11BB64:  ADD             R0, SP, #0x160+var_128
11BB66:  BL              sub_11BC9C
11BB6A:  MOV             R6, R0
11BB6C:  ADD             R0, SP, #0x160+var_148
11BB6E:  ADD             R1, SP, #0x160+var_154
11BB70:  ADD             R2, SP, #0x160+var_138
11BB72:  ADD             R3, SP, #0x160+var_144
11BB74:  MOV.W           R9, #0
11BB78:  STRD.W          R1, R0, [SP,#0x160+var_160]
11BB7C:  MOV             R0, R6
11BB7E:  MOVS            R1, #4
11BB80:  STR.W           R9, [SP,#0x160+var_138]
11BB84:  STR.W           R9, [SP,#0x160+var_154]
11BB88:  STRD.W          R9, R9, [SP,#0x160+var_148]
11BB8C:  BL              sub_11BCD0
11BB90:  LDR             R0, [SP,#0x160+var_138]
11BB92:  LDR             R2, [SP,#0x160+var_154]
11BB94:  LDRD.W          R3, R1, [SP,#0x160+var_148]
11BB98:  BL              sub_11BD24
11BB9C:  MOV             R1, R6
11BB9E:  MOV             R5, R0
11BBA0:  BL              sub_11BD68
11BBA4:  CBZ             R4, loc_11BBC0
11BBA6:  LDR             R0, [R4]
11BBA8:  BL              sub_11BE10
11BBAC:  MOV             R0, R4
11BBAE:  MOV             R1, R5
11BBB0:  STR.W           R9, [R4]
11BBB4:  BL              sub_11BE48
11BBB8:  MOV             R5, R4
11BBBA:  B               loc_11BBCE
11BBBC:  MOVS            R5, #0
11BBBE:  B               loc_11BBF6
11BBC0:  MOV             R0, R5
11BBC2:  BL              sub_11BDA0
11BBC6:  MOV             R1, R8
11BBC8:  MOV             R5, R0
11BBCA:  BL              sub_11BDD8
11BBCE:  MOV             R0, R6
11BBD0:  BL              sub_11BE80
11BBD4:  LDRB.W          R0, [R11,#8]
11BBD8:  LDR.W           R3, [R11,#0x10]
11BBDC:  LDR             R1, =(aAxl - 0x11BBEC); "AXL" ...
11BBDE:  LDR             R2, =(aModloaderLoadT - 0x11BBEE); "modloader: load texture \"%s\" from %s" ...
11BBE0:  LSLS            R0, R0, #0x1F
11BBE2:  IT EQ
11BBE4:  ADDEQ.W         R3, R11, #9
11BBE8:  ADD             R1, PC; "AXL"
11BBEA:  ADD             R2, PC; "modloader: load texture \"%s\" from %s"
11BBEC:  STR             R3, [SP,#0x160+var_160]
11BBEE:  MOVS            R0, #3; prio
11BBF0:  MOV             R3, R8
11BBF2:  BLX             __android_log_print
11BBF6:  MOV             R0, R5
11BBF8:  ADD             SP, SP, #0x144
11BBFA:  POP.W           {R8-R11}
11BBFE:  POP             {R4-R7,PC}
