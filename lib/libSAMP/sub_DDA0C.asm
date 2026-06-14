; =========================================================
; Game Engine Function: sub_DDA0C
; Address            : 0xDDA0C - 0xDDB02
; =========================================================

DDA0C:  PUSH            {R4-R7,LR}
DDA0E:  ADD             R7, SP, #0xC
DDA10:  PUSH.W          {R8-R11}
DDA14:  SUBW            SP, SP, #0x7F4
DDA18:  MOV             R8, R0
DDA1A:  LDR             R0, =(_ZTVN3fmt2v819basic_memory_bufferIiLj500ENSt6__ndk19allocatorIiEEEE - 0xDDA24); `vtable for'fmt::v8::basic_memory_buffer<int,500u,std::allocator<int>> ...
DDA1C:  MOV             R5, R3
DDA1E:  MOVS            R3, #1
DDA20:  ADD             R0, PC; `vtable for'fmt::v8::basic_memory_buffer<int,500u,std::allocator<int>>
DDA22:  MOV             R4, R1
DDA24:  MOV.W           R1, #0x1F4
DDA28:  STR             R3, [SP,#0x810+var_7F8]
DDA2A:  ADD.W           R9, SP, #0x810+var_800
DDA2E:  LDRB.W          R3, [R8]
DDA32:  STR             R1, [SP,#0x810+var_7F4]
DDA34:  ADD.W           R1, R9, #0x10
DDA38:  ADDS            R0, #8
DDA3A:  ADD.W           R10, SP, #0x810+var_808
DDA3E:  MOV             R11, R2
DDA40:  STR             R1, [SP,#0x810+var_80C]
DDA42:  STR             R1, [SP,#0x810+var_7FC]
DDA44:  MOVS            R1, #0
DDA46:  LDR.W           R2, [R8,#8]
DDA4A:  STRD.W          R1, R0, [SP,#0x810+var_804]
DDA4E:  LSLS            R0, R3, #0x1F
DDA50:  STR             R1, [SP,#0x810+var_7F0]
DDA52:  IT EQ
DDA54:  ADDEQ.W         R2, R8, #1
DDA58:  STR             R2, [SP,#0x810+var_808]
DDA5A:  MOV             R0, R8
DDA5C:  MOV             R1, R10
DDA5E:  BL              sub_DD93C
DDA62:  MOV             R6, R0
DDA64:  CBZ             R0, loc_DDA8A
DDA66:  CMP             R6, R5
DDA68:  BGE             loc_DDA8A
DDA6A:  LDRD.W          R0, R2, [SP,#0x810+var_7F8]
DDA6E:  ADDS            R1, R0, #1
DDA70:  CMP             R2, R1
DDA72:  BCS             loc_DDA80
DDA74:  LDR             R0, [SP,#0x810+var_800]
DDA76:  LDR             R2, [R0]
DDA78:  MOV             R0, R9
DDA7A:  BLX             R2
DDA7C:  LDR             R0, [SP,#0x810+var_7F8]
DDA7E:  ADDS            R1, R0, #1
DDA80:  LDR             R2, [SP,#0x810+var_7FC]
DDA82:  STR             R1, [SP,#0x810+var_7F8]
DDA84:  STR.W           R6, [R2,R0,LSL#2]
DDA88:  B               loc_DDA5A
DDA8A:  CMP             R5, #1
DDA8C:  BLT             loc_DDAEA
DDA8E:  LDR             R0, [SP,#0x810+var_7F8]
DDA90:  SUB.W           R9, R0, #1
DDA94:  LDR             R0, [SP,#0x810+var_7FC]
DDA96:  LDR.W           R0, [R0,R9,LSL#2]
DDA9A:  CMP             R5, R0
DDA9C:  BNE             loc_DDAC2
DDA9E:  LDRD.W          R0, R2, [R4,#8]
DDAA2:  LDRB.W          R6, [R8,#0xC]
DDAA6:  ADDS            R1, R0, #1
DDAA8:  CMP             R2, R1
DDAAA:  BCS             loc_DDAB8
DDAAC:  LDR             R0, [R4]
DDAAE:  LDR             R2, [R0]
DDAB0:  MOV             R0, R4
DDAB2:  BLX             R2
DDAB4:  LDR             R0, [R4,#8]
DDAB6:  ADDS            R1, R0, #1
DDAB8:  LDR             R2, [R4,#4]
DDABA:  SUB.W           R9, R9, #1
DDABE:  STR             R1, [R4,#8]
DDAC0:  STRB            R6, [R2,R0]
DDAC2:  LDRD.W          R0, R2, [R4,#8]
DDAC6:  LDRB.W          R6, [R11]
DDACA:  ADDS            R1, R0, #1
DDACC:  CMP             R2, R1
DDACE:  BCS             loc_DDADC
DDAD0:  LDR             R0, [R4]
DDAD2:  LDR             R2, [R0]
DDAD4:  MOV             R0, R4
DDAD6:  BLX             R2
DDAD8:  LDR             R0, [R4,#8]
DDADA:  ADDS            R1, R0, #1
DDADC:  LDR             R2, [R4,#4]
DDADE:  ADD.W           R11, R11, #1
DDAE2:  SUBS            R5, #1
DDAE4:  STR             R1, [R4,#8]
DDAE6:  STRB            R6, [R2,R0]
DDAE8:  BNE             loc_DDA94
DDAEA:  LDR             R0, [SP,#0x810+var_7FC]; void *
DDAEC:  LDR             R1, [SP,#0x810+var_80C]
DDAEE:  CMP             R0, R1
DDAF0:  IT NE
DDAF2:  BLXNE           j__ZdlPv; operator delete(void *)
DDAF6:  MOV             R0, R4
DDAF8:  ADDW            SP, SP, #0x7F4
DDAFC:  POP.W           {R8-R11}
DDB00:  POP             {R4-R7,PC}
