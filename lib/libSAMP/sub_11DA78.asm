; =========================================================
; Game Engine Function: sub_11DA78
; Address            : 0x11DA78 - 0x11DA96
; =========================================================

11DA78:  PUSH            {R4,R6,R7,LR}
11DA7A:  ADD             R7, SP, #8
11DA7C:  MOV             R4, R0
11DA7E:  LDR             R0, =(_ZTVN15descent_builder9builder_tI31CTaskUtilityLineUpPedWithCarFixEE - 0x11DA86); `vtable for'descent_builder::builder_t<CTaskUtilityLineUpPedWithCarFix> ...
11DA80:  MOVS            R2, #0
11DA82:  ADD             R0, PC; `vtable for'descent_builder::builder_t<CTaskUtilityLineUpPedWithCarFix>
11DA84:  ADDS            R0, #8
11DA86:  STRD.W          R0, R2, [R4]
11DA8A:  MOV             R0, R1
11DA8C:  MOV             R1, R4
11DA8E:  BL              sub_ECD64
11DA92:  MOV             R0, R4
11DA94:  POP             {R4,R6,R7,PC}
