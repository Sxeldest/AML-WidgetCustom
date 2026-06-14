; =========================================================
; Game Engine Function: sub_20E24C
; Address            : 0x20E24C - 0x20E274
; =========================================================

20E24C:  PUSH            {R4,R6,R7,LR}
20E24E:  ADD             R7, SP, #8
20E250:  MOV             R4, R0
20E252:  SUBS            R0, R1, #1; this
20E254:  LDR             R1, =(_ZTVNSt6__ndk16locale5facetE_ptr - 0x20E25A)
20E256:  ADD             R1, PC; _ZTVNSt6__ndk16locale5facetE_ptr
20E258:  LDR             R1, [R1]; `vtable for'std::locale::facet ...
20E25A:  ADDS            R1, #8
20E25C:  STRD.W          R1, R0, [R4]
20E260:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
20E264:  STR             R0, [R4,#8]
20E266:  LDR             R0, =(_ZTVNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0x20E26C)
20E268:  ADD             R0, PC; _ZTVNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
20E26A:  LDR             R0, [R0]; `vtable for'std::time_put<char,std::ostreambuf_iterator<char>> ...
20E26C:  ADDS            R0, #8
20E26E:  STR             R0, [R4]
20E270:  MOV             R0, R4
20E272:  POP             {R4,R6,R7,PC}
