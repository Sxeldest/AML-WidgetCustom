; =========================================================
; Game Engine Function: sub_166FD0
; Address            : 0x166FD0 - 0x166FFE
; =========================================================

166FD0:  LDR             R0, =(dword_381B58 - 0x166FDA)
166FD2:  MOVW            R1, #0x19D0
166FD6:  ADD             R0, PC; dword_381B58
166FD8:  LDR             R0, [R0]
166FDA:  LDR             R2, [R0,R1]
166FDC:  ADD             R0, R1
166FDE:  CMP             R2, #0
166FE0:  IT NE
166FE2:  MOVNE           R2, #1
166FE4:  STRB            R2, [R0,#0xC]
166FE6:  ITTT NE
166FE8:  MOVNE           R1, #0
166FEA:  STRHNE          R1, [R0,#0xE]
166FEC:  STRNE           R1, [R0,#8]
166FEE:  MOVS            R1, #0
166FF0:  STRD.W          R1, R1, [R0,#0x14]
166FF4:  STR             R1, [R0]
166FF6:  STR             R1, [R0,#0x24]
166FF8:  STRB            R1, [R0,#0xD]
166FFA:  STRB            R1, [R0,#0x10]
166FFC:  BX              LR
