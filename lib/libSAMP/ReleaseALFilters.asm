; =========================================================
; Game Engine Function: ReleaseALFilters
; Address            : 0x1DA3D8 - 0x1DA42C
; =========================================================

1DA3D8:  PUSH            {R4-R7,R11,LR}
1DA3DC:  ADD             R11, SP, #0x10
1DA3E0:  MOV             R4, R0
1DA3E4:  LDR             R0, [R4,#0x88]
1DA3E8:  CMP             R0, #1
1DA3EC:  POPLT           {R4-R7,R11,PC}
1DA3F0:  MOV             R6, #0
1DA3F4:  MOV             R7, #0
1DA3F8:  LDR             R0, [R4,#0x84]
1DA3FC:  ADD             R0, R0, R7,LSL#3
1DA400:  LDR             R5, [R0,#4]
1DA404:  STR             R6, [R0,#4]
1DA408:  LDR             R0, [R5,#0x2C]
1DA40C:  BL              j_FreeThunkEntry
1DA410:  MOV             R0, R5; ptr
1DA414:  BL              free
1DA418:  LDR             R0, [R4,#0x88]
1DA41C:  ADD             R7, R7, #1
1DA420:  CMP             R7, R0
1DA424:  BLT             loc_1DA3F8
1DA428:  POP             {R4-R7,R11,PC}
