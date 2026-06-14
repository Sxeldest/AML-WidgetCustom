; =========================================================
; Game Engine Function: sub_162310
; Address            : 0x162310 - 0x16232E
; =========================================================

162310:  PUSH            {R4,R6,R7,LR}
162312:  ADD             R7, SP, #8
162314:  MOV             R4, R0
162316:  LDR             R0, =(_ZTVN15descent_builder9builder_tI8pool_logEE - 0x16231E); `vtable for'descent_builder::builder_t<pool_log> ...
162318:  MOVS            R2, #0
16231A:  ADD             R0, PC; `vtable for'descent_builder::builder_t<pool_log>
16231C:  ADDS            R0, #8
16231E:  STRD.W          R0, R2, [R4]
162322:  MOV             R0, R1
162324:  MOV             R1, R4
162326:  BL              sub_ECD64
16232A:  MOV             R0, R4
16232C:  POP             {R4,R6,R7,PC}
