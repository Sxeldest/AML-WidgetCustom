; =========================================================
; Game Engine Function: sub_11C2D0
; Address            : 0x11C2D0 - 0x11C318
; =========================================================

11C2D0:  PUSH            {R4,R5,R7,LR}
11C2D2:  ADD             R7, SP, #8
11C2D4:  MOV             R4, R0
11C2D6:  LDR             R0, [R0,#0x10]
11C2D8:  MOV             R5, R1
11C2DA:  MOVS            R1, #0
11C2DC:  CMP             R4, R0
11C2DE:  STR             R1, [R4,#0x10]
11C2E0:  BEQ             loc_11C2E8
11C2E2:  CBZ             R0, loc_11C2F2
11C2E4:  MOVS            R1, #5
11C2E6:  B               loc_11C2EA
11C2E8:  MOVS            R1, #4
11C2EA:  LDR             R2, [R0]
11C2EC:  LDR.W           R1, [R2,R1,LSL#2]
11C2F0:  BLX             R1
11C2F2:  LDR             R0, [R5,#0x10]
11C2F4:  CBZ             R0, loc_11C302
11C2F6:  CMP             R5, R0
11C2F8:  BEQ             loc_11C308
11C2FA:  STR             R0, [R4,#0x10]
11C2FC:  MOVS            R0, #0
11C2FE:  STR             R0, [R5,#0x10]
11C300:  B               loc_11C314
11C302:  MOVS            R0, #0
11C304:  STR             R0, [R4,#0x10]
11C306:  B               loc_11C314
11C308:  STR             R4, [R4,#0x10]
11C30A:  LDR             R0, [R5,#0x10]
11C30C:  LDR             R1, [R0]
11C30E:  LDR             R2, [R1,#0xC]
11C310:  MOV             R1, R4
11C312:  BLX             R2
11C314:  MOV             R0, R4
11C316:  POP             {R4,R5,R7,PC}
