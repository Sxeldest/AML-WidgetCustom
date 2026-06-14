; =========================================================
; Game Engine Function: sub_F32A0
; Address            : 0xF32A0 - 0xF32BE
; =========================================================

F32A0:  PUSH            {R4,R6,R7,LR}
F32A2:  ADD             R7, SP, #8
F32A4:  MOV             R4, R0
F32A6:  LDR             R0, =(_ZTVN15descent_builder9builder_tI19CTouchInterfaceHookEE - 0xF32AE); `vtable for'descent_builder::builder_t<CTouchInterfaceHook> ...
F32A8:  MOVS            R2, #0
F32AA:  ADD             R0, PC; `vtable for'descent_builder::builder_t<CTouchInterfaceHook>
F32AC:  ADDS            R0, #8
F32AE:  STRD.W          R0, R2, [R4]
F32B2:  MOV             R0, R1
F32B4:  MOV             R1, R4
F32B6:  BL              sub_ECD64
F32BA:  MOV             R0, R4
F32BC:  POP             {R4,R6,R7,PC}
