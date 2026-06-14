; =========================================================
; Game Engine Function: sub_EB0B0
; Address            : 0xEB0B0 - 0xEB180
; =========================================================

EB0B0:  PUSH            {R4-R7,LR}
EB0B2:  ADD             R7, SP, #0xC
EB0B4:  PUSH.W          {R8}
EB0B8:  SUB             SP, SP, #0x38
EB0BA:  MOV             R8, R0
EB0BC:  LDR             R0, [R1,#8]
EB0BE:  ADD             R6, SP, #0x48+var_3C
EB0C0:  MOV             R5, R1
EB0C2:  ADDS            R1, R0, #1; std::__itoa *
EB0C4:  MOV             R0, R6; this
EB0C6:  BLX             j__ZNSt6__ndk19to_stringEj; std::to_string(uint)
EB0CA:  LDR             R2, =(aAtLine - 0xEB0D0); " at line " ...
EB0CC:  ADD             R2, PC; " at line "
EB0CE:  MOV             R0, R6; int
EB0D0:  MOVS            R1, #0; int
EB0D2:  MOVS            R4, #0
EB0D4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
EB0D8:  VLDR            D16, [R0]
EB0DC:  LDR             R2, [R0,#8]
EB0DE:  LDR             R1, =(aColumn - 0xEB0E6); ", column " ...
EB0E0:  STR             R2, [SP,#0x48+var_28]
EB0E2:  ADD             R1, PC; ", column "
EB0E4:  VSTR            D16, [SP,#0x48+var_30]
EB0E8:  STRD.W          R4, R4, [R0]
EB0EC:  STR             R4, [R0,#8]
EB0EE:  ADD             R0, SP, #0x48+var_30; int
EB0F0:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
EB0F4:  VLDR            D16, [R0]
EB0F8:  LDR             R1, [R0,#8]
EB0FA:  STR             R1, [SP,#0x48+var_18]
EB0FC:  MOVS            R1, #0
EB0FE:  VSTR            D16, [SP,#0x48+var_20]
EB102:  STRD.W          R1, R1, [R0]
EB106:  STR             R1, [R0,#8]
EB108:  LDR             R1, [R5,#4]; std::__itoa *
EB10A:  MOV             R5, SP
EB10C:  MOV             R0, R5; this
EB10E:  BLX             j__ZNSt6__ndk19to_stringEj; std::to_string(uint)
EB112:  LDRB.W          R0, [SP,#0x48+var_48]
EB116:  LDRD.W          R2, R1, [SP,#0x48+var_44]
EB11A:  ANDS.W          R3, R0, #1
EB11E:  ITT EQ
EB120:  ADDEQ           R1, R5, #1
EB122:  LSREQ           R2, R0, #1
EB124:  ADD             R0, SP, #0x48+var_20
EB126:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
EB12A:  MOVS            R2, #0
EB12C:  VLDR            D16, [R0]
EB130:  LDR             R1, [R0,#8]
EB132:  STRD.W          R2, R2, [R0]
EB136:  STR             R2, [R0,#8]
EB138:  LDRB.W          R0, [SP,#0x48+var_48]
EB13C:  STR.W           R1, [R8,#8]
EB140:  VSTR            D16, [R8]
EB144:  LSLS            R0, R0, #0x1F
EB146:  ITT NE
EB148:  LDRNE           R0, [SP,#0x48+var_40]; void *
EB14A:  BLXNE           j__ZdlPv; operator delete(void *)
EB14E:  LDRB.W          R0, [SP,#0x48+var_20]
EB152:  LSLS            R0, R0, #0x1F
EB154:  ITT NE
EB156:  LDRNE           R0, [SP,#0x48+var_18]; void *
EB158:  BLXNE           j__ZdlPv; operator delete(void *)
EB15C:  LDRB.W          R0, [SP,#0x48+var_30]
EB160:  LSLS            R0, R0, #0x1F
EB162:  ITT NE
EB164:  LDRNE           R0, [SP,#0x48+var_28]; void *
EB166:  BLXNE           j__ZdlPv; operator delete(void *)
EB16A:  LDRB.W          R0, [SP,#0x48+var_3C]
EB16E:  LSLS            R0, R0, #0x1F
EB170:  ITT NE
EB172:  LDRNE           R0, [SP,#0x48+var_34]; void *
EB174:  BLXNE           j__ZdlPv; operator delete(void *)
EB178:  ADD             SP, SP, #0x38 ; '8'
EB17A:  POP.W           {R8}
EB17E:  POP             {R4-R7,PC}
