; =========================================================
; Game Engine Function: sub_205728
; Address            : 0x205728 - 0x20575E
; =========================================================

205728:  PUSH            {R4,R6,R7,LR}
20572A:  ADD             R7, SP, #8
20572C:  MOV             R4, R0
20572E:  SUBS            R0, R2, #1
205730:  LDR             R2, =(_ZTVNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0x205736)
205732:  ADD             R2, PC; _ZTVNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
205734:  LDR             R2, [R2]; `vtable for'std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>> ...
205736:  ADD.W           R3, R2, #0x38 ; '8'
20573A:  ADDS            R2, #8
20573C:  STRD.W          R2, R0, [R4]
205740:  STR             R3, [R4,#8]
205742:  ADD.W           R0, R4, #0xC
205746:  BLX             j__ZNSt6__ndk118__time_get_storageIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE; std::__time_get_storage<wchar_t>::__time_get_storage(std::string const&)
20574A:  LDR             R0, =(_ZTVNSt6__ndk115time_get_bynameIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0x205750)
20574C:  ADD             R0, PC; _ZTVNSt6__ndk115time_get_bynameIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
20574E:  LDR             R0, [R0]; `vtable for'std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t>> ...
205750:  ADD.W           R1, R0, #0x54 ; 'T'
205754:  ADDS            R0, #8
205756:  STR             R0, [R4]
205758:  MOV             R0, R4
20575A:  STR             R1, [R4,#8]
20575C:  POP             {R4,R6,R7,PC}
