; =========================================================
; Game Engine Function: sub_12CD48
; Address            : 0x12CD48 - 0x12CE4E
; =========================================================

12CD48:  PUSH            {R4-R7,LR}
12CD4A:  ADD             R7, SP, #0xC
12CD4C:  PUSH.W          {R8-R11}
12CD50:  SUB             SP, SP, #0x2C
12CD52:  MOV             R10, R1
12CD54:  LDR             R1, =(aAxl - 0x12CD5E); "AXL" ...
12CD56:  MOV             R4, R2
12CD58:  LDR             R2, =(aRegisterChatCo - 0x12CD62); "Register chat command %s" ...
12CD5A:  ADD             R1, PC; "AXL"
12CD5C:  MOV             R5, R3
12CD5E:  ADD             R2, PC; "Register chat command %s"
12CD60:  MOV             R9, R0
12CD62:  MOVS            R0, #3; prio
12CD64:  MOV             R3, R4
12CD66:  BLX             __android_log_print
12CD6A:  LDRB            R0, [R4]
12CD6C:  LDR.W           R8, [R7,#arg_0]
12CD70:  CMP             R0, #0x2F ; '/'
12CD72:  BNE             loc_12CDAA
12CD74:  ADD             R0, SP, #0x48+var_2C
12CD76:  MOV             R1, R4
12CD78:  MOV             R2, R5
12CD7A:  BL              sub_12DC50
12CD7E:  LDR             R3, =(unk_B81E7 - 0x12CD8C)
12CD80:  ADD             R1, SP, #0x48+var_24
12CD82:  STR             R0, [SP,#0x48+var_28]
12CD84:  ADD             R0, SP, #0x48+var_3C
12CD86:  ADD             R2, SP, #0x48+var_28
12CD88:  ADD             R3, PC; unk_B81E7
12CD8A:  STRD.W          R1, R0, [SP,#0x48+var_48]
12CD8E:  ADD.W           R1, R10, #0x54 ; 'T'
12CD92:  ADD             R0, SP, #0x48+var_38
12CD94:  STR             R2, [SP,#0x48+var_24]
12CD96:  BL              sub_12E28C
12CD9A:  LDR             R0, [SP,#0x48+var_38]
12CD9C:  MOV             R2, R8
12CD9E:  ADD.W           R1, R0, #0x14
12CDA2:  MOV             R0, R9
12CDA4:  BL              sub_12DD34
12CDA8:  B               loc_12CE40
12CDAA:  CMN.W           R5, #0x10
12CDAE:  BCS             loc_12CE48
12CDB0:  CMP             R5, #0xB
12CDB2:  BCS             loc_12CDC4
12CDB4:  LSLS            R0, R5, #1
12CDB6:  STRB.W          R0, [SP,#0x48+var_38]
12CDBA:  ADD             R0, SP, #0x48+var_38
12CDBC:  ADD.W           R6, R0, #1
12CDC0:  CBNZ            R5, loc_12CDDE
12CDC2:  B               loc_12CDE8
12CDC4:  ADD.W           R0, R5, #0x10
12CDC8:  BIC.W           R11, R0, #0xF
12CDCC:  MOV             R0, R11; unsigned int
12CDCE:  BLX             j__Znwj; operator new(uint)
12CDD2:  MOV             R6, R0
12CDD4:  STRD.W          R5, R0, [SP,#0x48+var_34]
12CDD8:  ADD.W           R0, R11, #1
12CDDC:  STR             R0, [SP,#0x48+var_38]
12CDDE:  MOV             R0, R6; dest
12CDE0:  MOV             R1, R4; src
12CDE2:  MOV             R2, R5; n
12CDE4:  BLX             j_memcpy
12CDE8:  MOVS            R0, #0
12CDEA:  STRB            R0, [R6,R5]
12CDEC:  ADD             R0, SP, #0x48+var_38
12CDEE:  LDRB.W          R2, [SP,#0x48+var_38]
12CDF2:  LDR             R1, [SP,#0x48+var_30]
12CDF4:  LSLS            R2, R2, #0x1F
12CDF6:  IT EQ
12CDF8:  ADDEQ           R1, R0, #1
12CDFA:  MOVS            R2, #0x2F ; '/'
12CDFC:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEEc; std::string::insert(std::__wrap_iter<char const*>,char)
12CE00:  ADD             R0, SP, #0x48+var_40
12CE02:  ADD             R1, SP, #0x48+var_38
12CE04:  BL              sub_12DE18
12CE08:  LDR             R3, =(unk_B81E7 - 0x12CE12)
12CE0A:  ADD             R2, SP, #0x48+var_3C
12CE0C:  STR             R0, [SP,#0x48+var_3C]
12CE0E:  ADD             R3, PC; unk_B81E7
12CE10:  STR             R2, [SP,#0x48+var_28]
12CE12:  ADD             R0, SP, #0x48+var_2C
12CE14:  ADD             R1, SP, #0x48+var_28
12CE16:  STRD.W          R1, R0, [SP,#0x48+var_48]
12CE1A:  ADD.W           R1, R10, #0x54 ; 'T'
12CE1E:  ADD             R0, SP, #0x48+var_24
12CE20:  BL              sub_12E28C
12CE24:  LDR             R0, [SP,#0x48+var_24]
12CE26:  ADD.W           R1, R0, #0x14
12CE2A:  MOV             R0, R9
12CE2C:  MOV             R2, R8
12CE2E:  BL              sub_12DD34
12CE32:  LDRB.W          R0, [SP,#0x48+var_38]
12CE36:  LSLS            R0, R0, #0x1F
12CE38:  BEQ             loc_12CE40
12CE3A:  LDR             R0, [SP,#0x48+var_30]; void *
12CE3C:  BLX             j__ZdlPv; operator delete(void *)
12CE40:  ADD             SP, SP, #0x2C ; ','
12CE42:  POP.W           {R8-R11}
12CE46:  POP             {R4-R7,PC}
12CE48:  ADD             R0, SP, #0x48+var_38
12CE4A:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
