; =========================================================
; Game Engine Function: _Z18_rwRGBAFromImage32P6RwRGBAPKhPK7RwImagei
; Address            : 0x1AA0D0 - 0x1AA15C
; =========================================================

1AA0D0:  PUSH            {R4-R7,LR}
1AA0D2:  ADD             R7, SP, #0xC
1AA0D4:  PUSH.W          {R8-R11}
1AA0D8:  SUB             SP, SP, #8
1AA0DA:  CMP             R3, #0x1F
1AA0DC:  STR             R0, [SP,#0x24+var_20]
1AA0DE:  STR             R3, [SP,#0x24+var_24]
1AA0E0:  BNE             loc_1AA0F2
1AA0E2:  MOV.W           LR, #0
1AA0E6:  MOVS            R4, #0
1AA0E8:  MOV.W           R11, #0
1AA0EC:  MOV.W           R12, #0
1AA0F0:  B               loc_1AA136
1AA0F2:  LDR             R0, [R2,#0x10]
1AA0F4:  MOVS            R6, #1
1AA0F6:  LSL.W           R10, R6, R3
1AA0FA:  MOV.W           R9, #0
1AA0FE:  MOV.W           R12, #0
1AA102:  MOV.W           R11, #0
1AA106:  MOVS            R4, #0
1AA108:  MOV.W           LR, #0
1AA10C:  MOVS            R6, #0
1AA10E:  ADD.W           R2, R1, R6,LSL#2
1AA112:  LDRB.W          R5, [R1,R6,LSL#2]
1AA116:  ADDS            R6, #1
1AA118:  LDRB.W          R8, [R2,#1]
1AA11C:  ADD             LR, R5
1AA11E:  LDRB            R3, [R2,#2]
1AA120:  CMP             R6, R10
1AA122:  LDRB            R2, [R2,#3]
1AA124:  ADD             R4, R8
1AA126:  ADD             R11, R3
1AA128:  ADD             R12, R2
1AA12A:  BLT             loc_1AA10E
1AA12C:  ADD.W           R9, R9, #1
1AA130:  ADD             R1, R0
1AA132:  CMP             R9, R10
1AA134:  BLT             loc_1AA10C
1AA136:  LDR             R0, [SP,#0x24+var_24]
1AA138:  LDR             R2, [SP,#0x24+var_20]
1AA13A:  LSLS            R0, R0, #1
1AA13C:  ASR.W           R1, R4, R0
1AA140:  STRB            R1, [R2,#1]
1AA142:  ASR.W           R1, LR, R0
1AA146:  STRB            R1, [R2]
1AA148:  ASR.W           R1, R11, R0
1AA14C:  ASR.W           R0, R12, R0
1AA150:  STRB            R1, [R2,#2]
1AA152:  STRB            R0, [R2,#3]
1AA154:  ADD             SP, SP, #8
1AA156:  POP.W           {R8-R11}
1AA15A:  POP             {R4-R7,PC}
