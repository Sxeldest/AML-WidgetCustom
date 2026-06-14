; =========================================================
; Game Engine Function: sub_10BF38
; Address            : 0x10BF38 - 0x10BF7C
; =========================================================

10BF38:  PUSH            {R4,R5,R7,LR}
10BF3A:  ADD             R7, SP, #8
10BF3C:  SUB             SP, SP, #0x18
10BF3E:  MOV             R4, R0
10BF40:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiP9_PED_TYPEEEC1I8ChatIconEEMT_FiS4_EPS9_EUlS4_E_NS_9allocatorISD_EES5_EE - 0x10BF4C); `vtable for'std::__function::__func<function_helper<int ()(_PED_TYPE *)>::function_helper<ChatIcon>(int (ChatIcon::*)(_PED_TYPE *),ChatIcon*)::{lambda(_PED_TYPE *)#1},std::allocator<function_helper<int ()(_PED_TYPE *)>::function_helper<ChatIcon>(int (ChatIcon::*)(_PED_TYPE *),ChatIcon*)::{lambda(_PED_TYPE *)#1}>,int ()(_PED_TYPE *)> ...
10BF42:  LDRD.W          R2, R3, [R1]
10BF46:  MOV             R5, SP
10BF48:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<int ()(_PED_TYPE *)>::function_helper<ChatIcon>(int (ChatIcon::*)(_PED_TYPE *),ChatIcon*)::{lambda(_PED_TYPE *)#1},std::allocator<function_helper<int ()(_PED_TYPE *)>::function_helper<ChatIcon>(int (ChatIcon::*)(_PED_TYPE *),ChatIcon*)::{lambda(_PED_TYPE *)#1}>,int ()(_PED_TYPE *)>
10BF4A:  LDR             R1, [R1,#8]
10BF4C:  ADDS            R0, #8
10BF4E:  STRD.W          R1, R5, [SP,#0x20+var_14]
10BF52:  STR             R0, [SP,#0x20+var_20]
10BF54:  MOV             R0, R5
10BF56:  MOV             R1, R4
10BF58:  STRD.W          R2, R3, [SP,#0x20+var_1C]
10BF5C:  BL              sub_10C010
10BF60:  LDR             R0, [SP,#0x20+var_10]
10BF62:  CMP             R5, R0
10BF64:  BEQ             loc_10BF6C
10BF66:  CBZ             R0, loc_10BF76
10BF68:  MOVS            R1, #5
10BF6A:  B               loc_10BF6E
10BF6C:  MOVS            R1, #4
10BF6E:  LDR             R2, [R0]
10BF70:  LDR.W           R1, [R2,R1,LSL#2]
10BF74:  BLX             R1
10BF76:  MOV             R0, R4
10BF78:  ADD             SP, SP, #0x18
10BF7A:  POP             {R4,R5,R7,PC}
