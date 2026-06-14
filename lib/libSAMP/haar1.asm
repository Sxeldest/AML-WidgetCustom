; =========================================================
; Game Engine Function: haar1
; Address            : 0x19C1DA - 0x19C23C
; =========================================================

19C1DA:  PUSH            {R4-R7,LR}
19C1DC:  ADD             R7, SP, #0xC
19C1DE:  PUSH.W          {R8-R10}
19C1E2:  CMP             R2, #1
19C1E4:  ITT GE
19C1E6:  MOVGE.W         R12, R1,ASR#1
19C1EA:  CMPGE.W         R12, #1
19C1EE:  BLT             loc_19C236
19C1F0:  MOV.W           R9, R2,LSL#2
19C1F4:  MOV.W           LR, #0
19C1F8:  MOV.W           R8, #0x4000
19C1FC:  MOVW            R10, #0x5A82
19C200:  MOV             R5, R0
19C202:  MOV             R6, R12
19C204:  LDRSH.W         R3, [R5]
19C208:  SUBS            R6, #1
19C20A:  LDRSH.W         R1, [R5,R2,LSL#1]
19C20E:  SMLABB.W        R3, R3, R10, R8
19C212:  SMLABB.W        R4, R1, R10, R3
19C216:  MLS.W           R1, R1, R10, R3
19C21A:  MOV.W           R3, R4,LSR#15
19C21E:  STRH            R3, [R5]
19C220:  MOV.W           R1, R1,LSR#15
19C224:  STRH.W          R1, [R5,R2,LSL#1]
19C228:  ADD             R5, R9
19C22A:  BNE             loc_19C204
19C22C:  ADD.W           LR, LR, #1
19C230:  ADDS            R0, #2
19C232:  CMP             LR, R2
19C234:  BNE             loc_19C200
19C236:  POP.W           {R8-R10}
19C23A:  POP             {R4-R7,PC}
