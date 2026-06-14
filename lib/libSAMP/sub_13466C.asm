; =========================================================
; Game Engine Function: sub_13466C
; Address            : 0x13466C - 0x1346A0
; =========================================================

13466C:  PUSH            {R4,R6,R7,LR}
13466E:  ADD             R7, SP, #8
134670:  LDR             R4, [R0,#4]
134672:  LDRB.W          R0, [R4,#0x50]
134676:  CBZ             R0, loc_134682
134678:  LDR             R0, [R4]
13467A:  MOVS            R1, #0
13467C:  LDR             R2, [R0,#0x24]
13467E:  MOV             R0, R4
134680:  BLX             R2
134682:  LDR             R0, =(off_23496C - 0x13468E)
134684:  MOVS            R1, #0
134686:  STRB.W          R1, [R4,#0x50]
13468A:  ADD             R0, PC; off_23496C
13468C:  LDR             R0, [R0]; dword_23DEF4
13468E:  LDR             R0, [R0]
134690:  CBZ             R0, locret_13469E
134692:  LDR             R1, =(aPhone - 0x134698); "/phone" ...
134694:  ADD             R1, PC; "/phone"
134696:  POP.W           {R4,R6,R7,LR}
13469A:  B.W             sub_144460
13469E:  POP             {R4,R6,R7,PC}
