; =========================================================
; Game Engine Function: sub_E211C
; Address            : 0xE211C - 0xE219C
; =========================================================

E211C:  PUSH            {R4-R7,LR}
E211E:  ADD             R7, SP, #0xC
E2120:  PUSH.W          {R8,R9,R11}
E2124:  SUB.W           SP, SP, #0x210
E2128:  LDRD.W          R12, R8, [R7,#arg_0]
E212C:  MOV             R4, R0
E212E:  LDRB.W          R0, [R8,#0xC]
E2132:  MOV             R5, R3
E2134:  CBZ             R0, loc_E2186
E2136:  MOV.W           R0, #0x1F4
E213A:  LDR             R3, =(_ZTVN3fmt2v819basic_memory_bufferIcLj500ENSt6__ndk19allocatorIcEEEE - 0xE2148); `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>> ...
E213C:  STR             R0, [SP,#0x228+var_214]
E213E:  ADD             R0, SP, #0x228+var_220
E2140:  ADD.W           R9, R0, #0x10
E2144:  ADD             R3, PC; `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>>
E2146:  MOVS            R6, #0
E2148:  ADDS            R3, #8
E214A:  STR.W           R9, [SP,#0x228+var_21C]
E214E:  STR             R6, [SP,#0x228+var_218]
E2150:  STR             R3, [SP,#0x228+var_220]
E2152:  MOV             R3, R5
E2154:  STR.W           R12, [SP,#0x228+var_228]
E2158:  BL              sub_E1E70
E215C:  LDR             R2, [SP,#0x228+var_21C]
E215E:  MOV             R0, R8
E2160:  MOV             R1, R4
E2162:  MOV             R3, R5
E2164:  BL              sub_DDA0C
E2168:  LDRD.W          R1, R2, [SP,#0x228+var_21C]
E216C:  ADDS            R0, R1, R5
E216E:  ADD             R1, R2
E2170:  MOV             R2, R4
E2172:  BL              sub_DCF1C
E2176:  MOV             R4, R0
E2178:  LDR             R0, [SP,#0x228+var_21C]; void *
E217A:  CMP             R0, R9
E217C:  IT NE
E217E:  BLXNE           j__ZdlPv; operator delete(void *)
E2182:  MOV             R0, R4
E2184:  B               loc_E2192
E2186:  MOV             R0, R4
E2188:  MOV             R3, R5
E218A:  STR.W           R12, [SP,#0x228+var_228]
E218E:  BL              sub_E1E70
E2192:  ADD.W           SP, SP, #0x210
E2196:  POP.W           {R8,R9,R11}
E219A:  POP             {R4-R7,PC}
