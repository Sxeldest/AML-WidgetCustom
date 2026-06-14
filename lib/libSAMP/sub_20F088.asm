; =========================================================
; Game Engine Function: sub_20F088
; Address            : 0x20F088 - 0x20F0A2
; =========================================================

20F088:  CMP             R0, R1
20F08A:  BEQ             locret_20F0A0
20F08C:  SUBS            R1, #1
20F08E:  CMP             R0, R1
20F090:  BCS             locret_20F0A0
20F092:  LDRB            R2, [R0]
20F094:  LDRB            R3, [R1]
20F096:  STRB.W          R3, [R0],#1
20F09A:  STRB.W          R2, [R1],#-1
20F09E:  B               loc_20F08E
20F0A0:  BX              LR
