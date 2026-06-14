; =========================================================
; Game Engine Function: _ZN10CCollision24IsThisVehicleSittingOnMeEP8CVehicleS1_
; Address            : 0x2DF170 - 0x2DF1E0
; =========================================================

2DF170:  CMP             R0, #0
2DF172:  MOV.W           R2, #0
2DF176:  IT NE
2DF178:  CMPNE           R1, #0
2DF17A:  BEQ             loc_2DF1CC
2DF17C:  LDR.W           R2, [R1,#0x5A0]
2DF180:  CBZ             R2, loc_2DF1B4
2DF182:  CMP             R2, #9
2DF184:  ITTT NE
2DF186:  MOVNE           R2, #0
2DF188:  MOVNE           R0, R2
2DF18A:  BXNE            LR
2DF18C:  LDR.W           R2, [R1,#0x7D4]
2DF190:  CMP             R2, R0
2DF192:  BEQ             loc_2DF1CA
2DF194:  LDR.W           R2, [R1,#0x7D8]
2DF198:  CMP             R2, R0
2DF19A:  ITT NE
2DF19C:  LDRNE.W         R2, [R1,#0x7DC]
2DF1A0:  CMPNE           R2, R0
2DF1A2:  BEQ             loc_2DF1CA
2DF1A4:  LDR.W           R1, [R1,#0x7E0]
2DF1A8:  MOVS            R2, #0
2DF1AA:  CMP             R1, R0
2DF1AC:  IT EQ
2DF1AE:  MOVEQ           R2, #1
2DF1B0:  MOV             R0, R2
2DF1B2:  BX              LR
2DF1B4:  LDR.W           R2, [R1,#0x8FC]
2DF1B8:  CMP             R2, R0
2DF1BA:  ITTTT NE
2DF1BC:  LDRNE.W         R2, [R1,#0x900]
2DF1C0:  CMPNE           R2, R0
2DF1C2:  LDRNE.W         R2, [R1,#0x904]
2DF1C6:  CMPNE           R2, R0
2DF1C8:  BNE             loc_2DF1D0
2DF1CA:  MOVS            R2, #1
2DF1CC:  MOV             R0, R2
2DF1CE:  BX              LR
2DF1D0:  LDR.W           R2, [R1,#0x908]
2DF1D4:  MOVS            R1, #0
2DF1D6:  CMP             R2, R0
2DF1D8:  IT EQ
2DF1DA:  MOVEQ           R1, #1
2DF1DC:  MOV             R0, R1
2DF1DE:  BX              LR
