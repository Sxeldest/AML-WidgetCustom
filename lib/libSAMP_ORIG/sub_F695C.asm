; =========================================================
; Game Engine Function: sub_F695C
; Address            : 0xF695C - 0xF6978
; =========================================================

F695C:  ADDS            R3, R0, #1
F695E:  CMP             R3, R1
F6960:  ITT EQ
F6962:  MOVEQ           R1, R2
F6964:  BEQ.W           loc_10C464
F6968:  ADDS            R3, R1, #1
F696A:  CMP             R3, R2
F696C:  ITT EQ
F696E:  MOVEQ           R1, R2
F6970:  BEQ.W           loc_10C470
F6974:  B.W             loc_10C47C
