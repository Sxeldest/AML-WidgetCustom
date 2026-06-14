; =========================================================
; Game Engine Function: sub_10D818
; Address            : 0x10D818 - 0x10D836
; =========================================================

10D818:  PUSH            {R4,R6,R7,LR}
10D81A:  ADD             R7, SP, #8
10D81C:  MOV             R4, R0
10D81E:  LDR             R0, =(_ZTVN15descent_builder9builder_tI13InteriorWaterEE - 0x10D826); `vtable for'descent_builder::builder_t<InteriorWater> ...
10D820:  MOVS            R2, #0
10D822:  ADD             R0, PC; `vtable for'descent_builder::builder_t<InteriorWater>
10D824:  ADDS            R0, #8
10D826:  STRD.W          R0, R2, [R4]
10D82A:  MOV             R0, R1
10D82C:  MOV             R1, R4
10D82E:  BL              sub_ECD64
10D832:  MOV             R0, R4
10D834:  POP             {R4,R6,R7,PC}
