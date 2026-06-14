; =========================================================
; Game Engine Function: sub_F23DC
; Address            : 0xF23DC - 0xF23FA
; =========================================================

F23DC:  PUSH            {R4,R6,R7,LR}
F23DE:  ADD             R7, SP, #8
F23E0:  MOV             R4, R0
F23E2:  LDR             R0, =(_ZTVN15descent_builder9builder_tI17ApplicationEventsEE - 0xF23EA); `vtable for'descent_builder::builder_t<ApplicationEvents> ...
F23E4:  MOVS            R2, #0
F23E6:  ADD             R0, PC; `vtable for'descent_builder::builder_t<ApplicationEvents>
F23E8:  ADDS            R0, #8
F23EA:  STRD.W          R0, R2, [R4]
F23EE:  MOV             R0, R1
F23F0:  MOV             R1, R4
F23F2:  BL              sub_ECD64
F23F6:  MOV             R0, R4
F23F8:  POP             {R4,R6,R7,PC}
