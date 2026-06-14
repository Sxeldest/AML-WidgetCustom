; =========================================================
; Game Engine Function: mpg123_set_substring
; Address            : 0x2349BC - 0x2349C6
; =========================================================

2349BC:  MOV.W           R12, #0
2349C0:  STR.W           R12, [R0,#8]
2349C4:  B               mpg123_add_substring
