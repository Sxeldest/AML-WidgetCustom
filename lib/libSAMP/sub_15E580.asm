; =========================================================
; Game Engine Function: sub_15E580
; Address            : 0x15E580 - 0x15E5B6
; =========================================================

15E580:  LDR             R1, =(off_23496C - 0x15E586)
15E582:  ADD             R1, PC; off_23496C
15E584:  LDR             R1, [R1]; dword_23DEF4
15E586:  LDR             R1, [R1]
15E588:  CBZ             R1, loc_15E5B2
15E58A:  LDR.W           R1, [R1,#0x3B0]
15E58E:  LDR             R1, [R1]
15E590:  CBZ             R1, loc_15E5B2
15E592:  CMP.W           R0, #0x3EC
15E596:  BHI             loc_15E5B2
15E598:  ADDS            R2, R1, R0
15E59A:  LDRB.W          R2, [R2,#0xFB4]
15E59E:  CBZ             R2, loc_15E5B2
15E5A0:  ADD.W           R0, R1, R0,LSL#2
15E5A4:  LDR             R0, [R0,#4]
15E5A6:  CBZ             R0, loc_15E5B2
15E5A8:  LDR             R0, [R0]
15E5AA:  CMP             R0, #0
15E5AC:  IT NE
15E5AE:  MOVNE           R0, #1
15E5B0:  BX              LR
15E5B2:  MOVS            R0, #0
15E5B4:  BX              LR
