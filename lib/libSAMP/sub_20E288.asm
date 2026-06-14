; =========================================================
; Game Engine Function: sub_20E288
; Address            : 0x20E288 - 0x20E2B0
; =========================================================

20E288:  PUSH            {R4,R6,R7,LR}
20E28A:  ADD             R7, SP, #8
20E28C:  MOV             R4, R0
20E28E:  SUBS            R0, R1, #1; this
20E290:  LDR             R1, =(_ZTVNSt6__ndk16locale5facetE_ptr - 0x20E296)
20E292:  ADD             R1, PC; _ZTVNSt6__ndk16locale5facetE_ptr
20E294:  LDR             R1, [R1]; `vtable for'std::locale::facet ...
20E296:  ADDS            R1, #8
20E298:  STRD.W          R1, R0, [R4]
20E29C:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
20E2A0:  STR             R0, [R4,#8]
20E2A2:  LDR             R0, =(_ZTVNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0x20E2A8)
20E2A4:  ADD             R0, PC; _ZTVNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
20E2A6:  LDR             R0, [R0]; `vtable for'std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>> ...
20E2A8:  ADDS            R0, #8
20E2AA:  STR             R0, [R4]
20E2AC:  MOV             R0, R4
20E2AE:  POP             {R4,R6,R7,PC}
