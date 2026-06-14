; =========================================================
; Game Engine Function: sub_604FC
; Address            : 0x604FC - 0x6052C
; =========================================================

604FC:  PUSH            {R4,R6,R7,LR}
604FE:  ADD             R7, SP, #8
60500:  SUB             SP, SP, #8
60502:  LDR             R4, =(off_1174CC - 0x6050C)
60504:  LDR.W           R12, [R7,#arg_0]
60508:  ADD             R4, PC; off_1174CC
6050A:  STR.W           R12, [SP,#0x10+var_10]
6050E:  LDR             R4, [R4]
60510:  BLX             R4
60512:  LDR             R1, =(dword_1174B0 - 0x6051C)
60514:  VMOV            S0, R0
60518:  ADD             R1, PC; dword_1174B0
6051A:  LDR             R1, [R1]
6051C:  VLDR            S2, [R1]
60520:  VMUL.F32        S0, S0, S2
60524:  VMOV            R0, S0
60528:  ADD             SP, SP, #8
6052A:  POP             {R4,R6,R7,PC}
