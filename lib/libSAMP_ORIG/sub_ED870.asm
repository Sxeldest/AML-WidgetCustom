; =========================================================
; Game Engine Function: sub_ED870
; Address            : 0xED870 - 0xED8A6
; =========================================================

ED870:  PUSH            {R4,R6,R7,LR}
ED872:  ADD             R7, SP, #8
ED874:  MOV             R4, R0
ED876:  SUBS            R0, R2, #1
ED878:  LDR             R2, =(_ZTVNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0xED87E)
ED87A:  ADD             R2, PC; _ZTVNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
ED87C:  LDR             R2, [R2]; `vtable for'std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>> ...
ED87E:  ADD.W           R3, R2, #0x38 ; '8'
ED882:  ADDS            R2, #8
ED884:  STRD.W          R2, R0, [R4]
ED888:  STR             R3, [R4,#8]
ED88A:  ADD.W           R0, R4, #0xC
ED88E:  BLX             j__ZNSt6__ndk118__time_get_storageIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE; std::__time_get_storage<wchar_t>::__time_get_storage(std::string const&)
ED892:  LDR             R0, =(_ZTVNSt6__ndk115time_get_bynameIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0xED898)
ED894:  ADD             R0, PC; _ZTVNSt6__ndk115time_get_bynameIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
ED896:  LDR             R0, [R0]; `vtable for'std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t>> ...
ED898:  ADD.W           R1, R0, #0x54 ; 'T'
ED89C:  ADDS            R0, #8
ED89E:  STR             R0, [R4]
ED8A0:  MOV             R0, R4
ED8A2:  STR             R1, [R4,#8]
ED8A4:  POP             {R4,R6,R7,PC}
