; =========================================================
; Game Engine Function: sub_14CEDC
; Address            : 0x14CEDC - 0x14CF48
; =========================================================

14CEDC:  PUSH            {R4,R5,R7,LR}
14CEDE:  ADD             R7, SP, #8
14CEE0:  SUB             SP, SP, #0x118
14CEE2:  LDR             R1, =(off_23496C - 0x14CEE8)
14CEE4:  ADD             R1, PC; off_23496C
14CEE6:  LDR             R1, [R1]; dword_23DEF4
14CEE8:  LDR             R1, [R1]
14CEEA:  LDR.W           R1, [R1,#0x3B0]
14CEEE:  LDR             R4, [R1,#4]
14CEF0:  CBZ             R4, loc_14CF44
14CEF2:  LDRD.W          R1, R0, [R0]; src
14CEF6:  MOVS            R3, #0
14CEF8:  ASRS            R2, R0, #0x1F
14CEFA:  ADD.W           R0, R0, R2,LSR#29
14CEFE:  MOVS            R2, #1
14CF00:  ADD.W           R2, R2, R0,ASR#3; size
14CF04:  MOV             R0, SP; int
14CF06:  BL              sub_17D4F2
14CF0A:  SUB.W           R1, R7, #-var_A; int
14CF0E:  MOVS            R2, #0x10
14CF10:  MOVS            R3, #1
14CF12:  BL              sub_17D786
14CF16:  LDRH.W          R5, [R7,#var_A]
14CF1A:  LSRS            R0, R5, #4
14CF1C:  CMP             R0, #0x7C ; '|'
14CF1E:  BHI             loc_14CF3E
14CF20:  MOV             R0, R4
14CF22:  MOV             R1, R5
14CF24:  BL              sub_F2396
14CF28:  CBZ             R0, loc_14CF3E
14CF2A:  LDR.W           R4, [R4,R5,LSL#2]
14CF2E:  CBZ             R4, loc_14CF3E
14CF30:  MOV             R0, R4
14CF32:  BL              sub_1099D0
14CF36:  MOV             R0, R4
14CF38:  MOVS            R1, #0
14CF3A:  BL              sub_109C00
14CF3E:  MOV             R0, SP
14CF40:  BL              sub_17D542
14CF44:  ADD             SP, SP, #0x118
14CF46:  POP             {R4,R5,R7,PC}
