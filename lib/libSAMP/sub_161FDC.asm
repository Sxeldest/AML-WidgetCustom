; =========================================================
; Game Engine Function: sub_161FDC
; Address            : 0x161FDC - 0x161FFA
; =========================================================

161FDC:  PUSH            {R4,R6,R7,LR}
161FDE:  ADD             R7, SP, #8
161FE0:  MOV             R4, R0
161FE2:  LDR             R0, =(_ZTVN15descent_builder9builder_tI10packet_logEE - 0x161FEA); `vtable for'descent_builder::builder_t<packet_log> ...
161FE4:  MOVS            R2, #0
161FE6:  ADD             R0, PC; `vtable for'descent_builder::builder_t<packet_log>
161FE8:  ADDS            R0, #8
161FEA:  STRD.W          R0, R2, [R4]
161FEE:  MOV             R0, R1
161FF0:  MOV             R1, R4
161FF2:  BL              sub_ECD64
161FF6:  MOV             R0, R4
161FF8:  POP             {R4,R6,R7,PC}
