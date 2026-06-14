; =========================================================
; Game Engine Function: sub_2654E4
; Address            : 0x2654E4 - 0x265518
; =========================================================

2654E4:  PUSH            {R4-R7,LR}
2654E6:  ADD             R7, SP, #0xC
2654E8:  PUSH.W          {R11}
2654EC:  MOV             R1, #0x161B0
2654F4:  LDR             R5, [R0,R1]
2654F6:  LDR             R4, [R5,#4]
2654F8:  CBZ             R4, loc_265512
2654FA:  MOVS            R0, #1
2654FC:  MOVS            R1, #0; thread_return
2654FE:  STR             R0, [R5]
265500:  MOVS            R6, #0
265502:  LDR             R0, [R4,#0xC]; th
265504:  BLX             pthread_join
265508:  MOV             R0, R4; p
26550A:  BLX             free
26550E:  STR             R6, [R5]
265510:  STR             R6, [R5,#4]
265512:  POP.W           {R11}
265516:  POP             {R4-R7,PC}
