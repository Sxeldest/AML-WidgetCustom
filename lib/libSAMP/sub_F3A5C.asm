; =========================================================
; Game Engine Function: sub_F3A5C
; Address            : 0xF3A5C - 0xF3A7A
; =========================================================

F3A5C:  PUSH            {R4,R6,R7,LR}
F3A5E:  ADD             R7, SP, #8
F3A60:  MOV             R4, R0
F3A62:  LDR             R0, =(_ZTVN15descent_builder9builder_tI15CustomEnterAnimEE - 0xF3A6A); `vtable for'descent_builder::builder_t<CustomEnterAnim> ...
F3A64:  MOVS            R2, #0
F3A66:  ADD             R0, PC; `vtable for'descent_builder::builder_t<CustomEnterAnim>
F3A68:  ADDS            R0, #8
F3A6A:  STRD.W          R0, R2, [R4]
F3A6E:  MOV             R0, R1
F3A70:  MOV             R1, R4
F3A72:  BL              sub_ECD64
F3A76:  MOV             R0, R4
F3A78:  POP             {R4,R6,R7,PC}
