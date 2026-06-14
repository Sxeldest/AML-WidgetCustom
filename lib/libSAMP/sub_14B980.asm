; =========================================================
; Game Engine Function: sub_14B980
; Address            : 0x14B980 - 0x14B9C0
; =========================================================

14B980:  PUSH            {R7,LR}
14B982:  MOV             R7, SP
14B984:  SUB             SP, SP, #0x118
14B986:  LDRD.W          R1, R0, [R0]; src
14B98A:  MOVS            R3, #0
14B98C:  ASRS            R2, R0, #0x1F
14B98E:  ADD.W           R0, R0, R2,LSR#29
14B992:  MOVS            R2, #1
14B994:  ADD.W           R2, R2, R0,ASR#3; size
14B998:  MOV             R0, SP; int
14B99A:  BL              sub_17D4F2
14B99E:  ADD             R1, SP, #0x120+var_C; int
14B9A0:  MOVS            R2, #0x20 ; ' '
14B9A2:  MOVS            R3, #1
14B9A4:  BL              sub_17D786
14B9A8:  LDR             R0, =(off_234970 - 0x14B9B0)
14B9AA:  LDR             R1, [SP,#0x120+var_C]
14B9AC:  ADD             R0, PC; off_234970
14B9AE:  LDR             R0, [R0]; dword_23DEF0
14B9B0:  LDR             R0, [R0]
14B9B2:  BL              sub_F9B50
14B9B6:  MOV             R0, SP
14B9B8:  BL              sub_17D542
14B9BC:  ADD             SP, SP, #0x118
14B9BE:  POP             {R7,PC}
