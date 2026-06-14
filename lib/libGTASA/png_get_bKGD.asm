; =========================================================
; Game Engine Function: png_get_bKGD
; Address            : 0x1F3650 - 0x1F3676
; =========================================================

1F3650:  MOV             R3, R0
1F3652:  MOVS            R0, #0
1F3654:  CMP             R3, #0
1F3656:  IT EQ
1F3658:  BXEQ            LR
1F365A:  CMP             R1, #0
1F365C:  ITT NE
1F365E:  MOVNE           R0, #0
1F3660:  CMPNE           R2, #0
1F3662:  BEQ             locret_1F3674
1F3664:  LDR             R3, [R1,#8]
1F3666:  ANDS.W          R3, R3, #0x20 ; ' '
1F366A:  ITTT NE
1F366C:  ADDNE.W         R0, R1, #0xAA
1F3670:  STRNE           R0, [R2]
1F3672:  MOVNE           R0, #0x20 ; ' '
1F3674:  BX              LR
