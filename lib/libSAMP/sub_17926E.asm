; =========================================================
; Game Engine Function: sub_17926E
; Address            : 0x17926E - 0x1792C2
; =========================================================

17926E:  LDR             R2, [R0,#0xC]
179270:  CMP             R2, R1
179272:  BLE             loc_17927A
179274:  LDR             R3, [R0,#0x30]
179276:  CMP             R3, #1
179278:  BLE             loc_179280
17927A:  MOV.W           R0, #0xFFFFFFFF
17927E:  BX              LR
179280:  LDR.W           R12, [R0,#4]
179284:  LDR             R2, [R0,#0x10]
179286:  LDR             R0, [R0,#0x18]
179288:  ADD             R2, R12
17928A:  CBZ             R3, loc_17929C
17928C:  LDR.W           R3, [R2,R1,LSL#2]
179290:  ADD.W           R1, R2, R1,LSL#2
179294:  LDR             R1, [R1,#4]
179296:  REV             R2, R3
179298:  REV             R1, R1
17929A:  B               loc_1792B6
17929C:  LDRB.W          R12, [R2,R1,LSL#1]
1792A0:  ADD.W           R1, R2, R1,LSL#1
1792A4:  LDRB            R2, [R1,#1]
1792A6:  LDRB            R3, [R1,#2]
1792A8:  LDRB            R1, [R1,#3]
1792AA:  LSLS            R2, R2, #1
1792AC:  ORR.W           R2, R2, R12,LSL#9
1792B0:  LSLS            R1, R1, #1
1792B2:  ORR.W           R1, R1, R3,LSL#9
1792B6:  ADD             R0, R2
1792B8:  CMP             R2, R1
1792BA:  IT EQ
1792BC:  MOVEQ.W         R0, #0xFFFFFFFF
1792C0:  BX              LR
