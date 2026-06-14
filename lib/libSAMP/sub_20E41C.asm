; =========================================================
; Game Engine Function: sub_20E41C
; Address            : 0x20E41C - 0x20E446
; =========================================================

20E41C:  PUSH            {R4,R6,R7,LR}
20E41E:  ADD             R7, SP, #8
20E420:  MOV             R4, R0
20E422:  SUBS            R0, R2, #1
20E424:  LDR             R2, =(_ZTVNSt6__ndk16locale5facetE_ptr - 0x20E42A)
20E426:  ADD             R2, PC; _ZTVNSt6__ndk16locale5facetE_ptr
20E428:  LDR             R2, [R2]; `vtable for'std::locale::facet ...
20E42A:  ADDS            R2, #8
20E42C:  STRD.W          R2, R0, [R4]
20E430:  ADD.W           R0, R4, #8
20E434:  BLX             j__ZNSt6__ndk110__time_putC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE; std::__time_put::__time_put(std::string const&)
20E438:  LDR             R0, =(_ZTVNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0x20E43E)
20E43A:  ADD             R0, PC; _ZTVNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
20E43C:  LDR             R0, [R0]; `vtable for'std::time_put<char,std::ostreambuf_iterator<char>> ...
20E43E:  ADDS            R0, #8
20E440:  STR             R0, [R4]
20E442:  MOV             R0, R4
20E444:  POP             {R4,R6,R7,PC}
