; =========================================================
; Game Engine Function: sub_ECB84
; Address            : 0xECB84 - 0xECCAC
; =========================================================

ECB84:  PUSH            {R4-R7,LR}
ECB86:  ADD             R7, SP, #0xC
ECB88:  PUSH.W          {R8-R10}
ECB8C:  SUB             SP, SP, #0x18
ECB8E:  MOV             R5, R2
ECB90:  MOV             R9, R0
ECB92:  LDRD.W          R2, R4, [R0]
ECB96:  MOV             R6, R1
ECB98:  LDRB            R0, [R0]
ECB9A:  SUB.W           R8, R5, R1
ECB9E:  ANDS.W          R3, R0, #1
ECBA2:  IT EQ
ECBA4:  LSREQ           R4, R0, #1
ECBA6:  BIC.W           R0, R2, #1
ECBAA:  SUB.W           R1, R0, #1
ECBAE:  IT EQ
ECBB0:  MOVEQ           R1, #0xA
ECBB2:  CMP.W           R8, #0
ECBB6:  BEQ             loc_ECC9C
ECBB8:  LDR.W           R0, [R9,#8]
ECBBC:  CMP             R3, #0
ECBBE:  ADD.W           R10, R9, #1
ECBC2:  MOV             R3, R0
ECBC4:  IT EQ
ECBC6:  MOVEQ           R3, R10
ECBC8:  CMP             R3, R6
ECBCA:  BHI             loc_ECBEC
ECBCC:  ADD             R3, R4
ECBCE:  CMP             R3, R6
ECBD0:  BLS             loc_ECBEC
ECBD2:  CMN.W           R8, #0x10
ECBD6:  BCS             loc_ECCA6
ECBD8:  CMP.W           R8, #0xA
ECBDC:  BHI             loc_ECC46
ECBDE:  MOV.W           R0, R8,LSL#1
ECBE2:  STRB.W          R0, [SP,#0x30+var_24]
ECBE6:  ADD             R0, SP, #0x30+var_24
ECBE8:  ADDS            R4, R0, #1
ECBEA:  B               loc_ECC60
ECBEC:  SUBS            R3, R1, R4
ECBEE:  CMP             R3, R8
ECBF0:  BCS             loc_ECC12
ECBF2:  MOVS            R0, #0
ECBF4:  MOV             R3, R4
ECBF6:  STRD.W          R4, R0, [SP,#0x30+var_30]
ECBFA:  STR             R0, [SP,#0x30+var_28]
ECBFC:  ADD.W           R0, R4, R8
ECC00:  SUBS            R2, R0, R1
ECC02:  MOV             R0, R9
ECC04:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEjjjjjj; std::string::__grow_by(uint,uint,uint,uint,uint,uint)
ECC08:  LDR.W           R0, [R9,#8]
ECC0C:  LDRB.W          R1, [R9]
ECC10:  B               loc_ECC14
ECC12:  UXTB            R1, R2
ECC14:  LSLS            R1, R1, #0x1F
ECC16:  IT EQ
ECC18:  MOVEQ           R0, R10
ECC1A:  ADD             R0, R4
ECC1C:  CMP             R6, R5
ECC1E:  BEQ             loc_ECC2A
ECC20:  LDRB.W          R1, [R6],#1
ECC24:  STRB.W          R1, [R0],#1
ECC28:  B               loc_ECC1C
ECC2A:  MOVS            R1, #0
ECC2C:  STRB            R1, [R0]
ECC2E:  ADD.W           R0, R4, R8
ECC32:  LDRB.W          R1, [R9]
ECC36:  LSLS            R1, R1, #0x1F
ECC38:  ITTE EQ
ECC3A:  LSLEQ           R0, R0, #1
ECC3C:  STRBEQ.W        R0, [R9]
ECC40:  STRNE.W         R0, [R9,#4]
ECC44:  B               loc_ECC9C
ECC46:  ADD.W           R0, R8, #0x10
ECC4A:  BIC.W           R10, R0, #0xF
ECC4E:  MOV             R0, R10; unsigned int
ECC50:  BLX             j__Znwj; operator new(uint)
ECC54:  MOV             R4, R0
ECC56:  STRD.W          R8, R0, [SP,#0x30+var_20]
ECC5A:  ADD.W           R0, R10, #1
ECC5E:  STR             R0, [SP,#0x30+var_24]
ECC60:  CMP             R6, R5
ECC62:  BEQ             loc_ECC70
ECC64:  MOV             R0, R4; dest
ECC66:  MOV             R1, R6; src
ECC68:  MOV             R2, R8; n
ECC6A:  BLX             j_memcpy
ECC6E:  ADD             R4, R8
ECC70:  MOVS            R0, #0
ECC72:  ADD             R3, SP, #0x30+var_24
ECC74:  STRB            R0, [R4]
ECC76:  LDRB.W          R0, [SP,#0x30+var_24]
ECC7A:  LDRD.W          R2, R1, [SP,#0x30+var_20]
ECC7E:  ANDS.W          R6, R0, #1
ECC82:  ITT EQ
ECC84:  ADDEQ           R1, R3, #1
ECC86:  LSREQ           R2, R0, #1
ECC88:  MOV             R0, R9
ECC8A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
ECC8E:  LDRB.W          R0, [SP,#0x30+var_24]
ECC92:  LSLS            R0, R0, #0x1F
ECC94:  BEQ             loc_ECC9C
ECC96:  LDR             R0, [SP,#0x30+var_1C]; void *
ECC98:  BLX             j__ZdlPv; operator delete(void *)
ECC9C:  MOV             R0, R9
ECC9E:  ADD             SP, SP, #0x18
ECCA0:  POP.W           {R8-R10}
ECCA4:  POP             {R4-R7,PC}
ECCA6:  ADD             R0, SP, #0x30+var_24
ECCA8:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
