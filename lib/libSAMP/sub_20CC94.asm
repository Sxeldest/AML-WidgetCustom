; =========================================================
; Game Engine Function: sub_20CC94
; Address            : 0x20CC94 - 0x20CCA8
; =========================================================

20CC94:  PUSH            {R7,LR}
20CC96:  MOV             R7, SP
20CC98:  MOVS            R2, #1
20CC9A:  BLX             j__ZNSt6__ndk112ctype_bynameIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::ctype_byname<wchar_t>::ctype_byname(std::string const&,uint)
20CC9E:  LDR             R1, =(_ZTVNSt6__ndk115__time_get_tempIwEE - 0x20CCA4); `vtable for'std::__time_get_temp<wchar_t> ...
20CCA0:  ADD             R1, PC; `vtable for'std::__time_get_temp<wchar_t>
20CCA2:  ADDS            R1, #8
20CCA4:  STR             R1, [R0]
20CCA6:  POP             {R7,PC}
