; =========================================================
; Game Engine Function: sub_1631DC
; Address            : 0x1631DC - 0x16321C
; =========================================================

1631DC:  PUSH            {R4,R6,R7,LR}
1631DE:  ADD             R7, SP, #8
1631E0:  SUB             SP, SP, #8
1631E2:  LDR             R4, =(off_23494C - 0x1631E8)
1631E4:  ADD             R4, PC; off_23494C
1631E6:  LDR             R4, [R4]; dword_23DF24
1631E8:  LDR.W           R12, [R4]
1631EC:  CMP.W           R12, #0
1631F0:  BEQ             loc_163218
1631F2:  MOV             R4, #0x66F114
1631FA:  ADDS.W          R12, R12, R4
1631FE:  ITT NE
163200:  LDRNE.W         R12, [R12]
163204:  CMPNE.W         R12, #0
163208:  BEQ             loc_163218
16320A:  LDR             R4, [R7,#arg_4]
16320C:  VLDR            S0, [R7,#arg_0]
163210:  STR             R4, [SP,#0x10+var_C]
163212:  VSTR            S0, [SP,#0x10+var_10]
163216:  BLX             R12
163218:  ADD             SP, SP, #8
16321A:  POP             {R4,R6,R7,PC}
