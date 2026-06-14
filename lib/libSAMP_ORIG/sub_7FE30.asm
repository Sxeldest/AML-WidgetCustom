; =========================================================
; Game Engine Function: sub_7FE30
; Address            : 0x7FE30 - 0x7FE44
; =========================================================

7FE30:  PUSH            {R7,LR}
7FE32:  MOV             R7, SP
7FE34:  BLX             j__ZNSt11logic_errorC2EPKc; std::logic_error::logic_error(char const*)
7FE38:  LDR             R1, =(_ZTVSt16invalid_argument_ptr - 0x7FE3E)
7FE3A:  ADD             R1, PC; _ZTVSt16invalid_argument_ptr
7FE3C:  LDR             R1, [R1]; `vtable for'std::invalid_argument ...
7FE3E:  ADDS            R1, #8
7FE40:  STR             R1, [R0]
7FE42:  POP             {R7,PC}
