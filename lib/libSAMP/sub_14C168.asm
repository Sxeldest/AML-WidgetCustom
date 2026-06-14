; =========================================================
; Game Engine Function: sub_14C168
; Address            : 0x14C168 - 0x14C1E4
; =========================================================

14C168:  PUSH            {R4,R6,R7,LR}
14C16A:  ADD             R7, SP, #8
14C16C:  SUB             SP, SP, #0x118
14C16E:  LDRD.W          R1, R0, [R0]; src
14C172:  MOVS            R3, #0
14C174:  ASRS            R2, R0, #0x1F
14C176:  ADD.W           R0, R0, R2,LSR#29
14C17A:  MOVS            R2, #1
14C17C:  ADD.W           R2, R2, R0,ASR#3; size
14C180:  MOV             R0, SP; int
14C182:  BL              sub_17D4F2
14C186:  SUB.W           R1, R7, #-var_A; int
14C18A:  MOVS            R2, #0x10
14C18C:  MOVS            R3, #1
14C18E:  BL              sub_17D786
14C192:  LDRH.W          R2, [R7,#var_A]
14C196:  CMP.W           R2, #0x3E8
14C19A:  BHI             loc_14C1DA
14C19C:  LDR             R0, =(off_23496C - 0x14C1A2)
14C19E:  ADD             R0, PC; off_23496C
14C1A0:  LDR             R0, [R0]; dword_23DEF4
14C1A2:  LDR             R0, [R0]
14C1A4:  LDR.W           R0, [R0,#0x3B0]
14C1A8:  LDR             R4, [R0,#0x10]
14C1AA:  ADDS            R1, R4, R2
14C1AC:  LDRB            R1, [R1,#4]
14C1AE:  CBZ             R1, loc_14C1DA
14C1B0:  ADD.W           R1, R4, R2,LSL#2
14C1B4:  LDR.W           R1, [R1,#0x3EC]
14C1B8:  CBZ             R1, loc_14C1DA
14C1BA:  LDR             R0, [R0]
14C1BC:  MOVW            R3, #0x13BC
14C1C0:  LDR             R0, [R0,R3]
14C1C2:  CBZ             R0, loc_14C1D2
14C1C4:  LDR             R3, [R0,#0xC]
14C1C6:  CMP             R3, R1
14C1C8:  BNE             loc_14C1D2
14C1CA:  BL              sub_141418
14C1CE:  LDRH.W          R2, [R7,#var_A]
14C1D2:  MOV             R0, R4
14C1D4:  MOV             R1, R2
14C1D6:  BL              sub_14851A
14C1DA:  MOV             R0, SP
14C1DC:  BL              sub_17D542
14C1E0:  ADD             SP, SP, #0x118
14C1E2:  POP             {R4,R6,R7,PC}
