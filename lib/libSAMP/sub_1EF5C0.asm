; =========================================================
; Game Engine Function: sub_1EF5C0
; Address            : 0x1EF5C0 - 0x1EF5D6
; =========================================================

1EF5C0:  PUSH            {R4,R6,R7,LR}
1EF5C2:  ADD             R7, SP, #8
1EF5C4:  MOV             R4, R0
1EF5C6:  BL              sub_1EF652
1EF5CA:  LDR             R0, [R4]; void *
1EF5CC:  CBZ             R0, loc_1EF5D2
1EF5CE:  BLX             j__ZdlPv; operator delete(void *)
1EF5D2:  MOV             R0, R4
1EF5D4:  POP             {R4,R6,R7,PC}
