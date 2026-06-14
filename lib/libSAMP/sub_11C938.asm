; =========================================================
; Game Engine Function: sub_11C938
; Address            : 0x11C938 - 0x11C956
; =========================================================

11C938:  PUSH            {R4,R6,R7,LR}
11C93A:  ADD             R7, SP, #8
11C93C:  MOV             R4, R0
11C93E:  LDR             R0, =(_ZTVN15descent_builder9builder_tI9BinCachesEE - 0x11C946); `vtable for'descent_builder::builder_t<BinCaches> ...
11C940:  MOVS            R2, #0
11C942:  ADD             R0, PC; `vtable for'descent_builder::builder_t<BinCaches>
11C944:  ADDS            R0, #8
11C946:  STRD.W          R0, R2, [R4]
11C94A:  MOV             R0, R1
11C94C:  MOV             R1, R4
11C94E:  BL              sub_ECD64
11C952:  MOV             R0, R4
11C954:  POP             {R4,R6,R7,PC}
