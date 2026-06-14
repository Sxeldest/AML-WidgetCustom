; =========================================================
; Game Engine Function: sub_16EB84
; Address            : 0x16EB84 - 0x16EBAE
; =========================================================

16EB84:  LDR             R0, =(dword_381B58 - 0x16EB8E)
16EB86:  MOVW            R1, #0x19AC
16EB8A:  ADD             R0, PC; dword_381B58
16EB8C:  LDR             R0, [R0]
16EB8E:  LDR             R2, [R0,R1]
16EB90:  ADD             R0, R1
16EB92:  LDR             R3, [R0,#0x10]
16EB94:  LDR.W           R1, [R2,#0x108]
16EB98:  CMP             R3, R1
16EB9A:  ITT EQ
16EB9C:  MOVEQ           R2, #1
16EB9E:  STRBEQ          R2, [R0,#0x14]
16EBA0:  LDR             R2, [R0,#0x24]
16EBA2:  CMP             R2, R1
16EBA4:  ITT EQ
16EBA6:  MOVEQ           R1, #1
16EBA8:  STRBEQ.W        R1, [R0,#0x31]
16EBAC:  BX              LR
