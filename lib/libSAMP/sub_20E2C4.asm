; =========================================================
; Game Engine Function: sub_20E2C4
; Address            : 0x20E2C4 - 0x20E346
; =========================================================

20E2C4:  PUSH            {R4-R7,LR}
20E2C6:  ADD             R7, SP, #0xC
20E2C8:  PUSH.W          {R8-R10}
20E2CC:  MOV             R5, R0
20E2CE:  SUBS            R0, R2, R1
20E2D0:  MOV             R8, R2
20E2D2:  ASRS            R6, R0, #2
20E2D4:  LDR             R2, [R5]; dest
20E2D6:  MOV             R4, R1
20E2D8:  LDR             R0, [R5,#8]
20E2DA:  SUBS            R0, R0, R2
20E2DC:  CMP.W           R6, R0,ASR#2
20E2E0:  BLS             loc_20E302
20E2E2:  MOV             R0, R5
20E2E4:  BL              sub_20E390
20E2E8:  MOV             R0, R5
20E2EA:  MOV             R1, R6
20E2EC:  BL              sub_20E3B4
20E2F0:  MOV             R1, R0
20E2F2:  MOV             R0, R5
20E2F4:  BL              sub_20E1AC
20E2F8:  MOV             R0, R5
20E2FA:  MOV             R1, R4
20E2FC:  MOV             R2, R8
20E2FE:  MOV             R3, R6
20E300:  B               loc_20E332
20E302:  LDR             R0, [R5,#4]
20E304:  MOV             R9, R8
20E306:  SUB.W           R10, R0, R2
20E30A:  MOV             R0, R4; src
20E30C:  CMP.W           R6, R10,ASR#2
20E310:  IT HI
20E312:  ADDHI.W         R9, R4, R10
20E316:  MOV             R1, R9; int
20E318:  BL              sub_20E3E4
20E31C:  CMP.W           R6, R10,ASR#2
20E320:  BLS             loc_20E33E
20E322:  LDRD.W          R0, R1, [R5]
20E326:  MOV             R2, R8
20E328:  SUBS            R0, R1, R0
20E32A:  MOV             R1, R9
20E32C:  SUB.W           R3, R6, R0,ASR#2
20E330:  MOV             R0, R5
20E332:  POP.W           {R8-R10}
20E336:  POP.W           {R4-R7,LR}
20E33A:  B.W             sub_20E348
20E33E:  STR             R0, [R5,#4]
20E340:  POP.W           {R8-R10}
20E344:  POP             {R4-R7,PC}
