; =========================================================
; Game Engine Function: sub_F4C48
; Address            : 0xF4C48 - 0xF4C5C
; =========================================================

F4C48:  PUSH            {R7,LR}
F4C4A:  MOV             R7, SP
F4C4C:  MOVS            R2, #1
F4C4E:  BLX             j__ZNSt6__ndk112ctype_bynameIwEC2EPKcj; std::ctype_byname<wchar_t>::ctype_byname(char const*,uint)
F4C52:  LDR             R1, =(_ZTVNSt6__ndk115__time_get_tempIwEE - 0xF4C58); `vtable for'std::__time_get_temp<wchar_t> ...
F4C54:  ADD             R1, PC; `vtable for'std::__time_get_temp<wchar_t>
F4C56:  ADDS            R1, #8
F4C58:  STR             R1, [R0]
F4C5A:  POP             {R7,PC}
