; =========================================================
; Game Engine Function: _ZN6List_c10RemoveHeadEv
; Address            : 0x36CCFE - 0x36CD2A
; =========================================================

36CCFE:  MOV             R1, R0
36CD00:  LDR             R0, [R1]
36CD02:  CMP             R0, #0
36CD04:  ITT EQ
36CD06:  MOVEQ           R0, #0
36CD08:  BXEQ            LR
36CD0A:  LDR             R2, [R1,#4]
36CD0C:  CMP             R0, R2
36CD0E:  BEQ             loc_36CD18
36CD10:  LDR             R2, [R0,#4]
36CD12:  STR             R2, [R1]
36CD14:  CBNZ            R2, loc_36CD1E
36CD16:  B               loc_36CD22
36CD18:  MOVS            R2, #0
36CD1A:  STR             R2, [R1,#4]
36CD1C:  MOV             R2, R1
36CD1E:  MOVS            R3, #0
36CD20:  STR             R3, [R2]
36CD22:  LDR             R2, [R1,#8]
36CD24:  SUBS            R2, #1
36CD26:  STR             R2, [R1,#8]
36CD28:  BX              LR
