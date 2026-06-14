; =========================================================
; Game Engine Function: sub_15254C
; Address            : 0x15254C - 0x1525D6
; =========================================================

15254C:  PUSH            {R4-R7,LR}
15254E:  ADD             R7, SP, #0xC
152550:  PUSH.W          {R8-R11}
152554:  SUB             SP, SP, #0xC
152556:  MOV             R6, R0
152558:  ADDS            R0, #0x20 ; ' '
15255A:  MOV             R5, R1
15255C:  STRH.W          R1, [SP,#0x28+var_20]
152560:  STRH.W          R1, [R7,#var_1E]
152564:  SUB.W           R1, R7, #-var_1E
152568:  STR             R0, [SP,#0x28+var_24]
15256A:  BL              sub_153720
15256E:  LDR             R4, [R6,#0x14]
152570:  MOV             R10, R0
152572:  CBZ             R4, loc_1525BE
152574:  LDR             R0, =(_ZTI12AudioChannel - 0x15257E); `typeinfo for'AudioChannel ...
152576:  ADD.W           R9, R6, #0xC
15257A:  ADD             R0, PC; `typeinfo for'AudioChannel
15257C:  MOV             R11, R0
15257E:  LDR             R0, =(_ZTI18AudioChannelPlayer - 0x152584); `typeinfo for'AudioChannelPlayer ...
152580:  ADD             R0, PC; `typeinfo for'AudioChannelPlayer
152582:  MOV             R8, R0
152584:  LDR             R6, [R4,#0xC]
152586:  CBZ             R6, loc_1525AA
152588:  MOV             R0, R6; lpsrc
15258A:  MOV             R1, R11; lpstype
15258C:  MOV             R2, R8; lpdtype
15258E:  MOVS            R3, #0; s2d
152590:  BLX             j___dynamic_cast
152594:  CBZ             R0, loc_1525AA
152596:  LDRH.W          R0, [R0,#0x68]
15259A:  CMP             R0, R5
15259C:  BNE             loc_1525AA
15259E:  MOV             R0, R9
1525A0:  MOV             R1, R4
1525A2:  BL              sub_152F4E
1525A6:  MOV             R4, R0
1525A8:  B               loc_1525BA
1525AA:  CMP.W           R10, #0
1525AE:  LDR             R4, [R4]
1525B0:  ITTT NE
1525B2:  MOVNE           R0, R6
1525B4:  MOVNE           R1, R5
1525B6:  BLNE            sub_150C2A
1525BA:  CMP             R4, #0
1525BC:  BNE             loc_152584
1525BE:  CMP.W           R10, #0
1525C2:  ITTT NE
1525C4:  ADDNE.W         R1, SP, #0x28+var_20
1525C8:  LDRNE           R0, [SP,#0x28+var_24]
1525CA:  BLNE            sub_1530E6
1525CE:  ADD             SP, SP, #0xC
1525D0:  POP.W           {R8-R11}
1525D4:  POP             {R4-R7,PC}
