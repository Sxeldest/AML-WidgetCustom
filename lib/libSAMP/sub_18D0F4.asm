; =========================================================
; Game Engine Function: sub_18D0F4
; Address            : 0x18D0F4 - 0x18D110
; =========================================================

18D0F4:  PUSH            {R4,R6,R7,LR}
18D0F6:  ADD             R7, SP, #8
18D0F8:  MOVS            R1, #0
18D0FA:  MOV             R4, R0
18D0FC:  BL              sub_18D110
18D100:  LDR             R0, [R4,#8]
18D102:  CBZ             R0, loc_18D10C
18D104:  LDR             R0, [R4]; void *
18D106:  CBZ             R0, loc_18D10C
18D108:  BLX             j__ZdaPv; operator delete[](void *)
18D10C:  MOV             R0, R4
18D10E:  POP             {R4,R6,R7,PC}
