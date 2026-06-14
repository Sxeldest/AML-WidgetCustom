; =========================================================
; Game Engine Function: sub_138904
; Address            : 0x138904 - 0x138990
; =========================================================

138904:  PUSH            {R4-R7,LR}
138906:  ADD             R7, SP, #0xC
138908:  PUSH.W          {R11}
13890C:  SUB             SP, SP, #0x20
13890E:  MOV             R5, R0
138910:  LDR             R0, =(word_3141DC - 0x13891E)
138912:  LDR             R3, [R5,#0x78]
138914:  MOV             R6, R1
138916:  LDRD.W          R2, R1, [R5,#0x2C]
13891A:  ADD             R0, PC; word_3141DC
13891C:  STRD.W          R2, R1, [SP,#0x30+var_18]
138920:  VMOV            S2, R1
138924:  LDRB            R4, [R0,#(word_3141DC+1 - 0x3141DC)]
138926:  LDR             R1, [R3]
138928:  VMOV            S0, R2
13892C:  CBNZ            R4, loc_13894C
13892E:  LDRB            R0, [R0,#(byte_3141E4 - 0x3141DC)]
138930:  CBZ             R0, loc_13894C
138932:  VLDR            S4, [R5,#0x14]
138936:  MOV.W           R0, #0xFFFFFFFF
13893A:  VLDR            S6, [R5,#0x18]
13893E:  ADD.W           R2, R5, #0x90
138942:  VADD.F32        S0, S4, S0
138946:  ADD.W           R3, R5, #0x88
13894A:  B               loc_138964
13894C:  VLDR            S4, [R5,#0x14]
138950:  ADD.W           R2, R5, #0xA0
138954:  VLDR            S6, [R5,#0x18]
138958:  ADD.W           R3, R5, #0x98
13895C:  VADD.F32        S0, S4, S0
138960:  MOV.W           R0, #0xFFFFFFFF
138964:  VADD.F32        S2, S6, S2
138968:  VSTR            S0, [SP,#0x30+var_20]
13896C:  VSTR            S2, [SP,#0x30+var_1C]
138970:  STRD.W          R3, R2, [SP,#0x30+var_30]
138974:  ADD             R2, SP, #0x30+var_18
138976:  ADD             R3, SP, #0x30+var_20
138978:  STR             R0, [SP,#0x30+var_28]
13897A:  MOV             R0, R6
13897C:  BL              sub_12B2C0
138980:  MOV             R0, R5
138982:  MOV             R1, R6
138984:  BL              sub_12C0B6
138988:  ADD             SP, SP, #0x20 ; ' '
13898A:  POP.W           {R11}
13898E:  POP             {R4-R7,PC}
