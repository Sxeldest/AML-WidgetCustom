; =========================================================
; Game Engine Function: sub_115604
; Address            : 0x115604 - 0x115664
; =========================================================

115604:  PUSH            {R4-R7,LR}
115606:  ADD             R7, SP, #0xC
115608:  PUSH.W          {R11}
11560C:  LDR             R1, =(off_23494C - 0x11561C)
11560E:  MOVW            R6, #0xEB1A
115612:  LDR             R2, [R0,#4]
115614:  MOVT            R6, #0x43 ; 'C'
115618:  ADD             R1, PC; off_23494C
11561A:  ADD.W           R4, R2, #0x30 ; '0'
11561E:  MOVS            R2, #0
115620:  LDR             R5, [R1]; dword_23DF24
115622:  LDR             R1, [R5]
115624:  ADDS            R0, R1, R6
115626:  MOV             R1, R4
115628:  BL              sub_1642C2
11562C:  LDR             R0, [R5]
11562E:  MOV             R1, R4
115630:  MOVS            R2, #0
115632:  ADD             R0, R6
115634:  ADDS            R0, #0x14
115636:  BL              sub_1642C2
11563A:  LDR             R0, [R5]
11563C:  MOV             R6, #0x43EEC8
115644:  MOV             R1, R4
115646:  ADD             R0, R6
115648:  MOVS            R2, #0
11564A:  BL              sub_1642C2
11564E:  LDR             R0, [R5]
115650:  MOV             R1, R4
115652:  MOVS            R2, #0
115654:  ADD             R0, R6
115656:  ADDS            R0, #0x14
115658:  POP.W           {R11}
11565C:  POP.W           {R4-R7,LR}
115660:  B.W             sub_1642C2
