; =========================================================
; Game Engine Function: sub_F49C4
; Address            : 0xF49C4 - 0xF49D8
; =========================================================

F49C4:  PUSH            {R7,LR}
F49C6:  MOV             R7, SP
F49C8:  MOVS            R2, #1
F49CA:  BLX             j__ZNSt6__ndk112ctype_bynameIcEC2EPKcj; std::ctype_byname<char>::ctype_byname(char const*,uint)
F49CE:  LDR             R1, =(_ZTVNSt6__ndk115__time_get_tempIcEE - 0xF49D4); `vtable for'std::__time_get_temp<char> ...
F49D0:  ADD             R1, PC; `vtable for'std::__time_get_temp<char>
F49D2:  ADDS            R1, #8
F49D4:  STR             R1, [R0]
F49D6:  POP             {R7,PC}
