; =========================================================
; Game Engine Function: _ZN22TextureDatabaseRuntime13StopStreamingEj
; Address            : 0x1E9AB6 - 0x1E9B5C
; =========================================================

1E9AB6:  PUSH            {R7,LR}
1E9AB8:  MOV             R7, SP
1E9ABA:  LDR.W           R12, [R0,#0x94]
1E9ABE:  CMP.W           R12, #0
1E9AC2:  BEQ             loc_1E9AF0
1E9AC4:  LDR.W           LR, [R0,#0x98]
1E9AC8:  MOVS            R2, #0
1E9ACA:  LDR.W           R3, [LR,R2,LSL#2]
1E9ACE:  CMP             R3, R1
1E9AD0:  BEQ             loc_1E9ADA
1E9AD2:  ADDS            R2, #1
1E9AD4:  CMP             R2, R12
1E9AD6:  BCC             loc_1E9ACA
1E9AD8:  B               loc_1E9AF0
1E9ADA:  ADD.W           R3, LR, R12,LSL#2
1E9ADE:  LDR.W           R3, [R3,#-4]
1E9AE2:  STR.W           R3, [LR,R2,LSL#2]
1E9AE6:  LDR.W           R2, [R0,#0x94]
1E9AEA:  SUBS            R2, #1
1E9AEC:  STR.W           R2, [R0,#0x94]
1E9AF0:  LDR.W           R12, [R0,#0x88]
1E9AF4:  CMP.W           R12, #0
1E9AF8:  BEQ             loc_1E9B26
1E9AFA:  LDR.W           LR, [R0,#0x8C]
1E9AFE:  MOVS            R2, #0
1E9B00:  LDR.W           R3, [LR,R2,LSL#2]
1E9B04:  CMP             R3, R1
1E9B06:  BEQ             loc_1E9B10
1E9B08:  ADDS            R2, #1
1E9B0A:  CMP             R2, R12
1E9B0C:  BCC             loc_1E9B00
1E9B0E:  B               loc_1E9B26
1E9B10:  ADD.W           R3, LR, R12,LSL#2
1E9B14:  LDR.W           R3, [R3,#-4]
1E9B18:  STR.W           R3, [LR,R2,LSL#2]
1E9B1C:  LDR.W           R2, [R0,#0x88]
1E9B20:  SUBS            R2, #1
1E9B22:  STR.W           R2, [R0,#0x88]
1E9B26:  LDR.W           R12, [R0,#0x7C]
1E9B2A:  CMP.W           R12, #0
1E9B2E:  IT EQ
1E9B30:  POPEQ           {R7,PC}
1E9B32:  LDR.W           LR, [R0,#0x80]
1E9B36:  MOVS            R2, #0
1E9B38:  LDR.W           R3, [LR,R2,LSL#2]
1E9B3C:  CMP             R3, R1
1E9B3E:  BEQ             loc_1E9B48
1E9B40:  ADDS            R2, #1
1E9B42:  CMP             R2, R12
1E9B44:  BCC             loc_1E9B38
1E9B46:  POP             {R7,PC}
1E9B48:  ADD.W           R1, LR, R12,LSL#2
1E9B4C:  LDR.W           R1, [R1,#-4]
1E9B50:  STR.W           R1, [LR,R2,LSL#2]
1E9B54:  LDR             R1, [R0,#0x7C]
1E9B56:  SUBS            R1, #1
1E9B58:  STR             R1, [R0,#0x7C]
1E9B5A:  POP             {R7,PC}
