; =========================================================
; Game Engine Function: sub_10BFB0
; Address            : 0x10BFB0 - 0x10BFC6
; =========================================================

10BFB0:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFiP9_PED_TYPEEEC1I8ChatIconEEMT_FiS4_EPS9_EUlS4_E_NS_9allocatorISD_EES5_EE - 0x10BFB6); `vtable for'std::__function::__func<function_helper<int ()(_PED_TYPE *)>::function_helper<ChatIcon>(int (ChatIcon::*)(_PED_TYPE *),ChatIcon*)::{lambda(_PED_TYPE *)#1},std::allocator<function_helper<int ()(_PED_TYPE *)>::function_helper<ChatIcon>(int (ChatIcon::*)(_PED_TYPE *),ChatIcon*)::{lambda(_PED_TYPE *)#1}>,int ()(_PED_TYPE *)> ...
10BFB2:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<int ()(_PED_TYPE *)>::function_helper<ChatIcon>(int (ChatIcon::*)(_PED_TYPE *),ChatIcon*)::{lambda(_PED_TYPE *)#1},std::allocator<function_helper<int ()(_PED_TYPE *)>::function_helper<ChatIcon>(int (ChatIcon::*)(_PED_TYPE *),ChatIcon*)::{lambda(_PED_TYPE *)#1}>,int ()(_PED_TYPE *)>
10BFB4:  ADDS            R2, #8
10BFB6:  STR             R2, [R1]
10BFB8:  VLDR            D16, [R0,#4]
10BFBC:  LDR             R0, [R0,#0xC]
10BFBE:  STR             R0, [R1,#0xC]
10BFC0:  VSTR            D16, [R1,#4]
10BFC4:  BX              LR
