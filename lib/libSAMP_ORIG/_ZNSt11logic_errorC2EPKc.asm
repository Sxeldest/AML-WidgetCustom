; =========================================================
; Game Engine Function: _ZNSt11logic_errorC2EPKc
; Address            : 0xF82D8 - 0xF82F4
; =========================================================

F82D8:  PUSH            {R4,R6,R7,LR}; Alternative name is 'std::logic_error::logic_error(char const*)'
F82DA:  ADD             R7, SP, #8
F82DC:  MOV             R4, R0
F82DE:  LDR             R0, =(_ZTVSt11logic_error_ptr - 0xF82E4)
F82E0:  ADD             R0, PC; _ZTVSt11logic_error_ptr
F82E2:  LDR             R0, [R0]; `vtable for'std::logic_error ...
F82E4:  ADD.W           R2, R0, #8
F82E8:  MOV             R0, R4
F82EA:  STM             R0!, {R2}; int
F82EC:  BL              sub_F829C
F82F0:  MOV             R0, R4
F82F2:  POP             {R4,R6,R7,PC}
