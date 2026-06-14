; =========================================================
; Game Engine Function: sub_11CCF4
; Address            : 0x11CCF4 - 0x11CD12
; =========================================================

11CCF4:  PUSH            {R4,R6,R7,LR}
11CCF6:  ADD             R7, SP, #8
11CCF8:  MOV             R4, R0
11CCFA:  LDR             R0, =(_ZTVN15descent_builder9builder_tI16CCarEnterExitFixEE - 0x11CD02); `vtable for'descent_builder::builder_t<CCarEnterExitFix> ...
11CCFC:  MOVS            R2, #0
11CCFE:  ADD             R0, PC; `vtable for'descent_builder::builder_t<CCarEnterExitFix>
11CD00:  ADDS            R0, #8
11CD02:  STRD.W          R0, R2, [R4]
11CD06:  MOV             R0, R1
11CD08:  MOV             R1, R4
11CD0A:  BL              sub_ECD64
11CD0E:  MOV             R0, R4
11CD10:  POP             {R4,R6,R7,PC}
