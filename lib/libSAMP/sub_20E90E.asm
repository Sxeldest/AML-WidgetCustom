; =========================================================
; Game Engine Function: sub_20E90E
; Address            : 0x20E90E - 0x20E92A
; =========================================================

20E90E:  ADDS            R3, R0, #4
20E910:  CMP             R3, R1
20E912:  ITT EQ
20E914:  MOVEQ           R1, R2
20E916:  BEQ.W           loc_224880
20E91A:  ADDS            R3, R1, #4
20E91C:  CMP             R3, R2
20E91E:  ITT EQ
20E920:  MOVEQ           R1, R2
20E922:  BEQ.W           loc_22488C
20E926:  B.W             loc_224898
