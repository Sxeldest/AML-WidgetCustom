; =========================================================
; Game Engine Function: sub_10BF88
; Address            : 0x10BF88 - 0x10BFAA
; =========================================================

10BF88:  PUSH            {R4,R6,R7,LR}
10BF8A:  ADD             R7, SP, #8
10BF8C:  MOV             R4, R0
10BF8E:  MOVS            R0, #0x10; unsigned int
10BF90:  BLX             j__Znwj; operator new(uint)
10BF94:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiP9_PED_TYPEEEC1I8ChatIconEEMT_FiS4_EPS9_EUlS4_E_NS_9allocatorISD_EES5_EE - 0x10BF9E); `vtable for'std::__function::__func<function_helper<int ()(_PED_TYPE *)>::function_helper<ChatIcon>(int (ChatIcon::*)(_PED_TYPE *),ChatIcon*)::{lambda(_PED_TYPE *)#1},std::allocator<function_helper<int ()(_PED_TYPE *)>::function_helper<ChatIcon>(int (ChatIcon::*)(_PED_TYPE *),ChatIcon*)::{lambda(_PED_TYPE *)#1}>,int ()(_PED_TYPE *)> ...
10BF96:  VLDR            D16, [R4,#4]
10BF9A:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<int ()(_PED_TYPE *)>::function_helper<ChatIcon>(int (ChatIcon::*)(_PED_TYPE *),ChatIcon*)::{lambda(_PED_TYPE *)#1},std::allocator<function_helper<int ()(_PED_TYPE *)>::function_helper<ChatIcon>(int (ChatIcon::*)(_PED_TYPE *),ChatIcon*)::{lambda(_PED_TYPE *)#1}>,int ()(_PED_TYPE *)>
10BF9C:  LDR             R2, [R4,#0xC]
10BF9E:  ADDS            R1, #8
10BFA0:  STR             R1, [R0]
10BFA2:  STR             R2, [R0,#0xC]
10BFA4:  VSTR            D16, [R0,#4]
10BFA8:  POP             {R4,R6,R7,PC}
