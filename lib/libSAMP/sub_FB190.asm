; =========================================================
; Game Engine Function: sub_FB190
; Address            : 0xFB190 - 0xFB20C
; =========================================================

FB190:  PUSH            {R4-R7,LR}
FB192:  ADD             R7, SP, #0xC
FB194:  PUSH.W          {R8-R11}
FB198:  SUB             SP, SP, #0x2C
FB19A:  LDR             R4, [R7,#arg_20]
FB19C:  LDRD.W          R12, R8, [R7,#arg_10]
FB1A0:  LDRD.W          R5, R6, [R7,#arg_18]
FB1A4:  LDR.W           LR, [R4]
FB1A8:  LDR             R4, [R7,#arg_C]
FB1AA:  VLDR            S0, [R8]
FB1AE:  LDR             R3, [R3]
FB1B0:  LDR.W           R8, [R4]
FB1B4:  LDR             R4, [R7,#arg_8]
FB1B6:  STR             R3, [SP,#0x48+var_20]
FB1B8:  LDR             R2, [R2]
FB1BA:  LDR.W           R11, [R5]
FB1BE:  LDR             R5, [R7,#arg_0]
FB1C0:  LDR.W           R10, [R4]
FB1C4:  LDR             R4, [R7,#arg_4]
FB1C6:  LDR             R3, [R0,#8]
FB1C8:  STR             R2, [SP,#0x48+var_24]
FB1CA:  LDR.W           R9, [R6]
FB1CE:  LDR.W           R2, [R12]
FB1D2:  LDRD.W          R12, R6, [R0]
FB1D6:  LDR             R1, [R1]
FB1D8:  ADD.W           R0, R12, R3,ASR#1
FB1DC:  LDR             R4, [R4]
FB1DE:  LDR             R5, [R5]
FB1E0:  LSLS            R3, R3, #0x1F
FB1E2:  ITT NE
FB1E4:  LDRNE           R3, [R0]
FB1E6:  LDRNE           R6, [R3,R6]
FB1E8:  STR             R2, [SP,#0x48+var_38]
FB1EA:  LDRD.W          R2, R3, [SP,#0x48+var_24]
FB1EE:  STRD.W          R11, R9, [SP,#0x48+var_30]
FB1F2:  STR.W           LR, [SP,#0x48+var_28]
FB1F6:  VSTR            S0, [SP,#0x48+var_34]
FB1FA:  STRD.W          R5, R4, [SP,#0x48+var_48]
FB1FE:  STRD.W          R10, R8, [SP,#0x48+var_40]
FB202:  BLX             R6
FB204:  ADD             SP, SP, #0x2C ; ','
FB206:  POP.W           {R8-R11}
FB20A:  POP             {R4-R7,PC}
