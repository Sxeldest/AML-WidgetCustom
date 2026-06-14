; =========================================================
; Game Engine Function: sub_F6568
; Address            : 0xF6568 - 0xF6592
; =========================================================

F6568:  PUSH            {R4,R6,R7,LR}
F656A:  ADD             R7, SP, #8
F656C:  MOV             R4, R0
F656E:  SUBS            R0, R2, #1
F6570:  LDR             R2, =(_ZTVNSt6__ndk16locale5facetE_ptr - 0xF6576)
F6572:  ADD             R2, PC; _ZTVNSt6__ndk16locale5facetE_ptr
F6574:  LDR             R2, [R2]; `vtable for'std::locale::facet ...
F6576:  ADDS            R2, #8
F6578:  STRD.W          R2, R0, [R4]
F657C:  ADD.W           R0, R4, #8
F6580:  BLX             j__ZNSt6__ndk110__time_putC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE; std::__time_put::__time_put(std::string const&)
F6584:  LDR             R0, =(_ZTVNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0xF658A)
F6586:  ADD             R0, PC; _ZTVNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
F6588:  LDR             R0, [R0]; `vtable for'std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>> ...
F658A:  ADDS            R0, #8
F658C:  STR             R0, [R4]
F658E:  MOV             R0, R4
F6590:  POP             {R4,R6,R7,PC}
