; =========================================================
; Game Engine Function: sub_1129F4
; Address            : 0x1129F4 - 0x112A38
; =========================================================

1129F4:  PUSH            {R4,R5,R7,LR}
1129F6:  ADD             R7, SP, #8
1129F8:  SUB             SP, SP, #8
1129FA:  MOV             R4, R0
1129FC:  MOV             R0, R1
1129FE:  MOV             R5, R1
112A00:  BL              sub_17D81C
112A04:  SUB.W           R1, R7, #-var_A; int
112A08:  MOV             R0, R5; int
112A0A:  MOVS            R2, #0x10
112A0C:  MOVS            R3, #1
112A0E:  BL              sub_17D786
112A12:  SUB.W           R1, R7, #-var_B; int
112A16:  MOV             R0, R5; int
112A18:  MOVS            R2, #8
112A1A:  MOVS            R3, #1
112A1C:  BL              sub_17D786
112A20:  LDRH.W          R0, [R7,#var_A]
112A24:  LSRS            R1, R0, #4
112A26:  CMP             R1, #0x7C ; '|'
112A28:  ITTT LS
112A2A:  LDRBLS.W        R1, [R7,#var_B]
112A2E:  ADDLS           R0, R4
112A30:  STRBLS.W        R1, [R0,#0x7C]
112A34:  ADD             SP, SP, #8
112A36:  POP             {R4,R5,R7,PC}
