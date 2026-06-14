; =========================================================
; Game Engine Function: sub_14759C
; Address            : 0x14759C - 0x147652
; =========================================================

14759C:  PUSH            {R4,R6,R7,LR}
14759E:  ADD             R7, SP, #8
1475A0:  SUB             SP, SP, #0x120
1475A2:  LDR             R1, =(off_23496C - 0x1475A8)
1475A4:  ADD             R1, PC; off_23496C
1475A6:  LDR             R1, [R1]; dword_23DEF4
1475A8:  LDR             R1, [R1]
1475AA:  LDR.W           R1, [R1,#0x3B0]
1475AE:  LDR             R4, [R1]
1475B0:  CMP             R4, #0
1475B2:  BEQ             loc_14764E
1475B4:  LDRD.W          R1, R0, [R0]; src
1475B8:  MOVS            R3, #0
1475BA:  ASRS            R2, R0, #0x1F
1475BC:  ADD.W           R0, R0, R2,LSR#29
1475C0:  MOVS            R2, #1
1475C2:  ADD.W           R2, R2, R0,ASR#3; size
1475C6:  MOV             R0, SP; int
1475C8:  BL              sub_17D4F2
1475CC:  SUB.W           R1, R7, #-var_A; int
1475D0:  MOVS            R2, #0x10
1475D2:  MOVS            R3, #1
1475D4:  BL              sub_17D786
1475D8:  ADD             R1, SP, #0x128+var_10; int
1475DA:  MOV             R0, SP; int
1475DC:  MOVS            R2, #0x20 ; ' '
1475DE:  MOVS            R3, #1
1475E0:  BL              sub_17D786
1475E4:  SUB.W           R1, R7, #-var_12; int
1475E8:  MOV             R0, SP; int
1475EA:  MOVS            R2, #0x10
1475EC:  MOVS            R3, #1
1475EE:  BL              sub_17D786
1475F2:  MOV.W           R0, #0x13A0
1475F6:  LDRH            R1, [R4,R0]
1475F8:  LDRH.W          R0, [R7,#var_A]
1475FC:  CMP             R1, R0
1475FE:  BNE             loc_14761A
147600:  LDR             R0, =(off_234970 - 0x147606)
147602:  ADD             R0, PC; off_234970
147604:  LDR             R0, [R0]; dword_23DEF0
147606:  LDR             R0, [R0]
147608:  BL              sub_E35A0
14760C:  CBZ             R0, loc_147648
14760E:  LDR             R1, [SP,#0x128+var_10]
147610:  LDRH.W          R2, [R7,#var_12]
147614:  BL              sub_105474
147618:  B               loc_147648
14761A:  CMP.W           R0, #0x3EC
14761E:  BHI             loc_147648
147620:  ADDS            R1, R4, R0
147622:  LDRB.W          R1, [R1,#0xFB4]
147626:  CBZ             R1, loc_147648
147628:  ADD.W           R0, R4, R0,LSL#2
14762C:  LDR             R0, [R0,#4]
14762E:  CBZ             R0, loc_147648
147630:  LDR             R1, [R0]
147632:  CBZ             R1, loc_147648
147634:  LDR.W           R0, [R1,#0x128]
147638:  CBZ             R0, loc_147648
14763A:  LDRB            R1, [R1,#0x19]
14763C:  CBZ             R1, loc_147648
14763E:  LDR             R1, [SP,#0x128+var_10]
147640:  LDRH.W          R2, [R7,#var_12]
147644:  BL              sub_105474
147648:  MOV             R0, SP
14764A:  BL              sub_17D542
14764E:  ADD             SP, SP, #0x120
147650:  POP             {R4,R6,R7,PC}
