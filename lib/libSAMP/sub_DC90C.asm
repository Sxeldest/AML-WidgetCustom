; =========================================================
; Game Engine Function: sub_DC90C
; Address            : 0xDC90C - 0xDC920
; =========================================================

DC90C:  PUSH            {R7,LR}
DC90E:  MOV             R7, SP
DC910:  BLX             j__ZNSt11logic_errorC2EPKc; std::logic_error::logic_error(char const*)
DC914:  LDR             R1, =(_ZTVSt12length_error_ptr - 0xDC91A)
DC916:  ADD             R1, PC; _ZTVSt12length_error_ptr
DC918:  LDR             R1, [R1]; `vtable for'std::length_error ...
DC91A:  ADDS            R1, #8
DC91C:  STR             R1, [R0]
DC91E:  POP             {R7,PC}
