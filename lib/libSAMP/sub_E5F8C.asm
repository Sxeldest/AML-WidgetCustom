; =========================================================
; Game Engine Function: sub_E5F8C
; Address            : 0xE5F8C - 0xE6058
; =========================================================

E5F8C:  PUSH            {R4-R7,LR}
E5F8E:  ADD             R7, SP, #0xC
E5F90:  PUSH.W          {R11}
E5F94:  SUB             SP, SP, #0x38
E5F96:  MOV             R5, R2
E5F98:  MOV             R2, R1
E5F9A:  LDR             R1, =(aJsonException - 0xE5FA4); "[json.exception." ...
E5F9C:  ADD             R6, SP, #0x48+var_3C
E5F9E:  MOV             R4, R0
E5FA0:  ADD             R1, PC; "[json.exception."
E5FA2:  MOV             R0, R6
E5FA4:  BLX             j__ZNSt6__ndk1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_; std::operator+<char>(char const*,std::string const&)
E5FA8:  LDR             R1, =(asc_836CD - 0xE5FAE); "." ...
E5FAA:  ADD             R1, PC; "."
E5FAC:  MOV             R0, R6; int
E5FAE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
E5FB2:  VLDR            D16, [R0]
E5FB6:  LDR             R1, [R0,#8]
E5FB8:  STR             R1, [SP,#0x48+var_28]
E5FBA:  MOVS            R1, #0
E5FBC:  VSTR            D16, [SP,#0x48+var_30]
E5FC0:  STRD.W          R1, R1, [R0]
E5FC4:  STR             R1, [R0,#8]
E5FC6:  MOV             R6, SP
E5FC8:  MOV             R1, R5; int
E5FCA:  MOV             R0, R6; this
E5FCC:  BLX             j__ZNSt6__ndk19to_stringEi; std::to_string(int)
E5FD0:  LDRB.W          R0, [SP,#0x48+var_48]
E5FD4:  LDRD.W          R2, R1, [SP,#0x48+var_44]
E5FD8:  ANDS.W          R3, R0, #1
E5FDC:  ITT EQ
E5FDE:  ADDEQ           R1, R6, #1
E5FE0:  LSREQ           R2, R0, #1
E5FE2:  ADD             R0, SP, #0x48+var_30
E5FE4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
E5FE8:  VLDR            D16, [R0]
E5FEC:  MOVS            R5, #0
E5FEE:  LDR             R2, [R0,#8]
E5FF0:  LDR             R1, =(asc_84B99 - 0xE5FF8); "] " ...
E5FF2:  STR             R2, [SP,#0x48+var_18]
E5FF4:  ADD             R1, PC; "] "
E5FF6:  VSTR            D16, [SP,#0x48+var_20]
E5FFA:  STRD.W          R5, R5, [R0]
E5FFE:  STR             R5, [R0,#8]
E6000:  ADD             R0, SP, #0x48+var_20; int
E6002:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
E6006:  VLDR            D16, [R0]
E600A:  LDR             R1, [R0,#8]
E600C:  STRD.W          R5, R5, [R0]
E6010:  STR             R5, [R0,#8]
E6012:  LDRB.W          R0, [SP,#0x48+var_20]
E6016:  STR             R1, [R4,#8]
E6018:  VSTR            D16, [R4]
E601C:  LSLS            R0, R0, #0x1F
E601E:  ITT NE
E6020:  LDRNE           R0, [SP,#0x48+var_18]; void *
E6022:  BLXNE           j__ZdlPv; operator delete(void *)
E6026:  LDRB.W          R0, [SP,#0x48+var_48]
E602A:  LSLS            R0, R0, #0x1F
E602C:  ITT NE
E602E:  LDRNE           R0, [SP,#0x48+var_40]; void *
E6030:  BLXNE           j__ZdlPv; operator delete(void *)
E6034:  LDRB.W          R0, [SP,#0x48+var_30]
E6038:  LSLS            R0, R0, #0x1F
E603A:  ITT NE
E603C:  LDRNE           R0, [SP,#0x48+var_28]; void *
E603E:  BLXNE           j__ZdlPv; operator delete(void *)
E6042:  LDRB.W          R0, [SP,#0x48+var_3C]
E6046:  LSLS            R0, R0, #0x1F
E6048:  ITT NE
E604A:  LDRNE           R0, [SP,#0x48+var_34]; void *
E604C:  BLXNE           j__ZdlPv; operator delete(void *)
E6050:  ADD             SP, SP, #0x38 ; '8'
E6052:  POP.W           {R11}
E6056:  POP             {R4-R7,PC}
