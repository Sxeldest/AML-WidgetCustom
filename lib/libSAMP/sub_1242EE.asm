; =========================================================
; Game Engine Function: sub_1242EE
; Address            : 0x1242EE - 0x124302
; =========================================================

1242EE:  LDR             R3, [R0,#0xC]
1242F0:  LDRD.W          R2, R1, [R0,#4]
1242F4:  ADD.W           R0, R2, R3,ASR#1
1242F8:  LSLS            R2, R3, #0x1F
1242FA:  ITT NE
1242FC:  LDRNE           R2, [R0]
1242FE:  LDRNE           R1, [R2,R1]
124300:  BX              R1
