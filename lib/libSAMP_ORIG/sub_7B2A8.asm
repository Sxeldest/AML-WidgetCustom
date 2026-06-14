; =========================================================
; Game Engine Function: sub_7B2A8
; Address            : 0x7B2A8 - 0x7B2BC
; =========================================================

7B2A8:  PUSH            {R7,LR}
7B2AA:  MOV             R7, SP
7B2AC:  BLX             j__ZNSt11logic_errorC2EPKc; std::logic_error::logic_error(char const*)
7B2B0:  LDR             R1, =(_ZTVSt12length_error_ptr - 0x7B2B6)
7B2B2:  ADD             R1, PC; _ZTVSt12length_error_ptr
7B2B4:  LDR             R1, [R1]; `vtable for'std::length_error ...
7B2B6:  ADDS            R1, #8
7B2B8:  STR             R1, [R0]
7B2BA:  POP             {R7,PC}
