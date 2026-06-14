; =========================================================
; Game Engine Function: sub_163108
; Address            : 0x163108 - 0x16313A
; =========================================================

163108:  B.W             loc_16310C
16310C:  PUSH            {R7,LR}
16310E:  MOV             R7, SP
163110:  LDR             R3, =(off_23494C - 0x163116)
163112:  ADD             R3, PC; off_23494C
163114:  LDR             R3, [R3]; dword_23DF24
163116:  LDR.W           R12, [R3]
16311A:  CMP.W           R12, #0
16311E:  IT EQ
163120:  POPEQ           {R7,PC}
163122:  MOV             R3, #0x674DDC
16312A:  ADDS.W          R3, R3, R12
16312E:  ITT NE
163130:  LDRNE           R3, [R3]
163132:  CMPNE           R3, #0
163134:  BEQ             locret_163138
163136:  BLX             R3
163138:  POP             {R7,PC}
