; =========================================================
; Game Engine Function: sub_21C350
; Address            : 0x21C350 - 0x21C3A6
; =========================================================

21C350:  PUSH            {R4,R5,R7,LR}
21C352:  ADD             R7, SP, #8
21C354:  MOV             R5, R0
21C356:  MOV             R4, R1
21C358:  MOV             R0, R1
21C35A:  MOVS            R1, #0x5B ; '['
21C35C:  BL              sub_2154F2
21C360:  LDR             R0, [R5,#8]
21C362:  MOV             R1, R4
21C364:  BL              sub_2154CC
21C368:  LDR             R1, =(asc_8A25A - 0x21C370); " ... " ...
21C36A:  MOV             R0, R4
21C36C:  ADD             R1, PC; " ... "
21C36E:  ADDS            R2, R1, #5
21C370:  BL              sub_216F98
21C374:  LDR             R0, [R5,#0xC]
21C376:  MOV             R1, R4
21C378:  BL              sub_2154CC
21C37C:  MOV             R0, R4
21C37E:  MOVS            R1, #0x5D ; ']'
21C380:  BL              sub_2154F2
21C384:  LDR             R0, [R5,#0x10]
21C386:  LDRB            R1, [R0,#4]
21C388:  SUBS            R1, #0x49 ; 'I'
21C38A:  CMP             R1, #2
21C38C:  BCC             loc_21C39C
21C38E:  LDR             R1, =(asc_8675D - 0x21C396); " = " ...
21C390:  MOV             R0, R4
21C392:  ADD             R1, PC; " = "
21C394:  ADDS            R2, R1, #3
21C396:  BL              sub_216F98
21C39A:  LDR             R0, [R5,#0x10]
21C39C:  MOV             R1, R4
21C39E:  POP.W           {R4,R5,R7,LR}
21C3A2:  B.W             sub_2154CC
