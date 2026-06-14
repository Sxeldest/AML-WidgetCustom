; =========================================================
; Game Engine Function: sub_FA4E4
; Address            : 0xFA4E4 - 0xFA502
; =========================================================

FA4E4:  PUSH            {R4,R6,R7,LR}
FA4E6:  ADD             R7, SP, #8
FA4E8:  MOV             R4, R0
FA4EA:  LDR             R0, =(_ZTVN15descent_builder9builder_tI8HeadmoveEE - 0xFA4F2); `vtable for'descent_builder::builder_t<Headmove> ...
FA4EC:  MOVS            R2, #0
FA4EE:  ADD             R0, PC; `vtable for'descent_builder::builder_t<Headmove>
FA4F0:  ADDS            R0, #8
FA4F2:  STRD.W          R0, R2, [R4]
FA4F6:  MOV             R0, R1
FA4F8:  MOV             R1, R4
FA4FA:  BL              sub_ECD64
FA4FE:  MOV             R0, R4
FA500:  POP             {R4,R6,R7,PC}
