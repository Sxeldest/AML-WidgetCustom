; =========================================================
; Game Engine Function: sub_12756C
; Address            : 0x12756C - 0x127582
; =========================================================

12756C:  PUSH            {R4,R6,R7,LR}
12756E:  ADD             R7, SP, #8
127570:  MOV             R4, R0
127572:  LDR             R0, [R0,#4]
127574:  CBZ             R0, loc_12757E
127576:  BL              sub_127AF4
12757A:  BLX             j__ZdlPv; operator delete(void *)
12757E:  MOV             R0, R4
127580:  POP             {R4,R6,R7,PC}
