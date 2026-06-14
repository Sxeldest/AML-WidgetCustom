; =========================================================
; Game Engine Function: silk_corrVector_FIX
; Address            : 0xD15E8 - 0xD167A
; =========================================================

D15E8:  PUSH            {R4-R7,LR}
D15EA:  ADD             R7, SP, #0xC
D15EC:  PUSH.W          {R8-R10}
D15F0:  MOV             R9, R3
D15F2:  LDRD.W          R8, LR, [R7,#arg_0]
D15F6:  ADD.W           R0, R0, R9,LSL#1
D15FA:  MOV             R5, R2
D15FC:  SUBS            R4, R0, #2
D15FE:  MOV             R6, R1
D1600:  CMP.W           LR, #0
D1604:  BLE             loc_D1640
D1606:  CMP.W           R9, #1
D160A:  BLT             loc_D1664
D160C:  CMP             R5, #1
D160E:  BLT             loc_D166A
D1610:  MOV.W           R12, #0
D1614:  MOVS            R2, #0
D1616:  MOVS            R3, #0
D1618:  LDRSH.W         R0, [R4,R3,LSL#1]
D161C:  LDRSH.W         R1, [R6,R3,LSL#1]
D1620:  ADDS            R3, #1
D1622:  CMP             R5, R3
D1624:  SMULBB.W        R0, R1, R0
D1628:  ASR.W           R0, R0, LR
D162C:  ADD             R2, R0
D162E:  BNE             loc_D1618
D1630:  STR.W           R2, [R8,R12,LSL#2]
D1634:  ADD.W           R12, R12, #1
D1638:  SUBS            R4, #2
D163A:  CMP             R12, R9
D163C:  BNE             loc_D1614
D163E:  B               loc_D1664
D1640:  CMP.W           R9, #1
D1644:  BLT             loc_D1664
D1646:  LDR.W           R10, [R7,#arg_8]
D164A:  MOV             R0, R4
D164C:  MOV             R1, R6
D164E:  MOV             R2, R5
D1650:  MOV             R3, R10
D1652:  BLX             j_silk_inner_prod_aligned
D1656:  STR.W           R0, [R8],#4
D165A:  SUBS.W          R9, R9, #1
D165E:  SUB.W           R4, R4, #2
D1662:  BNE             loc_D164A
D1664:  POP.W           {R8-R10}
D1668:  POP             {R4-R7,PC}
D166A:  MOV.W           R1, R9,LSL#2; n
D166E:  MOV             R0, R8; int
D1670:  BLX             sub_10967C
D1674:  POP.W           {R8-R10}
D1678:  POP             {R4-R7,PC}
