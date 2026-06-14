; =========================================================
; Game Engine Function: sub_1651AC
; Address            : 0x1651AC - 0x1651C4
; =========================================================

1651AC:  LDR             R0, =(dword_381B58 - 0x1651B6)
1651AE:  MOVW            R1, #0x2CD4
1651B2:  ADD             R0, PC; dword_381B58
1651B4:  LDR             R0, [R0]
1651B6:  LDR             R2, [R0,R1]
1651B8:  CMP             R2, #0
1651BA:  ITEE EQ
1651BC:  MOVEQ           R0, #0
1651BE:  ADDNE           R0, R1
1651C0:  LDRNE           R0, [R0,#(stru_2CD0.st_info - 0x2CD4)]
1651C2:  BX              LR
