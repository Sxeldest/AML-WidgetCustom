; =========================================================
; Game Engine Function: StartThread
; Address            : 0x1E248C - 0x1E2504
; =========================================================

1E248C:  PUSH            {R4-R6,R10,R11,LR}
1E2490:  ADD             R11, SP, #0x10
1E2494:  MOV             R6, R0
1E2498:  MOV             R0, #0x10; size
1E249C:  MOV             R5, R1
1E24A0:  BL              malloc
1E24A4:  MOV             R4, R0
1E24A8:  CMP             R4, #0
1E24AC:  BEQ             loc_1E24EC
1E24B0:  LDR             R1, =(sub_1E2508 - 0x1E24C8)
1E24B4:  ADD             R0, R4, #0xC; newthread
1E24B8:  MOV             R3, R4; arg
1E24BC:  STR             R6, [R4]
1E24C0:  ADD             R2, PC, R1; sub_1E2508 ; start_routine
1E24C4:  MOV             R1, #0; attr
1E24C8:  STR             R5, [R4,#4]
1E24CC:  MOV             R5, #0
1E24D0:  BL              pthread_create
1E24D4:  CMP             R0, #0
1E24D8:  BEQ             loc_1E24F8
1E24DC:  MOV             R0, R4; ptr
1E24E0:  BL              free
1E24E4:  MOV             R0, R5
1E24E8:  POP             {R4-R6,R10,R11,PC}
1E24EC:  MOV             R5, #0
1E24F0:  MOV             R0, R5
1E24F4:  POP             {R4-R6,R10,R11,PC}
1E24F8:  MOV             R5, R4
1E24FC:  MOV             R0, R5
1E2500:  POP             {R4-R6,R10,R11,PC}
