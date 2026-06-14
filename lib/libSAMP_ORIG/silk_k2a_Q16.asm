; =========================================================
; Game Engine Function: silk_k2a_Q16
; Address            : 0xD0C68 - 0xD0D0E
; =========================================================

D0C68:  PUSH            {R4-R7,LR}
D0C6A:  ADD             R7, SP, #0xC
D0C6C:  PUSH.W          {R8-R11}
D0C70:  SUB             SP, SP, #0x14
D0C72:  STR             R0, [SP,#0x30+var_28]
D0C74:  MOV             R0, R2
D0C76:  CMP             R2, #1
D0C78:  STR             R1, [SP,#0x30+var_30]
D0C7A:  STR             R0, [SP,#0x30+var_2C]
D0C7C:  BLT             loc_D0D06
D0C7E:  LDR             R0, [SP,#0x30+var_28]
D0C80:  MOV.W           R11, #0
D0C84:  SUB.W           LR, R0, #4
D0C88:  LDR             R0, [SP,#0x30+var_30]
D0C8A:  LDR.W           R0, [R0,R11,LSL#2]
D0C8E:  STR             R0, [SP,#0x30+var_20]
D0C90:  ADD.W           R0, R11, #1
D0C94:  STR             R0, [SP,#0x30+var_24]
D0C96:  ASRS            R6, R0, #1
D0C98:  CMP             R6, #1
D0C9A:  BLT             loc_D0CEA
D0C9C:  LDR             R1, [SP,#0x30+var_20]
D0C9E:  MOVS            R0, #1
D0CA0:  LDR             R4, [SP,#0x30+var_28]
D0CA2:  MOV             R10, LR
D0CA4:  ADD.W           R3, R0, R1,ASR#15
D0CA8:  MOV.W           R9, R3,ASR#1
D0CAC:  SXTH            R3, R1
D0CAE:  LDR.W           R12, [R10]
D0CB2:  SUBS            R6, #1
D0CB4:  LDR.W           R8, [R4]
D0CB8:  UXTH.W          R5, R12
D0CBC:  MLA.W           R1, R12, R9, R8
D0CC0:  UXTH.W          R0, R8
D0CC4:  MLA.W           R2, R8, R9, R12
D0CC8:  MUL.W           R0, R3, R0
D0CCC:  MUL.W           R5, R3, R5
D0CD0:  SMLATB.W        R1, R12, R3, R1
D0CD4:  SMLATB.W        R2, R8, R3, R2
D0CD8:  ADD.W           R1, R1, R5,ASR#16
D0CDC:  STR.W           R1, [R4],#4
D0CE0:  ADD.W           R0, R2, R0,ASR#16
D0CE4:  STR.W           R0, [R10],#-4
D0CE8:  BNE             loc_D0CAE
D0CEA:  LDR             R1, [SP,#0x30+var_20]
D0CEC:  MOVS            R0, #0
D0CEE:  ADD.W           LR, LR, #4
D0CF2:  SUB.W           R0, R0, R1,LSL#8
D0CF6:  LDR             R1, [SP,#0x30+var_28]
D0CF8:  STR.W           R0, [R1,R11,LSL#2]
D0CFC:  LDR             R1, [SP,#0x30+var_24]
D0CFE:  LDR             R0, [SP,#0x30+var_2C]
D0D00:  CMP             R1, R0
D0D02:  MOV             R11, R1
D0D04:  BNE             loc_D0C88
D0D06:  ADD             SP, SP, #0x14
D0D08:  POP.W           {R8-R11}
D0D0C:  POP             {R4-R7,PC}
