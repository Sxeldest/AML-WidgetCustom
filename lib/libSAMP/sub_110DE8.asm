; =========================================================
; Game Engine Function: sub_110DE8
; Address            : 0x110DE8 - 0x110E06
; =========================================================

110DE8:  PUSH            {R4,R6,R7,LR}
110DEA:  ADD             R7, SP, #8
110DEC:  MOV             R4, R0
110DEE:  LDR             R0, =(_ZTVN15descent_builder9builder_tI8airbrakeEE - 0x110DF6); `vtable for'descent_builder::builder_t<airbrake> ...
110DF0:  MOVS            R2, #0
110DF2:  ADD             R0, PC; `vtable for'descent_builder::builder_t<airbrake>
110DF4:  ADDS            R0, #8
110DF6:  STRD.W          R0, R2, [R4]
110DFA:  MOV             R0, R1
110DFC:  MOV             R1, R4
110DFE:  BL              sub_ECD64
110E02:  MOV             R0, R4
110E04:  POP             {R4,R6,R7,PC}
