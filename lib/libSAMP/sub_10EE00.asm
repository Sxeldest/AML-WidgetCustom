; =========================================================
; Game Engine Function: sub_10EE00
; Address            : 0x10EE00 - 0x10F438
; =========================================================

10EE00:  PUSH            {R4-R7,LR}
10EE02:  ADD             R7, SP, #0xC
10EE04:  PUSH.W          {R8-R11}
10EE08:  SUB             SP, SP, #0xA4
10EE0A:  MOV             R11, R0
10EE0C:  LDRB            R0, [R0]
10EE0E:  MOV             R8, R1
10EE10:  CBZ             R0, loc_10EE30
10EE12:  LDR.W           R5, [R8,#0x14]
10EE16:  MOV             R9, R3
10EE18:  STR             R2, [SP,#0xC0+var_B4]
10EE1A:  CBZ             R5, loc_10EE3E
10EE1C:  LDRD.W          R0, R1, [R5,#0x10]; x
10EE20:  EOR.W           R0, R0, #0x80000000; y
10EE24:  BLX             atan2f
10EE28:  ADD.W           R6, R5, #0x30 ; '0'
10EE2C:  MOV             R10, R0
10EE2E:  B               loc_10EE46
10EE30:  MOV             R0, R8
10EE32:  ADD             SP, SP, #0xA4
10EE34:  POP.W           {R8-R11}
10EE38:  POP.W           {R4-R7,LR}
10EE3C:  BX              R2
10EE3E:  LDR.W           R10, [R8,#0x10]
10EE42:  ADD.W           R6, R8, #4
10EE46:  BL              sub_1082E4
10EE4A:  MOV             R5, R0
10EE4C:  BL              sub_1082E4
10EE50:  LDRB.W          R0, [R0,#0x485]
10EE54:  LSLS            R0, R0, #0x1F
10EE56:  BEQ             loc_10EE60
10EE58:  BL              sub_1082E4
10EE5C:  LDR.W           R5, [R0,#0x590]
10EE60:  LDR             R0, [R5,#0x14]
10EE62:  VLDR            S2, [R6,#4]
10EE66:  VLDR            S0, [R6]
10EE6A:  VLDR            S8, [R0,#0x34]
10EE6E:  VLDR            S6, [R0,#0x30]
10EE72:  VSUB.F32        S2, S8, S2
10EE76:  VLDR            S4, [R6,#8]
10EE7A:  VSUB.F32        S0, S6, S0
10EE7E:  VLDR            S10, [R0,#0x38]
10EE82:  VLDR            S6, [R11,#4]
10EE86:  VSUB.F32        S4, S10, S4
10EE8A:  LDR             R1, [SP,#0xC0+var_B4]
10EE8C:  VCVT.F64.F32    D16, S6
10EE90:  VMUL.F32        S2, S2, S2
10EE94:  VMUL.F64        D16, D16, D16
10EE98:  VMLA.F32        S2, S0, S0
10EE9C:  VMLA.F32        S2, S4, S4
10EEA0:  VCVT.F64.F32    D17, S2
10EEA4:  VCMP.F64        D16, D17
10EEA8:  VMRS            APSR_nzcv, FPSCR
10EEAC:  BPL             loc_10EEBC
10EEAE:  MOV             R0, R8
10EEB0:  ADD             SP, SP, #0xA4
10EEB2:  POP.W           {R8-R11}
10EEB6:  POP.W           {R4-R7,LR}
10EEBA:  BX              R1
10EEBC:  LDR             R0, =(off_23494C - 0x10EECC)
10EEBE:  MOV             R1, #0x5C5799
10EEC6:  MOVS            R5, #0
10EEC8:  ADD             R0, PC; off_23494C
10EECA:  MOVS            R2, #0
10EECC:  MOVS            R3, #0
10EECE:  LDR             R0, [R0]; dword_23DF24
10EED0:  LDR             R0, [R0]
10EED2:  STRD.W          R5, R5, [SP,#0xC0+var_C0]
10EED6:  ADDS            R4, R0, R1
10EED8:  ADD             R1, SP, #0xC0+var_28
10EEDA:  MOV             R0, R6
10EEDC:  BLX             R4
10EEDE:  VMOV.F32        S0, #1.0
10EEE2:  VLDR            S2, [SP,#0xC0+var_20]
10EEE6:  VCMP.F32        S2, S0
10EEEA:  VMRS            APSR_nzcv, FPSCR
10EEEE:  BPL             loc_10EEF8
10EEF0:  LDR             R1, [SP,#0xC0+var_B4]
10EEF2:  MOV             R0, R8
10EEF4:  BLX             R1
10EEF6:  B               loc_10F2F8
10EEF8:  LDRB.W          R0, [R8,#0x3A]
10EEFC:  STRD.W          R5, R5, [SP,#0xC0+var_38]
10EF00:  AND.W           R1, R0, #7; int
10EF04:  STR             R5, [SP,#0xC0+var_30]
10EF06:  SUBS            R0, R1, #1; switch 4 cases
10EF08:  CMP             R0, #3
10EF0A:  BHI             def_10EF0E; jumptable 0010EF0E default case
10EF0C:  MOV             R4, R10
10EF0E:  TBH.W           [PC,R0,LSL#1]; switch jump
10EF12:  DCW 4; jump table for switch statement
10EF14:  DCW 0x207
10EF16:  DCW 0x22E
10EF18:  DCW 0x24C
10EF1A:  LDR             R1, =(aMap - 0x10EF20); jumptable 0010EF0E case 1
10EF1C:  ADD             R1, PC; "Map: "
10EF1E:  ADD             R0, SP, #0xC0+var_38; int
10EF20:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
10EF24:  B               loc_10EFC8
10EF26:  ALIGN 4
10EF28:  DCD off_23494C - 0x10EECC
10EF2C:  DCD aMap - 0x10EF20
10EF30:  ADD             R0, SP, #0xC0+var_48; jumptable 0010EF0E default case
10EF32:  BLX             j__ZNSt6__ndk19to_stringEi; std::to_string(int)
10EF36:  LDR             R2, =(aType - 0x10EF3C); "Type " ...
10EF38:  ADD             R2, PC; "Type "
10EF3A:  ADD             R0, SP, #0xC0+var_48; int
10EF3C:  MOVS            R1, #0; int
10EF3E:  MOVS            R5, #0
10EF40:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
10EF44:  VLDR            D16, [R0]
10EF48:  LDR             R2, [R0,#8]
10EF4A:  LDR             R1, =(asc_8B87F - 0x10EF52); ": " ...
10EF4C:  STR             R2, [SP,#0xC0+var_A8]
10EF4E:  ADD             R1, PC; ": "
10EF50:  VSTR            D16, [SP,#0xC0+var_B0]
10EF54:  STRD.W          R5, R5, [R0]
10EF58:  STR             R5, [R0,#8]
10EF5A:  ADD             R0, SP, #0xC0+var_B0; int
10EF5C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
10EF60:  MOVS            R3, #0
10EF62:  LDR             R5, [R0,#8]
10EF64:  LDRB            R4, [R0]
10EF66:  LDRB.W          R12, [R0,#1]
10EF6A:  LDRH            R1, [R0,#6]
10EF6C:  LDR.W           R2, [R0,#2]
10EF70:  STRD.W          R3, R3, [R0]
10EF74:  STR             R3, [R0,#8]
10EF76:  LDRB.W          R0, [SP,#0xC0+var_38]
10EF7A:  STR             R2, [SP,#0xC0+var_58]
10EF7C:  STRH.W          R1, [SP,#0xC0+var_58+4]
10EF80:  LSLS            R0, R0, #0x1F
10EF82:  BEQ             loc_10EF92
10EF84:  LDR             R0, [SP,#0xC0+var_30]; void *
10EF86:  STR.W           R12, [SP,#0xC0+var_B8]
10EF8A:  BLX             j__ZdlPv; operator delete(void *)
10EF8E:  LDR.W           R12, [SP,#0xC0+var_B8]
10EF92:  LDRB.W          R0, [SP,#0xC0+var_B0]
10EF96:  LDRH.W          R1, [SP,#0xC0+var_58+4]
10EF9A:  LDR             R2, [SP,#0xC0+var_58]
10EF9C:  LSLS            R0, R0, #0x1F
10EF9E:  STRB.W          R12, [SP,#0xC0+var_38+1]
10EFA2:  STRB.W          R4, [SP,#0xC0+var_38]
10EFA6:  STR.W           R2, [SP,#0xC0+var_38+2]
10EFAA:  STRH.W          R1, [SP,#0xC0+var_38+6]
10EFAE:  STR             R5, [SP,#0xC0+var_30]
10EFB0:  ITT NE
10EFB2:  LDRNE           R0, [SP,#0xC0+var_A8]; void *
10EFB4:  BLXNE           j__ZdlPv; operator delete(void *)
10EFB8:  LDRB.W          R0, [SP,#0xC0+var_48]
10EFBC:  MOV             R4, R10
10EFBE:  LSLS            R0, R0, #0x1F
10EFC0:  BEQ             loc_10EFC8
10EFC2:  LDR             R0, [SP,#0xC0+var_40]; void *
10EFC4:  BLX             j__ZdlPv; operator delete(void *)
10EFC8:  MOVW            R10, #0xFFFF
10EFCC:  LDRH.W          R1, [R8,#0x26]; int
10EFD0:  ADD             R0, SP, #0xC0+var_68; this
10EFD2:  BLX             j__ZNSt6__ndk19to_stringEi; std::to_string(int)
10EFD6:  LDR             R1, =(aSampId - 0x10EFDC); ", samp id: " ...
10EFD8:  ADD             R1, PC; ", samp id: "
10EFDA:  ADD             R0, SP, #0xC0+var_68; int
10EFDC:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
10EFE0:  VLDR            D16, [R0]
10EFE4:  LDR             R1, [R0,#8]
10EFE6:  STR             R1, [SP,#0xC0+var_50]
10EFE8:  MOVS            R1, #0
10EFEA:  VSTR            D16, [SP,#0xC0+var_58]
10EFEE:  STRD.W          R1, R1, [R0]
10EFF2:  STR             R1, [R0,#8]
10EFF4:  ADD             R5, SP, #0xC0+var_78
10EFF6:  SXTH.W          R1, R10; int
10EFFA:  MOV             R0, R5; this
10EFFC:  BLX             j__ZNSt6__ndk19to_stringEi; std::to_string(int)
10F000:  LDRB.W          R0, [SP,#0xC0+var_78]
10F004:  LDRD.W          R2, R1, [SP,#0xC0+var_78+4]
10F008:  ANDS.W          R3, R0, #1
10F00C:  ITT EQ
10F00E:  ADDEQ           R1, R5, #1
10F010:  LSREQ           R2, R0, #1
10F012:  ADD             R0, SP, #0xC0+var_58
10F014:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
10F018:  VLDR            D16, [R0]
10F01C:  MOVS            R5, #0
10F01E:  LDR             R2, [R0,#8]
10F020:  LDR             R1, =(asc_8D501 - 0x10F028); "\n" ...
10F022:  STR             R2, [SP,#0xC0+var_40]
10F024:  ADD             R1, PC; "\n"
10F026:  VSTR            D16, [SP,#0xC0+var_48]
10F02A:  STRD.W          R5, R5, [R0]
10F02E:  STR             R5, [R0,#8]
10F030:  ADD             R0, SP, #0xC0+var_48; int
10F032:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
10F036:  VLDR            D16, [R0]
10F03A:  ADD             R3, SP, #0xC0+var_B0
10F03C:  LDR             R1, [R0,#8]
10F03E:  ADD.W           R10, R3, #1
10F042:  STR             R1, [SP,#0xC0+var_A8]
10F044:  VSTR            D16, [SP,#0xC0+var_B0]
10F048:  STRD.W          R5, R5, [R0]
10F04C:  STR             R5, [R0,#8]
10F04E:  LDRB.W          R0, [SP,#0xC0+var_B0]
10F052:  LDRD.W          R2, R1, [SP,#0xC0+var_B0+4]
10F056:  ANDS.W          R3, R0, #1
10F05A:  ITT EQ
10F05C:  MOVEQ           R1, R10
10F05E:  LSREQ           R2, R0, #1
10F060:  ADD             R0, SP, #0xC0+var_38
10F062:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
10F066:  LDRB.W          R0, [SP,#0xC0+var_B0]
10F06A:  LSLS            R0, R0, #0x1F
10F06C:  ITT NE
10F06E:  LDRNE           R0, [SP,#0xC0+var_A8]; void *
10F070:  BLXNE           j__ZdlPv; operator delete(void *)
10F074:  LDRB.W          R0, [SP,#0xC0+var_48]
10F078:  LSLS            R0, R0, #0x1F
10F07A:  ITT NE
10F07C:  LDRNE           R0, [SP,#0xC0+var_40]; void *
10F07E:  BLXNE           j__ZdlPv; operator delete(void *)
10F082:  LDRB.W          R0, [SP,#0xC0+var_78]
10F086:  LSLS            R0, R0, #0x1F
10F088:  ITT NE
10F08A:  LDRNE           R0, [SP,#0xC0+var_70]; void *
10F08C:  BLXNE           j__ZdlPv; operator delete(void *)
10F090:  LDRB.W          R0, [SP,#0xC0+var_58]
10F094:  LSLS            R0, R0, #0x1F
10F096:  ITT NE
10F098:  LDRNE           R0, [SP,#0xC0+var_50]; void *
10F09A:  BLXNE           j__ZdlPv; operator delete(void *)
10F09E:  LDRB.W          R0, [SP,#0xC0+var_68]
10F0A2:  LSLS            R0, R0, #0x1F
10F0A4:  ITT NE
10F0A6:  LDRNE           R0, [SP,#0xC0+var_60]; void *
10F0A8:  BLXNE           j__ZdlPv; operator delete(void *)
10F0AC:  LDRB.W          R0, [R9]
10F0B0:  LDR.W           R1, [R9,#4]
10F0B4:  LSLS            R2, R0, #0x1F
10F0B6:  IT EQ
10F0B8:  LSREQ           R1, R0, #1
10F0BA:  CBZ             R1, loc_10F12E
10F0BC:  LDR             R2, =(aVtableCaller - 0x10F0C2); "VTable (caller): " ...
10F0BE:  ADD             R2, PC; "VTable (caller): "
10F0C0:  MOV             R0, R9; int
10F0C2:  MOVS            R1, #0; int
10F0C4:  MOVS            R5, #0
10F0C6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
10F0CA:  VLDR            D16, [R0]
10F0CE:  LDR             R2, [R0,#8]
10F0D0:  LDR             R1, =(asc_8D501 - 0x10F0D8); "\n" ...
10F0D2:  STR             R2, [SP,#0xC0+var_40]
10F0D4:  ADD             R1, PC; "\n"
10F0D6:  VSTR            D16, [SP,#0xC0+var_48]
10F0DA:  STRD.W          R5, R5, [R0]
10F0DE:  STR             R5, [R0,#8]
10F0E0:  ADD             R0, SP, #0xC0+var_48; int
10F0E2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
10F0E6:  VLDR            D16, [R0]
10F0EA:  LDR             R1, [R0,#8]
10F0EC:  STR             R1, [SP,#0xC0+var_A8]
10F0EE:  MOVS            R1, #0
10F0F0:  VSTR            D16, [SP,#0xC0+var_B0]
10F0F4:  STRD.W          R1, R1, [R0]
10F0F8:  STR             R1, [R0,#8]
10F0FA:  LDRB.W          R0, [SP,#0xC0+var_B0]
10F0FE:  LDRD.W          R2, R1, [SP,#0xC0+var_B0+4]
10F102:  ANDS.W          R3, R0, #1
10F106:  ITT EQ
10F108:  MOVEQ           R1, R10
10F10A:  LSREQ           R2, R0, #1
10F10C:  ADD             R0, SP, #0xC0+var_38
10F10E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
10F112:  LDRB.W          R0, [SP,#0xC0+var_B0]
10F116:  LSLS            R0, R0, #0x1F
10F118:  ITT NE
10F11A:  LDRNE           R0, [SP,#0xC0+var_A8]; void *
10F11C:  BLXNE           j__ZdlPv; operator delete(void *)
10F120:  LDRB.W          R0, [SP,#0xC0+var_48]
10F124:  LSLS            R0, R0, #0x1F
10F126:  ITT NE
10F128:  LDRNE           R0, [SP,#0xC0+var_40]; void *
10F12A:  BLXNE           j__ZdlPv; operator delete(void *)
10F12E:  LDR             R1, [R6]; float
10F130:  ADD             R0, SP, #0xC0+var_84; this
10F132:  BLX             j__ZNSt6__ndk19to_stringEf; std::to_string(float)
10F136:  LDR             R1, =(asc_8F279 - 0x10F13C); ", " ...
10F138:  ADD             R1, PC; ", "
10F13A:  ADD             R0, SP, #0xC0+var_84; int
10F13C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
10F140:  VLDR            D16, [R0]
10F144:  LDR             R1, [R0,#8]
10F146:  STR             R1, [SP,#0xC0+var_70]
10F148:  MOVS            R1, #0
10F14A:  VSTR            D16, [SP,#0xC0+var_78]
10F14E:  STRD.W          R1, R1, [R0]
10F152:  STR             R1, [R0,#8]
10F154:  LDR             R1, [R6,#4]; float
10F156:  ADD             R5, SP, #0xC0+var_90
10F158:  MOV             R0, R5; this
10F15A:  BLX             j__ZNSt6__ndk19to_stringEf; std::to_string(float)
10F15E:  LDRB.W          R0, [SP,#0xC0+var_90]
10F162:  LDRD.W          R2, R1, [SP,#0xC0+var_8C]
10F166:  ANDS.W          R3, R0, #1
10F16A:  ITT EQ
10F16C:  ADDEQ           R1, R5, #1
10F16E:  LSREQ           R2, R0, #1
10F170:  ADD             R0, SP, #0xC0+var_78
10F172:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
10F176:  VLDR            D16, [R0]
10F17A:  MOVS            R5, #0
10F17C:  LDR             R2, [R0,#8]
10F17E:  LDR             R1, =(asc_8F279 - 0x10F186); ", " ...
10F180:  STR             R2, [SP,#0xC0+var_60]
10F182:  ADD             R1, PC; ", "
10F184:  VSTR            D16, [SP,#0xC0+var_68]
10F188:  STRD.W          R5, R5, [R0]
10F18C:  STR             R5, [R0,#8]
10F18E:  ADD             R0, SP, #0xC0+var_68; int
10F190:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
10F194:  VLDR            D16, [R0]
10F198:  LDR             R1, [R0,#8]
10F19A:  STR             R1, [SP,#0xC0+var_50]
10F19C:  VSTR            D16, [SP,#0xC0+var_58]
10F1A0:  STRD.W          R5, R5, [R0]
10F1A4:  STR             R5, [R0,#8]
10F1A6:  LDR             R1, [R6,#8]; float
10F1A8:  ADD             R5, SP, #0xC0+var_9C
10F1AA:  MOV             R0, R5; this
10F1AC:  BLX             j__ZNSt6__ndk19to_stringEf; std::to_string(float)
10F1B0:  LDRB.W          R0, [SP,#0xC0+var_9C]
10F1B4:  LDRD.W          R2, R1, [SP,#0xC0+var_98]
10F1B8:  ANDS.W          R3, R0, #1
10F1BC:  ITT EQ
10F1BE:  ADDEQ           R1, R5, #1
10F1C0:  LSREQ           R2, R0, #1
10F1C2:  ADD             R0, SP, #0xC0+var_58
10F1C4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
10F1C8:  VLDR            D16, [R0]
10F1CC:  MOVS            R5, #0
10F1CE:  LDR             R2, [R0,#8]
10F1D0:  LDR             R1, =(asc_8D501 - 0x10F1D8); "\n" ...
10F1D2:  STR             R2, [SP,#0xC0+var_40]
10F1D4:  ADD             R1, PC; "\n"
10F1D6:  VSTR            D16, [SP,#0xC0+var_48]
10F1DA:  STRD.W          R5, R5, [R0]
10F1DE:  STR             R5, [R0,#8]
10F1E0:  ADD             R0, SP, #0xC0+var_48; int
10F1E2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
10F1E6:  VLDR            D16, [R0]
10F1EA:  LDR             R1, [R0,#8]
10F1EC:  STR             R1, [SP,#0xC0+var_A8]
10F1EE:  VSTR            D16, [SP,#0xC0+var_B0]
10F1F2:  STRD.W          R5, R5, [R0]
10F1F6:  STR             R5, [R0,#8]
10F1F8:  LDRB.W          R0, [SP,#0xC0+var_B0]
10F1FC:  LDRD.W          R2, R1, [SP,#0xC0+var_B0+4]
10F200:  ANDS.W          R3, R0, #1
10F204:  ITT EQ
10F206:  MOVEQ           R1, R10
10F208:  LSREQ           R2, R0, #1
10F20A:  ADD             R0, SP, #0xC0+var_38
10F20C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
10F210:  LDRB.W          R0, [SP,#0xC0+var_B0]
10F214:  LSLS            R0, R0, #0x1F
10F216:  ITT NE
10F218:  LDRNE           R0, [SP,#0xC0+var_A8]; void *
10F21A:  BLXNE           j__ZdlPv; operator delete(void *)
10F21E:  LDRB.W          R0, [SP,#0xC0+var_48]
10F222:  LSLS            R0, R0, #0x1F
10F224:  ITT NE
10F226:  LDRNE           R0, [SP,#0xC0+var_40]; void *
10F228:  BLXNE           j__ZdlPv; operator delete(void *)
10F22C:  LDRB.W          R0, [SP,#0xC0+var_9C]
10F230:  LSLS            R0, R0, #0x1F
10F232:  ITT NE
10F234:  LDRNE           R0, [SP,#0xC0+var_94]; void *
10F236:  BLXNE           j__ZdlPv; operator delete(void *)
10F23A:  LDRB.W          R0, [SP,#0xC0+var_58]
10F23E:  LSLS            R0, R0, #0x1F
10F240:  ITT NE
10F242:  LDRNE           R0, [SP,#0xC0+var_50]; void *
10F244:  BLXNE           j__ZdlPv; operator delete(void *)
10F248:  LDRB.W          R0, [SP,#0xC0+var_68]
10F24C:  LSLS            R0, R0, #0x1F
10F24E:  ITT NE
10F250:  LDRNE           R0, [SP,#0xC0+var_60]; void *
10F252:  BLXNE           j__ZdlPv; operator delete(void *)
10F256:  LDRB.W          R0, [SP,#0xC0+var_90]
10F25A:  LSLS            R0, R0, #0x1F
10F25C:  ITT NE
10F25E:  LDRNE           R0, [SP,#0xC0+var_88]; void *
10F260:  BLXNE           j__ZdlPv; operator delete(void *)
10F264:  LDRB.W          R0, [SP,#0xC0+var_78]
10F268:  LSLS            R0, R0, #0x1F
10F26A:  ITT NE
10F26C:  LDRNE           R0, [SP,#0xC0+var_70]; void *
10F26E:  BLXNE           j__ZdlPv; operator delete(void *)
10F272:  LDRB.W          R0, [SP,#0xC0+var_84]
10F276:  LSLS            R0, R0, #0x1F
10F278:  ITT NE
10F27A:  LDRNE           R0, [SP,#0xC0+var_7C]; void *
10F27C:  BLXNE           j__ZdlPv; operator delete(void *)
10F280:  ADD             R5, SP, #0xC0+var_B0
10F282:  MOV             R1, R4; float
10F284:  MOV             R0, R5; this
10F286:  BLX             j__ZNSt6__ndk19to_stringEf; std::to_string(float)
10F28A:  LDRB.W          R0, [SP,#0xC0+var_B0]
10F28E:  LDRD.W          R2, R1, [SP,#0xC0+var_B0+4]
10F292:  ANDS.W          R3, R0, #1
10F296:  ITT EQ
10F298:  ADDEQ           R1, R5, #1
10F29A:  LSREQ           R2, R0, #1
10F29C:  ADD             R0, SP, #0xC0+var_38
10F29E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
10F2A2:  LDRB.W          R0, [SP,#0xC0+var_B0]
10F2A6:  LSLS            R0, R0, #0x1F
10F2A8:  ITT NE
10F2AA:  LDRNE           R0, [SP,#0xC0+var_A8]; void *
10F2AC:  BLXNE           j__ZdlPv; operator delete(void *)
10F2B0:  LDRD.W          R0, R1, [SP,#0xC0+var_28]
10F2B4:  MOVS            R3, #0
10F2B6:  VLDR            D16, [SP,#0xC0+var_38]
10F2BA:  LDR             R2, [SP,#0xC0+var_30]
10F2BC:  STRD.W          R3, R3, [SP,#0xC0+var_38]
10F2C0:  STR             R3, [SP,#0xC0+var_30]
10F2C2:  STR             R2, [SP,#0xC0+var_A8]
10F2C4:  VSTR            D16, [SP,#0xC0+var_B0]
10F2C8:  STRD.W          R0, R1, [SP,#0xC0+var_A4]
10F2CC:  ADD.W           R0, R11, #8
10F2D0:  ADD             R1, SP, #0xC0+var_B0
10F2D2:  BL              sub_10F574
10F2D6:  LDRB.W          R0, [SP,#0xC0+var_B0]
10F2DA:  LSLS            R0, R0, #0x1F
10F2DC:  ITT NE
10F2DE:  LDRNE           R0, [SP,#0xC0+var_A8]; void *
10F2E0:  BLXNE           j__ZdlPv; operator delete(void *)
10F2E4:  LDR             R1, [SP,#0xC0+var_B4]
10F2E6:  MOV             R0, R8
10F2E8:  BLX             R1
10F2EA:  LDRB.W          R0, [SP,#0xC0+var_38]
10F2EE:  LSLS            R0, R0, #0x1F
10F2F0:  BEQ             loc_10F2F8
10F2F2:  LDR             R0, [SP,#0xC0+var_30]; void *
10F2F4:  BLX             j__ZdlPv; operator delete(void *)
10F2F8:  ADD             SP, SP, #0xA4
10F2FA:  POP.W           {R8-R11}
10F2FE:  POP             {R4-R7,PC}
10F300:  DCD aType - 0x10EF3C
10F304:  DCD asc_8B87F - 0x10EF52
10F308:  DCD aSampId - 0x10EFDC
10F30C:  DCD asc_8D501 - 0x10F028
10F310:  DCD aVtableCaller - 0x10F0C2
10F314:  DCD asc_8D501 - 0x10F0D8
10F318:  DCD asc_8F279 - 0x10F13C
10F31C:  DCD asc_8F279 - 0x10F186
10F320:  LDR             R1, =(aVehicle - 0x10F326); jumptable 0010EF0E case 2
10F322:  ADD             R1, PC; "Vehicle: "
10F324:  ADD             R0, SP, #0xC0+var_38; int
10F326:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
10F32A:  LDR             R0, =(off_23496C - 0x10F334)
10F32C:  MOVW            R10, #0xFFFF
10F330:  ADD             R0, PC; off_23496C
10F332:  LDR             R0, [R0]; dword_23DEF4
10F334:  LDR             R0, [R0]
10F336:  CMP             R0, #0
10F338:  BEQ.W           loc_10EFCC
10F33C:  LDR.W           R0, [R0,#0x3B0]
10F340:  LDR             R2, [R0,#4]
10F342:  CMP             R2, #0
10F344:  BEQ.W           loc_10EFCC
10F348:  MOVW            R0, #0xEA60
10F34C:  ADDS            R1, R2, R0
10F34E:  LDRD.W          R0, R1, [R1]
10F352:  CMP             R0, R1
10F354:  BEQ             loc_10F3DC
10F356:  MOV.W           R3, #0x1F40
10F35A:  LDR             R5, [R0]
10F35C:  ADD.W           R5, R2, R5,LSL#2
10F360:  LDR             R5, [R5,R3]
10F362:  CMP             R5, R8
10F364:  BEQ             loc_10F3DC
10F366:  ADDS            R0, #4
10F368:  CMP             R0, R1
10F36A:  BNE             loc_10F35A
10F36C:  B               loc_10EFCC
10F36E:  LDR             R1, =(aPed - 0x10F374); jumptable 0010EF0E case 3
10F370:  ADD             R1, PC; "Ped: "
10F372:  ADD             R0, SP, #0xC0+var_38; int
10F374:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
10F378:  LDR             R0, =(off_23496C - 0x10F382)
10F37A:  MOVW            R10, #0xFFFF
10F37E:  ADD             R0, PC; off_23496C
10F380:  LDR             R5, [R0]; dword_23DEF4
10F382:  LDR             R0, [R5]
10F384:  CMP             R0, #0
10F386:  BEQ.W           loc_10EFCC
10F38A:  LDR.W           R1, [R0,#0x3B0]
10F38E:  LDR             R0, [R1]
10F390:  CBZ             R0, loc_10F400
10F392:  ADD.W           R1, R0, #0x13A0
10F396:  LDR             R2, [R1,#0x1C]
10F398:  LDR             R2, [R2,#0x1C]
10F39A:  LDR             R2, [R2,#0x5C]
10F39C:  CMP             R2, R8
10F39E:  BEQ             loc_10F3E6
10F3A0:  MOV             R1, R8
10F3A2:  MOVS            R2, #1
10F3A4:  BL              sub_148F74
10F3A8:  B               loc_10F3E8
10F3AA:  LDR             R1, =(aObject_0 - 0x10F3B0); jumptable 0010EF0E case 4
10F3AC:  ADD             R1, PC; "Object: "
10F3AE:  ADD             R0, SP, #0xC0+var_38; int
10F3B0:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
10F3B4:  LDR             R0, =(off_23496C - 0x10F3BE)
10F3B6:  MOVW            R10, #0xFFFF
10F3BA:  ADD             R0, PC; off_23496C
10F3BC:  LDR             R0, [R0]; dword_23DEF4
10F3BE:  LDR             R0, [R0]
10F3C0:  CMP             R0, #0
10F3C2:  BEQ.W           loc_10EFCC
10F3C6:  LDR.W           R0, [R0,#0x3B0]
10F3CA:  LDR             R0, [R0,#0x10]
10F3CC:  CMP             R0, #0
10F3CE:  BEQ.W           loc_10EFCC
10F3D2:  MOV             R1, R8
10F3D4:  BL              sub_148684
10F3D8:  MOV             R10, R0
10F3DA:  B               loc_10EFCC
10F3DC:  CMP             R0, R1
10F3DE:  IT NE
10F3E0:  LDRNE.W         R10, [R0]
10F3E4:  B               loc_10EFCC
10F3E6:  LDRH            R0, [R1]
10F3E8:  CMP             R0, R10
10F3EA:  BEQ             loc_10F3FA
10F3EC:  LDR             R1, =(aPlayer - 0x10F3F2); "Player" ...
10F3EE:  ADD             R1, PC; "Player"
10F3F0:  MOV             R10, R0
10F3F2:  ADD             R0, SP, #0xC0+var_38; int
10F3F4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
10F3F8:  B               loc_10EFCC
10F3FA:  LDR             R0, [R5]
10F3FC:  LDR.W           R1, [R0,#0x3B0]
10F400:  LDR             R0, [R1,#0x1C]
10F402:  CMP             R0, #0
10F404:  BEQ.W           loc_10EFCC
10F408:  MOVW            R1, #0x1388
10F40C:  ADD             R0, R1
10F40E:  MOVS            R5, #0
10F410:  LDR.W           R1, [R0,R5,LSL#2]
10F414:  CMP             R1, R8
10F416:  BEQ             loc_10F422
10F418:  ADDS            R5, #1
10F41A:  CMP.W           R5, #0x3E8
10F41E:  BNE             loc_10F410
10F420:  B               loc_10EFCC
10F422:  UXTH            R0, R5
10F424:  CMP             R0, R10
10F426:  BEQ.W           loc_10EFCC
10F42A:  LDR             R1, =(aActor - 0x10F430); "Actor" ...
10F42C:  ADD             R1, PC; "Actor"
10F42E:  ADD             R0, SP, #0xC0+var_38; int
10F430:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
10F434:  MOV             R10, R5
10F436:  B               loc_10EFCC
