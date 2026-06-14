; =========================================================
; Game Engine Function: png_get_gAMA_fixed
; Address            : 0x1F3942 - 0x1F3968
; =========================================================

1F3942:  MOV             R3, R0
1F3944:  MOVS            R0, #0
1F3946:  CMP             R3, #0
1F3948:  IT EQ
1F394A:  BXEQ            LR
1F394C:  CMP             R1, #0
1F394E:  ITT NE
1F3950:  MOVNE           R0, #0
1F3952:  CMPNE           R2, #0
1F3954:  BEQ             locret_1F3966
1F3956:  LDRH.W          R3, [R1,#0x72]
1F395A:  ANDS.W          R3, R3, #1
1F395E:  ITTT NE
1F3960:  LDRNE           R0, [R1,#0x28]
1F3962:  STRNE           R0, [R2]
1F3964:  MOVNE           R0, #1
1F3966:  BX              LR
