; =========================================================
; Game Engine Function: sub_17F202
; Address            : 0x17F202 - 0x17F24E
; =========================================================

17F202:  PUSH            {R4-R7,LR}
17F204:  ADD             R7, SP, #0xC
17F206:  PUSH.W          {R8-R11}
17F20A:  SUB             SP, SP, #0x2C
17F20C:  LDR.W           R12, [R0,#0x340]
17F210:  CMP.W           R12, #0
17F214:  BEQ             loc_17F244
17F216:  LDR             R6, [R7,#arg_18]
17F218:  LDRD.W          R8, LR, [R7,#arg_10]
17F21C:  LDRD.W          R10, R9, [R7,#arg_8]
17F220:  LDRD.W          R5, R12, [R12,#4]
17F224:  LDRD.W          R4, R11, [R7,#arg_0]
17F228:  STRD.W          LR, R6, [SP,#0x48+var_28]
17F22C:  MOVS            R6, #0
17F22E:  STRD.W          R4, R11, [SP,#0x48+var_48]
17F232:  STRD.W          R5, R12, [SP,#0x48+var_40]
17F236:  STRD.W          R6, R10, [SP,#0x48+var_38]
17F23A:  STRD.W          R9, R8, [SP,#0x48+var_30]
17F23E:  BL              sub_18129E
17F242:  B               loc_17F246
17F244:  MOVS            R0, #0
17F246:  ADD             SP, SP, #0x2C ; ','
17F248:  POP.W           {R8-R11}
17F24C:  POP             {R4-R7,PC}
