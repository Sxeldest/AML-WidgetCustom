; =========================================================
; Game Engine Function: sub_17F14A
; Address            : 0x17F14A - 0x17F1A0
; =========================================================

17F14A:  PUSH            {R4-R7,LR}
17F14C:  ADD             R7, SP, #0xC
17F14E:  PUSH.W          {R8-R11}
17F152:  SUB             SP, SP, #0x2C
17F154:  LDR.W           R12, [R0,#0x340]
17F158:  CMP.W           R12, #0
17F15C:  BEQ             loc_17F196
17F15E:  ADD.W           R10, R7, #8
17F162:  MOV             R8, R3
17F164:  LDRD.W          R3, R12, [R12,#4]
17F168:  LDM.W           R10, {R4,R5,R10}
17F16C:  LDR.W           R9, [R7,#arg_C]
17F170:  LDR             R6, [R7,#arg_1C]
17F172:  STRD.W          R3, R12, [SP,#0x48+var_3C]
17F176:  LDR             R3, [R7,#arg_10]
17F178:  LDRD.W          R11, LR, [R7,#arg_14]
17F17C:  STR             R6, [SP,#0x48+var_20]
17F17E:  MOVS            R6, #0
17F180:  STR             R3, [SP,#0x48+var_2C]
17F182:  MOV             R3, R8
17F184:  STRD.W          R11, LR, [SP,#0x48+var_28]
17F188:  STMEA.W         SP, {R4,R5,R10}
17F18C:  STRD.W          R6, R9, [SP,#0x48+var_34]
17F190:  BL              sub_180F08
17F194:  B               loc_17F198
17F196:  MOVS            R0, #0
17F198:  ADD             SP, SP, #0x2C ; ','
17F19A:  POP.W           {R8-R11}
17F19E:  POP             {R4-R7,PC}
