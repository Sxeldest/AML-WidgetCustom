; =========================================================
; Game Engine Function: sub_145998
; Address            : 0x145998 - 0x1459B4
; =========================================================

145998:  AND             LR, R6, R7
14599C:  AND             LR, R4, R5
1459A0:  AND             LR, R2, R3
1459A4:  AND             LR, R0, R1
1459A8:  LDMDAGE         R0, {R0-R10,SP-PC}
1459AC:  STC2L           p0, c15, [R9,#0xDC]
1459B0:  LDMDA           LR, {R0-R4,R6,R7,R12-PC}^
