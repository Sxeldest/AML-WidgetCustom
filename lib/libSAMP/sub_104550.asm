; =========================================================
; Game Engine Function: sub_104550
; Address            : 0x104550 - 0x1045C6
; =========================================================

104550:  PUSH            {R4,R5,R7,LR}
104552:  ADD             R7, SP, #8
104554:  LDR             R1, [R0,#0x5C]
104556:  CBZ             R1, loc_104576
104558:  LDR             R2, =(off_23494C - 0x104568)
10455A:  MOVW            R3, #0x7D24
10455E:  LDR             R5, [R1]
104560:  MOVT            R3, #0x66 ; 'f'
104564:  ADD             R2, PC; off_23494C
104566:  LDR             R2, [R2]; dword_23DF24
104568:  LDR             R2, [R2]
10456A:  ADD             R2, R3
10456C:  CMP             R5, R2
10456E:  ITT NE
104570:  LDRNE           R1, [R1,#0x18]
104572:  CMPNE           R1, #0
104574:  BNE             loc_10457A
104576:  MOVS            R0, #0
104578:  POP             {R4,R5,R7,PC}
10457A:  BL              sub_1045D8
10457E:  CBZ             R0, loc_104594
104580:  MOV             R4, R0
104582:  BL              sub_F8548
104586:  MOV             R5, R0
104588:  MOV             R0, R4
10458A:  BL              sub_163698
10458E:  ORR.W           R0, R5, R0,LSL#16
104592:  POP             {R4,R5,R7,PC}
104594:  LDR             R0, =(off_234ABC - 0x10459C)
104596:  LDR             R1, =(off_234AC0 - 0x10459E)
104598:  ADD             R0, PC; off_234ABC
10459A:  ADD             R1, PC; off_234AC0
10459C:  LDR             R0, [R0]; dword_24757C
10459E:  LDR             R2, [R1]; dword_247578
1045A0:  LDR             R1, [R0]
1045A2:  LDR             R0, [R2]
1045A4:  BL              sub_1091B4
1045A8:  BL              sub_F851C
1045AC:  MOV             R4, R0
1045AE:  LDR             R0, =(off_234AC4 - 0x1045B4)
1045B0:  ADD             R0, PC; off_234AC4
1045B2:  LDR             R0, [R0]; dword_247580
1045B4:  LDR             R0, [R0]
1045B6:  BLX             sub_220C40
1045BA:  UXTB            R0, R0
1045BC:  ORR.W           R0, R4, R0,LSL#16
1045C0:  ORR.W           R0, R0, #0x80000000
1045C4:  POP             {R4,R5,R7,PC}
