; =========================================================
; Game Engine Function: sub_105190
; Address            : 0x105190 - 0x1051AC
; =========================================================

105190:  LDR             R0, [R0,#0x5C]
105192:  CMP             R0, #0
105194:  ITEEE EQ
105196:  MOVEQ           R0, #0
105198:  LDRBNE.W        R1, [R0,#stru_710.st_info]
10519C:  RSBNE.W         R1, R1, R1,LSL#3
1051A0:  ADDNE.W         R0, R0, R1,LSL#2
1051A4:  IT NE
1051A6:  ADDWNE          R0, R0, #0x5A4
1051AA:  BX              LR
