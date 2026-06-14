; =========================================================
; Game Engine Function: _Z15OrBlockToPixelsIjEvPKhPT_jS3_
; Address            : 0x1B354A - 0x1B3680
; =========================================================

1B354A:  PUSH            {R4-R7,LR}
1B354C:  ADD             R7, SP, #0xC
1B354E:  PUSH.W          {R8}
1B3552:  LDRB.W          R12, [R0,#4]
1B3556:  AND.W           R12, R12, #3
1B355A:  LDR.W           R12, [R3,R12,LSL#2]
1B355E:  LDRD.W          LR, R4, [R1]
1B3562:  LDRD.W          R5, R8, [R1,#8]
1B3566:  ORR.W           R6, LR, R12
1B356A:  STR             R6, [R1]
1B356C:  LDRB            R6, [R0,#4]
1B356E:  AND.W           R6, R6, #0xC
1B3572:  LDR             R6, [R3,R6]
1B3574:  ORRS            R6, R4
1B3576:  STR             R6, [R1,#4]
1B3578:  LDRB            R6, [R0,#4]
1B357A:  AND.W           R6, R6, #0x30 ; '0'
1B357E:  LSRS            R6, R6, #2
1B3580:  LDR             R6, [R3,R6]
1B3582:  ORRS            R6, R5
1B3584:  STR             R6, [R1,#8]
1B3586:  LDRB            R6, [R0,#4]
1B3588:  UBFX.W          R6, R6, #6, #2
1B358C:  LDR.W           R6, [R3,R6,LSL#2]
1B3590:  ORR.W           R6, R6, R8
1B3594:  STR             R6, [R1,#0xC]
1B3596:  LDRB            R6, [R0,#5]
1B3598:  LDR.W           R5, [R1,R2,LSL#2]
1B359C:  AND.W           R6, R6, #3
1B35A0:  LDR.W           R6, [R3,R6,LSL#2]
1B35A4:  ORRS            R6, R5
1B35A6:  STR.W           R6, [R1,R2,LSL#2]
1B35AA:  ADD.W           R5, R1, R2,LSL#2
1B35AE:  LDRB            R6, [R0,#5]
1B35B0:  ADD.W           LR, R5, #4
1B35B4:  AND.W           R6, R6, #0xC
1B35B8:  LDR             R6, [R3,R6]
1B35BA:  LDM.W           LR, {R4,R12,LR}
1B35BE:  ORRS            R4, R6
1B35C0:  STR             R4, [R5,#4]
1B35C2:  LDRB            R4, [R0,#5]
1B35C4:  AND.W           R4, R4, #0x30 ; '0'
1B35C8:  LSRS            R4, R4, #2
1B35CA:  LDR             R4, [R3,R4]
1B35CC:  ORR.W           R6, R12, R4
1B35D0:  STR             R6, [R5,#8]
1B35D2:  LDRB            R6, [R0,#5]
1B35D4:  UBFX.W          R6, R6, #6, #2
1B35D8:  LDR.W           R6, [R3,R6,LSL#2]
1B35DC:  ORR.W           R6, R6, LR
1B35E0:  STR             R6, [R5,#0xC]
1B35E2:  LDRB            R6, [R0,#6]
1B35E4:  LDR.W           R5, [R1,R2,LSL#3]
1B35E8:  AND.W           R6, R6, #3
1B35EC:  LDR.W           R6, [R3,R6,LSL#2]
1B35F0:  ORRS            R6, R5
1B35F2:  STR.W           R6, [R1,R2,LSL#3]
1B35F6:  MOVS            R6, #4
1B35F8:  LDRB            R5, [R0,#6]
1B35FA:  ORR.W           R6, R6, R2,LSL#3
1B35FE:  AND.W           R5, R5, #0xC
1B3602:  LDR             R4, [R1,R6]
1B3604:  LDR             R5, [R3,R5]
1B3606:  ORRS            R5, R4
1B3608:  STR             R5, [R1,R6]
1B360A:  ADD.W           R5, R1, R2,LSL#3
1B360E:  LDRB            R6, [R0,#6]
1B3610:  ADD.W           R2, R2, R2,LSL#1
1B3614:  AND.W           R6, R6, #0x30 ; '0'
1B3618:  LSRS            R6, R6, #2
1B361A:  LDR             R6, [R3,R6]
1B361C:  LDRD.W          R4, R12, [R5,#8]
1B3620:  ORRS            R6, R4
1B3622:  STR             R6, [R5,#8]
1B3624:  LDRB            R6, [R0,#6]
1B3626:  UBFX.W          R6, R6, #6, #2
1B362A:  LDR.W           R6, [R3,R6,LSL#2]
1B362E:  ORR.W           R6, R6, R12
1B3632:  STR             R6, [R5,#0xC]
1B3634:  LDRB            R6, [R0,#7]
1B3636:  LDR.W           R5, [R1,R2,LSL#2]
1B363A:  AND.W           R6, R6, #3
1B363E:  LDR.W           R6, [R3,R6,LSL#2]
1B3642:  ORRS            R6, R5
1B3644:  STR.W           R6, [R1,R2,LSL#2]
1B3648:  ADD.W           R1, R1, R2,LSL#2
1B364C:  LDRB            R6, [R0,#7]
1B364E:  LDRD.W          R2, R5, [R1,#4]
1B3652:  AND.W           R6, R6, #0xC
1B3656:  LDR             R4, [R1,#0xC]
1B3658:  LDR             R6, [R3,R6]
1B365A:  ORRS            R2, R6
1B365C:  STR             R2, [R1,#4]
1B365E:  LDRB            R2, [R0,#7]
1B3660:  AND.W           R2, R2, #0x30 ; '0'
1B3664:  LSRS            R2, R2, #2
1B3666:  LDR             R2, [R3,R2]
1B3668:  ORRS            R2, R5
1B366A:  STR             R2, [R1,#8]
1B366C:  LDRB            R0, [R0,#7]
1B366E:  UBFX.W          R0, R0, #6, #2
1B3672:  LDR.W           R0, [R3,R0,LSL#2]
1B3676:  ORRS            R0, R4
1B3678:  STR             R0, [R1,#0xC]
1B367A:  POP.W           {R8}
1B367E:  POP             {R4-R7,PC}
