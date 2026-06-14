; =========================================================
; Game Engine Function: sub_102EBC
; Address            : 0x102EBC - 0x102F3A
; =========================================================

102EBC:  PUSH            {R4-R7,LR}
102EBE:  ADD             R7, SP, #0xC
102EC0:  PUSH.W          {R11}
102EC4:  MOV             R5, R0
102EC6:  MOV             R4, R1
102EC8:  LDR             R0, [R0,#8]
102ECA:  LDR             R1, [R5,#0xC]
102ECC:  SUBS            R0, R1, R0
102ECE:  CMP             R0, #4
102ED0:  BCC             loc_102EF2
102ED2:  LDR             R1, =(asc_4F675 - 0x102EDC); "(" ...
102ED4:  MOV             R0, R4
102ED6:  LDR             R6, =(sub_FFB40+1 - 0x102EE0)
102ED8:  ADD             R1, PC; "("
102EDA:  ADDS            R2, R1, #1
102EDC:  ADD             R6, PC; sub_FFB40
102EDE:  BLX             R6; sub_FFB40
102EE0:  LDRD.W          R1, R2, [R5,#8]
102EE4:  MOV             R0, R4
102EE6:  BLX             R6; sub_FFB40
102EE8:  LDR             R1, =(asc_50037 - 0x102EF0); ")" ...
102EEA:  MOV             R0, R4
102EEC:  ADD             R1, PC; ")"
102EEE:  ADDS            R2, R1, #1
102EF0:  BLX             R6; sub_FFB40
102EF2:  LDR             R1, [R5,#0x10]
102EF4:  LDRB            R0, [R1]
102EF6:  CMP             R0, #0x6E ; 'n'
102EF8:  BNE             loc_102F14
102EFA:  LDR             R1, =(asc_4C8D3 - 0x102F02); "-" ...
102EFC:  MOV             R0, R4
102EFE:  ADD             R1, PC; "-"
102F00:  ADDS            R2, R1, #1
102F02:  BL              sub_FFB40
102F06:  LDRD.W          R0, R2, [R5,#0x10]
102F0A:  MOV             R1, R2
102F0C:  CMP             R2, R0
102F0E:  IT NE
102F10:  ADDNE           R1, R0, #1
102F12:  B               loc_102F16
102F14:  LDR             R2, [R5,#0x14]
102F16:  MOV             R0, R4
102F18:  BL              sub_FFB40
102F1C:  LDRD.W          R1, R2, [R5,#8]
102F20:  SUBS            R0, R2, R1
102F22:  CMP             R0, #3
102F24:  BHI             loc_102F34
102F26:  MOV             R0, R4
102F28:  POP.W           {R11}
102F2C:  POP.W           {R4-R7,LR}
102F30:  B.W             sub_FFB40
102F34:  POP.W           {R11}
102F38:  POP             {R4-R7,PC}
