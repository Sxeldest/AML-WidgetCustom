; =========================================================
; Game Engine Function: sub_108640
; Address            : 0x108640 - 0x108672
; =========================================================

108640:  B.W             loc_108644
108644:  PUSH            {R7,LR}
108646:  MOV             R7, SP
108648:  MOV             R1, R0
10864A:  LDR             R0, =(off_23494C - 0x108650)
10864C:  ADD             R0, PC; off_23494C
10864E:  LDR             R0, [R0]; dword_23DF24
108650:  LDR             R2, [R0]
108652:  MOVS            R0, #0
108654:  CBZ             R2, locret_10866C
108656:  MOV             R3, #0x675518
10865E:  ADDS            R2, R2, R3
108660:  IT EQ
108662:  POPEQ           {R7,PC}
108664:  LDR             R2, [R2]
108666:  CBZ             R2, loc_10866E
108668:  MOV             R0, R1
10866A:  BLX             R2
10866C:  POP             {R7,PC}
10866E:  MOVS            R0, #0
108670:  POP             {R7,PC}
