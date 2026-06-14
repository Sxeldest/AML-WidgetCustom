; =========================================================
; Game Engine Function: sub_11E000
; Address            : 0x11E000 - 0x11E01E
; =========================================================

11E000:  PUSH            {R4,R6,R7,LR}
11E002:  ADD             R7, SP, #8
11E004:  MOV             R4, R0
11E006:  LDR             R0, =(_ZTVN15descent_builder9builder_tIN5fixes5DeathEEE - 0x11E00E); `vtable for'descent_builder::builder_t<fixes::Death> ...
11E008:  MOVS            R2, #0
11E00A:  ADD             R0, PC; `vtable for'descent_builder::builder_t<fixes::Death>
11E00C:  ADDS            R0, #8
11E00E:  STRD.W          R0, R2, [R4]
11E012:  MOV             R0, R1
11E014:  MOV             R1, R4
11E016:  BL              sub_ECD64
11E01A:  MOV             R0, R4
11E01C:  POP             {R4,R6,R7,PC}
