; =========================================================
; Game Engine Function: sub_126B48
; Address            : 0x126B48 - 0x126B66
; =========================================================

126B48:  PUSH            {R4,R6,R7,LR}
126B4A:  ADD             R7, SP, #8
126B4C:  MOV             R4, R0
126B4E:  LDR             R0, =(_ZTVN15descent_builder9builder_tI13ExtendWeaponsEE - 0x126B56); `vtable for'descent_builder::builder_t<ExtendWeapons> ...
126B50:  MOVS            R2, #0
126B52:  ADD             R0, PC; `vtable for'descent_builder::builder_t<ExtendWeapons>
126B54:  ADDS            R0, #8
126B56:  STRD.W          R0, R2, [R4]
126B5A:  MOV             R0, R1
126B5C:  MOV             R1, R4
126B5E:  BL              sub_ECD64
126B62:  MOV             R0, R4
126B64:  POP             {R4,R6,R7,PC}
