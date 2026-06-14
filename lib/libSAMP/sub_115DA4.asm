; =========================================================
; Game Engine Function: sub_115DA4
; Address            : 0x115DA4 - 0x115DC2
; =========================================================

115DA4:  PUSH            {R4,R6,R7,LR}
115DA6:  ADD             R7, SP, #8
115DA8:  MOV             R4, R0
115DAA:  LDR             R0, =(_ZTVN15descent_builder9builder_tI14streamed_filesEE - 0x115DB2); `vtable for'descent_builder::builder_t<streamed_files> ...
115DAC:  MOVS            R2, #0
115DAE:  ADD             R0, PC; `vtable for'descent_builder::builder_t<streamed_files>
115DB0:  ADDS            R0, #8
115DB2:  STRD.W          R0, R2, [R4]
115DB6:  MOV             R0, R1
115DB8:  MOV             R1, R4
115DBA:  BL              sub_ECD64
115DBE:  MOV             R0, R4
115DC0:  POP             {R4,R6,R7,PC}
