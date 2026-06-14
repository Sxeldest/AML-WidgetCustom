; =========================================================
; Game Engine Function: sub_DC54C
; Address            : 0xDC54C - 0xDC560
; =========================================================

DC54C:  PUSH            {R7,LR}
DC54E:  MOV             R7, SP
DC550:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
DC554:  LDR             R1, =(_ZTVSt14overflow_error_ptr - 0xDC55A)
DC556:  ADD             R1, PC; _ZTVSt14overflow_error_ptr
DC558:  LDR             R1, [R1]; `vtable for'std::overflow_error ...
DC55A:  ADDS            R1, #8
DC55C:  STR             R1, [R0]
DC55E:  POP             {R7,PC}
