; =========================================================
; Game Engine Function: sub_189848
; Address            : 0x189848 - 0x18990E
; =========================================================

189848:  PUSH            {R4-R7,LR}
18984A:  ADD             R7, SP, #0xC
18984C:  PUSH.W          {R8-R11}
189850:  SUB             SP, SP, #4
189852:  VPUSH           {D8}
189856:  SUB             SP, SP, #0x10
189858:  MOV             R4, R0
18985A:  ADD.W           R0, R0, #0x690
18985E:  MOV             R10, R3
189860:  MOV             R9, R2
189862:  VLDR            D16, [R0]
189866:  MOV             R8, R1
189868:  VCMP.F64        D16, #0.0
18986C:  VMRS            APSR_nzcv, FPSCR
189870:  BLE             loc_189894
189872:  ADD.W           R0, R4, #0x400
189876:  VLDR            D17, [R0]
18987A:  VDIV.F64        D16, D17, D16
18987E:  VCVT.F32.F64    S16, D16
189882:  BL              sub_1871A0
189886:  VMOV            S0, R0
18988A:  VCMP.F32        S0, S16
18988E:  VMRS            APSR_nzcv, FPSCR
189892:  BMI             loc_189900
189894:  ADDW            R6, R4, #0x414
189898:  LDR.W           R11, [R7,#arg_0]
18989C:  MOV             R0, R6
18989E:  BL              sub_17E0BA
1898A2:  LDR.W           R1, [R11]
1898A6:  ADD.W           R1, R1, #7
1898AA:  MOV.W           R5, R1,ASR#3
1898AE:  STR             R5, [SP,#0x38+var_2C]
1898B0:  CBZ             R0, loc_1898D0
1898B2:  LDR.W           R1, [R11,#0xC]
1898B6:  ADD             R0, SP, #0x38+var_2C
1898B8:  STR             R0, [SP,#0x38+var_38]
1898BA:  MOV             R0, R6
1898BC:  MOV             R2, R5
1898BE:  MOV             R3, R1
1898C0:  BL              sub_17E100
1898C4:  LDR             R3, [SP,#0x38+var_2C]
1898C6:  SUBS            R0, R3, R5
1898C8:  LSLS            R0, R0, #3
1898CA:  STR.W           R0, [R4,#0x35C]
1898CE:  B               loc_1898D2
1898D0:  MOV             R3, R5
1898D2:  LDR             R0, =(off_234E88 - 0x1898DC)
1898D4:  LDR.W           R1, [R4,#0x358]
1898D8:  ADD             R0, PC; off_234E88
1898DA:  LDR.W           R6, [R4,#0x360]
1898DE:  ADDS            R1, #1
1898E0:  STR.W           R1, [R4,#0x358]
1898E4:  ADD.W           R1, R6, R3,LSL#3
1898E8:  LDR.W           R2, [R11,#0xC]
1898EC:  LDR             R0, [R0]; unk_382751
1898EE:  STR.W           R1, [R4,#0x360]
1898F2:  UXTH.W          R1, R10
1898F6:  STRD.W          R9, R1, [SP,#0x38+var_38]
1898FA:  MOV             R1, R8
1898FC:  BL              sub_18CCDC
189900:  ADD             SP, SP, #0x10
189902:  VPOP            {D8}
189906:  ADD             SP, SP, #4
189908:  POP.W           {R8-R11}
18990C:  POP             {R4-R7,PC}
