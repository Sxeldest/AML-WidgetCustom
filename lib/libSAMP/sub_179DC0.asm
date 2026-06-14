; =========================================================
; Game Engine Function: sub_179DC0
; Address            : 0x179DC0 - 0x179E42
; =========================================================

179DC0:  PUSH            {R4-R7,LR}
179DC2:  ADD             R7, SP, #0xC
179DC4:  PUSH.W          {R8-R11}
179DC8:  PUSH.W          {R3}
179DCC:  LDRH.W          R9, [R0]
179DD0:  ADDS            R3, R2, R1
179DD2:  CMP             R3, R9
179DD4:  BLE             loc_179E2A
179DD6:  MOV.W           R10, #0
179DDA:  MOVS            R5, #0
179DDC:  MOV.W           LR, #0
179DE0:  LDRH.W          R12, [R0,#2]
179DE4:  CMP             LR, R12
179DE6:  BGE             loc_179E04
179DE8:  LDR             R0, [R0,#4]
179DEA:  SUB.W           R6, R12, LR
179DEE:  CMP             R9, R1
179DF0:  MOV             LR, R12
179DF2:  MUL.W           R8, R6, R5
179DF6:  LDRH            R4, [R0]
179DF8:  ITE LT
179DFA:  SUBLT           R6, R4, R1
179DFC:  SUBGE.W         R6, R4, R9
179E00:  MOV             R9, R4
179E02:  B               loc_179E20
179E04:  LDR             R0, [R0,#4]
179E06:  LDRH.W          R11, [R0]
179E0A:  SUB.W           R6, R11, R9
179E0E:  ADDS            R4, R6, R5
179E10:  MOV             R9, R11
179E12:  CMP             R4, R2
179E14:  SUB.W           R4, LR, R12
179E18:  IT GT
179E1A:  SUBGT           R6, R2, R5
179E1C:  MUL.W           R8, R6, R4
179E20:  ADD             R5, R6
179E22:  ADD             R10, R8
179E24:  CMP             R3, R9
179E26:  BGT             loc_179DE0
179E28:  B               loc_179E32
179E2A:  MOV.W           LR, #0
179E2E:  MOV.W           R10, #0
179E32:  LDR             R0, [SP,#0x20+var_20]
179E34:  STR.W           R10, [R0]
179E38:  MOV             R0, LR
179E3A:  ADD             SP, SP, #4
179E3C:  POP.W           {R8-R11}
179E40:  POP             {R4-R7,PC}
