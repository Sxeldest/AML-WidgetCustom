; =========================================================
; Game Engine Function: sub_F4358
; Address            : 0xF4358 - 0xF4376
; =========================================================

F4358:  PUSH            {R4,R6,R7,LR}
F435A:  ADD             R7, SP, #8
F435C:  MOV             R4, R0
F435E:  LDR             R0, =(_ZTVN15descent_builder9builder_tI13CustomMapIconEE - 0xF4366); `vtable for'descent_builder::builder_t<CustomMapIcon> ...
F4360:  MOVS            R2, #0
F4362:  ADD             R0, PC; `vtable for'descent_builder::builder_t<CustomMapIcon>
F4364:  ADDS            R0, #8
F4366:  STRD.W          R0, R2, [R4]
F436A:  MOV             R0, R1
F436C:  MOV             R1, R4
F436E:  BL              sub_ECD64
F4372:  MOV             R0, R4
F4374:  POP             {R4,R6,R7,PC}
