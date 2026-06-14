; =========================================================
; Game Engine Function: sub_FE398
; Address            : 0xFE398 - 0xFE3AA
; =========================================================

FE398:  ADDS            R1, R0, #1
FE39A:  CMP             R1, #2
FE39C:  ITT CC
FE39E:  MOVCC           R0, #0
FE3A0:  BXCC            LR
FE3A2:  LDR             R1, =(off_2475EC - 0xFE3A8)
FE3A4:  ADD             R1, PC; off_2475EC
FE3A6:  LDR             R1, [R1]
FE3A8:  BX              R1
