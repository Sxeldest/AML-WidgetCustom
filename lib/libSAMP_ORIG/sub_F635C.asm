; =========================================================
; Game Engine Function: sub_F635C
; Address            : 0xF635C - 0xF6384
; =========================================================

F635C:  PUSH            {R4,R6,R7,LR}
F635E:  ADD             R7, SP, #8
F6360:  MOV             R4, R0
F6362:  SUBS            R0, R1, #1; this
F6364:  LDR             R1, =(_ZTVNSt6__ndk16locale5facetE_ptr - 0xF636A)
F6366:  ADD             R1, PC; _ZTVNSt6__ndk16locale5facetE_ptr
F6368:  LDR             R1, [R1]; `vtable for'std::locale::facet ...
F636A:  ADDS            R1, #8
F636C:  STRD.W          R1, R0, [R4]
F6370:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
F6374:  STR             R0, [R4,#8]
F6376:  LDR             R0, =(_ZTVNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0xF637C)
F6378:  ADD             R0, PC; _ZTVNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
F637A:  LDR             R0, [R0]; `vtable for'std::time_put<char,std::ostreambuf_iterator<char>> ...
F637C:  ADDS            R0, #8
F637E:  STR             R0, [R4]
F6380:  MOV             R0, R4
F6382:  POP             {R4,R6,R7,PC}
