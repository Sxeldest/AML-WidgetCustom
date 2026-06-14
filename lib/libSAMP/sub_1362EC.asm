; =========================================================
; Game Engine Function: sub_1362EC
; Address            : 0x1362EC - 0x136306
; =========================================================

1362EC:  PUSH            {R7,LR}
1362EE:  MOV             R7, SP
1362F0:  BL              sub_12BC78
1362F4:  LDR             R1, =(_ZTV13PlayerTabList - 0x136300); `vtable for'PlayerTabList ...
1362F6:  MOVS            R2, #0
1362F8:  STRD.W          R2, R2, [R0,#0x54]
1362FC:  ADD             R1, PC; `vtable for'PlayerTabList
1362FE:  STR             R2, [R0,#0x5C]
136300:  ADDS            R1, #8
136302:  STR             R1, [R0]
136304:  POP             {R7,PC}
