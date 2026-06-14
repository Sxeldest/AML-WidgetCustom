; =========================================================
; Game Engine Function: sub_149182
; Address            : 0x149182 - 0x14920C
; =========================================================

149182:  PUSH            {R4,R5,R7,LR}
149184:  ADD             R7, SP, #8
149186:  MOVW            R2, #0x13BC
14918A:  MOVW            R12, #0xFDEC
14918E:  LDR             R2, [R0,R2]
149190:  MOVT            R12, #0xFFFF
149194:  CBZ             R2, loc_1491BC
149196:  LDR             R2, [R2,#0x1C]
149198:  CBZ             R2, loc_1491BC
14919A:  ADD.W           LR, R2, #0x288
14919E:  MOVS            R3, #0
1491A0:  ADD.W           R2, LR, R3
1491A4:  LDRB.W          R2, [R2,R12]
1491A8:  CBZ             R2, loc_1491B6
1491AA:  LDR.W           R2, [LR,R3,LSL#2]
1491AE:  CBZ             R2, loc_1491B6
1491B0:  LDR             R4, [R2,#4]
1491B2:  CMP             R4, R1
1491B4:  BEQ             loc_149208
1491B6:  ADDS            R3, #1
1491B8:  CMP             R3, #0xA
1491BA:  BNE             loc_1491A0
1491BC:  MOV.W           LR, #0
1491C0:  ADD.W           R2, R0, LR
1491C4:  LDRB.W          R2, [R2,#0xFB4]
1491C8:  CBZ             R2, loc_1491FC
1491CA:  ADD.W           R2, R0, LR,LSL#2
1491CE:  LDR             R2, [R2,#4]
1491D0:  CBZ             R2, loc_1491FC
1491D2:  LDR             R2, [R2]
1491D4:  CBZ             R2, loc_1491FC
1491D6:  LDR.W           R2, [R2,#0x128]
1491DA:  CBZ             R2, loc_1491FC
1491DC:  ADD.W           R3, R2, #0x288
1491E0:  MOVS            R4, #0
1491E2:  ADDS            R2, R3, R4
1491E4:  LDRB.W          R2, [R2,R12]
1491E8:  CBZ             R2, loc_1491F6
1491EA:  LDR.W           R2, [R3,R4,LSL#2]
1491EE:  CBZ             R2, loc_1491F6
1491F0:  LDR             R5, [R2,#4]
1491F2:  CMP             R5, R1
1491F4:  BEQ             loc_149208
1491F6:  ADDS            R4, #1
1491F8:  CMP             R4, #0xA
1491FA:  BNE             loc_1491E2
1491FC:  ADD.W           LR, LR, #1
149200:  CMP.W           LR, #0x3EC
149204:  BNE             loc_1491C0
149206:  MOVS            R2, #0
149208:  MOV             R0, R2
14920A:  POP             {R4,R5,R7,PC}
