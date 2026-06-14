; =========================================================
; Game Engine Function: sub_161964
; Address            : 0x161964 - 0x161982
; =========================================================

161964:  PUSH            {R4,R6,R7,LR}
161966:  ADD             R7, SP, #8
161968:  MOV             R4, R0
16196A:  LDR             R0, =(_ZTVN15descent_builder9builder_tIN11crash_stuff11crash_stuffEEE - 0x161972); `vtable for'descent_builder::builder_t<crash_stuff::crash_stuff> ...
16196C:  MOVS            R2, #0
16196E:  ADD             R0, PC; `vtable for'descent_builder::builder_t<crash_stuff::crash_stuff>
161970:  ADDS            R0, #8
161972:  STRD.W          R0, R2, [R4]
161976:  MOV             R0, R1
161978:  MOV             R1, R4
16197A:  BL              sub_ECD64
16197E:  MOV             R0, R4
161980:  POP             {R4,R6,R7,PC}
