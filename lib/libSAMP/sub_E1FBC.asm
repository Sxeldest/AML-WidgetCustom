; =========================================================
; Game Engine Function: sub_E1FBC
; Address            : 0xE1FBC - 0xE204A
; =========================================================

E1FBC:  PUSH            {R4-R7,LR}
E1FBE:  ADD             R7, SP, #0xC
E1FC0:  PUSH.W          {R8,R9,R11}
E1FC4:  SUB.W           SP, SP, #0x210
E1FC8:  LDR.W           R8, [R7,#arg_0]
E1FCC:  MOV             R4, R0
E1FCE:  MOV             R5, R3
E1FD0:  LDRB.W          R0, [R8,#0xC]
E1FD4:  CBZ             R0, loc_E2024
E1FD6:  MOV.W           R0, #0x1F4
E1FDA:  LDR             R3, =(_ZTVN3fmt2v819basic_memory_bufferIcLj500ENSt6__ndk19allocatorIcEEEE - 0xE1FE8); `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>> ...
E1FDC:  STR             R0, [SP,#0x228+var_214]
E1FDE:  ADD             R0, SP, #0x228+var_220
E1FE0:  ADD.W           R9, R0, #0x10
E1FE4:  ADD             R3, PC; `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>>
E1FE6:  MOVS            R6, #0
E1FE8:  ADDS            R3, #8
E1FEA:  STR.W           R9, [SP,#0x228+var_21C]
E1FEE:  ADD             R2, R1
E1FF0:  STR             R6, [SP,#0x228+var_218]
E1FF2:  STR             R3, [SP,#0x228+var_220]
E1FF4:  BL              sub_DCF30
E1FF8:  MOVS            R0, #0x30 ; '0'
E1FFA:  STRB.W          R0, [SP,#0x228+var_221]
E1FFE:  ADD             R0, SP, #0x228+var_220
E2000:  ADD.W           R2, SP, #0x228+var_221
E2004:  MOV             R1, R5
E2006:  BL              sub_DE834
E200A:  LDRD.W          R2, R3, [SP,#0x228+var_21C]
E200E:  MOV             R0, R8
E2010:  MOV             R1, R4
E2012:  BL              sub_DDA0C
E2016:  MOV             R4, R0
E2018:  LDR             R0, [SP,#0x228+var_21C]; void *
E201A:  CMP             R0, R9
E201C:  BEQ             loc_E203E
E201E:  BLX             j__ZdlPv; operator delete(void *)
E2022:  B               loc_E203E
E2024:  ADD             R2, R1
E2026:  MOV             R0, R4
E2028:  BL              sub_DCF30
E202C:  MOVS            R0, #0x30 ; '0'
E202E:  ADD             R2, SP, #0x228+var_220
E2030:  STRB.W          R0, [SP,#0x228+var_220]
E2034:  MOV             R0, R4
E2036:  MOV             R1, R5
E2038:  BL              sub_DE834
E203C:  MOV             R4, R0
E203E:  MOV             R0, R4
E2040:  ADD.W           SP, SP, #0x210
E2044:  POP.W           {R8,R9,R11}
E2048:  POP             {R4-R7,PC}
