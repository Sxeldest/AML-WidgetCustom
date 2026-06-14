; =========================================================
; Game Engine Function: sub_1F3528
; Address            : 0x1F3528 - 0x1F353E
; =========================================================

1F3528:  LDRB            R1, [R0]
1F352A:  LSLS            R1, R1, #0x1F
1F352C:  ITTT EQ
1F352E:  MOVEQ           R1, #0
1F3530:  STRHEQ          R1, [R0]
1F3532:  BXEQ            LR
1F3534:  LDR             R1, [R0,#8]
1F3536:  MOVS            R2, #0
1F3538:  STRB            R2, [R1]
1F353A:  STR             R2, [R0,#4]
1F353C:  BX              LR
