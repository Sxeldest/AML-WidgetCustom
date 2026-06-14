; =========================================================
; Game Engine Function: _Z27_rwDataBlockMgrRecallBlocksP14RwDataBlockMgr17RwRecallDirection
; Address            : 0x1A9F94 - 0x1A9FDA
; =========================================================

1A9F94:  PUSH            {R4-R7,LR}
1A9F96:  ADD             R7, SP, #0xC
1A9F98:  PUSH.W          {R11}
1A9F9C:  MOV             R4, R0
1A9F9E:  CMP             R1, #1
1A9FA0:  LDR             R6, [R4,#0xC]
1A9FA2:  LDR             R5, [R4,#0x14]
1A9FA4:  BNE             loc_1A9FBC
1A9FA6:  CBZ             R5, loc_1A9FD2
1A9FA8:  LDR.W           R0, [R6],#4
1A9FAC:  LDR             R1, [R4]
1A9FAE:  ADD             R0, R1
1A9FB0:  LDR.W           R1, [R0],#4
1A9FB4:  BLX             R1
1A9FB6:  SUBS            R5, #1
1A9FB8:  BNE             loc_1A9FA8
1A9FBA:  B               loc_1A9FD2
1A9FBC:  CBZ             R5, loc_1A9FD2
1A9FBE:  SUBS            R6, #4
1A9FC0:  LDR.W           R0, [R6,R5,LSL#2]
1A9FC4:  LDR             R1, [R4]
1A9FC6:  ADD             R0, R1
1A9FC8:  LDR.W           R1, [R0],#4
1A9FCC:  BLX             R1
1A9FCE:  SUBS            R5, #1
1A9FD0:  BNE             loc_1A9FC0
1A9FD2:  MOV             R0, R4
1A9FD4:  POP.W           {R11}
1A9FD8:  POP             {R4-R7,PC}
