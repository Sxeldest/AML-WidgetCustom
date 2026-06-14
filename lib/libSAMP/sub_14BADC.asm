; =========================================================
; Game Engine Function: sub_14BADC
; Address            : 0x14BADC - 0x14BB50
; =========================================================

14BADC:  PUSH            {R7,LR}
14BADE:  MOV             R7, SP
14BAE0:  SUB             SP, SP, #0x118
14BAE2:  LDRD.W          R1, R0, [R0]; src
14BAE6:  MOVS            R3, #0
14BAE8:  ASRS            R2, R0, #0x1F
14BAEA:  ADD.W           R0, R0, R2,LSR#29
14BAEE:  MOVS            R2, #1
14BAF0:  ADD.W           R2, R2, R0,ASR#3; size
14BAF4:  MOV             R0, SP; int
14BAF6:  BL              sub_17D4F2
14BAFA:  SUBS            R1, R7, #2; int
14BAFC:  MOVS            R2, #0x10
14BAFE:  MOVS            R3, #1
14BB00:  BL              sub_17D786
14BB04:  LDRH.W          R0, [R7,#-2]
14BB08:  CMP.W           R0, #0x3E8
14BB0C:  BHI             loc_14BB46
14BB0E:  LDR             R1, =(off_23496C - 0x14BB14)
14BB10:  ADD             R1, PC; off_23496C
14BB12:  LDR             R1, [R1]; dword_23DEF4
14BB14:  LDR             R1, [R1]
14BB16:  LDR.W           R2, [R1,#0x3B0]
14BB1A:  LDR             R1, [R2,#0x10]
14BB1C:  ADDS            R3, R1, R0
14BB1E:  LDRB            R3, [R3,#4]
14BB20:  CBZ             R3, loc_14BB46
14BB22:  ADD.W           R0, R1, R0,LSL#2
14BB26:  LDR.W           R1, [R0,#0x3EC]
14BB2A:  CBZ             R1, loc_14BB46
14BB2C:  LDR             R0, =(off_234970 - 0x14BB38)
14BB2E:  MOVW            R3, #0x13BC
14BB32:  LDR             R2, [R2]
14BB34:  ADD             R0, PC; off_234970
14BB36:  LDR             R0, [R0]; dword_23DEF0
14BB38:  LDR             R2, [R2,R3]
14BB3A:  MOVS            R3, #1
14BB3C:  LDR             R0, [R0]
14BB3E:  LDR             R0, [R0,#4]
14BB40:  STRB            R3, [R2,#8]
14BB42:  BL              sub_F885C
14BB46:  MOV             R0, SP
14BB48:  BL              sub_17D542
14BB4C:  ADD             SP, SP, #0x118
14BB4E:  POP             {R7,PC}
