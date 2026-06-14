; =========================================================
; Game Engine Function: sub_F5574
; Address            : 0xF5574 - 0xF5592
; =========================================================

F5574:  PUSH            {R4,R6,R7,LR}
F5576:  ADD             R7, SP, #8
F5578:  MOV             R4, R0
F557A:  LDR             R0, =(_ZTVN15descent_builder9builder_tI10FPSLimiterEE - 0xF5582); `vtable for'descent_builder::builder_t<FPSLimiter> ...
F557C:  MOVS            R2, #0
F557E:  ADD             R0, PC; `vtable for'descent_builder::builder_t<FPSLimiter>
F5580:  ADDS            R0, #8
F5582:  STRD.W          R0, R2, [R4]
F5586:  MOV             R0, R1
F5588:  MOV             R1, R4
F558A:  BL              sub_ECD64
F558E:  MOV             R0, R4
F5590:  POP             {R4,R6,R7,PC}
