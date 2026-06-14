; =========================================================
; Game Engine Function: sub_F6AC4
; Address            : 0xF6AC4 - 0xF6AE0
; =========================================================

F6AC4:  ADDS            R3, R0, #4
F6AC6:  CMP             R3, R1
F6AC8:  ITT EQ
F6ACA:  MOVEQ           R1, R2
F6ACC:  BEQ.W           loc_10C488
F6AD0:  ADDS            R3, R1, #4
F6AD2:  CMP             R3, R2
F6AD4:  ITT EQ
F6AD6:  MOVEQ           R1, R2
F6AD8:  BEQ.W           loc_10C494
F6ADC:  B.W             loc_10C4A0
