; =========================================================
; Game Engine Function: sub_129AB6
; Address            : 0x129AB6 - 0x129ACA
; =========================================================

129AB6:  LDR             R3, [R0,#0xC]
129AB8:  LDRD.W          R2, R1, [R0,#4]
129ABC:  ADD.W           R0, R2, R3,ASR#1
129AC0:  LSLS            R2, R3, #0x1F
129AC2:  ITT NE
129AC4:  LDRNE           R2, [R0]
129AC6:  LDRNE           R1, [R2,R1]
129AC8:  BX              R1
