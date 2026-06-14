; =========================================================
; Game Engine Function: sub_E7CE4
; Address            : 0xE7CE4 - 0xE7E84
; =========================================================

E7CE4:  PUSH            {R4-R7,LR}
E7CE6:  ADD             R7, SP, #0xC
E7CE8:  PUSH.W          {R8,R9,R11}
E7CEC:  SUB             SP, SP, #0x80
E7CEE:  MOV             R8, R1
E7CF0:  LDR             R1, =(aParseError - 0xE7CFA); "parse_error" ...
E7CF2:  ADD             R6, SP, #0x98+var_80
E7CF4:  MOV             R4, R0
E7CF6:  ADD             R1, PC; "parse_error"
E7CF8:  MOV             R5, R3
E7CFA:  MOV             R0, R6; int
E7CFC:  MOV             R9, R2
E7CFE:  BL              sub_DC6DC
E7D02:  ADD             R0, SP, #0x98+var_74
E7D04:  MOV             R1, R6
E7D06:  MOV             R2, R8
E7D08:  BL              sub_E5F8C
E7D0C:  LDR             R1, =(aParseError_0 - 0xE7D12); "parse error" ...
E7D0E:  ADD             R1, PC; "parse error"
E7D10:  ADD             R0, SP, #0x98+var_74; int
E7D12:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
E7D16:  VLDR            D16, [R0]
E7D1A:  LDR             R1, [R0,#8]
E7D1C:  STR             R1, [SP,#0x98+var_60]
E7D1E:  MOVS            R1, #0
E7D20:  VSTR            D16, [SP,#0x98+var_68]
E7D24:  STRD.W          R1, R1, [R0]
E7D28:  STR             R1, [R0,#8]
E7D2A:  ADD             R6, SP, #0x98+var_8C
E7D2C:  MOV             R1, R9
E7D2E:  MOV             R0, R6
E7D30:  BL              sub_EB0B0
E7D34:  LDRB.W          R0, [SP,#0x98+var_8C]
E7D38:  LDRD.W          R2, R1, [SP,#0x98+var_88]
E7D3C:  ANDS.W          R3, R0, #1
E7D40:  ITT EQ
E7D42:  ADDEQ           R1, R6, #1
E7D44:  LSREQ           R2, R0, #1
E7D46:  ADD             R0, SP, #0x98+var_68
E7D48:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
E7D4C:  VLDR            D16, [R0]
E7D50:  MOVS            R6, #0
E7D52:  LDR             R2, [R0,#8]
E7D54:  LDR             R1, =(asc_8B87F - 0xE7D5C); ": " ...
E7D56:  STR             R2, [SP,#0x98+var_50]
E7D58:  ADD             R1, PC; ": "
E7D5A:  VSTR            D16, [SP,#0x98+var_58]
E7D5E:  STRD.W          R6, R6, [R0]
E7D62:  STR             R6, [R0,#8]
E7D64:  ADD             R0, SP, #0x98+var_58; int
E7D66:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
E7D6A:  VLDR            D16, [R0]
E7D6E:  LDR             R2, [R0,#8]
E7D70:  LDR             R1, =(byte_8F794 - 0xE7D78)
E7D72:  STR             R2, [SP,#0x98+var_40]
E7D74:  ADD             R1, PC; byte_8F794 ; s
E7D76:  VSTR            D16, [SP,#0x98+var_48]
E7D7A:  STRD.W          R6, R6, [R0]
E7D7E:  STR             R6, [R0,#8]
E7D80:  MOV             R0, SP; int
E7D82:  BL              sub_DC6DC
E7D86:  LDRB.W          R3, [SP,#0x98+var_98]
E7D8A:  LDRD.W          R2, R1, [SP,#0x98+var_94]
E7D8E:  ANDS.W          R6, R3, #1
E7D92:  ITT EQ
E7D94:  ADDEQ           R1, R0, #1
E7D96:  LSREQ           R2, R3, #1
E7D98:  ADD             R0, SP, #0x98+var_48
E7D9A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
E7D9E:  VLDR            D16, [R0]
E7DA2:  MOVS            R6, #0
E7DA4:  LDR             R1, [R0,#8]
E7DA6:  STR             R1, [SP,#0x98+var_30]
E7DA8:  VSTR            D16, [SP,#0x98+var_38]
E7DAC:  STRD.W          R6, R6, [R0]
E7DB0:  STR             R6, [R0,#8]
E7DB2:  LDRB            R0, [R5]
E7DB4:  LDRD.W          R2, R1, [R5,#4]
E7DB8:  ANDS.W          R3, R0, #1
E7DBC:  ITT EQ
E7DBE:  ADDEQ           R1, R5, #1
E7DC0:  LSREQ           R2, R0, #1
E7DC2:  ADD             R0, SP, #0x98+var_38
E7DC4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
E7DC8:  VLDR            D16, [R0]
E7DCC:  LDR             R1, [R0,#8]
E7DCE:  STR             R1, [SP,#0x98+var_20]
E7DD0:  VSTR            D16, [SP,#0x98+var_28]
E7DD4:  STRD.W          R6, R6, [R0]
E7DD8:  STR             R6, [R0,#8]
E7DDA:  LDRB.W          R0, [SP,#0x98+var_38]
E7DDE:  LSLS            R0, R0, #0x1F
E7DE0:  ITT NE
E7DE2:  LDRNE           R0, [SP,#0x98+var_30]; void *
E7DE4:  BLXNE           j__ZdlPv; operator delete(void *)
E7DE8:  LDRB.W          R0, [SP,#0x98+var_98]
E7DEC:  LSLS            R0, R0, #0x1F
E7DEE:  ITT NE
E7DF0:  LDRNE           R0, [SP,#0x98+var_90]; void *
E7DF2:  BLXNE           j__ZdlPv; operator delete(void *)
E7DF6:  LDRB.W          R0, [SP,#0x98+var_48]
E7DFA:  LSLS            R0, R0, #0x1F
E7DFC:  ITT NE
E7DFE:  LDRNE           R0, [SP,#0x98+var_40]; void *
E7E00:  BLXNE           j__ZdlPv; operator delete(void *)
E7E04:  LDRB.W          R0, [SP,#0x98+var_58]
E7E08:  LSLS            R0, R0, #0x1F
E7E0A:  ITT NE
E7E0C:  LDRNE           R0, [SP,#0x98+var_50]; void *
E7E0E:  BLXNE           j__ZdlPv; operator delete(void *)
E7E12:  LDRB.W          R0, [SP,#0x98+var_8C]
E7E16:  LSLS            R0, R0, #0x1F
E7E18:  ITT NE
E7E1A:  LDRNE           R0, [SP,#0x98+var_84]; void *
E7E1C:  BLXNE           j__ZdlPv; operator delete(void *)
E7E20:  LDRB.W          R0, [SP,#0x98+var_68]
E7E24:  LSLS            R0, R0, #0x1F
E7E26:  ITT NE
E7E28:  LDRNE           R0, [SP,#0x98+var_60]; void *
E7E2A:  BLXNE           j__ZdlPv; operator delete(void *)
E7E2E:  LDRB.W          R0, [SP,#0x98+var_74]
E7E32:  LSLS            R0, R0, #0x1F
E7E34:  ITT NE
E7E36:  LDRNE           R0, [SP,#0x98+var_6C]; void *
E7E38:  BLXNE           j__ZdlPv; operator delete(void *)
E7E3C:  LDRB.W          R0, [SP,#0x98+var_80]
E7E40:  LSLS            R0, R0, #0x1F
E7E42:  ITT NE
E7E44:  LDRNE           R0, [SP,#0x98+var_78]; void *
E7E46:  BLXNE           j__ZdlPv; operator delete(void *)
E7E4A:  LDRB.W          R0, [SP,#0x98+var_28]
E7E4E:  ADD             R1, SP, #0x98+var_28
E7E50:  LDR.W           R5, [R9]
E7E54:  LDR             R2, [SP,#0x98+var_20]
E7E56:  LSLS            R0, R0, #0x1F
E7E58:  IT EQ
E7E5A:  ADDEQ           R2, R1, #1; char *
E7E5C:  MOV             R0, R4; int
E7E5E:  MOV             R1, R8; int
E7E60:  BL              sub_E60A8
E7E64:  LDR             R0, =(_ZTVN8nlohmann6detail11parse_errorE - 0xE7E6E); `vtable for'nlohmann::detail::parse_error ...
E7E66:  LDRB.W          R1, [SP,#0x98+var_28]
E7E6A:  ADD             R0, PC; `vtable for'nlohmann::detail::parse_error
E7E6C:  STR             R5, [R4,#0x10]
E7E6E:  ADDS            R0, #8
E7E70:  STR             R0, [R4]
E7E72:  LSLS            R0, R1, #0x1F
E7E74:  ITT NE
E7E76:  LDRNE           R0, [SP,#0x98+var_20]; void *
E7E78:  BLXNE           j__ZdlPv; operator delete(void *)
E7E7C:  ADD             SP, SP, #0x80
E7E7E:  POP.W           {R8,R9,R11}
E7E82:  POP             {R4-R7,PC}
