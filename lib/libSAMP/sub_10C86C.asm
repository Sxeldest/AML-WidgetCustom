; =========================================================
; Game Engine Function: sub_10C86C
; Address            : 0x10C86C - 0x10C88A
; =========================================================

10C86C:  PUSH            {R4,R6,R7,LR}
10C86E:  ADD             R7, SP, #8
10C870:  MOV             R4, R0
10C872:  LDR             R0, =(_ZTVN15descent_builder9builder_tI18DisplayPerformanceEE - 0x10C87A); `vtable for'descent_builder::builder_t<DisplayPerformance> ...
10C874:  MOVS            R2, #0
10C876:  ADD             R0, PC; `vtable for'descent_builder::builder_t<DisplayPerformance>
10C878:  ADDS            R0, #8
10C87A:  STRD.W          R0, R2, [R4]
10C87E:  MOV             R0, R1
10C880:  MOV             R1, R4
10C882:  BL              sub_ECD64
10C886:  MOV             R0, R4
10C888:  POP             {R4,R6,R7,PC}
