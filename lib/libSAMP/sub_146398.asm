; =========================================================
; Game Engine Function: sub_146398
; Address            : 0x146398 - 0x1463EC
; =========================================================

146398:  PUSH            {R7,LR}
14639A:  MOV             R7, SP
14639C:  SUB             SP, SP, #0x118
14639E:  LDRD.W          R1, R0, [R0]; src
1463A2:  MOVS            R3, #0
1463A4:  ASRS            R2, R0, #0x1F
1463A6:  ADD.W           R0, R0, R2,LSR#29
1463AA:  MOVS            R2, #1
1463AC:  ADD.W           R2, R2, R0,ASR#3; size
1463B0:  ADD             R0, SP, #0x120+var_11C; int
1463B2:  BL              sub_17D4F2
1463B6:  ADD.W           R1, SP, #0x120+var_11D; int
1463BA:  MOVS            R2, #8
1463BC:  MOVS            R3, #1
1463BE:  BL              sub_17D786
1463C2:  LDR             R0, =(off_23496C - 0x1463CA)
1463C4:  LDR             R1, =(off_234970 - 0x1463CC)
1463C6:  ADD             R0, PC; off_23496C
1463C8:  ADD             R1, PC; off_234970
1463CA:  LDR             R0, [R0]; dword_23DEF4
1463CC:  LDR             R2, [R1]; dword_23DEF0
1463CE:  LDRB.W          R1, [SP,#0x120+var_11D]
1463D2:  LDR             R0, [R0]
1463D4:  LDR.W           R3, [R0,#0x20C]
1463D8:  LDR             R0, [R2]
1463DA:  STRB.W          R1, [R3,#0x27]
1463DE:  BL              sub_F977C
1463E2:  ADD             R0, SP, #0x120+var_11C
1463E4:  BL              sub_17D542
1463E8:  ADD             SP, SP, #0x118
1463EA:  POP             {R7,PC}
