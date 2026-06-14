; =========================================================
; Game Engine Function: sub_2122D0
; Address            : 0x2122D0 - 0x2122F2
; =========================================================

2122D0:  CBZ             R1, loc_2122EC
2122D2:  CMP             R3, R1
2122D4:  IT CC
2122D6:  ADDCC           R1, R3, #1
2122D8:  SUBS            R0, #4
2122DA:  LSLS            R1, R1, #2
2122DC:  CBZ             R1, loc_2122EC
2122DE:  LDR             R3, [R0,R1]
2122E0:  SUBS            R1, #4
2122E2:  CMP             R3, R2
2122E4:  ITT EQ
2122E6:  ASREQ           R0, R1, #2
2122E8:  BXEQ            LR
2122EA:  B               loc_2122DC
2122EC:  MOV.W           R0, #0xFFFFFFFF
2122F0:  BX              LR
