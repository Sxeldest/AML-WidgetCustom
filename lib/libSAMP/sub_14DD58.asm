; =========================================================
; Game Engine Function: sub_14DD58
; Address            : 0x14DD58 - 0x14DDE6
; =========================================================

14DD58:  PUSH            {R4,R5,R7,LR}
14DD5A:  ADD             R7, SP, #8
14DD5C:  SUB             SP, SP, #0x128
14DD5E:  LDRD.W          R1, R0, [R0]; src
14DD62:  MOVS            R3, #0
14DD64:  ASRS            R2, R0, #0x1F
14DD66:  ADD.W           R0, R0, R2,LSR#29
14DD6A:  MOVS            R2, #1
14DD6C:  ADD.W           R2, R2, R0,ASR#3; size
14DD70:  ADD             R0, SP, #0x130+var_12C; int
14DD72:  BL              sub_17D4F2
14DD76:  SUB.W           R1, R7, #-var_A; int
14DD7A:  MOVS            R2, #0x10
14DD7C:  MOVS            R3, #1
14DD7E:  BL              sub_17D786
14DD82:  ADD             R0, SP, #0x130+var_12C; int
14DD84:  ADD             R1, SP, #0x130+var_10; int
14DD86:  MOVS            R2, #0x20 ; ' '
14DD88:  MOVS            R3, #1
14DD8A:  BL              sub_17D786
14DD8E:  ADD             R0, SP, #0x130+var_12C; int
14DD90:  ADD             R1, SP, #0x130+var_14; int
14DD92:  MOVS            R2, #0x20 ; ' '
14DD94:  MOVS            R3, #1
14DD96:  BL              sub_17D786
14DD9A:  ADD             R0, SP, #0x130+var_12C; int
14DD9C:  ADD             R1, SP, #0x130+var_18; int
14DD9E:  MOVS            R2, #0x20 ; ' '
14DDA0:  MOVS            R3, #1
14DDA2:  BL              sub_17D786
14DDA6:  LDR             R0, =(off_23496C - 0x14DDAC)
14DDA8:  ADD             R0, PC; off_23496C
14DDAA:  LDR             R0, [R0]; dword_23DEF4
14DDAC:  LDR             R0, [R0]
14DDAE:  LDR.W           R0, [R0,#0x3B0]
14DDB2:  LDR             R4, [R0,#4]
14DDB4:  CBZ             R4, loc_14DDDC
14DDB6:  LDRH.W          R5, [R7,#var_A]
14DDBA:  LSRS            R0, R5, #4
14DDBC:  CMP             R0, #0x7C ; '|'
14DDBE:  BHI             loc_14DDDC
14DDC0:  MOV             R0, R4
14DDC2:  MOV             R1, R5
14DDC4:  BL              sub_F2396
14DDC8:  CBZ             R0, loc_14DDDC
14DDCA:  LDR.W           R0, [R4,R5,LSL#2]
14DDCE:  CBZ             R0, loc_14DDDC
14DDD0:  LDR             R5, [R0]
14DDD2:  LDR             R1, [SP,#0x130+var_10]
14DDD4:  LDRD.W          R3, R2, [SP,#0x130+var_18]
14DDD8:  LDR             R5, [R5,#0x10]
14DDDA:  BLX             R5
14DDDC:  ADD             R0, SP, #0x130+var_12C
14DDDE:  BL              sub_17D542
14DDE2:  ADD             SP, SP, #0x128
14DDE4:  POP             {R4,R5,R7,PC}
