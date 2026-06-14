; =========================================================
; Game Engine Function: sub_ED8DC
; Address            : 0xED8DC - 0xED8F0
; =========================================================

ED8DC:  PUSH            {R7,LR}
ED8DE:  MOV             R7, SP
ED8E0:  BL              sub_F652C
ED8E4:  LDR             R1, =(_ZTVNSt6__ndk115time_put_bynameIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0xED8EA)
ED8E6:  ADD             R1, PC; _ZTVNSt6__ndk115time_put_bynameIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
ED8E8:  LDR             R1, [R1]; `vtable for'std::time_put_byname<char,std::ostreambuf_iterator<char>> ...
ED8EA:  ADDS            R1, #8
ED8EC:  STR             R1, [R0]
ED8EE:  POP             {R7,PC}
