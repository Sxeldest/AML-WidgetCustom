; =========================================================
; Game Engine Function: sub_1EF652
; Address            : 0x1EF652 - 0x1EF666
; =========================================================

1EF652:  LDR             R1, [R0,#4]
1EF654:  B.W             loc_1EF658
1EF658:  LDR             R2, [R0,#8]
1EF65A:  CMP             R2, R1
1EF65C:  IT EQ
1EF65E:  BXEQ            LR
1EF660:  SUBS            R2, #4
1EF662:  STR             R2, [R0,#8]
1EF664:  B               loc_1EF65A
