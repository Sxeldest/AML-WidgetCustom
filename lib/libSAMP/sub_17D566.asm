; =========================================================
; Game Engine Function: sub_17D566
; Address            : 0x17D566 - 0x17D5BA
; =========================================================

17D566:  PUSH            {R4-R7,LR}
17D568:  ADD             R7, SP, #0xC
17D56A:  PUSH.W          {R8}
17D56E:  CBZ             R2, loc_17D5B4
17D570:  MOV             R4, R0
17D572:  LDRB            R0, [R0]
17D574:  MOV             R6, R2
17D576:  MOV             R5, R1
17D578:  MOV.W           R8, R2,LSL#3
17D57C:  LSLS            R0, R0, #0x1D
17D57E:  BEQ             loc_17D594
17D580:  MOV             R0, R4
17D582:  MOV             R1, R5
17D584:  MOV             R2, R8
17D586:  MOVS            R3, #1
17D588:  POP.W           {R8}
17D58C:  POP.W           {R4-R7,LR}
17D590:  B.W             sub_17D628
17D594:  MOV             R0, R4
17D596:  MOV             R1, R8
17D598:  BL              sub_17D5BA
17D59C:  LDR             R0, [R4]
17D59E:  MOV             R2, R6; n
17D5A0:  LDR             R1, [R4,#0xC]
17D5A2:  ADDS            R0, #7
17D5A4:  ADD.W           R0, R1, R0,ASR#3; dest
17D5A8:  MOV             R1, R5; src
17D5AA:  BLX             j_memcpy
17D5AE:  LDR             R0, [R4]
17D5B0:  ADD             R0, R8
17D5B2:  STR             R0, [R4]
17D5B4:  POP.W           {R8}
17D5B8:  POP             {R4-R7,PC}
