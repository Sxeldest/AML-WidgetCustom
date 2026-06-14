; =========================================================
; Game Engine Function: sub_A347E
; Address            : 0xA347E - 0xA35FC
; =========================================================

A347E:  PUSH            {R4-R7,LR}
A3480:  ADD             R7, SP, #0xC
A3482:  PUSH.W          {R8-R10}
A3486:  SUB             SP, SP, #8
A3488:  MOV             R4, R1
A348A:  MOV             R9, R0
A348C:  MOVS            R5, #0
A348E:  MOVW            R8, #0xFFFF
A3492:  B               loc_A34B0
A3494:  LDR             R0, [R4]
A3496:  STRD.W          R5, R10, [R4,#4]
A349A:  LDR             R1, [R4,#8]
A349C:  LDRH.W          R2, [SP,#0x20+var_1C]
A34A0:  STRH.W          R2, [R1,R0,LSL#1]
A34A4:  LDR             R0, [R4]
A34A6:  ADDS            R0, #1
A34A8:  STR             R0, [R4]
A34AA:  ADDS            R5, R6, #1
A34AC:  CMP             R6, R8
A34AE:  BGE             loc_A3598
A34B0:  LDR.W           R0, [R9,#8]
A34B4:  ASRS            R1, R5, #5
A34B6:  LDR.W           R0, [R0,R1,LSL#2]
A34BA:  AND.W           R1, R5, #0x1F
A34BE:  LSRS            R0, R1
A34C0:  LSLS            R0, R0, #0x1F
A34C2:  BEQ             loc_A3594
A34C4:  LDRD.W          R0, R1, [R4]
A34C8:  STRH.W          R5, [R7,#var_1A]
A34CC:  CMP             R0, R1
A34CE:  BNE             loc_A350E
A34D0:  CMP             R0, #0
A34D2:  ADD.W           R6, R0, #1
A34D6:  ITTE NE
A34D8:  ADDNE.W         R1, R0, R0,LSR#31
A34DC:  ADDNE.W         R1, R0, R1,ASR#1
A34E0:  MOVEQ           R1, #8
A34E2:  CMP             R1, R6
A34E4:  IT GT
A34E6:  MOVGT           R6, R1
A34E8:  CMP             R0, R6
A34EA:  BGE             loc_A350E
A34EC:  LSLS            R0, R6, #1
A34EE:  BL              sub_885E4
A34F2:  LDR             R1, [R4,#8]; src
A34F4:  MOV             R10, R0
A34F6:  CBZ             R1, loc_A3508
A34F8:  LDR             R0, [R4]
A34FA:  LSLS            R2, R0, #1; n
A34FC:  MOV             R0, R10; dest
A34FE:  BLX             j_memcpy
A3502:  LDR             R0, [R4,#8]
A3504:  BL              sub_88614
A3508:  LDR             R0, [R4]
A350A:  STRD.W          R6, R10, [R4,#4]
A350E:  LDR             R1, [R4,#8]
A3510:  MOVW            R6, #0xFFFF
A3514:  LDRH.W          R2, [R7,#var_1A]
A3518:  CMP.W           R5, #0x10000
A351C:  STRH.W          R2, [R1,R0,LSL#1]
A3520:  LDR.W           R12, [R4]
A3524:  ADD.W           R0, R12, #1
A3528:  STR             R0, [R4]
A352A:  LDR.W           R2, [R9,#8]
A352E:  IT GE
A3530:  MOVGE           R6, R5
A3532:  CMP             R6, R5
A3534:  BEQ             loc_A354C
A3536:  ADDS            R5, #1
A3538:  AND.W           R1, R5, #0x1F
A353C:  ASRS            R3, R5, #5
A353E:  LDR.W           R3, [R2,R3,LSL#2]
A3542:  LSR.W           R1, R3, R1
A3546:  LSLS            R1, R1, #0x1F
A3548:  BNE             loc_A3532
A354A:  SUBS            R6, R5, #1
A354C:  LDR             R1, [R4,#4]
A354E:  STRH.W          R6, [SP,#0x20+var_1C]
A3552:  CMP             R0, R1
A3554:  BNE             loc_A349A
A3556:  CMP             R0, #0
A3558:  ADD.W           R5, R12, #2
A355C:  ITTE NE
A355E:  ADDNE.W         R1, R0, R0,LSR#31
A3562:  ADDNE.W         R2, R0, R1,ASR#1
A3566:  MOVEQ           R2, #8
A3568:  CMP             R2, R5
A356A:  IT GT
A356C:  MOVGT           R5, R2
A356E:  CMP             R0, R5
A3570:  BGE             loc_A349A
A3572:  LSLS            R0, R5, #1
A3574:  BL              sub_885E4
A3578:  LDR             R1, [R4,#8]; src
A357A:  MOV             R10, R0
A357C:  CMP             R1, #0
A357E:  BEQ.W           loc_A3494
A3582:  LDR             R0, [R4]
A3584:  LSLS            R2, R0, #1; n
A3586:  MOV             R0, R10; dest
A3588:  BLX             j_memcpy
A358C:  LDR             R0, [R4,#8]
A358E:  BL              sub_88614
A3592:  B               loc_A3494
A3594:  MOV             R6, R5
A3596:  B               loc_A34AA
A3598:  LDRD.W          R0, R1, [R4]
A359C:  MOVS            R2, #0
A359E:  STRH.W          R2, [R7,#var_1E]
A35A2:  CMP             R0, R1
A35A4:  BNE             loc_A35E4
A35A6:  CMP             R0, #0
A35A8:  ADD.W           R6, R0, #1
A35AC:  ITTE NE
A35AE:  ADDNE.W         R1, R0, R0,LSR#31
A35B2:  ADDNE.W         R1, R0, R1,ASR#1
A35B6:  MOVEQ           R1, #8
A35B8:  CMP             R1, R6
A35BA:  IT GT
A35BC:  MOVGT           R6, R1
A35BE:  CMP             R0, R6
A35C0:  BGE             loc_A35E4
A35C2:  LSLS            R0, R6, #1
A35C4:  BL              sub_885E4
A35C8:  LDR             R1, [R4,#8]; src
A35CA:  MOV             R5, R0
A35CC:  CBZ             R1, loc_A35DE
A35CE:  LDR             R0, [R4]
A35D0:  LSLS            R2, R0, #1; n
A35D2:  MOV             R0, R5; dest
A35D4:  BLX             j_memcpy
A35D8:  LDR             R0, [R4,#8]
A35DA:  BL              sub_88614
A35DE:  LDR             R0, [R4]
A35E0:  STRD.W          R6, R5, [R4,#4]
A35E4:  LDR             R1, [R4,#8]
A35E6:  LDRH.W          R2, [R7,#var_1E]
A35EA:  STRH.W          R2, [R1,R0,LSL#1]
A35EE:  LDR             R0, [R4]
A35F0:  ADDS            R0, #1
A35F2:  STR             R0, [R4]
A35F4:  ADD             SP, SP, #8
A35F6:  POP.W           {R8-R10}
A35FA:  POP             {R4-R7,PC}
