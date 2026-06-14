; =========================================================
; Game Engine Function: sub_146960
; Address            : 0x146960 - 0x146A04
; =========================================================

146960:  PUSH            {R4-R7,LR}
146962:  ADD             R7, SP, #0xC
146964:  PUSH.W          {R11}
146968:  SUB             SP, SP, #0x118
14696A:  LDRD.W          R1, R0, [R0]; src
14696E:  MOVS            R3, #0
146970:  ASRS            R2, R0, #0x1F
146972:  ADD.W           R0, R0, R2,LSR#29
146976:  MOVS            R2, #1
146978:  ADD.W           R2, R2, R0,ASR#3; size
14697C:  ADD             R0, SP, #0x128+var_124; int
14697E:  BL              sub_17D4F2
146982:  LDR             R1, =(off_23496C - 0x146988)
146984:  ADD             R1, PC; off_23496C
146986:  LDR             R1, [R1]; dword_23DEF4
146988:  LDR             R1, [R1]
14698A:  LDR.W           R1, [R1,#0x3B0]
14698E:  LDR             R4, [R1]
146990:  ADD.W           R1, SP, #0x128+var_126; int
146994:  MOVS            R2, #0x10
146996:  MOVS            R3, #1
146998:  BL              sub_17D786
14699C:  CBZ             R4, loc_1469F6
14699E:  LDRH.W          R0, [SP,#0x128+var_126]
1469A2:  CMP.W           R0, #0x3EC
1469A6:  BHI             loc_1469F6
1469A8:  ADDS            R1, R4, R0
1469AA:  LDRB.W          R1, [R1,#0xFB4]
1469AE:  CBZ             R1, loc_1469F6
1469B0:  ADD.W           R0, R4, R0,LSL#2
1469B4:  LDR             R0, [R0,#4]
1469B6:  CBZ             R0, loc_1469F6
1469B8:  LDR             R0, [R0]
1469BA:  CBZ             R0, loc_1469F6
1469BC:  BL              sub_14A618
1469C0:  MOVW            R0, #0x17B4
1469C4:  ADDS            R6, R4, R0
1469C6:  LDRD.W          R4, R0, [R6]
1469CA:  CMP             R4, R0
1469CC:  BEQ             loc_1469E0
1469CE:  LDRH.W          R1, [SP,#0x128+var_126]
1469D2:  LDR             R2, [R4]
1469D4:  CMP             R2, R1
1469D6:  BEQ             loc_1469E0
1469D8:  ADDS            R4, #4
1469DA:  CMP             R4, R0
1469DC:  BNE             loc_1469D2
1469DE:  B               loc_1469F6
1469E0:  CMP             R4, R0
1469E2:  BEQ             loc_1469F6
1469E4:  ADDS            R1, R4, #4; src
1469E6:  SUBS            R5, R0, R1
1469E8:  ITTT NE
1469EA:  MOVNE           R0, R4; dest
1469EC:  MOVNE           R2, R5; n
1469EE:  BLXNE           j_memmove
1469F2:  ADDS            R0, R4, R5
1469F4:  STR             R0, [R6,#4]
1469F6:  ADD             R0, SP, #0x128+var_124
1469F8:  BL              sub_17D542
1469FC:  ADD             SP, SP, #0x118
1469FE:  POP.W           {R11}
146A02:  POP             {R4-R7,PC}
