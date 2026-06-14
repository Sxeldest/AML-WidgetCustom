; =========================================================
; Game Engine Function: sub_215094
; Address            : 0x215094 - 0x2150AA
; =========================================================

215094:  PUSH            {R4,R6,R7,LR}
215096:  ADD             R7, SP, #8
215098:  MOV             R4, R0
21509A:  BL              sub_2150BC
21509E:  LDR             R0, [R4]; void *
2150A0:  CBZ             R0, loc_2150A6
2150A2:  BLX             j__ZdlPv; operator delete(void *)
2150A6:  MOV             R0, R4
2150A8:  POP             {R4,R6,R7,PC}
