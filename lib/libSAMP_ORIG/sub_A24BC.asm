; =========================================================
; Game Engine Function: sub_A24BC
; Address            : 0xA24BC - 0xA251A
; =========================================================

A24BC:  PUSH            {R4-R7,LR}
A24BE:  ADD             R7, SP, #0xC
A24C0:  PUSH.W          {R8}
A24C4:  MOV             R4, R0
A24C6:  ADDS            R1, #0x1F
A24C8:  LDR             R0, [R0,#4]
A24CA:  ASRS            R6, R1, #5
A24CC:  CMP.W           R0, R1,ASR#5
A24D0:  BGE             loc_A250A
A24D2:  CMP             R0, #0
A24D4:  ITTE NE
A24D6:  ADDNE.W         R1, R0, R0,LSR#31
A24DA:  ADDNE.W         R5, R0, R1,ASR#1
A24DE:  MOVEQ           R5, #8
A24E0:  CMP             R5, R6
A24E2:  IT LE
A24E4:  MOVLE           R5, R6
A24E6:  CMP             R0, R5
A24E8:  BGE             loc_A250A
A24EA:  LSLS            R0, R5, #2
A24EC:  BL              sub_885E4
A24F0:  LDR             R1, [R4,#8]; src
A24F2:  MOV             R8, R0
A24F4:  CBZ             R1, loc_A2506
A24F6:  LDR             R0, [R4]
A24F8:  LSLS            R2, R0, #2; n
A24FA:  MOV             R0, R8; dest
A24FC:  BLX             j_memcpy
A2500:  LDR             R0, [R4,#8]
A2502:  BL              sub_88614
A2506:  STRD.W          R5, R8, [R4,#4]
A250A:  LDR             R0, [R4,#8]; int
A250C:  LSLS            R1, R6, #2; n
A250E:  STR             R6, [R4]
A2510:  BLX             sub_10967C
A2514:  POP.W           {R8}
A2518:  POP             {R4-R7,PC}
