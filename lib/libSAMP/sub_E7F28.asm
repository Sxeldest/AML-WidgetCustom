; =========================================================
; Game Engine Function: sub_E7F28
; Address            : 0xE7F28 - 0xE816A
; =========================================================

E7F28:  PUSH            {R4-R7,LR}
E7F2A:  ADD             R7, SP, #0xC
E7F2C:  PUSH.W          {R8}
E7F30:  SUB             SP, SP, #0x48
E7F32:  MOV             R6, R1
E7F34:  LDR             R1, =(aSyntaxError - 0xE7F3E); "syntax error " ...
E7F36:  MOV             R5, R3
E7F38:  MOV             R8, R2
E7F3A:  ADD             R1, PC; "syntax error "
E7F3C:  MOV             R4, R0
E7F3E:  BL              sub_DC6DC
E7F42:  LDRB            R0, [R5]
E7F44:  LDR             R1, [R5,#4]
E7F46:  LSLS            R2, R0, #0x1F
E7F48:  IT EQ
E7F4A:  LSREQ           R1, R0, #1
E7F4C:  CBZ             R1, loc_E7FAE
E7F4E:  LDR             R1, =(aWhileParsing - 0xE7F54); "while parsing " ...
E7F50:  ADD             R1, PC; "while parsing "
E7F52:  ADD             R0, SP, #0x58+var_30
E7F54:  MOV             R2, R5
E7F56:  BLX             j__ZNSt6__ndk1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_; std::operator+<char>(char const*,std::string const&)
E7F5A:  LDR             R1, =(asc_84C32 - 0xE7F60); " " ...
E7F5C:  ADD             R1, PC; " "
E7F5E:  ADD             R0, SP, #0x58+var_30; int
E7F60:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
E7F64:  VLDR            D16, [R0]
E7F68:  ADD             R3, SP, #0x58+var_20
E7F6A:  LDR             R1, [R0,#8]
E7F6C:  STR             R1, [SP,#0x58+var_18]
E7F6E:  MOVS            R1, #0
E7F70:  VSTR            D16, [SP,#0x58+var_20]
E7F74:  STRD.W          R1, R1, [R0]
E7F78:  STR             R1, [R0,#8]
E7F7A:  LDRB.W          R0, [SP,#0x58+var_20]
E7F7E:  LDRD.W          R2, R1, [SP,#0x58+var_20+4]
E7F82:  ANDS.W          R5, R0, #1
E7F86:  ITT EQ
E7F88:  ADDEQ           R1, R3, #1
E7F8A:  LSREQ           R2, R0, #1
E7F8C:  MOV             R0, R4
E7F8E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
E7F92:  LDRB.W          R0, [SP,#0x58+var_20]
E7F96:  LSLS            R0, R0, #0x1F
E7F98:  ITT NE
E7F9A:  LDRNE           R0, [SP,#0x58+var_18]; void *
E7F9C:  BLXNE           j__ZdlPv; operator delete(void *)
E7FA0:  LDRB.W          R0, [SP,#0x58+var_30]
E7FA4:  LSLS            R0, R0, #0x1F
E7FA6:  ITT NE
E7FA8:  LDRNE           R0, [SP,#0x58+var_28]; void *
E7FAA:  BLXNE           j__ZdlPv; operator delete(void *)
E7FAE:  LDR             R1, =(asc_837A2 - 0xE7FB4); "- " ...
E7FB0:  ADD             R1, PC; "- "
E7FB2:  MOV             R0, R4; int
E7FB4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
E7FB8:  LDR             R0, [R6,#0x18]
E7FBA:  CMP             R0, #0xE
E7FBC:  BNE             loc_E8096
E7FBE:  LDR             R1, [R6,#0x58]; s
E7FC0:  ADD             R0, SP, #0x58+var_4C; int
E7FC2:  BL              sub_DC6DC
E7FC6:  LDR             R1, =(aLastRead - 0xE7FCC); "; last read: '" ...
E7FC8:  ADD             R1, PC; "; last read: '"
E7FCA:  ADD             R0, SP, #0x58+var_4C; int
E7FCC:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
E7FD0:  ADD.W           R1, R6, #0x20 ; ' '
E7FD4:  VLDR            D16, [R0]
E7FD8:  LDR             R2, [R0,#8]
E7FDA:  STR             R2, [SP,#0x58+var_38]
E7FDC:  MOVS            R2, #0
E7FDE:  VSTR            D16, [SP,#0x58+var_40]
E7FE2:  STRD.W          R2, R2, [R0]
E7FE6:  STR             R2, [R0,#8]
E7FE8:  MOV             R5, SP
E7FEA:  MOV             R0, R5
E7FEC:  BL              sub_E7C78
E7FF0:  LDRB.W          R0, [SP,#0x58+var_58]
E7FF4:  LDRD.W          R2, R1, [SP,#0x58+var_54]
E7FF8:  ANDS.W          R3, R0, #1
E7FFC:  ITT EQ
E7FFE:  ADDEQ           R1, R5, #1
E8000:  LSREQ           R2, R0, #1
E8002:  ADD             R0, SP, #0x58+var_40
E8004:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
E8008:  VLDR            D16, [R0]
E800C:  MOVS            R5, #0
E800E:  LDR             R2, [R0,#8]
E8010:  LDR             R1, =(asc_88EDF - 0xE8018); "'" ...
E8012:  STR             R2, [SP,#0x58+var_28]
E8014:  ADD             R1, PC; "'"
E8016:  VSTR            D16, [SP,#0x58+var_30]
E801A:  STRD.W          R5, R5, [R0]
E801E:  STR             R5, [R0,#8]
E8020:  ADD             R0, SP, #0x58+var_30; int
E8022:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
E8026:  VLDR            D16, [R0]
E802A:  ADD             R3, SP, #0x58+var_20
E802C:  LDR             R1, [R0,#8]
E802E:  STR             R1, [SP,#0x58+var_18]
E8030:  VSTR            D16, [SP,#0x58+var_20]
E8034:  STRD.W          R5, R5, [R0]
E8038:  STR             R5, [R0,#8]
E803A:  LDRB.W          R0, [SP,#0x58+var_20]
E803E:  LDRD.W          R2, R1, [SP,#0x58+var_20+4]
E8042:  ANDS.W          R6, R0, #1
E8046:  ITT EQ
E8048:  ADDEQ           R1, R3, #1
E804A:  LSREQ           R2, R0, #1
E804C:  MOV             R0, R4
E804E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
E8052:  LDRB.W          R0, [SP,#0x58+var_20]
E8056:  LSLS            R0, R0, #0x1F
E8058:  ITT NE
E805A:  LDRNE           R0, [SP,#0x58+var_18]; void *
E805C:  BLXNE           j__ZdlPv; operator delete(void *)
E8060:  LDRB.W          R0, [SP,#0x58+var_30]
E8064:  LSLS            R0, R0, #0x1F
E8066:  ITT NE
E8068:  LDRNE           R0, [SP,#0x58+var_28]; void *
E806A:  BLXNE           j__ZdlPv; operator delete(void *)
E806E:  LDRB.W          R0, [SP,#0x58+var_58]
E8072:  LSLS            R0, R0, #0x1F
E8074:  ITT NE
E8076:  LDRNE           R0, [SP,#0x58+var_50]; void *
E8078:  BLXNE           j__ZdlPv; operator delete(void *)
E807C:  LDRB.W          R0, [SP,#0x58+var_40]
E8080:  LSLS            R0, R0, #0x1F
E8082:  ITT NE
E8084:  LDRNE           R0, [SP,#0x58+var_38]; void *
E8086:  BLXNE           j__ZdlPv; operator delete(void *)
E808A:  LDRB.W          R0, [SP,#0x58+var_4C]
E808E:  LSLS            R0, R0, #0x1F
E8090:  BEQ             loc_E80F8
E8092:  LDR             R0, [SP,#0x58+var_44]
E8094:  B               loc_E80F4
E8096:  BL              sub_EB1CC
E809A:  MOV             R1, R0; s
E809C:  ADD             R0, SP, #0x58+var_30; int
E809E:  BL              sub_DC6DC
E80A2:  LDR             R2, =(aUnexpected - 0xE80A8); "unexpected " ...
E80A4:  ADD             R2, PC; "unexpected "
E80A6:  ADD             R0, SP, #0x58+var_30; int
E80A8:  MOVS            R1, #0; int
E80AA:  MOVS            R5, #0
E80AC:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
E80B0:  VLDR            D16, [R0]
E80B4:  ADD             R3, SP, #0x58+var_20
E80B6:  LDR             R1, [R0,#8]
E80B8:  STR             R1, [SP,#0x58+var_18]
E80BA:  VSTR            D16, [SP,#0x58+var_20]
E80BE:  STRD.W          R5, R5, [R0]
E80C2:  STR             R5, [R0,#8]
E80C4:  LDRB.W          R0, [SP,#0x58+var_20]
E80C8:  LDRD.W          R2, R1, [SP,#0x58+var_20+4]
E80CC:  ANDS.W          R6, R0, #1
E80D0:  ITT EQ
E80D2:  ADDEQ           R1, R3, #1
E80D4:  LSREQ           R2, R0, #1
E80D6:  MOV             R0, R4
E80D8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
E80DC:  LDRB.W          R0, [SP,#0x58+var_20]
E80E0:  LSLS            R0, R0, #0x1F
E80E2:  ITT NE
E80E4:  LDRNE           R0, [SP,#0x58+var_18]; void *
E80E6:  BLXNE           j__ZdlPv; operator delete(void *)
E80EA:  LDRB.W          R0, [SP,#0x58+var_30]
E80EE:  LSLS            R0, R0, #0x1F
E80F0:  BEQ             loc_E80F8
E80F2:  LDR             R0, [SP,#0x58+var_28]; void *
E80F4:  BLX             j__ZdlPv; operator delete(void *)
E80F8:  CMP.W           R8, #0
E80FC:  BEQ             loc_E8162
E80FE:  MOV             R0, R8
E8100:  BL              sub_EB1CC
E8104:  MOV             R1, R0; s
E8106:  ADD             R0, SP, #0x58+var_30; int
E8108:  BL              sub_DC6DC
E810C:  LDR             R2, =(aExpected - 0xE8112); "; expected " ...
E810E:  ADD             R2, PC; "; expected "
E8110:  ADD             R0, SP, #0x58+var_30; int
E8112:  MOVS            R1, #0; int
E8114:  MOVS            R5, #0
E8116:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
E811A:  VLDR            D16, [R0]
E811E:  ADD             R3, SP, #0x58+var_20
E8120:  LDR             R1, [R0,#8]
E8122:  STR             R1, [SP,#0x58+var_18]
E8124:  VSTR            D16, [SP,#0x58+var_20]
E8128:  STRD.W          R5, R5, [R0]
E812C:  STR             R5, [R0,#8]
E812E:  LDRB.W          R0, [SP,#0x58+var_20]
E8132:  LDRD.W          R2, R1, [SP,#0x58+var_20+4]
E8136:  ANDS.W          R6, R0, #1
E813A:  ITT EQ
E813C:  ADDEQ           R1, R3, #1
E813E:  LSREQ           R2, R0, #1
E8140:  MOV             R0, R4
E8142:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
E8146:  LDRB.W          R0, [SP,#0x58+var_20]
E814A:  LSLS            R0, R0, #0x1F
E814C:  ITT NE
E814E:  LDRNE           R0, [SP,#0x58+var_18]; void *
E8150:  BLXNE           j__ZdlPv; operator delete(void *)
E8154:  LDRB.W          R0, [SP,#0x58+var_30]
E8158:  LSLS            R0, R0, #0x1F
E815A:  ITT NE
E815C:  LDRNE           R0, [SP,#0x58+var_28]; void *
E815E:  BLXNE           j__ZdlPv; operator delete(void *)
E8162:  ADD             SP, SP, #0x48 ; 'H'
E8164:  POP.W           {R8}
E8168:  POP             {R4-R7,PC}
