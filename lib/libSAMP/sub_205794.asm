; =========================================================
; Game Engine Function: sub_205794
; Address            : 0x205794 - 0x2057A8
; =========================================================

205794:  PUSH            {R7,LR}
205796:  MOV             R7, SP
205798:  BL              sub_20E41C
20579C:  LDR             R1, =(_ZTVNSt6__ndk115time_put_bynameIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr - 0x2057A2)
20579E:  ADD             R1, PC; _ZTVNSt6__ndk115time_put_bynameIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEEE_ptr
2057A0:  LDR             R1, [R1]; `vtable for'std::time_put_byname<char,std::ostreambuf_iterator<char>> ...
2057A2:  ADDS            R1, #8
2057A4:  STR             R1, [R0]
2057A6:  POP             {R7,PC}
