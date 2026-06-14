; =========================================================
; Game Engine Function: sub_147540
; Address            : 0x147540 - 0x14758E
; =========================================================

147540:  PUSH            {R4,R6,R7,LR}
147542:  ADD             R7, SP, #8
147544:  SUB             SP, SP, #0x118
147546:  LDR             R1, =(off_23496C - 0x14754C)
147548:  ADD             R1, PC; off_23496C
14754A:  LDR             R1, [R1]; dword_23DEF4
14754C:  LDR             R1, [R1]
14754E:  LDR.W           R1, [R1,#0x3B0]
147552:  LDR             R4, [R1,#0x1C]
147554:  CBZ             R4, loc_14758A
147556:  LDRD.W          R1, R0, [R0]; src
14755A:  MOVS            R3, #0
14755C:  ASRS            R2, R0, #0x1F
14755E:  ADD.W           R0, R0, R2,LSR#29
147562:  MOVS            R2, #1
147564:  ADD.W           R2, R2, R0,ASR#3; size
147568:  MOV             R0, SP; int
14756A:  BL              sub_17D4F2
14756E:  SUB.W           R1, R7, #-var_A; int
147572:  MOVS            R2, #0x10
147574:  MOVS            R3, #1
147576:  BL              sub_17D786
14757A:  LDRH.W          R1, [R7,#var_A]
14757E:  MOV             R0, R4
147580:  BL              sub_13E5CE
147584:  MOV             R0, SP
147586:  BL              sub_17D542
14758A:  ADD             SP, SP, #0x118
14758C:  POP             {R4,R6,R7,PC}
