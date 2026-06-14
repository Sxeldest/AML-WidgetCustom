; =========================================================
; Game Engine Function: sub_162484
; Address            : 0x162484 - 0x1624C0
; =========================================================

162484:  PUSH            {R4,R6,R7,LR}
162486:  ADD             R7, SP, #8
162488:  LDR             R4, [R0,#4]
16248A:  MOVS            R1, #0
16248C:  STRD.W          R1, R1, [R0]
162490:  CBZ             R4, locret_1624AC
162492:  ADDS            R0, R4, #4
162494:  DMB.W           ISH
162498:  LDREX.W         R1, [R0]
16249C:  SUBS            R2, R1, #1
16249E:  STREX.W         R3, R2, [R0]
1624A2:  CMP             R3, #0
1624A4:  BNE             loc_162498
1624A6:  DMB.W           ISH
1624AA:  CBZ             R1, loc_1624AE
1624AC:  POP             {R4,R6,R7,PC}
1624AE:  LDR             R0, [R4]
1624B0:  LDR             R1, [R0,#8]
1624B2:  MOV             R0, R4
1624B4:  BLX             R1
1624B6:  MOV             R0, R4
1624B8:  POP.W           {R4,R6,R7,LR}
1624BC:  B.W             sub_2242E0
