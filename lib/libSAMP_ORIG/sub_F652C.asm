; =========================================================
; Game Engine Function: sub_F652C
; Address            : 0xF652C - 0xF6556
; =========================================================

F652C:  PUSH            {R4,R6,R7,LR}
F652E:  ADD             R7, SP, #8
F6530:  MOV             R4, R0
F6532:  SUBS            R0, R2, #1
F6534:  LDR             R2, =(_ZTVNSt6__ndk16locale5facetE_ptr - 0xF653A)
F6536:  ADD             R2, PC; _ZTVNSt6__ndk16locale5facetE_ptr
F6538:  LDR             R2, [R2]; `vtable for'std::locale::facet ...
F653A:  ADDS            R2, #8
F653C:  STRD.W          R2, R0, [R4]
F6540:  ADD.W           R0, R4, #8
F6544:  BLX             j__ZNSt6__ndk110__time_putC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE; std::__time_put::__time_put(std::string const&)
F6548:  LDR             R0, =(_ZTVNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0xF654E)
F654A:  ADD             R0, PC; _ZTVNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
F654C:  LDR             R0, [R0]; `vtable for'std::time_put<char,std::ostreambuf_iterator<char>> ...
F654E:  ADDS            R0, #8
F6550:  STR             R0, [R4]
F6552:  MOV             R0, R4
F6554:  POP             {R4,R6,R7,PC}
