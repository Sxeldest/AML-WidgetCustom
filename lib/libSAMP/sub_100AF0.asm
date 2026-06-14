; =========================================================
; Game Engine Function: sub_100AF0
; Address            : 0x100AF0 - 0x100B1A
; =========================================================

100AF0:  PUSH            {R4,R5,R7,LR}
100AF2:  ADD             R7, SP, #8
100AF4:  LDR             R5, [R0]
100AF6:  MOV             R4, R0
100AF8:  CBZ             R5, loc_100B16
100AFA:  LDR             R0, [R4,#4]
100AFC:  CMP             R0, R5
100AFE:  BEQ             loc_100B0E
100B00:  SUBS            R0, #8
100B02:  BL              sub_100ABA
100B06:  CMP             R0, R5
100B08:  BNE             loc_100B00
100B0A:  LDR             R0, [R4]
100B0C:  B               loc_100B10
100B0E:  MOV             R0, R5; void *
100B10:  STR             R5, [R4,#4]
100B12:  BLX             j__ZdlPv; operator delete(void *)
100B16:  MOV             R0, R4
100B18:  POP             {R4,R5,R7,PC}
