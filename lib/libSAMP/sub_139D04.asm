; =========================================================
; Game Engine Function: sub_139D04
; Address            : 0x139D04 - 0x139D48
; =========================================================

139D04:  PUSH            {R4,R6,R7,LR}
139D06:  ADD             R7, SP, #8
139D08:  SUB             SP, SP, #8
139D0A:  MOV             R4, R0
139D0C:  LDR             R0, [R0,#0x54]
139D0E:  CBZ             R0, loc_139D44
139D10:  LDRD.W          R1, R2, [R4,#0x24]
139D14:  STRD.W          R1, R2, [R0,#0x24]
139D18:  LDR             R2, [R4,#0x54]
139D1A:  LDRD.W          R0, R1, [R4,#0x1C]
139D1E:  STRD.W          R0, R1, [R2,#0x1C]
139D22:  LDR             R0, [R4,#0x54]
139D24:  LDR             R1, [R0]
139D26:  LDR             R1, [R1,#8]
139D28:  BLX             R1
139D2A:  LDR             R0, [R4,#0x54]
139D2C:  MOVS            R1, #0
139D2E:  STRD.W          R1, R1, [SP,#0x10+var_10]
139D32:  MOV             R1, SP
139D34:  BL              sub_12BD92
139D38:  LDR             R0, [R4,#0x54]
139D3A:  ADD.W           R1, R0, #0x14
139D3E:  MOV             R0, R4
139D40:  BL              sub_12BD38
139D44:  ADD             SP, SP, #8
139D46:  POP             {R4,R6,R7,PC}
