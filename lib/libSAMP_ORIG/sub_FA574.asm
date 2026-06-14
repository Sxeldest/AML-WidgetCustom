; =========================================================
; Game Engine Function: sub_FA574
; Address            : 0xFA574 - 0xFA596
; =========================================================

FA574:  CBZ             R1, loc_FA590
FA576:  CMP             R3, R1
FA578:  IT CC
FA57A:  ADDCC           R1, R3, #1
FA57C:  SUBS            R0, #4
FA57E:  LSLS            R1, R1, #2
FA580:  CBZ             R1, loc_FA590
FA582:  LDR             R3, [R0,R1]
FA584:  SUBS            R1, #4
FA586:  CMP             R3, R2
FA588:  ITT EQ
FA58A:  ASREQ           R0, R1, #2
FA58C:  BXEQ            LR
FA58E:  B               loc_FA580
FA590:  MOV.W           R0, #0xFFFFFFFF
FA594:  BX              LR
