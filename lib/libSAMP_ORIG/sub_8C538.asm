; =========================================================
; Game Engine Function: sub_8C538
; Address            : 0x8C538 - 0x8C54C
; =========================================================

8C538:  LDR             R0, =(dword_1ACF68 - 0x8C542)
8C53A:  MOVW            R2, #0x1BDC
8C53E:  ADD             R0, PC; dword_1ACF68
8C540:  LDR             R1, [R0]
8C542:  LDRB            R0, [R1,R2]
8C544:  CMP             R0, #0
8C546:  IT NE
8C548:  ADDNE           R0, R1, R2
8C54A:  BX              LR
