; =========================================================
; Game Engine Function: sub_A3434
; Address            : 0xA3434 - 0xA347E
; =========================================================

A3434:  PUSH            {R4-R7,LR}
A3436:  ADD             R7, SP, #0xC
A3438:  PUSH.W          {R11}
A343C:  LDRH            R2, [R1]
A343E:  CBZ             R2, loc_A3478
A3440:  MOV.W           R12, #1
A3444:  B               loc_A344C
A3446:  LDRH.W          R2, [R1,#4]!
A344A:  CBZ             R2, loc_A3478
A344C:  LDRH.W          LR, [R1,#2]
A3450:  UXTH            R3, R2
A3452:  CMP             R3, LR
A3454:  BHI             loc_A3446
A3456:  LDR             R3, [R0,#8]
A3458:  UBFX.W          R4, R2, #5, #0xB
A345C:  AND.W           R6, R2, #0x1F
A3460:  ADDS            R2, #1
A3462:  LDR.W           R5, [R3,R4,LSL#2]
A3466:  LSL.W           R6, R12, R6
A346A:  ORRS            R5, R6
A346C:  STR.W           R5, [R3,R4,LSL#2]
A3470:  UXTH            R4, R2
A3472:  CMP             R4, LR
A3474:  BLS             loc_A3458
A3476:  B               loc_A3446
A3478:  POP.W           {R11}
A347C:  POP             {R4-R7,PC}
