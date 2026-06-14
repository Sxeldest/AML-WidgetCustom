; =========================================================
; Game Engine Function: sub_17B908
; Address            : 0x17B908 - 0x17B9E0
; =========================================================

17B908:  PUSH            {R4-R7,LR}
17B90A:  ADD             R7, SP, #0xC
17B90C:  PUSH.W          {R8}
17B910:  SUB             SP, SP, #0x20; float
17B912:  MOV             R4, R0
17B914:  LDR             R0, =(off_234E80 - 0x17B920)
17B916:  LDR             R2, =(aScrolly - 0x17B924); "#SCROLLY" ...
17B918:  MOVW            R3, #0x19AC
17B91C:  ADD             R0, PC; off_234E80
17B91E:  CMP             R4, #0
17B920:  ADD             R2, PC; "#SCROLLY"
17B922:  MOV.W           R5, #0
17B926:  LDR             R0, [R0]; dword_381B58
17B928:  LDR             R0, [R0]
17B92A:  LDR             R1, =(aScrollx - 0x17B932); "#SCROLLX" ...
17B92C:  LDR             R6, [R0,R3]
17B92E:  ADD             R1, PC; "#SCROLLX"
17B930:  IT NE
17B932:  MOVNE           R1, R2
17B934:  MOVS            R2, #0
17B936:  MOV             R0, R6
17B938:  BL              sub_166E8C
17B93C:  MOV             R8, R0
17B93E:  BL              sub_166DEC
17B942:  ADD.W           R0, R6, R4,LSL#2
17B946:  VLDR            S0, [R0,#0x70]
17B94A:  VCMP.F32        S0, #0.0
17B94E:  VMRS            APSR_nzcv, FPSCR
17B952:  IT LS
17B954:  MOVLS           R5, #1
17B956:  LSLS            R1, R5, #3
17B958:  CBZ             R4, loc_17B98E
17B95A:  VLDR            S2, [R6,#0xC]
17B95E:  ADD.W           R5, R6, #0x1F4
17B962:  VLDR            S4, [R6,#0x14]
17B966:  LDM             R5, {R2,R3,R5}
17B968:  VADD.F32        S2, S2, S4
17B96C:  VLDR            S4, [R6,#0x48]
17B970:  STR             R5, [SP,#0x30+var_14]
17B972:  STRD.W          R3, R2, [SP,#0x30+var_20]
17B976:  MOVS            R2, #2
17B978:  VSUB.F32        S2, S2, S4
17B97C:  VSTR            S2, [SP,#0x30+var_18]
17B980:  LDR             R6, [R6,#8]
17B982:  BIC.W           R2, R2, R6,LSR#9
17B986:  LSLS            R3, R6, #0x1F
17B988:  IT NE
17B98A:  ORRNE           R1, R2
17B98C:  B               loc_17B9B8
17B98E:  VLDR            S2, [R6,#0x10]
17B992:  ORR.W           R1, R1, #4
17B996:  VLDR            S4, [R6,#0x18]
17B99A:  LDRD.W          R2, R3, [R6,#0x1F8]
17B99E:  VADD.F32        S2, S2, S4
17B9A2:  VLDR            S4, [R6,#0x48]
17B9A6:  LDR.W           R6, [R6,#0x1F0]
17B9AA:  STRD.W          R6, R3, [SP,#0x30+var_20]
17B9AE:  STR             R2, [SP,#0x30+var_18]
17B9B0:  VSUB.F32        S2, S2, S4
17B9B4:  VSTR            S2, [SP,#0x30+var_14]
17B9B8:  VLDR            S2, [R0,#0x1C]
17B9BC:  ADD.W           R3, R0, #0x58 ; 'X'; int
17B9C0:  LDR             R2, [R0,#0x2C]
17B9C2:  ADD             R0, SP, #0x30+var_20; int
17B9C4:  VSUB.F32        S0, S2, S0
17B9C8:  STRD.W          R2, R1, [SP,#0x30+var_2C]; float
17B9CC:  MOV             R1, R8; int
17B9CE:  MOV             R2, R4; int
17B9D0:  VSTR            S0, [SP,#0x30+var_30]
17B9D4:  BL              sub_17B4C8
17B9D8:  ADD             SP, SP, #0x20 ; ' '
17B9DA:  POP.W           {R8}
17B9DE:  POP             {R4-R7,PC}
