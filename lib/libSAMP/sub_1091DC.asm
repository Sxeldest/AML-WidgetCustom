; =========================================================
; Game Engine Function: sub_1091DC
; Address            : 0x1091DC - 0x109206
; =========================================================

1091DC:  PUSH            {R7,LR}
1091DE:  MOV             R7, SP
1091E0:  SUB             SP, SP, #8
1091E2:  LDR             R2, =(off_23494C - 0x1091F2)
1091E4:  MOVS            R3, #0
1091E6:  STRD.W          R3, R3, [SP,#0x10+var_10]
1091EA:  MOVW            R3, #0x5799
1091EE:  ADD             R2, PC; off_23494C
1091F0:  MOVT            R3, #0x5C ; '\'
1091F4:  LDR             R2, [R2]; dword_23DF24
1091F6:  LDR             R2, [R2]
1091F8:  ADD.W           R12, R2, R3
1091FC:  MOVS            R2, #0
1091FE:  MOVS            R3, #0
109200:  BLX             R12
109202:  ADD             SP, SP, #8
109204:  POP             {R7,PC}
