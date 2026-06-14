; =========================================================
; Game Engine Function: sub_123E58
; Address            : 0x123E58 - 0x123E76
; =========================================================

123E58:  PUSH            {R4,R6,R7,LR}
123E5A:  ADD             R7, SP, #8
123E5C:  MOV             R4, R0
123E5E:  LDR             R0, =(_ZTVN15descent_builder9builder_tI16CCollisionLimitsEE - 0x123E66); `vtable for'descent_builder::builder_t<CCollisionLimits> ...
123E60:  MOVS            R2, #0
123E62:  ADD             R0, PC; `vtable for'descent_builder::builder_t<CCollisionLimits>
123E64:  ADDS            R0, #8
123E66:  STRD.W          R0, R2, [R4]
123E6A:  MOV             R0, R1
123E6C:  MOV             R1, R4
123E6E:  BL              sub_ECD64
123E72:  MOV             R0, R4
123E74:  POP             {R4,R6,R7,PC}
