; =========================================================
; Game Engine Function: sub_120820
; Address            : 0x120820 - 0x12083E
; =========================================================

120820:  PUSH            {R4,R6,R7,LR}
120822:  ADD             R7, SP, #8
120824:  MOV             R4, R0
120826:  LDR             R0, =(_ZTVN15descent_builder9builder_tI12_rxOpenGLFixEE - 0x12082E); `vtable for'descent_builder::builder_t<_rxOpenGLFix> ...
120828:  MOVS            R2, #0
12082A:  ADD             R0, PC; `vtable for'descent_builder::builder_t<_rxOpenGLFix>
12082C:  ADDS            R0, #8
12082E:  STRD.W          R0, R2, [R4]
120832:  MOV             R0, R1
120834:  MOV             R1, R4
120836:  BL              sub_ECD64
12083A:  MOV             R0, R4
12083C:  POP             {R4,R6,R7,PC}
