; =========================================================
; Game Engine Function: png_convert_from_struct_tm
; Address            : 0x203FA8 - 0x203FC8
; =========================================================

203FA8:  LDR             R2, [R1,#0x14]
203FAA:  ADDW            R2, R2, #0x76C
203FAE:  STRH            R2, [R0]
203FB0:  LDR             R2, [R1,#0x10]
203FB2:  ADDS            R2, #1
203FB4:  STRB            R2, [R0,#2]
203FB6:  LDR             R2, [R1,#0xC]
203FB8:  STRB            R2, [R0,#3]
203FBA:  LDR             R2, [R1,#8]
203FBC:  STRB            R2, [R0,#4]
203FBE:  LDR             R2, [R1,#4]
203FC0:  STRB            R2, [R0,#5]
203FC2:  LDR             R1, [R1]
203FC4:  STRB            R1, [R0,#6]
203FC6:  BX              LR
