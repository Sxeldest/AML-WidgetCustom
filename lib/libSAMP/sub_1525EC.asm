; =========================================================
; Game Engine Function: sub_1525EC
; Address            : 0x1525EC - 0x152672
; =========================================================

1525EC:  PUSH            {R4-R7,LR}
1525EE:  ADD             R7, SP, #0xC
1525F0:  PUSH.W          {R11}
1525F4:  SUB             SP, SP, #0x20
1525F6:  ADD.W           R5, R0, #0x20 ; ' '
1525FA:  STRH.W          R1, [R7,#var_22]
1525FE:  STRH.W          R1, [SP,#0x30+var_18]
152602:  ADD             R1, SP, #0x30+var_18
152604:  MOV             R4, R0
152606:  MOV             R0, R5
152608:  BL              sub_153102
15260C:  CBZ             R0, loc_152612
15260E:  LDR             R6, [R0,#0xC]
152610:  CBNZ            R6, loc_152668
152612:  MOVS            R0, #0x40 ; '@'; unsigned int
152614:  BLX             j__Znwj; operator new(uint)
152618:  MOV             R6, R0
15261A:  MOVW            R1, #0xBB80
15261E:  MOVS            R2, #1
152620:  BL              sub_15A3A8
152624:  LDR             R3, =(unk_B998D - 0x152632)
152626:  ADD             R0, SP, #0x30+var_28
152628:  SUB.W           R2, R7, #-var_22
15262C:  STR             R6, [SP,#0x30+var_28]
15262E:  ADD             R3, PC; unk_B998D
152630:  STR             R2, [SP,#0x30+var_1C]
152632:  STR             R0, [SP,#0x30+var_20]
152634:  ADD             R0, SP, #0x30+var_20
152636:  ADD             R1, SP, #0x30+var_1C
152638:  STRD.W          R1, R0, [SP,#0x30+var_30]
15263C:  ADD             R0, SP, #0x30+var_18
15263E:  MOV             R1, R5
152640:  BL              sub_153352
152644:  LDR             R0, [SP,#0x30+var_18]
152646:  LDRH.W          R1, [R7,#var_22]
15264A:  LDR             R6, [R0,#0xC]
15264C:  LDR             R0, [R4]
15264E:  MOV             R2, R6
152650:  BL              sub_155740
152654:  LDR             R4, [SP,#0x30+var_28]
152656:  MOVS            R0, #0
152658:  STR             R0, [SP,#0x30+var_28]
15265A:  CBZ             R4, loc_152668
15265C:  ADDS            R0, R4, #4
15265E:  BL              sub_15E0E8
152662:  MOV             R0, R4; void *
152664:  BLX             j__ZdlPv; operator delete(void *)
152668:  MOV             R0, R6
15266A:  ADD             SP, SP, #0x20 ; ' '
15266C:  POP.W           {R11}
152670:  POP             {R4-R7,PC}
