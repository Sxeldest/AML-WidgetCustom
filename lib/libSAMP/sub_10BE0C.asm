; =========================================================
; Game Engine Function: sub_10BE0C
; Address            : 0x10BE0C - 0x10BE40
; =========================================================

10BE0C:  PUSH            {R4,R5,R7,LR}
10BE0E:  ADD             R7, SP, #8
10BE10:  MOV             R4, R0
10BE12:  LDR             R0, [R0,#0xC]
10BE14:  CBZ             R0, locret_10BE3E
10BE16:  LDR             R0, [R4,#8]; void *
10BE18:  CBZ             R0, loc_10BE26
10BE1A:  LDR             R5, [R0]
10BE1C:  BLX             j__ZdlPv; operator delete(void *)
10BE20:  CMP             R5, #0
10BE22:  MOV             R0, R5
10BE24:  BNE             loc_10BE1A
10BE26:  LDR             R1, [R4,#4]
10BE28:  MOVS            R0, #0
10BE2A:  STR             R0, [R4,#8]
10BE2C:  CBZ             R1, loc_10BE3C
10BE2E:  MOVS            R2, #0
10BE30:  LDR             R3, [R4]
10BE32:  STR.W           R0, [R3,R2,LSL#2]
10BE36:  ADDS            R2, #1
10BE38:  CMP             R1, R2
10BE3A:  BNE             loc_10BE30
10BE3C:  STR             R0, [R4,#0xC]
10BE3E:  POP             {R4,R5,R7,PC}
