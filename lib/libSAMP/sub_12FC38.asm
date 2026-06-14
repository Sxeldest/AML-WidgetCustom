; =========================================================
; Game Engine Function: sub_12FC38
; Address            : 0x12FC38 - 0x12FD14
; =========================================================

12FC38:  PUSH            {R4-R7,LR}
12FC3A:  ADD             R7, SP, #0xC
12FC3C:  PUSH.W          {R8}
12FC40:  SUB             SP, SP, #0x38
12FC42:  LDR             R6, [R0,#0x6C]
12FC44:  MOV             R4, R0
12FC46:  LDRD.W          R0, R1, [R6,#0x7C]
12FC4A:  SUBS            R0, R1, R0
12FC4C:  BEQ             loc_12FD0C
12FC4E:  MOVW            R1, #0xAAAB
12FC52:  ASRS            R0, R0, #2
12FC54:  MOVT            R1, #0xAAAA
12FC58:  MUL.W           R8, R0, R1
12FC5C:  LDR             R1, [R4,#0x54]
12FC5E:  LDR.W           R0, [R4,#0x8C]
12FC62:  CMP             R0, R1
12FC64:  BNE             loc_12FC96
12FC66:  ADD.W           R1, R6, #0x64 ; 'd'
12FC6A:  ADD             R0, SP, #0x48+var_20
12FC6C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
12FC70:  MOV             R5, R6
12FC72:  LDRB.W          R0, [R5,#0x70]!
12FC76:  LSLS            R0, R0, #0x1F
12FC78:  ITT NE
12FC7A:  LDRNE           R0, [R6,#0x78]; void *
12FC7C:  BLXNE           j__ZdlPv; operator delete(void *)
12FC80:  VLDR            D16, [SP,#0x48+var_20]
12FC84:  MOVS            R1, #0
12FC86:  LDR             R0, [SP,#0x48+var_18]
12FC88:  STR             R0, [R5,#8]
12FC8A:  VSTR            D16, [R5]
12FC8E:  LDR.W           R0, [R4,#0x8C]
12FC92:  STRH.W          R1, [SP,#0x48+var_20]
12FC96:  SUB.W           R2, R8, #1
12FC9A:  MOV.W           R1, #0xFFFFFFFF
12FC9E:  CMP             R0, R2
12FCA0:  IT LT
12FCA2:  ADDLT           R1, R0, #1
12FCA4:  ADDS            R0, R1, #1
12FCA6:  STR.W           R1, [R4,#0x8C]
12FCAA:  BEQ             loc_12FCE8
12FCAC:  LDR             R0, [R4,#0x6C]
12FCAE:  MOVS            R2, #0
12FCB0:  STRD.W          R2, R2, [SP,#0x48+var_38]
12FCB4:  STR             R2, [SP,#0x48+var_30]
12FCB6:  ADD             R2, SP, #0x48+var_38
12FCB8:  BL              sub_12FBF8
12FCBC:  LDR             R4, [R4,#0x6C]
12FCBE:  ADD             R0, SP, #0x48+var_44
12FCC0:  ADD             R1, SP, #0x48+var_38
12FCC2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
12FCC6:  ADD             R1, SP, #0x48+var_44
12FCC8:  MOV             R0, R4
12FCCA:  BL              sub_12F86A
12FCCE:  LDRB.W          R0, [SP,#0x48+var_44]
12FCD2:  LSLS            R0, R0, #0x1F
12FCD4:  ITT NE
12FCD6:  LDRNE           R0, [SP,#0x48+var_3C]; void *
12FCD8:  BLXNE           j__ZdlPv; operator delete(void *)
12FCDC:  LDRB.W          R0, [SP,#0x48+var_38]
12FCE0:  LSLS            R0, R0, #0x1F
12FCE2:  BEQ             loc_12FD0C
12FCE4:  LDR             R0, [SP,#0x48+var_30]
12FCE6:  B               loc_12FD08
12FCE8:  LDR             R4, [R4,#0x6C]
12FCEA:  ADD             R5, SP, #0x48+var_2C
12FCEC:  ADD.W           R1, R4, #0x70 ; 'p'
12FCF0:  MOV             R0, R5
12FCF2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
12FCF6:  MOV             R0, R4
12FCF8:  MOV             R1, R5
12FCFA:  BL              sub_12F86A
12FCFE:  LDRB.W          R0, [SP,#0x48+var_2C]
12FD02:  LSLS            R0, R0, #0x1F
12FD04:  BEQ             loc_12FD0C
12FD06:  LDR             R0, [SP,#0x48+var_24]; void *
12FD08:  BLX             j__ZdlPv; operator delete(void *)
12FD0C:  ADD             SP, SP, #0x38 ; '8'
12FD0E:  POP.W           {R8}
12FD12:  POP             {R4-R7,PC}
