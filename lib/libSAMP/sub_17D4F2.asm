; =========================================================
; Game Engine Function: sub_17D4F2
; Address            : 0x17D4F2 - 0x17D542
; =========================================================

17D4F2:  PUSH            {R4-R7,LR}
17D4F4:  ADD             R7, SP, #0xC
17D4F6:  PUSH.W          {R11}
17D4FA:  MOV             R6, R1
17D4FC:  MOV             R4, R0
17D4FE:  STRB            R3, [R0,#0x10]
17D500:  MOVS            R0, #0
17D502:  LSLS            R1, R2, #3
17D504:  STRD.W          R1, R1, [R4]
17D508:  STR             R0, [R4,#8]
17D50A:  CBZ             R3, loc_17D520
17D50C:  MOV             R5, R2
17D50E:  CBZ             R2, loc_17D524
17D510:  CMP             R5, #0xFF
17D512:  BHI             loc_17D52A
17D514:  MOV.W           R0, #0x800
17D518:  STR             R0, [R4,#4]
17D51A:  ADD.W           R0, R4, #0x11
17D51E:  B               loc_17D530
17D520:  STR             R6, [R4,#0xC]
17D522:  B               loc_17D53A
17D524:  MOVS            R0, #0
17D526:  STR             R0, [R4,#0xC]
17D528:  B               loc_17D53A
17D52A:  MOV             R0, R5; size
17D52C:  BLX             malloc
17D530:  MOV             R1, R6; src
17D532:  MOV             R2, R5; n
17D534:  STR             R0, [R4,#0xC]
17D536:  BLX             j_memcpy
17D53A:  MOV             R0, R4
17D53C:  POP.W           {R11}
17D540:  POP             {R4-R7,PC}
