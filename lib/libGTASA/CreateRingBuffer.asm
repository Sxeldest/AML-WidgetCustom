; =========================================================
; Game Engine Function: CreateRingBuffer
; Address            : 0x2528AC - 0x2528E2
; =========================================================

2528AC:  PUSH            {R4-R7,LR}
2528AE:  ADD             R7, SP, #0xC
2528B0:  PUSH.W          {R11}
2528B4:  ADDS            R6, R1, #1
2528B6:  MOV             R4, R0
2528B8:  MUL.W           R0, R6, R4
2528BC:  ADD.W           R1, R0, #0x18; item_size
2528C0:  MOVS            R0, #1; item_count
2528C2:  BLX             calloc
2528C6:  MOV             R5, R0
2528C8:  CBZ             R5, loc_2528DA
2528CA:  ADD.W           R0, R5, #0x18
2528CE:  STM.W           R5, {R0,R4,R6}
2528D2:  ADD.W           R0, R5, #0x14
2528D6:  BLX             j_InitializeCriticalSection
2528DA:  MOV             R0, R5
2528DC:  POP.W           {R11}
2528E0:  POP             {R4-R7,PC}
