; =========================================================
; Game Engine Function: sub_14D14C
; Address            : 0x14D14C - 0x14D1D8
; =========================================================

14D14C:  PUSH            {R4,R5,R7,LR}
14D14E:  ADD             R7, SP, #8
14D150:  SUB             SP, SP, #0x138
14D152:  LDRD.W          R1, R0, [R0]; src
14D156:  MOVS            R3, #0
14D158:  ASRS            R2, R0, #0x1F
14D15A:  ADD.W           R0, R0, R2,LSR#29
14D15E:  MOVS            R2, #1
14D160:  ADD.W           R2, R2, R0,ASR#3; size
14D164:  MOV             R0, SP; int
14D166:  BL              sub_17D4F2
14D16A:  SUB.W           R1, R7, #-var_A; int
14D16E:  MOVS            R2, #0x10
14D170:  MOVS            R3, #1
14D172:  BL              sub_17D786
14D176:  SUB.W           R1, R7, #-var_B; int
14D17A:  MOV             R0, SP; int
14D17C:  MOVS            R2, #8
14D17E:  MOVS            R3, #1
14D180:  BL              sub_17D786
14D184:  LDRB.W          R2, [R7,#var_B]
14D188:  CMP             R2, #0x20 ; ' '
14D18A:  BHI             loc_14D1CE
14D18C:  ADD             R4, SP, #0x140+s
14D18E:  MOV             R0, SP; int
14D190:  MOV             R1, R4; dest
14D192:  BL              sub_17D744
14D196:  LDR             R0, =(off_23496C - 0x14D1A2)
14D198:  MOVS            R2, #0
14D19A:  LDRB.W          R1, [R7,#var_B]
14D19E:  ADD             R0, PC; off_23496C
14D1A0:  LDR             R0, [R0]; dword_23DEF4
14D1A2:  STRB            R2, [R4,R1]
14D1A4:  LDR             R0, [R0]
14D1A6:  LDR.W           R0, [R0,#0x3B0]
14D1AA:  LDR             R4, [R0,#4]
14D1AC:  CBZ             R4, loc_14D1CE
14D1AE:  LDRH.W          R5, [R7,#var_A]
14D1B2:  LSRS            R0, R5, #4
14D1B4:  CMP             R0, #0x7C ; '|'
14D1B6:  BHI             loc_14D1CE
14D1B8:  MOV             R0, R4
14D1BA:  MOV             R1, R5
14D1BC:  BL              sub_F2396
14D1C0:  CBZ             R0, loc_14D1CE
14D1C2:  LDR.W           R0, [R4,R5,LSL#2]; int
14D1C6:  CBZ             R0, loc_14D1CE
14D1C8:  ADD             R1, SP, #0x140+s; s
14D1CA:  BL              sub_109D28
14D1CE:  MOV             R0, SP
14D1D0:  BL              sub_17D542
14D1D4:  ADD             SP, SP, #0x138
14D1D6:  POP             {R4,R5,R7,PC}
