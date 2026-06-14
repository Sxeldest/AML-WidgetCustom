; =========================================================
; Game Engine Function: sub_175894
; Address            : 0x175894 - 0x175982
; =========================================================

175894:  PUSH            {R4-R7,LR}
175896:  ADD             R7, SP, #0xC
175898:  PUSH.W          {R11}
17589C:  CMP             R1, #7
17589E:  BHI             loc_17597A
1758A0:  LDRB.W          R12, [R0,#4]
1758A4:  MOVS.W          R12, R12,LSL#30
1758A8:  BMI             loc_17597A
1758AA:  LDR             R5, [R0,#0x58]
1758AC:  ADD.W           R1, R1, R1,LSL#1
1758B0:  LDR             R4, [R0,#0x48]
1758B2:  LDR             R6, =(unk_BB970 - 0x1758C0)
1758B4:  RSB.W           R5, R5, R5,LSL#3
1758B8:  LDRD.W          LR, R12, [R7,#arg_0]
1758BC:  ADD             R6, PC; unk_BB970
1758BE:  ADD.W           R4, R4, R5,LSL#2
1758C2:  ADD.W           R1, R6, R1,LSL#3
1758C6:  LDRH            R5, [R4,#0xA]
1758C8:  LDRH            R4, [R4,#8]
1758CA:  VLDR            S4, [R1]
1758CE:  VMOV            S0, R5
1758D2:  VLDR            S6, [R1,#4]
1758D6:  VMOV            S2, R4
1758DA:  VLDR            S8, [R1,#8]
1758DE:  VCVT.F32.U32    S0, S0
1758E2:  VLDR            S10, [R1,#0xC]
1758E6:  VCVT.F32.U32    S2, S2
1758EA:  LDRD.W          R4, R5, [R1,#0x10]
1758EE:  LDRD.W          R6, R1, [R1,#8]
1758F2:  STRD.W          R6, R1, [R3]
1758F6:  STRD.W          R4, R5, [R2]
1758FA:  VADD.F32        S0, S6, S0
1758FE:  VLDR            S6, [R0,#0x28]
175902:  VADD.F32        S2, S4, S2
175906:  VLDR            S4, [R0,#0x24]
17590A:  VMUL.F32        S6, S0, S6
17590E:  VMUL.F32        S4, S2, S4
175912:  VADD.F32        S10, S0, S10
175916:  VADD.F32        S12, S2, S8
17591A:  VSTR            S6, [LR,#4]
17591E:  VSTR            S4, [LR]
175922:  VLDR            S4, [R0,#0x24]
175926:  VLDR            S6, [R0,#0x28]
17592A:  VMUL.F32        S4, S12, S4
17592E:  VLDR            S12, =109.0
175932:  VMUL.F32        S6, S10, S6
175936:  VADD.F32        S2, S2, S12
17593A:  VSTR            S4, [LR,#8]
17593E:  VSTR            S6, [LR,#0xC]
175942:  VLDR            S4, [R0,#0x24]
175946:  VLDR            S6, [R0,#0x28]
17594A:  VMUL.F32        S4, S2, S4
17594E:  VMUL.F32        S0, S0, S6
175952:  VADD.F32        S2, S2, S8
175956:  VSTR            S4, [R12]
17595A:  VSTR            S0, [R12,#4]
17595E:  VLDR            S0, [R0,#0x24]
175962:  VLDR            S4, [R0,#0x28]
175966:  MOVS            R0, #1
175968:  VMUL.F32        S0, S2, S0
17596C:  VMUL.F32        S4, S10, S4
175970:  VSTR            S0, [R12,#8]
175974:  VSTR            S4, [R12,#0xC]
175978:  B               loc_17597C
17597A:  MOVS            R0, #0
17597C:  POP.W           {R11}
175980:  POP             {R4-R7,PC}
