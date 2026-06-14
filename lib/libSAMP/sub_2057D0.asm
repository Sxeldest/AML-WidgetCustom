; =========================================================
; Game Engine Function: sub_2057D0
; Address            : 0x2057D0 - 0x2057E4
; =========================================================

2057D0:  PUSH            {R7,LR}
2057D2:  MOV             R7, SP
2057D4:  BL              sub_20E458
2057D8:  LDR             R1, =(_ZTVNSt6__ndk115time_put_bynameIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0x2057DE)
2057DA:  ADD             R1, PC; _ZTVNSt6__ndk115time_put_bynameIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
2057DC:  LDR             R1, [R1]; `vtable for'std::time_put_byname<wchar_t,std::ostreambuf_iterator<wchar_t>> ...
2057DE:  ADDS            R1, #8
2057E0:  STR             R1, [R0]
2057E2:  POP             {R7,PC}
