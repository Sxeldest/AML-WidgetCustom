; =========================================================
; Game Engine Function: sub_11F30E
; Address            : 0x11F30E - 0x11F326
; =========================================================

11F30E:  LDR             R2, [R0,#0xC]
11F310:  LDRD.W          R3, R12, [R0,#4]
11F314:  LDR             R1, [R1]
11F316:  ADD.W           R0, R3, R2,ASR#1
11F31A:  LSLS            R2, R2, #0x1F
11F31C:  ITT NE
11F31E:  LDRNE           R2, [R0]
11F320:  LDRNE.W         R12, [R2,R12]
11F324:  BX              R12
