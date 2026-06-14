; =========================================================
; Game Engine Function: sub_F4DA4
; Address            : 0xF4DA4 - 0xF4DB8
; =========================================================

F4DA4:  PUSH            {R7,LR}
F4DA6:  MOV             R7, SP
F4DA8:  MOVS            R2, #1
F4DAA:  BLX             j__ZNSt6__ndk112ctype_bynameIwEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::ctype_byname<wchar_t>::ctype_byname(std::string const&,uint)
F4DAE:  LDR             R1, =(_ZTVNSt6__ndk115__time_get_tempIwEE - 0xF4DB4); `vtable for'std::__time_get_temp<wchar_t> ...
F4DB0:  ADD             R1, PC; `vtable for'std::__time_get_temp<wchar_t>
F4DB2:  ADDS            R1, #8
F4DB4:  STR             R1, [R0]
F4DB6:  POP             {R7,PC}
