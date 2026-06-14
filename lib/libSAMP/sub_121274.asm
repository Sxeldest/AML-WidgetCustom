; =========================================================
; Game Engine Function: sub_121274
; Address            : 0x121274 - 0x121292
; =========================================================

121274:  PUSH            {R4,R6,R7,LR}
121276:  ADD             R7, SP, #8
121278:  MOV             R4, R0
12127A:  LDR             R0, =(_ZTVN15descent_builder9builder_tI21fix_crash_get_textureEE - 0x121282); `vtable for'descent_builder::builder_t<fix_crash_get_texture> ...
12127C:  MOVS            R2, #0
12127E:  ADD             R0, PC; `vtable for'descent_builder::builder_t<fix_crash_get_texture>
121280:  ADDS            R0, #8
121282:  STRD.W          R0, R2, [R4]
121286:  MOV             R0, R1
121288:  MOV             R1, R4
12128A:  BL              sub_ECD64
12128E:  MOV             R0, R4
121290:  POP             {R4,R6,R7,PC}
