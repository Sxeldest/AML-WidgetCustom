; =========================================================
; Game Engine Function: sub_14E1C0
; Address            : 0x14E1C0 - 0x14E210
; =========================================================

14E1C0:  PUSH            {R7,LR}
14E1C2:  MOV             R7, SP
14E1C4:  SUB             SP, SP, #0x118
14E1C6:  LDRD.W          R1, R0, [R0]; src
14E1CA:  MOVS            R3, #0
14E1CC:  ASRS            R2, R0, #0x1F
14E1CE:  ADD.W           R0, R0, R2,LSR#29
14E1D2:  MOVS            R2, #1
14E1D4:  ADD.W           R2, R2, R0,ASR#3; size
14E1D8:  MOV             R0, SP; int
14E1DA:  BL              sub_17D4F2
14E1DE:  ADD             R1, SP, #0x120+var_C; int
14E1E0:  MOVS            R2, #0x20 ; ' '
14E1E2:  MOVS            R3, #1
14E1E4:  BL              sub_17D786
14E1E8:  LDR             R0, [SP,#0x120+var_C]
14E1EA:  CMP             R0, #0x2E ; '.'
14E1EC:  BHI             loc_14E206
14E1EE:  LDR             R0, =(off_234970 - 0x14E1F4)
14E1F0:  ADD             R0, PC; off_234970
14E1F2:  LDR             R0, [R0]; dword_23DEF0
14E1F4:  LDR             R0, [R0]
14E1F6:  BL              sub_E35A0
14E1FA:  CBZ             R0, loc_14E206
14E1FC:  LDRB.W          R1, [SP,#0x120+var_C]
14E200:  MOVS            R2, #0
14E202:  BL              sub_10479C
14E206:  MOV             R0, SP
14E208:  BL              sub_17D542
14E20C:  ADD             SP, SP, #0x118
14E20E:  POP             {R7,PC}
