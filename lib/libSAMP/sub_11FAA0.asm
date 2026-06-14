; =========================================================
; Game Engine Function: sub_11FAA0
; Address            : 0x11FAA0 - 0x11FABE
; =========================================================

11FAA0:  PUSH            {R4,R6,R7,LR}
11FAA2:  ADD             R7, SP, #8
11FAA4:  MOV             R4, R0
11FAA6:  LDR             R0, =(_ZTVN15descent_builder9builder_tI16FixFxEmitterBP_cEE - 0x11FAAE); `vtable for'descent_builder::builder_t<FixFxEmitterBP_c> ...
11FAA8:  MOVS            R2, #0
11FAAA:  ADD             R0, PC; `vtable for'descent_builder::builder_t<FixFxEmitterBP_c>
11FAAC:  ADDS            R0, #8
11FAAE:  STRD.W          R0, R2, [R4]
11FAB2:  MOV             R0, R1
11FAB4:  MOV             R1, R4
11FAB6:  BL              sub_ECD64
11FABA:  MOV             R0, R4
11FABC:  POP             {R4,R6,R7,PC}
