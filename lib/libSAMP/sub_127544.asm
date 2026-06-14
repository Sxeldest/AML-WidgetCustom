; =========================================================
; Game Engine Function: sub_127544
; Address            : 0x127544 - 0x127562
; =========================================================

127544:  PUSH            {R4,R6,R7,LR}
127546:  ADD             R7, SP, #8
127548:  MOV             R4, R0
12754A:  LDR             R0, =(_ZTVN15descent_builder9builder_tI11PlaneShamalEE - 0x127552); `vtable for'descent_builder::builder_t<PlaneShamal> ...
12754C:  MOVS            R2, #0
12754E:  ADD             R0, PC; `vtable for'descent_builder::builder_t<PlaneShamal>
127550:  ADDS            R0, #8
127552:  STRD.W          R0, R2, [R4]
127556:  MOV             R0, R1
127558:  MOV             R1, R4
12755A:  BL              sub_ECD64
12755E:  MOV             R0, R4
127560:  POP             {R4,R6,R7,PC}
