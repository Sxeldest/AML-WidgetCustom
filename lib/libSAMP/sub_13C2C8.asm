; =========================================================
; Game Engine Function: sub_13C2C8
; Address            : 0x13C2C8 - 0x13C326
; =========================================================

13C2C8:  PUSH            {R4,R5,R7,LR}
13C2CA:  ADD             R7, SP, #8
13C2CC:  LDRD.W          R12, R2, [R0]
13C2D0:  LDR             R3, [R1,#4]
13C2D2:  CMP             R2, R12
13C2D4:  BEQ             loc_13C30A
13C2D6:  MOV.W           LR, #0
13C2DA:  STR.W           LR, [R3,#-0xC]
13C2DE:  LDR.W           R4, [R2,#-0xC]!
13C2E2:  STR.W           LR, [R3,#-8]
13C2E6:  CMP             R2, R12
13C2E8:  LDR             R5, [R2,#4]
13C2EA:  STMDB.W         R3, {R4,R5,LR}
13C2EE:  LDR             R4, [R2,#8]
13C2F0:  STR.W           R4, [R3,#-4]
13C2F4:  STRD.W          LR, LR, [R2]
13C2F8:  STR.W           LR, [R2,#8]
13C2FC:  LDR             R3, [R1,#4]
13C2FE:  SUB.W           R3, R3, #0xC
13C302:  STR             R3, [R1,#4]
13C304:  BNE             loc_13C2DA
13C306:  LDR.W           R12, [R0]
13C30A:  STR             R3, [R0]
13C30C:  STR.W           R12, [R1,#4]
13C310:  LDR             R2, [R1,#8]
13C312:  LDR             R3, [R0,#4]
13C314:  STR             R2, [R0,#4]
13C316:  STR             R3, [R1,#8]
13C318:  LDR             R2, [R1,#0xC]
13C31A:  LDR             R3, [R0,#8]
13C31C:  STR             R2, [R0,#8]
13C31E:  LDR             R0, [R1,#4]
13C320:  STR             R3, [R1,#0xC]
13C322:  STR             R0, [R1]
13C324:  POP             {R4,R5,R7,PC}
