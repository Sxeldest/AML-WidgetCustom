; =========================================================
; Game Engine Function: sub_111524
; Address            : 0x111524 - 0x111542
; =========================================================

111524:  PUSH            {R4,R6,R7,LR}
111526:  ADD             R7, SP, #8
111528:  MOV             R4, R0
11152A:  LDR             R0, =(_ZTVN15descent_builder9builder_tI12custom_radarEE - 0x111532); `vtable for'descent_builder::builder_t<custom_radar> ...
11152C:  MOVS            R2, #0
11152E:  ADD             R0, PC; `vtable for'descent_builder::builder_t<custom_radar>
111530:  ADDS            R0, #8
111532:  STRD.W          R0, R2, [R4]
111536:  MOV             R0, R1
111538:  MOV             R1, R4
11153A:  BL              sub_ECD64
11153E:  MOV             R0, R4
111540:  POP             {R4,R6,R7,PC}
