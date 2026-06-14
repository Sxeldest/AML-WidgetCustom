; =========================================================
; Game Engine Function: sub_162918
; Address            : 0x162918 - 0x162936
; =========================================================

162918:  PUSH            {R4,R6,R7,LR}
16291A:  ADD             R7, SP, #8
16291C:  MOV             R4, R0
16291E:  LDR             R0, =(_ZTVN15descent_builder9builder_tIN3UEF11stack_trace11stack_traceEEE - 0x162926); `vtable for'descent_builder::builder_t<UEF::stack_trace::stack_trace> ...
162920:  MOVS            R2, #0
162922:  ADD             R0, PC; `vtable for'descent_builder::builder_t<UEF::stack_trace::stack_trace>
162924:  ADDS            R0, #8
162926:  STRD.W          R0, R2, [R4]
16292A:  MOV             R0, R1
16292C:  MOV             R1, R4
16292E:  BL              sub_ECD64
162932:  MOV             R0, R4
162934:  POP             {R4,R6,R7,PC}
