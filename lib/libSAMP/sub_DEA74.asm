; =========================================================
; Game Engine Function: sub_DEA74
; Address            : 0xDEA74 - 0xDEB1A
; =========================================================

DEA74:  PUSH            {R4-R7,LR}
DEA76:  ADD             R7, SP, #0xC
DEA78:  PUSH.W          {R8,R9,R11}
DEA7C:  SUB.W           SP, SP, #0x220
DEA80:  LDR.W           R8, [R7,#arg_0]
DEA84:  MOV             R4, R0
DEA86:  MOV             R5, R3
DEA88:  MOV             R3, R2
DEA8A:  MOV             R2, R1
DEA8C:  LDRB.W          R0, [R8,#0xC]
DEA90:  CBZ             R0, loc_DEAEA
DEA92:  LDR             R0, =(_ZTVN3fmt2v819basic_memory_bufferIcLj500ENSt6__ndk19allocatorIcEEEE - 0xDEAA4); `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>> ...
DEA94:  ADD.W           R9, SP, #0x238+var_234
DEA98:  MOV.W           R1, #0x1F4
DEA9C:  ADD.W           R6, R9, #0x10
DEAA0:  ADD             R0, PC; `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>>
DEAA2:  STR             R1, [SP,#0x238+var_228]
DEAA4:  ADDS            R0, #8
DEAA6:  MOVS            R1, #0
DEAA8:  STR             R6, [SP,#0x238+var_230]
DEAAA:  STR             R1, [SP,#0x238+var_22C]
DEAAC:  STR             R0, [SP,#0x238+var_234]
DEAAE:  ADD             R0, SP, #0x238+var_2C
DEAB0:  ADD             R1, SP, #0x238+var_24
DEAB2:  BL              sub_DCEB4
DEAB6:  LDR             R1, [SP,#0x238+var_28]
DEAB8:  ADD             R0, SP, #0x238+var_24
DEABA:  MOV             R2, R9
DEABC:  BL              sub_DCF1C
DEAC0:  MOVS            R0, #0x30 ; '0'
DEAC2:  STRB.W          R0, [SP,#0x238+var_24]
DEAC6:  ADD             R2, SP, #0x238+var_24
DEAC8:  MOV             R0, R9
DEACA:  MOV             R1, R5
DEACC:  BL              sub_DE834
DEAD0:  LDRD.W          R2, R3, [SP,#0x238+var_230]
DEAD4:  MOV             R0, R8
DEAD6:  MOV             R1, R4
DEAD8:  BL              sub_DDA0C
DEADC:  MOV             R4, R0
DEADE:  LDR             R0, [SP,#0x238+var_230]; void *
DEAE0:  CMP             R0, R6
DEAE2:  BEQ             loc_DEB0E
DEAE4:  BLX             j__ZdlPv; operator delete(void *)
DEAE8:  B               loc_DEB0E
DEAEA:  ADD             R6, SP, #0x238+var_234
DEAEC:  ADD             R0, SP, #0x238+var_24
DEAEE:  MOV             R1, R6
DEAF0:  BL              sub_DCEB4
DEAF4:  LDR             R1, [SP,#0x238+var_20]
DEAF6:  MOV             R0, R6
DEAF8:  MOV             R2, R4
DEAFA:  BL              sub_DCF1C
DEAFE:  MOVS            R1, #0x30 ; '0'
DEB00:  ADD             R2, SP, #0x238+var_234
DEB02:  STRB.W          R1, [SP,#0x238+var_234]
DEB06:  MOV             R1, R5
DEB08:  BL              sub_DE834
DEB0C:  MOV             R4, R0
DEB0E:  MOV             R0, R4
DEB10:  ADD.W           SP, SP, #0x220
DEB14:  POP.W           {R8,R9,R11}
DEB18:  POP             {R4-R7,PC}
