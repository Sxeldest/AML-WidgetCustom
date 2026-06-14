; =========================================================
; Game Engine Function: png_colorspace_sync_info
; Address            : 0x1EE608 - 0x1EE656
; =========================================================

1EE608:  LDRH.W          R2, [R1,#0x72]
1EE60C:  TST.W           R2, #0x8000
1EE610:  BNE             loc_1EE642
1EE612:  LDR.W           R12, [R1,#8]
1EE616:  LSLS            R0, R2, #0x18
1EE618:  BIC.W           R3, R12, #0x800
1EE61C:  IT MI
1EE61E:  ORRMI.W         R3, R12, #0x800
1EE622:  TST.W           R2, #2
1EE626:  BIC.W           R0, R3, #4
1EE62A:  IT NE
1EE62C:  ORRNE.W         R0, R3, #4; int
1EE630:  TST.W           R2, #1
1EE634:  BIC.W           R3, R0, #1
1EE638:  IT NE
1EE63A:  ORRNE.W         R3, R0, #1
1EE63E:  STR             R3, [R1,#8]
1EE640:  BX              LR
1EE642:  LDR             R2, [R1,#8]
1EE644:  MOVW            R3, #0x1805
1EE648:  BICS            R2, R3
1EE64A:  STR             R2, [R1,#8]
1EE64C:  MOVS            R2, #0x10
1EE64E:  MOV.W           R3, #0xFFFFFFFF
1EE652:  B.W             png_free_data
