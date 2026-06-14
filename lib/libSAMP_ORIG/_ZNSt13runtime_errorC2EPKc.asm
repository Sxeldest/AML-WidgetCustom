; =========================================================
; Game Engine Function: _ZNSt13runtime_errorC2EPKc
; Address            : 0xF83C8 - 0xF83E4
; =========================================================

F83C8:  PUSH            {R4,R6,R7,LR}
F83CA:  ADD             R7, SP, #8
F83CC:  MOV             R4, R0
F83CE:  LDR             R0, =(_ZTVSt13runtime_error_ptr - 0xF83D4)
F83D0:  ADD             R0, PC; _ZTVSt13runtime_error_ptr
F83D2:  LDR             R0, [R0]; `vtable for'std::runtime_error ...
F83D4:  ADD.W           R2, R0, #8
F83D8:  MOV             R0, R4
F83DA:  STM             R0!, {R2}; int
F83DC:  BL              sub_F829C
F83E0:  MOV             R0, R4
F83E2:  POP             {R4,R6,R7,PC}
