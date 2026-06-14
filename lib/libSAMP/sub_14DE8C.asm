; =========================================================
; Game Engine Function: sub_14DE8C
; Address            : 0x14DE8C - 0x14DED8
; =========================================================

14DE8C:  PUSH            {R7,LR}
14DE8E:  MOV             R7, SP
14DE90:  SUB             SP, SP, #0x118
14DE92:  LDRD.W          R1, R0, [R0]; src
14DE96:  MOVS            R3, #0
14DE98:  ASRS            R2, R0, #0x1F
14DE9A:  ADD.W           R0, R0, R2,LSR#29
14DE9E:  MOVS            R2, #1
14DEA0:  ADD.W           R2, R2, R0,ASR#3; size
14DEA4:  MOV             R0, SP; int
14DEA6:  BL              sub_17D4F2
14DEAA:  SUBS            R1, R7, #1; int
14DEAC:  MOVS            R2, #8
14DEAE:  MOVS            R3, #1
14DEB0:  BL              sub_17D786
14DEB4:  LDR             R0, =(off_234970 - 0x14DEBA)
14DEB6:  ADD             R0, PC; off_234970
14DEB8:  LDR             R0, [R0]; dword_23DEF0
14DEBA:  LDR             R0, [R0]
14DEBC:  BL              sub_E35A0
14DEC0:  LDRB.W          R1, [R7,#-1]
14DEC4:  CMP             R1, #0
14DEC6:  IT NE
14DEC8:  MOVNE           R1, #1
14DECA:  BL              sub_10421C
14DECE:  MOV             R0, SP
14DED0:  BL              sub_17D542
14DED4:  ADD             SP, SP, #0x118
14DED6:  POP             {R7,PC}
