; =========================================================
; Game Engine Function: sub_1056B4
; Address            : 0x1056B4 - 0x1056CE
; =========================================================

1056B4:  CMP             R1, #9
1056B6:  BHI             loc_1056CA
1056B8:  ADDS            R2, R0, R1
1056BA:  LDRB.W          R2, [R2,#0x74]
1056BE:  CBZ             R2, loc_1056CA
1056C0:  ADD.W           R0, R0, R1,LSL#2
1056C4:  LDR.W           R0, [R0,#0x288]
1056C8:  BX              LR
1056CA:  MOVS            R0, #0
1056CC:  BX              LR
