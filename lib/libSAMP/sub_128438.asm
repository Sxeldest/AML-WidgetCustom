; =========================================================
; Game Engine Function: sub_128438
; Address            : 0x128438 - 0x128456
; =========================================================

128438:  PUSH            {R4,R6,R7,LR}
12843A:  ADD             R7, SP, #8
12843C:  MOV             R4, R0
12843E:  LDR             R0, =(_ZTVN15descent_builder9builder_tI15StreamingLimitsEE - 0x128446); `vtable for'descent_builder::builder_t<StreamingLimits> ...
128440:  MOVS            R2, #0
128442:  ADD             R0, PC; `vtable for'descent_builder::builder_t<StreamingLimits>
128444:  ADDS            R0, #8
128446:  STRD.W          R0, R2, [R4]
12844A:  MOV             R0, R1
12844C:  MOV             R1, R4
12844E:  BL              sub_ECD64
128452:  MOV             R0, R4
128454:  POP             {R4,R6,R7,PC}
