; =========================================================
; Game Engine Function: sub_10FCA0
; Address            : 0x10FCA0 - 0x10FCBE
; =========================================================

10FCA0:  PUSH            {R4,R6,R7,LR}
10FCA2:  ADD             R7, SP, #8
10FCA4:  MOV             R4, R0
10FCA6:  LDR             R0, =(_ZTVN15descent_builder9builder_tI13StreamCleanerEE - 0x10FCAE); `vtable for'descent_builder::builder_t<StreamCleaner> ...
10FCA8:  MOVS            R2, #0
10FCAA:  ADD             R0, PC; `vtable for'descent_builder::builder_t<StreamCleaner>
10FCAC:  ADDS            R0, #8
10FCAE:  STRD.W          R0, R2, [R4]
10FCB2:  MOV             R0, R1
10FCB4:  MOV             R1, R4
10FCB6:  BL              sub_ECD64
10FCBA:  MOV             R0, R4
10FCBC:  POP             {R4,R6,R7,PC}
