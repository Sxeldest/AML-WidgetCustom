; =========================================================
; Game Engine Function: sub_12F820
; Address            : 0x12F820 - 0x12F86A
; =========================================================

12F820:  LDRB.W          R1, [R0,#0x64]
12F824:  LSLS            R1, R1, #0x1F
12F826:  BNE             loc_12F830
12F828:  MOVS            R1, #0
12F82A:  STRH.W          R1, [R0,#0x64]
12F82E:  B               loc_12F838
12F830:  LDR             R1, [R0,#0x6C]
12F832:  MOVS            R2, #0
12F834:  STRB            R2, [R1]
12F836:  STR             R2, [R0,#0x68]
12F838:  LDRB.W          R1, [R0,#0x58]
12F83C:  LSLS            R1, R1, #0x1F
12F83E:  BNE             loc_12F848
12F840:  MOVS            R1, #0
12F842:  STRH.W          R1, [R0,#0x58]
12F846:  B               loc_12F850
12F848:  LDR             R1, [R0,#0x60]
12F84A:  MOVS            R2, #0
12F84C:  STRB            R2, [R1]
12F84E:  STR             R2, [R0,#0x5C]
12F850:  LDRB.W          R1, [R0,#0x70]
12F854:  LSLS            R1, R1, #0x1F
12F856:  ITTT EQ
12F858:  MOVEQ           R1, #0
12F85A:  STRHEQ.W        R1, [R0,#0x70]
12F85E:  BXEQ            LR
12F860:  LDR             R1, [R0,#0x78]
12F862:  MOVS            R2, #0
12F864:  STRB            R2, [R1]
12F866:  STR             R2, [R0,#0x74]
12F868:  BX              LR
