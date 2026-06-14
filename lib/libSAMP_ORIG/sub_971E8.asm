; =========================================================
; Game Engine Function: sub_971E8
; Address            : 0x971E8 - 0x9721E
; =========================================================

971E8:  LDR             R0, =(dword_1ACF68 - 0x971F4)
971EA:  MOVW            R1, #0x19AC
971EE:  MOVS            R2, #1
971F0:  ADD             R0, PC; dword_1ACF68
971F2:  LDR             R0, [R0]
971F4:  LDR             R0, [R0,R1]
971F6:  LDR.W           R1, [R0,#0x184]
971FA:  STRB.W          R2, [R0,#0x7C]
971FE:  SUBS            R2, R1, #1
97200:  STR.W           R2, [R0,#0x184]
97204:  BEQ             loc_97212
97206:  LDR.W           R2, [R0,#0x18C]
9720A:  ADD.W           R1, R2, R1,LSL#2
9720E:  SUBS            R1, #8
97210:  B               loc_97216
97212:  ADD.W           R1, R0, #0x234
97216:  LDR             R1, [R1]
97218:  STR.W           R1, [R0,#0x170]
9721C:  BX              LR
