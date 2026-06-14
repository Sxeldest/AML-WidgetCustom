; =========================================================
; Game Engine Function: sub_11B5C0
; Address            : 0x11B5C0 - 0x11B5DE
; =========================================================

11B5C0:  PUSH            {R4,R6,R7,LR}
11B5C2:  ADD             R7, SP, #8
11B5C4:  MOV             R4, R0
11B5C6:  LDR             R0, =(_ZTVN15descent_builder9builder_tIN9modloader8texturesEEE - 0x11B5CE); `vtable for'descent_builder::builder_t<modloader::textures> ...
11B5C8:  MOVS            R2, #0
11B5CA:  ADD             R0, PC; `vtable for'descent_builder::builder_t<modloader::textures>
11B5CC:  ADDS            R0, #8
11B5CE:  STRD.W          R0, R2, [R4]
11B5D2:  MOV             R0, R1
11B5D4:  MOV             R1, R4
11B5D6:  BL              sub_ECD64
11B5DA:  MOV             R0, R4
11B5DC:  POP             {R4,R6,R7,PC}
