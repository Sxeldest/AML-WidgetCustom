; =========================================================
; Game Engine Function: sub_F6398
; Address            : 0xF6398 - 0xF63C0
; =========================================================

F6398:  PUSH            {R4,R6,R7,LR}
F639A:  ADD             R7, SP, #8
F639C:  MOV             R4, R0
F639E:  SUBS            R0, R1, #1; this
F63A0:  LDR             R1, =(_ZTVNSt6__ndk16locale5facetE_ptr - 0xF63A6)
F63A2:  ADD             R1, PC; _ZTVNSt6__ndk16locale5facetE_ptr
F63A4:  LDR             R1, [R1]; `vtable for'std::locale::facet ...
F63A6:  ADDS            R1, #8
F63A8:  STRD.W          R1, R0, [R4]
F63AC:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
F63B0:  STR             R0, [R4,#8]
F63B2:  LDR             R0, =(_ZTVNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0xF63B8)
F63B4:  ADD             R0, PC; _ZTVNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
F63B6:  LDR             R0, [R0]; `vtable for'std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>> ...
F63B8:  ADDS            R0, #8
F63BA:  STR             R0, [R4]
F63BC:  MOV             R0, R4
F63BE:  POP             {R4,R6,R7,PC}
