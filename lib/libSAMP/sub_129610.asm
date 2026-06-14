; =========================================================
; Game Engine Function: sub_129610
; Address            : 0x129610 - 0x12962E
; =========================================================

129610:  PUSH            {R4,R6,R7,LR}
129612:  ADD             R7, SP, #8
129614:  MOV             R4, R0
129616:  LDR             R0, =(_ZTVN15descent_builder9builder_tI13VehicleStructEE - 0x12961E); `vtable for'descent_builder::builder_t<VehicleStruct> ...
129618:  MOVS            R2, #0
12961A:  ADD             R0, PC; `vtable for'descent_builder::builder_t<VehicleStruct>
12961C:  ADDS            R0, #8
12961E:  STRD.W          R0, R2, [R4]
129622:  MOV             R0, R1
129624:  MOV             R1, R4
129626:  BL              sub_ECD64
12962A:  MOV             R0, R4
12962C:  POP             {R4,R6,R7,PC}
