; =========================================================
; Game Engine Function: sub_21C468
; Address            : 0x21C468 - 0x21C514
; =========================================================

21C468:  PUSH            {R4-R7,LR}
21C46A:  ADD             R7, SP, #0xC
21C46C:  PUSH.W          {R8}
21C470:  MOV             R8, R0
21C472:  LDRB            R0, [R0,#0x1C]
21C474:  MOV             R4, R1
21C476:  CBZ             R0, loc_21C486
21C478:  LDR             R1, =(aOperator_40 - 0x21C480); "::operator " ...
21C47A:  MOV             R0, R4
21C47C:  ADD             R1, PC; "::operator "
21C47E:  ADD.W           R2, R1, #0xB
21C482:  BL              sub_216F98
21C486:  LDR             R1, =(aNew - 0x21C48E); "new" ...
21C488:  MOV             R0, R4
21C48A:  ADD             R1, PC; "new"
21C48C:  ADDS            R2, R1, #3
21C48E:  BL              sub_216F98
21C492:  LDRB.W          R0, [R8,#0x1D]
21C496:  CBZ             R0, loc_21C4A4
21C498:  LDR             R1, =(asc_91028 - 0x21C4A0); "[]" ...
21C49A:  MOV             R0, R4
21C49C:  ADD             R1, PC; "[]"
21C49E:  ADDS            R2, R1, #2
21C4A0:  BL              sub_216F98
21C4A4:  MOV             R0, R4
21C4A6:  MOVS            R1, #0x20 ; ' '
21C4A8:  BL              sub_2154F2
21C4AC:  LDR.W           R0, [R8,#0xC]
21C4B0:  LDR             R5, =(aQjk+6 - 0x21C4B8); "(" ...
21C4B2:  LDR             R6, =(unk_901C1 - 0x21C4BA)
21C4B4:  ADD             R5, PC; "("
21C4B6:  ADD             R6, PC; unk_901C1
21C4B8:  CBZ             R0, loc_21C4D8
21C4BA:  ADDS            R2, R5, #1
21C4BC:  MOV             R0, R4
21C4BE:  MOV             R1, R5
21C4C0:  BL              sub_216F98
21C4C4:  ADD.W           R0, R8, #8
21C4C8:  MOV             R1, R4
21C4CA:  BL              sub_21AC38
21C4CE:  ADDS            R2, R6, #1
21C4D0:  MOV             R0, R4
21C4D2:  MOV             R1, R6
21C4D4:  BL              sub_216F98
21C4D8:  LDR.W           R0, [R8,#0x10]
21C4DC:  MOV             R1, R4
21C4DE:  BL              sub_2154CC
21C4E2:  LDR.W           R0, [R8,#0x18]
21C4E6:  CBZ             R0, loc_21C50E
21C4E8:  ADDS            R2, R5, #1
21C4EA:  MOV             R0, R4
21C4EC:  MOV             R1, R5
21C4EE:  BL              sub_216F98
21C4F2:  ADD.W           R0, R8, #0x14
21C4F6:  MOV             R1, R4
21C4F8:  BL              sub_21AC38
21C4FC:  ADDS            R2, R6, #1
21C4FE:  MOV             R0, R4
21C500:  MOV             R1, R6
21C502:  POP.W           {R8}
21C506:  POP.W           {R4-R7,LR}
21C50A:  B.W             sub_216F98
21C50E:  POP.W           {R8}
21C512:  POP             {R4-R7,PC}
