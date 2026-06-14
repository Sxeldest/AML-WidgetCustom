; =========================================================
; Game Engine Function: sub_21D6D4
; Address            : 0x21D6D4 - 0x21D76E
; =========================================================

21D6D4:  PUSH            {R4-R7,LR}
21D6D6:  ADD             R7, SP, #0xC
21D6D8:  PUSH.W          {R8-R10}
21D6DC:  MOV             R6, R0
21D6DE:  LDR             R0, [R0,#8]
21D6E0:  MOV             R4, R1
21D6E2:  LDRB            R1, [R0,#4]
21D6E4:  CMP             R1, #0xA
21D6E6:  BNE             loc_21D70E
21D6E8:  BL              sub_21D7D4
21D6EC:  CBZ             R0, loc_21D70C
21D6EE:  LDR             R6, [R6,#8]
21D6F0:  MOV             R0, R4
21D6F2:  LDR             R1, =(aId_0 - 0x21D6F8); "id<" ...
21D6F4:  ADD             R1, PC; "id<"
21D6F6:  ADDS            R2, R1, #3
21D6F8:  BL              sub_216F98
21D6FC:  LDR             R0, =(aW7+6 - 0x21D706); ">" ...
21D6FE:  LDRD.W          R5, R9, [R6,#0xC]
21D702:  ADD             R0, PC; ">"
21D704:  ADD.W           R8, R0, #1
21D708:  MOV             R10, R0
21D70A:  B               loc_21D752
21D70C:  LDR             R0, [R6,#8]
21D70E:  LDR             R1, [R0]
21D710:  LDR             R2, [R1,#0x10]
21D712:  MOV             R1, R4
21D714:  BLX             R2
21D716:  LDR             R0, [R6,#8]
21D718:  MOV             R1, R4
21D71A:  BL              sub_217AF6
21D71E:  CBZ             R0, loc_21D72C
21D720:  LDR             R1, =(asc_84C32 - 0x21D728); " " ...
21D722:  MOV             R0, R4
21D724:  ADD             R1, PC; " "
21D726:  ADDS            R2, R1, #1
21D728:  BL              sub_216F98
21D72C:  LDR             R0, [R6,#8]
21D72E:  MOV             R1, R4
21D730:  BL              sub_217AF6
21D734:  LDR             R1, =(asc_879DB - 0x21D73C); "*" ...
21D736:  LDR             R5, =(aQjk+6 - 0x21D73E); "(" ...
21D738:  ADD             R1, PC; "*"
21D73A:  ADD             R5, PC; "("
21D73C:  ADD.W           R8, R1, #1
21D740:  ADD.W           R9, R5, #1
21D744:  MOV             R10, R1
21D746:  CBNZ            R0, loc_21D752
21D748:  LDR             R0, [R6,#8]
21D74A:  MOV             R1, R4
21D74C:  BL              sub_217B0A
21D750:  CBZ             R0, loc_21D75C
21D752:  MOV             R0, R4
21D754:  MOV             R1, R5
21D756:  MOV             R2, R9
21D758:  BL              sub_216F98
21D75C:  MOV             R0, R4
21D75E:  MOV             R1, R10
21D760:  MOV             R2, R8
21D762:  POP.W           {R8-R10}
21D766:  POP.W           {R4-R7,LR}
21D76A:  B.W             sub_216F98
