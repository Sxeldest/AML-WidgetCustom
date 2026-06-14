; =========================================================
; Game Engine Function: opus_packet_get_nb_frames
; Address            : 0x1900B4 - 0x1900E2
; =========================================================

1900B4:  CMP             R1, #1
1900B6:  BLT             loc_1900D8
1900B8:  LDRB            R2, [R0]
1900BA:  ANDS.W          R2, R2, #3
1900BE:  ITT EQ
1900C0:  MOVEQ           R0, #1
1900C2:  BXEQ            LR
1900C4:  CMP             R2, #3
1900C6:  BNE             loc_1900DE
1900C8:  CMP             R1, #2
1900CA:  ITEE LT
1900CC:  MOVLT           R0, #0xFFFFFFFC
1900D0:  LDRBGE          R0, [R0,#1]
1900D2:  ANDGE.W         R0, R0, #0x3F ; '?'
1900D6:  BX              LR
1900D8:  MOV.W           R0, #0xFFFFFFFF
1900DC:  BX              LR
1900DE:  MOVS            R0, #2
1900E0:  BX              LR
