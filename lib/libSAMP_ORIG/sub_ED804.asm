; =========================================================
; Game Engine Function: sub_ED804
; Address            : 0xED804 - 0xED83A
; =========================================================

ED804:  PUSH            {R4,R6,R7,LR}
ED806:  ADD             R7, SP, #8
ED808:  MOV             R4, R0
ED80A:  SUBS            R0, R2, #1
ED80C:  LDR             R2, =(_ZTVNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0xED812)
ED80E:  ADD             R2, PC; _ZTVNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
ED810:  LDR             R2, [R2]; `vtable for'std::time_get<char,std::istreambuf_iterator<char>> ...
ED812:  ADD.W           R3, R2, #0x38 ; '8'
ED816:  ADDS            R2, #8
ED818:  STRD.W          R2, R0, [R4]
ED81C:  STR             R3, [R4,#8]
ED81E:  ADD.W           R0, R4, #0xC
ED822:  BLX             j__ZNSt6__ndk118__time_get_storageIcEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE; std::__time_get_storage<char>::__time_get_storage(std::string const&)
ED826:  LDR             R0, =(_ZTVNSt6__ndk115time_get_bynameIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0xED82C)
ED828:  ADD             R0, PC; _ZTVNSt6__ndk115time_get_bynameIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
ED82A:  LDR             R0, [R0]; `vtable for'std::time_get_byname<char,std::istreambuf_iterator<char>> ...
ED82C:  ADD.W           R1, R0, #0x54 ; 'T'
ED830:  ADDS            R0, #8
ED832:  STR             R0, [R4]
ED834:  MOV             R0, R4
ED836:  STR             R1, [R4,#8]
ED838:  POP             {R4,R6,R7,PC}
