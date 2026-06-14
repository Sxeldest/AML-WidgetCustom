; =========================================================
; Game Engine Function: sub_ECA24
; Address            : 0xECA24 - 0xECB3C
; =========================================================

ECA24:  PUSH            {R4-R7,LR}
ECA26:  ADD             R7, SP, #0xC
ECA28:  PUSH.W          {R8-R11}
ECA2C:  SUB             SP, SP, #0x34
ECA2E:  VMOV.I32        Q8, #0
ECA32:  MOV.W           R11, #0
ECA36:  MOV             R10, R0
ECA38:  STR.W           R11, [R0,#0x18]
ECA3C:  STR.W           R1, [R0],#4
ECA40:  MOV             R2, R1
ECA42:  VST1.32         {D16-D17}, [R0]!
ECA46:  ADD             R1, SP, #0x50+s
ECA48:  STR.W           R11, [R0]
ECA4C:  MOV             R0, R2
ECA4E:  VST1.64         {D16-D17}, [R1]
ECA52:  BLX             dladdr
ECA56:  CMP             R0, #0
ECA58:  BEQ             loc_ECB32
ECA5A:  LDR             R1, [SP,#0x50+s]; s
ECA5C:  STRD.W          R11, R11, [SP,#0x50+var_40]
ECA60:  STR.W           R11, [SP,#0x50+var_38]
ECA64:  CBZ             R1, loc_ECA76
ECA66:  ADD             R0, SP, #0x50+var_40; int
ECA68:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
ECA6C:  LDR.W           R11, [SP,#0x50+var_3C]
ECA70:  LDRB.W          R0, [SP,#0x50+var_40]
ECA74:  B               loc_ECA78
ECA76:  MOVS            R0, #0
ECA78:  ANDS.W          R1, R0, #1
ECA7C:  IT EQ
ECA7E:  MOVEQ.W         R11, R0,LSR#1
ECA82:  CMP.W           R11, #0
ECA86:  BEQ             loc_ECB0A
ECA88:  LDR.W           R9, [SP,#0x50+var_38]
ECA8C:  ADD             R0, SP, #0x50+var_40
ECA8E:  CMP             R1, #0
ECA90:  IT EQ
ECA92:  ADDEQ.W         R9, R0, #1
ECA96:  LDR             R0, =(asc_86842 - 0xECAA6); "/\\" ...
ECA98:  SUB.W           R5, R9, #1
ECA9C:  MOVS            R6, #0
ECA9E:  MOV.W           R4, #0xFFFFFFFF
ECAA2:  ADD             R0, PC; "/\\"
ECAA4:  MOV             R8, R0
ECAA6:  CMP             R11, R6
ECAA8:  BEQ             loc_ECB06
ECAAA:  LDRB.W          R1, [R5,R11]; c
ECAAE:  MOV             R0, R8; s
ECAB0:  MOVS            R2, #2; n
ECAB2:  BLX             memchr
ECAB6:  SUBS            R5, #1
ECAB8:  ADDS            R4, #1
ECABA:  ADDS            R6, #1
ECABC:  CMP             R0, #0
ECABE:  BEQ             loc_ECAA6
ECAC0:  CMP             R11, R4
ECAC2:  BEQ             loc_ECB06
ECAC4:  SUB.W           R0, R11, R6
ECAC8:  SUB.W           R1, R11, #1
ECACC:  CMP             R0, R1
ECACE:  BCS             loc_ECB06
ECAD0:  ADD             R1, SP, #0x50+var_40
ECAD2:  SUB.W           R2, R11, R4
ECAD6:  ADD             R0, SP, #0x50+var_4C
ECAD8:  MOV.W           R3, #0xFFFFFFFF
ECADC:  STR             R1, [SP,#0x50+var_50]
ECADE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_; std::string::basic_string(std::string const&,uint,uint,std::allocator<char> const&)
ECAE2:  LDR             R1, [SP,#0x50+var_44]
ECAE4:  LDRB.W          R3, [SP,#0x50+var_4C]
ECAE8:  LDR             R2, [SP,#0x50+var_48]
ECAEA:  ANDS.W          R6, R3, #1
ECAEE:  IT EQ
ECAF0:  LSREQ           R2, R3, #1
ECAF2:  MOV             R3, R1
ECAF4:  IT EQ
ECAF6:  ADDEQ           R3, R0, #1
ECAF8:  STRD.W          R3, R2, [R10,#4]
ECAFC:  CBZ             R6, loc_ECB0A
ECAFE:  MOV             R0, R1; void *
ECB00:  BLX             j__ZdlPv; operator delete(void *)
ECB04:  B               loc_ECB0A
ECB06:  STRD.W          R9, R11, [R10,#4]
ECB0A:  LDRD.W          R0, R5, [SP,#0x50+var_2C]
ECB0E:  STR.W           R0, [R10,#0xC]
ECB12:  CBZ             R5, loc_ECB1E
ECB14:  MOV             R0, R5; s
ECB16:  BLX             strlen
ECB1A:  STRD.W          R5, R0, [R10,#0x10]
ECB1E:  LDRB.W          R0, [SP,#0x50+var_40]
ECB22:  LDR             R1, [SP,#0x50+var_24]
ECB24:  STR.W           R1, [R10,#0x18]
ECB28:  LSLS            R0, R0, #0x1F
ECB2A:  ITT NE
ECB2C:  LDRNE           R0, [SP,#0x50+var_38]; void *
ECB2E:  BLXNE           j__ZdlPv; operator delete(void *)
ECB32:  MOV             R0, R10
ECB34:  ADD             SP, SP, #0x34 ; '4'
ECB36:  POP.W           {R8-R11}
ECB3A:  POP             {R4-R7,PC}
