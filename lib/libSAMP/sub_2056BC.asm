; =========================================================
; Game Engine Function: sub_2056BC
; Address            : 0x2056BC - 0x2056F2
; =========================================================

2056BC:  PUSH            {R4,R6,R7,LR}
2056BE:  ADD             R7, SP, #8
2056C0:  MOV             R4, R0
2056C2:  SUBS            R0, R2, #1
2056C4:  LDR             R2, =(_ZTVNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0x2056CA)
2056C6:  ADD             R2, PC; _ZTVNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
2056C8:  LDR             R2, [R2]; `vtable for'std::time_get<char,std::istreambuf_iterator<char>> ...
2056CA:  ADD.W           R3, R2, #0x38 ; '8'
2056CE:  ADDS            R2, #8
2056D0:  STRD.W          R2, R0, [R4]
2056D4:  STR             R3, [R4,#8]
2056D6:  ADD.W           R0, R4, #0xC
2056DA:  BLX             j__ZNSt6__ndk118__time_get_storageIcEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE; std::__time_get_storage<char>::__time_get_storage(std::string const&)
2056DE:  LDR             R0, =(_ZTVNSt6__ndk115time_get_bynameIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0x2056E4)
2056E0:  ADD             R0, PC; _ZTVNSt6__ndk115time_get_bynameIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
2056E2:  LDR             R0, [R0]; `vtable for'std::time_get_byname<char,std::istreambuf_iterator<char>> ...
2056E4:  ADD.W           R1, R0, #0x54 ; 'T'
2056E8:  ADDS            R0, #8
2056EA:  STR             R0, [R4]
2056EC:  MOV             R0, R4
2056EE:  STR             R1, [R4,#8]
2056F0:  POP             {R4,R6,R7,PC}
