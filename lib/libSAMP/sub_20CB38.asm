; =========================================================
; Game Engine Function: sub_20CB38
; Address            : 0x20CB38 - 0x20CB4C
; =========================================================

20CB38:  PUSH            {R7,LR}
20CB3A:  MOV             R7, SP
20CB3C:  MOVS            R2, #1
20CB3E:  BLX             j__ZNSt6__ndk112ctype_bynameIwEC2EPKcj; std::ctype_byname<wchar_t>::ctype_byname(char const*,uint)
20CB42:  LDR             R1, =(_ZTVNSt6__ndk115__time_get_tempIwEE - 0x20CB48); `vtable for'std::__time_get_temp<wchar_t> ...
20CB44:  ADD             R1, PC; `vtable for'std::__time_get_temp<wchar_t>
20CB46:  ADDS            R1, #8
20CB48:  STR             R1, [R0]
20CB4A:  POP             {R7,PC}
