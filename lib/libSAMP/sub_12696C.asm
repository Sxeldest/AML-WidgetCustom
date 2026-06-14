; =========================================================
; Game Engine Function: sub_12696C
; Address            : 0x12696C - 0x12698A
; =========================================================

12696C:  PUSH            {R4,R6,R7,LR}
12696E:  ADD             R7, SP, #8
126970:  MOV             R4, R0
126972:  LDR             R0, =(_ZTVN15descent_builder9builder_tI7ColHookEE - 0x12697A); `vtable for'descent_builder::builder_t<ColHook> ...
126974:  MOVS            R2, #0
126976:  ADD             R0, PC; `vtable for'descent_builder::builder_t<ColHook>
126978:  ADDS            R0, #8
12697A:  STRD.W          R0, R2, [R4]
12697E:  MOV             R0, R1
126980:  MOV             R1, R4
126982:  BL              sub_ECD64
126986:  MOV             R0, R4
126988:  POP             {R4,R6,R7,PC}
