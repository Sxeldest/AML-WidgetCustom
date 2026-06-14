; =========================================================
; Game Engine Function: sub_13E7F2
; Address            : 0x13E7F2 - 0x13E7FC
; =========================================================

13E7F2:  LDR.W           R0, [R0,R1,LSL#2]
13E7F6:  CBZ             R0, locret_13E7FA
13E7F8:  STR             R2, [R0,#0x14]
13E7FA:  BX              LR
