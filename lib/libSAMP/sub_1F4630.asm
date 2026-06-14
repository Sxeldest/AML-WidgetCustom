; =========================================================
; Game Engine Function: sub_1F4630
; Address            : 0x1F4630 - 0x1F4644
; =========================================================

1F4630:  PUSH            {R7,LR}
1F4632:  MOV             R7, SP
1F4634:  BLX             j__ZNSt13runtime_errorC2EPKc_0; std::runtime_error::runtime_error(char const*)
1F4638:  LDR             R1, =(_ZTVSt14overflow_error_ptr - 0x1F463E)
1F463A:  ADD             R1, PC; _ZTVSt14overflow_error_ptr
1F463C:  LDR             R1, [R1]; `vtable for'std::overflow_error ...
1F463E:  ADDS            R1, #8
1F4640:  STR             R1, [R0]
1F4642:  POP             {R7,PC}
