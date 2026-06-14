; =========================================================
; Game Engine Function: sub_13D130
; Address            : 0x13D130 - 0x13D16E
; =========================================================

13D130:  PUSH            {R4,R6,R7,LR}
13D132:  ADD             R7, SP, #8
13D134:  SUB             SP, SP, #8
13D136:  MOV             R4, R0
13D138:  LDR             R0, [R0,#0x54]
13D13A:  LDR             R1, [R0]
13D13C:  LDR             R1, [R1,#8]
13D13E:  BLX             R1
13D140:  LDR             R0, [R4,#0x54]
13D142:  VMOV.F32        S4, #0.5
13D146:  VLDR            S0, [R4,#0x18]
13D14A:  VLDR            S2, [R0,#0x18]
13D14E:  LDR             R1, =(off_234B7C - 0x13D158)
13D150:  VSUB.F32        S0, S0, S2
13D154:  ADD             R1, PC; off_234B7C
13D156:  LDR             R1, [R1]; dword_238EC8
13D158:  LDR             R1, [R1]
13D15A:  VMUL.F32        S0, S0, S4
13D15E:  STR             R1, [SP,#0x10+var_10]
13D160:  MOV             R1, SP
13D162:  VSTR            S0, [SP,#0x10+var_C]
13D166:  BL              sub_12BD92
13D16A:  ADD             SP, SP, #8
13D16C:  POP             {R4,R6,R7,PC}
