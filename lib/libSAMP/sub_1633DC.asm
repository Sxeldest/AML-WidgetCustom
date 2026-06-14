; =========================================================
; Game Engine Function: sub_1633DC
; Address            : 0x1633DC - 0x16343C
; =========================================================

1633DC:  PUSH            {R4,R6,R7,LR}
1633DE:  ADD             R7, SP, #8
1633E0:  SUB             SP, SP, #0x18
1633E2:  LDR             R4, =(off_23494C - 0x1633E8)
1633E4:  ADD             R4, PC; off_23494C
1633E6:  LDR             R4, [R4]; dword_23DF24
1633E8:  LDR.W           R12, [R4]
1633EC:  CMP.W           R12, #0
1633F0:  BEQ             loc_163438
1633F2:  MOV             R4, #0x672F1C
1633FA:  ADDS.W          R12, R12, R4
1633FE:  ITT NE
163400:  LDRNE.W         R12, [R12]
163404:  CMPNE.W         R12, #0
163408:  BEQ             loc_163438
16340A:  LDR             R4, [R7,#arg_14]
16340C:  VLDR            S0, [R7,#arg_10]
163410:  VLDR            S2, [R7,#arg_C]
163414:  VLDR            S4, [R7,#arg_8]
163418:  VLDR            S6, [R7,#arg_4]
16341C:  VLDR            S8, [R7,#arg_0]
163420:  STR             R4, [SP,#0x20+var_C]
163422:  VSTR            S8, [SP,#0x20+var_20]
163426:  VSTR            S6, [SP,#0x20+var_1C]
16342A:  VSTR            S4, [SP,#0x20+var_18]
16342E:  VSTR            S2, [SP,#0x20+var_14]
163432:  VSTR            S0, [SP,#0x20+var_10]
163436:  BLX             R12
163438:  ADD             SP, SP, #0x18
16343A:  POP             {R4,R6,R7,PC}
