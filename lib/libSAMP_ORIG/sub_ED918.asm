; =========================================================
; Game Engine Function: sub_ED918
; Address            : 0xED918 - 0xED92C
; =========================================================

ED918:  PUSH            {R7,LR}
ED91A:  MOV             R7, SP
ED91C:  BL              sub_F6568
ED920:  LDR             R1, =(_ZTVNSt6__ndk115time_put_bynameIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr - 0xED926)
ED922:  ADD             R1, PC; _ZTVNSt6__ndk115time_put_bynameIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEEE_ptr
ED924:  LDR             R1, [R1]; `vtable for'std::time_put_byname<wchar_t,std::ostreambuf_iterator<wchar_t>> ...
ED926:  ADDS            R1, #8
ED928:  STR             R1, [R0]
ED92A:  POP             {R7,PC}
