; =========================================================
; Game Engine Function: sub_11D378
; Address            : 0x11D378 - 0x11D396
; =========================================================

11D378:  PUSH            {R4,R6,R7,LR}
11D37A:  ADD             R7, SP, #8
11D37C:  MOV             R4, R0
11D37E:  LDR             R0, =(_ZTVN15descent_builder9builder_tI13CCollisionFixEE - 0x11D386); `vtable for'descent_builder::builder_t<CCollisionFix> ...
11D380:  MOVS            R2, #0
11D382:  ADD             R0, PC; `vtable for'descent_builder::builder_t<CCollisionFix>
11D384:  ADDS            R0, #8
11D386:  STRD.W          R0, R2, [R4]
11D38A:  MOV             R0, R1
11D38C:  MOV             R1, R4
11D38E:  BL              sub_ECD64
11D392:  MOV             R0, R4
11D394:  POP             {R4,R6,R7,PC}
