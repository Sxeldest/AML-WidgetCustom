; =========================================================
; Game Engine Function: sub_17F486
; Address            : 0x17F486 - 0x17F4A0
; =========================================================

17F486:  LDR.W           R1, [R1,#0x340]
17F48A:  CMP             R1, #0
17F48C:  ITEE NE
17F48E:  LDRDNE.W        R2, R1, [R1,#4]
17F492:  MOVWEQ          R1, #0xFFFF
17F496:  MOVEQ.W         R2, #0xFFFFFFFF
17F49A:  STR             R2, [R0]
17F49C:  STR             R1, [R0,#4]
17F49E:  BX              LR
