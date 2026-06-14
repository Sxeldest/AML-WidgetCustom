; =========================================================
; Game Engine Function: sub_1474E0
; Address            : 0x1474E0 - 0x147532
; =========================================================

1474E0:  PUSH            {R4,R6,R7,LR}
1474E2:  ADD             R7, SP, #8
1474E4:  SUB             SP, SP, #0x130
1474E6:  LDR             R1, =(off_23496C - 0x1474EC)
1474E8:  ADD             R1, PC; off_23496C
1474EA:  LDR             R1, [R1]; dword_23DEF4
1474EC:  LDR             R1, [R1]
1474EE:  LDR.W           R1, [R1,#0x3B0]
1474F2:  LDR             R4, [R1,#0x1C]
1474F4:  CBZ             R4, loc_14752E
1474F6:  LDRD.W          R1, R0, [R0]; src
1474FA:  MOVS            R3, #0
1474FC:  ASRS            R2, R0, #0x1F
1474FE:  ADD.W           R0, R0, R2,LSR#29
147502:  MOVS            R2, #1
147504:  ADD.W           R2, R2, R0,ASR#3; size
147508:  MOV             R0, SP; int
14750A:  BL              sub_17D4F2
14750E:  ADD             R1, SP, #0x138+dest; dest
147510:  MOVS            R2, #0x1B
147512:  BL              sub_17D744
147516:  LDR.W           R0, [SP,#0x138+var_22]
14751A:  BL              sub_108480
14751E:  CBZ             R0, loc_147528
147520:  ADD             R1, SP, #0x138+dest
147522:  MOV             R0, R4
147524:  BL              sub_13E610
147528:  MOV             R0, SP
14752A:  BL              sub_17D542
14752E:  ADD             SP, SP, #0x130
147530:  POP             {R4,R6,R7,PC}
