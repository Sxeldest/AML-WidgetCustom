; =========================================================
; Game Engine Function: mpg123_index
; Address            : 0x23372E - 0x23375A
; =========================================================

23372E:  CMP             R0, #0
233730:  ITT EQ
233732:  MOVEQ.W         R0, #0xFFFFFFFF
233736:  BXEQ            LR
233738:  CBZ             R1, loc_23374C
23373A:  CMP             R2, #0
23373C:  IT NE
23373E:  CMPNE           R3, #0
233740:  BEQ             loc_23374C
233742:  MOVS            R0, #0
233744:  STR             R0, [R1]
233746:  STR             R0, [R2]
233748:  STR             R0, [R3]
23374A:  BX              LR
23374C:  MOVW            R1, #0xB468
233750:  MOVS            R2, #0x1A
233752:  STR             R2, [R0,R1]
233754:  MOV.W           R0, #0xFFFFFFFF
233758:  BX              LR
