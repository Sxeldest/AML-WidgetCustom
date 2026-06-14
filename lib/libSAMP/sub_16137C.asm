; =========================================================
; Game Engine Function: sub_16137C
; Address            : 0x16137C - 0x1613B8
; =========================================================

16137C:  PUSH            {R4,R6,R7,LR}
16137E:  ADD             R7, SP, #8
161380:  LDR             R4, [R0,#4]
161382:  MOVS            R1, #0
161384:  STRD.W          R1, R1, [R0]
161388:  CBZ             R4, locret_1613A4
16138A:  ADDS            R0, R4, #4
16138C:  DMB.W           ISH
161390:  LDREX.W         R1, [R0]
161394:  SUBS            R2, R1, #1
161396:  STREX.W         R3, R2, [R0]
16139A:  CMP             R3, #0
16139C:  BNE             loc_161390
16139E:  DMB.W           ISH
1613A2:  CBZ             R1, loc_1613A6
1613A4:  POP             {R4,R6,R7,PC}
1613A6:  LDR             R0, [R4]
1613A8:  LDR             R1, [R0,#8]
1613AA:  MOV             R0, R4
1613AC:  BLX             R1
1613AE:  MOV             R0, R4
1613B0:  POP.W           {R4,R6,R7,LR}
1613B4:  B.W             sub_2242E0
