; =========================================================
; Game Engine Function: _ZNK19CPedGroupMembership8IsMemberEPK4CPed
; Address            : 0x4B22F0 - 0x4B2332
; =========================================================

4B22F0:  CMP             R1, #0
4B22F2:  ITT EQ
4B22F4:  MOVEQ           R0, #0
4B22F6:  BXEQ            LR
4B22F8:  LDR             R2, [R0,#4]
4B22FA:  CMP             R2, R1
4B22FC:  BEQ             loc_4B232E
4B22FE:  LDR             R2, [R0,#8]
4B2300:  CMP             R2, R1
4B2302:  ITT NE
4B2304:  LDRNE           R2, [R0,#0xC]
4B2306:  CMPNE           R2, R1
4B2308:  BEQ             loc_4B232E
4B230A:  LDR             R2, [R0,#0x10]
4B230C:  CMP             R2, R1
4B230E:  ITT NE
4B2310:  LDRNE           R2, [R0,#0x14]
4B2312:  CMPNE           R2, R1
4B2314:  BEQ             loc_4B232E
4B2316:  LDR             R2, [R0,#0x18]
4B2318:  CMP             R2, R1
4B231A:  ITT NE
4B231C:  LDRNE           R2, [R0,#0x1C]
4B231E:  CMPNE           R2, R1
4B2320:  BEQ             loc_4B232E
4B2322:  LDR             R2, [R0,#0x20]
4B2324:  MOVS            R0, #0
4B2326:  CMP             R2, R1
4B2328:  IT EQ
4B232A:  MOVEQ           R0, #1
4B232C:  BX              LR
4B232E:  MOVS            R0, #1
4B2330:  BX              LR
