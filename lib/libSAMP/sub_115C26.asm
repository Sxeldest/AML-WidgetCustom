; =========================================================
; Game Engine Function: sub_115C26
; Address            : 0x115C26 - 0x115C3E
; =========================================================

115C26:  LDR             R2, [R0,#0xC]
115C28:  LDRD.W          R3, R12, [R0,#4]
115C2C:  LDR             R1, [R1]
115C2E:  ADD.W           R0, R3, R2,ASR#1
115C32:  LSLS            R2, R2, #0x1F
115C34:  ITT NE
115C36:  LDRNE           R2, [R0]
115C38:  LDRNE.W         R12, [R2,R12]
115C3C:  BX              R12
