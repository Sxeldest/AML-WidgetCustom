; =========================================================
; Game Engine Function: sub_119ED0
; Address            : 0x119ED0 - 0x11A030
; =========================================================

119ED0:  PUSH            {R4-R7,LR}
119ED2:  ADD             R7, SP, #0xC
119ED4:  PUSH.W          {R8-R11}
119ED8:  SUB             SP, SP, #0x44
119EDA:  MOV             R9, R0
119EDC:  MOV             R10, R1
119EDE:  MOV             R0, R1; s
119EE0:  MOVS            R1, #0x5C ; '\'; c
119EE2:  MOV             R8, R2
119EE4:  BLX             strchr
119EE8:  MOV             R4, R10
119EEA:  CMP             R0, #0
119EEC:  IT NE
119EEE:  ADDNE           R4, R0, #1
119EF0:  MOV             R0, R10; s
119EF2:  MOVS            R1, #0x2E ; '.'; c
119EF4:  BLX             strrchr
119EF8:  CBZ             R0, loc_119F16
119EFA:  SUBS            R5, R0, R4
119EFC:  MOV             R6, R0
119EFE:  CMN.W           R5, #0x10
119F02:  BCS.W           loc_11A02A
119F06:  CMP             R5, #0xA
119F08:  BHI             loc_119F20
119F0A:  LSLS            R0, R5, #1
119F0C:  STRB.W          R0, [SP,#0x60+var_28]
119F10:  ADD             R0, SP, #0x60+var_28
119F12:  ADDS            R0, #1
119F14:  B               loc_119F42
119F16:  ADD             R0, SP, #0x60+var_28; int
119F18:  MOV             R1, R4; s
119F1A:  BL              sub_DC6DC
119F1E:  B               loc_119F4A
119F20:  ADD.W           R0, R5, #0x10
119F24:  BIC.W           R11, R0, #0xF
119F28:  MOV             R0, R11; unsigned int
119F2A:  BLX             j__Znwj; operator new(uint)
119F2E:  ADD.W           R1, R11, #1
119F32:  STRD.W          R5, R0, [SP,#0x60+var_28+4]
119F36:  STR             R1, [SP,#0x60+var_28]
119F38:  B               loc_119F42
119F3A:  LDRB.W          R1, [R4],#1
119F3E:  STRB.W          R1, [R0],#1
119F42:  CMP             R4, R6
119F44:  BNE             loc_119F3A
119F46:  MOVS            R1, #0
119F48:  STRB            R1, [R0]
119F4A:  MOV             R4, R9
119F4C:  LDRB.W          R0, [R4,#0x28]!
119F50:  LSLS            R0, R0, #0x1F
119F52:  ITT NE
119F54:  LDRNE.W         R0, [R9,#0x30]; void *
119F58:  BLXNE           j__ZdlPv; operator delete(void *)
119F5C:  VLDR            D16, [SP,#0x60+var_28]
119F60:  MOVS            R1, #1
119F62:  LDR             R0, [SP,#0x60+var_20]
119F64:  STR             R0, [R4,#8]
119F66:  VSTR            D16, [R4]
119F6A:  ADD.W           R4, R9, #0x28 ; '('
119F6E:  MOV             R0, R4
119F70:  BL              sub_11A084
119F74:  BL              sub_F97EC
119F78:  STR             R0, [SP,#0x60+var_48]
119F7A:  ADD             R0, SP, #0x60+var_44; int
119F7C:  ADD             R1, SP, #0x60+var_48
119F7E:  MOVS            R2, #0
119F80:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IPKcvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char const*,void>(char const* const&,std::__fs::filesystem::path::format)
119F84:  LDR             R1, =(off_22BF84 - 0x119F8A); "modloader" ...
119F86:  ADD             R1, PC; off_22BF84
119F88:  ADD             R0, SP, #0x60+var_54; int
119F8A:  MOVS            R2, #0
119F8C:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IPKcvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char const*,void>(char const* const&,std::__fs::filesystem::path::format)
119F90:  ADD             R0, SP, #0x60+var_38
119F92:  ADD             R1, SP, #0x60+var_44
119F94:  ADD             R2, SP, #0x60+var_54
119F96:  BL              sub_F1DD4
119F9A:  MOV             R0, SP; int
119F9C:  MOV             R1, R4
119F9E:  MOVS            R2, #0
119FA0:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<std::string,void>(std::string const&,std::__fs::filesystem::path::format)
119FA4:  ADD             R0, SP, #0x60+var_28
119FA6:  ADD             R1, SP, #0x60+var_38
119FA8:  MOV             R2, SP
119FAA:  BL              sub_F1DD4
119FAE:  LDRB.W          R0, [SP,#0x60+var_60]
119FB2:  LSLS            R0, R0, #0x1F
119FB4:  ITT NE
119FB6:  LDRNE           R0, [SP,#0x60+var_58]; void *
119FB8:  BLXNE           j__ZdlPv; operator delete(void *)
119FBC:  LDRB.W          R0, [SP,#0x60+var_38]
119FC0:  LSLS            R0, R0, #0x1F
119FC2:  ITT NE
119FC4:  LDRNE           R0, [SP,#0x60+var_30]; void *
119FC6:  BLXNE           j__ZdlPv; operator delete(void *)
119FCA:  LDRB.W          R0, [SP,#0x60+var_54]
119FCE:  LSLS            R0, R0, #0x1F
119FD0:  ITT NE
119FD2:  LDRNE           R0, [SP,#0x60+var_4C]; void *
119FD4:  BLXNE           j__ZdlPv; operator delete(void *)
119FD8:  LDRB.W          R0, [SP,#0x60+var_44]
119FDC:  LSLS            R0, R0, #0x1F
119FDE:  ITT NE
119FE0:  LDRNE           R0, [SP,#0x60+var_3C]; void *
119FE2:  BLXNE           j__ZdlPv; operator delete(void *)
119FE6:  ADD             R0, SP, #0x60+var_38; this
119FE8:  ADD             R1, SP, #0x60+var_28; std::__fs::filesystem::path *
119FEA:  MOVS            R2, #0; std::error_code *
119FEC:  BLX             j__ZNSt6__ndk14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__status(std::__fs::filesystem::path const&,std::error_code *)
119FF0:  LDRB.W          R0, [SP,#0x60+var_38]
119FF4:  SUBS            R0, #1
119FF6:  CMP             R0, #0xFE
119FF8:  BCC             loc_11A002
119FFA:  ADD             R0, SP, #0x60+var_28; this
119FFC:  MOVS            R1, #0; std::__fs::filesystem::path *
119FFE:  BLX             j__ZNSt6__ndk14__fs10filesystem20__create_directoriesERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__create_directories(std::__fs::filesystem::path const&,std::error_code *)
11A002:  MOV             R0, R4
11A004:  MOVS            R1, #0
11A006:  BL              sub_11A084
11A00A:  LDR.W           R2, [R9]
11A00E:  MOV             R0, R10
11A010:  MOV             R1, R8
11A012:  BLX             R2
11A014:  LDRB.W          R0, [SP,#0x60+var_28]
11A018:  LSLS            R0, R0, #0x1F
11A01A:  ITT NE
11A01C:  LDRNE           R0, [SP,#0x60+var_20]; void *
11A01E:  BLXNE           j__ZdlPv; operator delete(void *)
11A022:  ADD             SP, SP, #0x44 ; 'D'
11A024:  POP.W           {R8-R11}
11A028:  POP             {R4-R7,PC}
11A02A:  ADD             R0, SP, #0x60+var_28
11A02C:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
