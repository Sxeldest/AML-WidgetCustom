; =========================================================
; Game Engine Function: sub_114894
; Address            : 0x114894 - 0x1148B2
; =========================================================

114894:  PUSH            {R4,R6,R7,LR}
114896:  ADD             R7, SP, #8
114898:  MOV             R4, R0
11489A:  LDR             R0, =(_ZTVN15descent_builder9builder_tI10radar_rectEE - 0x1148A2); `vtable for'descent_builder::builder_t<radar_rect> ...
11489C:  MOVS            R2, #0
11489E:  ADD             R0, PC; `vtable for'descent_builder::builder_t<radar_rect>
1148A0:  ADDS            R0, #8
1148A2:  STRD.W          R0, R2, [R4]
1148A6:  MOV             R0, R1
1148A8:  MOV             R1, R4
1148AA:  BL              sub_ECD64
1148AE:  MOV             R0, R4
1148B0:  POP             {R4,R6,R7,PC}
