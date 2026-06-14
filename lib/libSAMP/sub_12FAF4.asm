; =========================================================
; Game Engine Function: sub_12FAF4
; Address            : 0x12FAF4 - 0x12FBCA
; =========================================================

12FAF4:  PUSH            {R4-R7,LR}
12FAF6:  ADD             R7, SP, #0xC
12FAF8:  PUSH.W          {R8,R9,R11}
12FAFC:  SUB             SP, SP, #0x38
12FAFE:  LDR             R6, [R0,#0x6C]
12FB00:  MOV             R4, R0
12FB02:  LDRD.W          R0, R1, [R6,#0x7C]
12FB06:  SUBS            R0, R1, R0
12FB08:  BEQ             loc_12FBC2
12FB0A:  MOV.W           R9, R0,ASR#2
12FB0E:  LDR             R1, [R4,#0x54]
12FB10:  LDR.W           R0, [R4,#0x8C]
12FB14:  MOV             R8, #0xAAAAAAAB
12FB1C:  CMP             R0, R1
12FB1E:  BNE             loc_12FB52
12FB20:  ADD.W           R1, R6, #0x64 ; 'd'
12FB24:  ADD             R0, SP, #0x50+var_28
12FB26:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
12FB2A:  MOV             R5, R6
12FB2C:  LDRB.W          R0, [R5,#0x70]!
12FB30:  LSLS            R0, R0, #0x1F
12FB32:  ITT NE
12FB34:  LDRNE           R0, [R6,#0x78]; void *
12FB36:  BLXNE           j__ZdlPv; operator delete(void *)
12FB3A:  VLDR            D16, [SP,#0x50+var_28]
12FB3E:  MOVS            R2, #0
12FB40:  LDR             R0, [SP,#0x50+var_20]
12FB42:  STR             R0, [R5,#8]
12FB44:  VSTR            D16, [R5]
12FB48:  LDR             R1, [R4,#0x54]
12FB4A:  LDR.W           R0, [R4,#0x8C]
12FB4E:  STRH.W          R2, [SP,#0x50+var_28]
12FB52:  CMP             R0, R1
12FB54:  IT EQ
12FB56:  MULEQ.W         R0, R9, R8
12FB5A:  SUBS            R1, R0, #1
12FB5C:  STR.W           R1, [R4,#0x8C]
12FB60:  CBZ             R0, loc_12FB9E
12FB62:  LDR             R0, [R4,#0x6C]
12FB64:  MOVS            R2, #0
12FB66:  STRD.W          R2, R2, [SP,#0x50+var_40]
12FB6A:  STR             R2, [SP,#0x50+var_38]
12FB6C:  ADD             R2, SP, #0x50+var_40
12FB6E:  BL              sub_12FBF8
12FB72:  LDR             R4, [R4,#0x6C]
12FB74:  ADD             R0, SP, #0x50+var_4C
12FB76:  ADD             R1, SP, #0x50+var_40
12FB78:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
12FB7C:  ADD             R1, SP, #0x50+var_4C
12FB7E:  MOV             R0, R4
12FB80:  BL              sub_12F86A
12FB84:  LDRB.W          R0, [SP,#0x50+var_4C]
12FB88:  LSLS            R0, R0, #0x1F
12FB8A:  ITT NE
12FB8C:  LDRNE           R0, [SP,#0x50+var_44]; void *
12FB8E:  BLXNE           j__ZdlPv; operator delete(void *)
12FB92:  LDRB.W          R0, [SP,#0x50+var_40]
12FB96:  LSLS            R0, R0, #0x1F
12FB98:  BEQ             loc_12FBC2
12FB9A:  LDR             R0, [SP,#0x50+var_38]
12FB9C:  B               loc_12FBBE
12FB9E:  LDR             R4, [R4,#0x6C]
12FBA0:  ADD             R5, SP, #0x50+var_34
12FBA2:  ADD.W           R1, R4, #0x70 ; 'p'
12FBA6:  MOV             R0, R5
12FBA8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
12FBAC:  MOV             R0, R4
12FBAE:  MOV             R1, R5
12FBB0:  BL              sub_12F86A
12FBB4:  LDRB.W          R0, [SP,#0x50+var_34]
12FBB8:  LSLS            R0, R0, #0x1F
12FBBA:  BEQ             loc_12FBC2
12FBBC:  LDR             R0, [SP,#0x50+var_2C]; void *
12FBBE:  BLX             j__ZdlPv; operator delete(void *)
12FBC2:  ADD             SP, SP, #0x38 ; '8'
12FBC4:  POP.W           {R8,R9,R11}
12FBC8:  POP             {R4-R7,PC}
