; =========================================================
; Game Engine Function: sub_1F307E
; Address            : 0x1F307E - 0x1F309C
; =========================================================

1F307E:  CBZ             R1, loc_1F3094
1F3080:  CMP             R3, R1
1F3082:  IT CC
1F3084:  ADDCC           R1, R3, #1
1F3086:  SUBS            R0, #1
1F3088:  CBZ             R1, loc_1F3094
1F308A:  LDRB            R3, [R0,R1]
1F308C:  SUBS            R1, #1
1F308E:  CMP             R3, R2
1F3090:  BNE             loc_1F3088
1F3092:  B               loc_1F3098
1F3094:  MOV.W           R1, #0xFFFFFFFF
1F3098:  MOV             R0, R1
1F309A:  BX              LR
