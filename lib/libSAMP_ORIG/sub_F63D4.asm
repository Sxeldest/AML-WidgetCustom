; =========================================================
; Game Engine Function: sub_F63D4
; Address            : 0xF63D4 - 0xF6456
; =========================================================

F63D4:  PUSH            {R4-R7,LR}
F63D6:  ADD             R7, SP, #0xC
F63D8:  PUSH.W          {R8-R10}
F63DC:  MOV             R5, R0
F63DE:  SUBS            R0, R2, R1
F63E0:  MOV             R8, R2
F63E2:  ASRS            R6, R0, #2
F63E4:  LDR             R2, [R5]; dest
F63E6:  MOV             R4, R1
F63E8:  LDR             R0, [R5,#8]
F63EA:  SUBS            R0, R0, R2
F63EC:  CMP.W           R6, R0,ASR#2
F63F0:  BLS             loc_F6412
F63F2:  MOV             R0, R5
F63F4:  BL              sub_F64A0
F63F8:  MOV             R0, R5
F63FA:  MOV             R1, R6
F63FC:  BL              sub_F64C4
F6400:  MOV             R1, R0
F6402:  MOV             R0, R5
F6404:  BL              sub_F62BC
F6408:  MOV             R0, R5
F640A:  MOV             R1, R4
F640C:  MOV             R2, R8
F640E:  MOV             R3, R6
F6410:  B               loc_F6442
F6412:  LDR             R0, [R5,#4]
F6414:  MOV             R9, R8
F6416:  SUB.W           R10, R0, R2
F641A:  MOV             R0, R4; src
F641C:  CMP.W           R6, R10,ASR#2
F6420:  IT HI
F6422:  ADDHI.W         R9, R4, R10
F6426:  MOV             R1, R9; int
F6428:  BL              sub_F64F4
F642C:  CMP.W           R6, R10,ASR#2
F6430:  BLS             loc_F644E
F6432:  LDRD.W          R0, R1, [R5]
F6436:  MOV             R2, R8
F6438:  SUBS            R0, R1, R0
F643A:  MOV             R1, R9
F643C:  SUB.W           R3, R6, R0,ASR#2
F6440:  MOV             R0, R5
F6442:  POP.W           {R8-R10}
F6446:  POP.W           {R4-R7,LR}
F644A:  B.W             sub_F6458
F644E:  STR             R0, [R5,#4]
F6450:  POP.W           {R8-R10}
F6454:  POP             {R4-R7,PC}
