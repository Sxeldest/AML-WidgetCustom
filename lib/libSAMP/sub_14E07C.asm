; =========================================================
; Game Engine Function: sub_14E07C
; Address            : 0x14E07C - 0x14E096
; =========================================================

14E07C:  LDR             R0, =(off_23496C - 0x14E086)
14E07E:  MOVW            R1, #0x13BC
14E082:  ADD             R0, PC; off_23496C
14E084:  LDR             R0, [R0]; dword_23DEF4
14E086:  LDR             R0, [R0]
14E088:  LDR.W           R0, [R0,#0x3B0]
14E08C:  LDR             R0, [R0]
14E08E:  LDR             R0, [R0,R1]
14E090:  LDR             R0, [R0,#0x1C]
14E092:  B.W             sub_1048BC
