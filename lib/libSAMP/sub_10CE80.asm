; =========================================================
; Game Engine Function: sub_10CE80
; Address            : 0x10CE80 - 0x10CE9E
; =========================================================

10CE80:  PUSH            {R4,R6,R7,LR}
10CE82:  ADD             R7, SP, #8
10CE84:  MOV             R4, R0
10CE86:  LDR             R0, =(_ZTVN15descent_builder9builder_tI19DustFreeHelicoptersEE - 0x10CE8E); `vtable for'descent_builder::builder_t<DustFreeHelicopters> ...
10CE88:  MOVS            R2, #0
10CE8A:  ADD             R0, PC; `vtable for'descent_builder::builder_t<DustFreeHelicopters>
10CE8C:  ADDS            R0, #8
10CE8E:  STRD.W          R0, R2, [R4]
10CE92:  MOV             R0, R1
10CE94:  MOV             R1, R4
10CE96:  BL              sub_ECD64
10CE9A:  MOV             R0, R4
10CE9C:  POP             {R4,R6,R7,PC}
