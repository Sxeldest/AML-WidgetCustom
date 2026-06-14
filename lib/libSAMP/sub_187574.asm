; =========================================================
; Game Engine Function: sub_187574
; Address            : 0x187574 - 0x187624
; =========================================================

187574:  PUSH            {R4-R7,LR}
187576:  ADD             R7, SP, #0xC
187578:  PUSH.W          {R11}
18757C:  MOV             R4, R0
18757E:  BL              sub_187734
187582:  ADD.W           R0, R4, #0x6A0
187586:  BL              sub_17E4F4
18758A:  LDR.W           R0, [R4,#0x68C]
18758E:  CBZ             R0, loc_18759A
187590:  LDR.W           R0, [R4,#0x684]; void *
187594:  CBZ             R0, loc_18759A
187596:  BLX             j__ZdaPv; operator delete[](void *)
18759A:  ADDW            R0, R4, #0x414
18759E:  BL              nullsub_46
1875A2:  LDR.W           R0, [R4,#0x3BC]
1875A6:  CBZ             R0, loc_1875B2
1875A8:  LDR.W           R0, [R4,#0x3B0]; void *
1875AC:  CBZ             R0, loc_1875B2
1875AE:  BLX             j__ZdaPv; operator delete[](void *)
1875B2:  ADD.W           R0, R4, #0xC0
1875B6:  BL              sub_17D542
1875BA:  ADD.W           R0, R4, #0xA8
1875BE:  BL              sub_1874FE
1875C2:  MOVS            R5, #0
1875C4:  ADDS            R0, R4, R5
1875C6:  LDR.W           R1, [R0,#0xA4]
1875CA:  CBZ             R1, loc_1875D6
1875CC:  LDR.W           R0, [R0,#0x98]; void *
1875D0:  CBZ             R0, loc_1875D6
1875D2:  BLX             j__ZdaPv; operator delete[](void *)
1875D6:  SUBS            R5, #0x10
1875D8:  ADDS.W          R0, R5, #0x40 ; '@'
1875DC:  BNE             loc_1875C4
1875DE:  LDR             R0, [R4,#0x64]
1875E0:  CBZ             R0, loc_1875EA
1875E2:  LDR             R0, [R4,#0x58]; void *
1875E4:  CBZ             R0, loc_1875EA
1875E6:  BLX             j__ZdaPv; operator delete[](void *)
1875EA:  ADD.W           R0, R4, #0x40 ; '@'
1875EE:  BL              sub_18751A
1875F2:  ADD.W           R5, R4, #0x1C
1875F6:  MOVS            R1, #0
1875F8:  MOV             R0, R5
1875FA:  BL              sub_18A188
1875FE:  MOV             R0, R5
187600:  BL              sub_18A16A
187604:  LDR             R0, [R4,#0x18]
187606:  CBZ             R0, loc_187610
187608:  LDR             R0, [R4,#0xC]; void *
18760A:  CBZ             R0, loc_187610
18760C:  BLX             j__ZdaPv; operator delete[](void *)
187610:  LDR             R0, [R4,#8]
187612:  CBZ             R0, loc_18761C
187614:  LDR             R0, [R4]; void *
187616:  CBZ             R0, loc_18761C
187618:  BLX             j__ZdaPv; operator delete[](void *)
18761C:  MOV             R0, R4
18761E:  POP.W           {R11}
187622:  POP             {R4-R7,PC}
