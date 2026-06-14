; =========================================================
; Game Engine Function: sub_10E370
; Address            : 0x10E370 - 0x10E434
; =========================================================

10E370:  PUSH            {R4-R7,LR}
10E372:  ADD             R7, SP, #0xC
10E374:  PUSH.W          {R8}
10E378:  SUB             SP, SP, #8
10E37A:  MOV             R8, R3
10E37C:  MOV             R6, R2
10E37E:  MOV             R4, R0
10E380:  CMP             R1, R2
10E382:  BEQ             loc_10E390
10E384:  LDRB            R0, [R1]
10E386:  SUBS            R0, #0x2D ; '-'
10E388:  CLZ.W           R0, R0
10E38C:  LSRS            R5, R0, #5
10E38E:  B               loc_10E392
10E390:  MOVS            R5, #0
10E392:  ADDS            R2, R1, R5
10E394:  CMP             R2, R6
10E396:  BEQ             loc_10E3E2
10E398:  MOV             R0, R2
10E39A:  LDRB            R3, [R0]
10E39C:  CMP             R3, #0x30 ; '0'
10E39E:  BNE             loc_10E3A8
10E3A0:  ADDS            R0, #1
10E3A2:  CMP             R0, R6
10E3A4:  BNE             loc_10E39A
10E3A6:  MOV             R0, R6
10E3A8:  CMP             R0, R6
10E3AA:  BEQ             loc_10E3E2
10E3AC:  LDRB            R3, [R0]
10E3AE:  SUBS            R3, #0x30 ; '0'
10E3B0:  CMP             R3, #0xA
10E3B2:  BCS             loc_10E3E4
10E3B4:  ADD             R2, SP, #0x18+var_14
10E3B6:  MOV             R3, SP
10E3B8:  MOV             R1, R6
10E3BA:  BL              sub_10E434
10E3BE:  CMP             R0, R6
10E3C0:  BEQ             loc_10E3FE
10E3C2:  LDRB            R1, [R0]
10E3C4:  SUBS            R1, #0x30 ; '0'
10E3C6:  CMP             R1, #9
10E3C8:  BLS             loc_10E3D2
10E3CA:  LDRD.W          R1, R2, [SP,#0x18+var_18]
10E3CE:  ADDS            R3, R2, R1
10E3D0:  BCC             loc_10E406
10E3D2:  LDRB            R1, [R0]
10E3D4:  SUBS            R1, #0x30 ; '0'
10E3D6:  CMP             R1, #9
10E3D8:  BHI             loc_10E412
10E3DA:  ADDS            R0, #1
10E3DC:  CMP             R0, R6
10E3DE:  BNE             loc_10E3D2
10E3E0:  B               loc_10E414
10E3E2:  MOV             R0, R6
10E3E4:  CMP             R0, R2
10E3E6:  BEQ             loc_10E3F8
10E3E8:  MOVS            R1, #0
10E3EA:  CBZ             R5, loc_10E41E
10E3EC:  STR             R0, [R4]
10E3EE:  NEGS            R0, R1
10E3F0:  STR.W           R0, [R8]
10E3F4:  MOVS            R0, #0
10E3F6:  B               loc_10E426
10E3F8:  STR             R1, [R4]
10E3FA:  MOVS            R0, #0x16
10E3FC:  B               loc_10E426
10E3FE:  LDRD.W          R1, R2, [SP,#0x18+var_18]
10E402:  ADDS            R3, R2, R1
10E404:  BCS             loc_10E414
10E406:  ADD             R1, R2
10E408:  CBZ             R5, loc_10E41A
10E40A:  CMP.W           R1, #0x80000000
10E40E:  BLS             loc_10E3EC
10E410:  B               loc_10E430
10E412:  MOV             R6, R0
10E414:  STR             R6, [R4]
10E416:  MOVS            R0, #0x22 ; '"'
10E418:  B               loc_10E426
10E41A:  CMP             R1, #0
10E41C:  BMI             loc_10E430
10E41E:  STR             R0, [R4]
10E420:  MOVS            R0, #0
10E422:  STR.W           R1, [R8]
10E426:  STR             R0, [R4,#4]
10E428:  ADD             SP, SP, #8
10E42A:  POP.W           {R8}
10E42E:  POP             {R4-R7,PC}
10E430:  STR             R0, [R4]
10E432:  B               loc_10E416
