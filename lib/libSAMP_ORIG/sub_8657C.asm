; =========================================================
; Game Engine Function: sub_8657C
; Address            : 0x8657C - 0x8664E
; =========================================================

8657C:  PUSH            {R4-R7,LR}
8657E:  ADD             R7, SP, #0xC
86580:  PUSH.W          {R11}
86584:  MOV             R2, R0
86586:  LDR             R0, =(byte_1ABE60 - 0x8658C)
86588:  ADD             R0, PC; byte_1ABE60
8658A:  LDRB            R0, [R0]
8658C:  CBZ             R0, loc_865D8
8658E:  LDR             R6, =(dword_1ABE7C - 0x86594)
86590:  ADD             R6, PC; dword_1ABE7C
86592:  LDRD.W          R1, R4, [R6]
86596:  SUBS            R0, R4, R1
86598:  BEQ             loc_865C2
8659A:  MOVW            R3, #0xAAAB
8659E:  ADDS            R1, #0x10
865A0:  MOVT            R3, #0x2AAA
865A4:  MOVS            R5, #0
865A6:  SMMUL.W         R0, R0, R3
865AA:  ASRS            R3, R0, #2
865AC:  ADD.W           R0, R3, R0,LSR#31
865B0:  CMP             R0, #1
865B2:  IT LS
865B4:  MOVLS           R0, #1
865B6:  LDR             R3, [R1]
865B8:  CBZ             R3, loc_865EE
865BA:  ADDS            R5, #1
865BC:  ADDS            R1, #0x18
865BE:  CMP             R0, R5
865C0:  BNE             loc_865B6
865C2:  LDR             R0, [R6,#(dword_1ABE84 - 0x1ABE7C)]
865C4:  CMP             R4, R0
865C6:  BCS             loc_865DE
865C8:  MOV             R0, R2
865CA:  LDR.W           R1, [R0,#0x10]!
865CE:  CBZ             R1, loc_8660A
865D0:  CMP             R2, R1
865D2:  BEQ             loc_86614
865D4:  STR             R1, [R4,#0x10]
865D6:  B               loc_8660E
865D8:  MOV.W           R5, #0xFFFFFFFF
865DC:  B               loc_86638
865DE:  LDR             R4, =(dword_1ABE7C - 0x865E4)
865E0:  ADD             R4, PC; dword_1ABE7C
865E2:  MOV             R0, R4
865E4:  MOV             R1, R2
865E6:  BL              sub_7FB88
865EA:  LDR             R0, [R4,#(dword_1ABE80 - 0x1ABE7C)]
865EC:  B               loc_86626
865EE:  MOVS            R0, #0
865F0:  MOV             R6, R1
865F2:  STR.W           R0, [R6],#-0x10
865F6:  MOV             R3, R2
865F8:  LDR.W           R4, [R3,#0x10]!
865FC:  CBZ             R4, loc_86606
865FE:  CMP             R2, R4
86600:  BEQ             loc_86640
86602:  STR             R4, [R1]
86604:  MOV             R1, R3
86606:  STR             R0, [R1]
86608:  B               loc_86638
8660A:  ADD.W           R0, R4, #0x10
8660E:  MOVS            R1, #0
86610:  STR             R1, [R0]
86612:  B               loc_86620
86614:  STR             R4, [R4,#0x10]
86616:  LDR             R0, [R0]
86618:  LDR             R1, [R0]
8661A:  LDR             R2, [R1,#0xC]
8661C:  MOV             R1, R4
8661E:  BLX             R2
86620:  ADD.W           R0, R4, #0x18
86624:  STR             R0, [R6,#(dword_1ABE80 - 0x1ABE7C)]
86626:  LDR             R1, [R6]
86628:  SUBS            R0, R0, R1
8662A:  MOV             R1, #0xAAAAAAAB
86632:  ASRS            R0, R0, #3
86634:  MULS            R0, R1
86636:  SUBS            R5, R0, #1
86638:  MOV             R0, R5
8663A:  POP.W           {R11}
8663E:  POP             {R4-R7,PC}
86640:  STR.W           R6, [R1],#-0x10
86644:  LDR             R0, [R3]
86646:  LDR             R2, [R0]
86648:  LDR             R2, [R2,#0xC]
8664A:  BLX             R2
8664C:  B               loc_86638
