; =========================================================
; Game Engine Function: _ZNSt13runtime_errorC2EPKc
; Address            : 0x2101B0 - 0x2101CC
; =========================================================

2101B0:  PUSH            {R4,R6,R7,LR}
2101B2:  ADD             R7, SP, #8
2101B4:  MOV             R4, R0
2101B6:  LDR             R0, =(_ZTVSt13runtime_error_ptr - 0x2101BC)
2101B8:  ADD             R0, PC; _ZTVSt13runtime_error_ptr
2101BA:  LDR             R0, [R0]; `vtable for'std::runtime_error ...
2101BC:  ADD.W           R2, R0, #8
2101C0:  MOV             R0, R4
2101C2:  STM             R0!, {R2}; int
2101C4:  BL              sub_210084
2101C8:  MOV             R0, R4
2101CA:  POP             {R4,R6,R7,PC}
