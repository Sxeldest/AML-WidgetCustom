; =========================================================
; Game Engine Function: sub_F4B20
; Address            : 0xF4B20 - 0xF4B34
; =========================================================

F4B20:  PUSH            {R7,LR}
F4B22:  MOV             R7, SP
F4B24:  MOVS            R2, #1
F4B26:  BLX             j__ZNSt6__ndk112ctype_bynameIcEC2ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEj; std::ctype_byname<char>::ctype_byname(std::string const&,uint)
F4B2A:  LDR             R1, =(_ZTVNSt6__ndk115__time_get_tempIcEE - 0xF4B30); `vtable for'std::__time_get_temp<char> ...
F4B2C:  ADD             R1, PC; `vtable for'std::__time_get_temp<char>
F4B2E:  ADDS            R1, #8
F4B30:  STR             R1, [R0]
F4B32:  POP             {R7,PC}
