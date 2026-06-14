; =========================================================
; Game Engine Function: sub_108974
; Address            : 0x108974 - 0x108BBA
; =========================================================

108974:  PUSH            {R4-R7,LR}
108976:  ADD             R7, SP, #0xC
108978:  PUSH.W          {R8,R9,R11}
10897C:  MOV             R5, R3
10897E:  MOVS            R3, #0
108980:  MOV             R9, R0
108982:  MOV             R6, R2
108984:  MOV             R8, R1
108986:  MOV             R0, R1
108988:  MOV             R1, R2
10898A:  MOVT            R3, #0x43FA
10898E:  MOV             R2, R5
108990:  BL              sub_108894
108994:  LDR             R0, =(off_23494C - 0x1089A6)
108996:  MOV             R12, #0x95AC4C
10899E:  VMOV            S4, R6
1089A2:  ADD             R0, PC; off_23494C
1089A4:  VMOV            S0, R5
1089A8:  VLDR            S2, [R7,#arg_0]
1089AC:  VMOV            S6, R8
1089B0:  LDR             R0, [R0]; dword_23DF24
1089B2:  MOVW            R6, #0x4E20
1089B6:  VLDR            S8, =-2000.0
1089BA:  LDR.W           LR, [R0]
1089BE:  MOV             R0, #0x667D24
1089C6:  ADD             R0, LR
1089C8:  LDR.W           R1, [LR,R12]
1089CC:  LDR             R3, [R1]
1089CE:  CMP             R3, #0
1089D0:  BEQ             loc_108A62
1089D2:  LDR             R1, [R3]
1089D4:  CMP             R1, R0
1089D6:  BEQ             loc_108A62
1089D8:  ADDS.W          R1, R9, #1
1089DC:  ITT NE
1089DE:  LDRHNE          R1, [R3,#0x26]
1089E0:  CMPNE           R1, R9
1089E2:  BNE             loc_108A62
1089E4:  LDR             R5, [R3,#0x14]
1089E6:  ADD.W           R1, R5, #0x34 ; '4'
1089EA:  CMP             R5, #0
1089EC:  IT EQ
1089EE:  ADDEQ.W         R1, R3, #8
1089F2:  ADD.W           R8, R5, #0x38 ; '8'
1089F6:  LDR             R1, [R1]
1089F8:  CMP             R5, #0
1089FA:  MOV             R2, R8
1089FC:  ADD.W           R4, R5, #0x30 ; '0'
108A00:  VMOV            S10, R1
108A04:  ADD.W           R1, R3, #0xC
108A08:  IT EQ
108A0A:  MOVEQ           R2, R1
108A0C:  CMP             R5, #0
108A0E:  VSUB.F32        S10, S10, S4
108A12:  LDR             R2, [R2]
108A14:  IT EQ
108A16:  ADDEQ           R4, R3, #4
108A18:  VMOV            S12, R2
108A1C:  LDR             R2, [R4]
108A1E:  VSUB.F32        S12, S12, S0
108A22:  VMOV            S14, R2
108A26:  VMUL.F32        S10, S10, S10
108A2A:  VSUB.F32        S14, S14, S6
108A2E:  VMLA.F32        S10, S12, S12
108A32:  VMLA.F32        S10, S14, S14
108A36:  VSQRT.F32       S10, S10
108A3A:  VCMP.F32        S10, S2
108A3E:  VMRS            APSR_nzcv, FPSCR
108A42:  BHI             loc_108A62
108A44:  LDR             R2, [R1]
108A46:  VMOV            S10, R2
108A4A:  VADD.F32        S10, S10, S8
108A4E:  VMOV            R2, S10
108A52:  STR             R2, [R1]
108A54:  CBZ             R5, loc_108A62
108A56:  VLDR            S10, [R8]
108A5A:  VADD.F32        S10, S10, S8
108A5E:  VSTR            S10, [R8]
108A62:  ADDS            R3, #0x3C ; '<'
108A64:  SUBS            R6, #1
108A66:  BNE             loc_1089CE
108A68:  ADD             R12, LR
108A6A:  MOVW            R3, #0x9C40
108A6E:  LDR.W           R1, [R12,#8]
108A72:  LDR             R2, [R1]
108A74:  CMP             R2, #0
108A76:  BEQ             loc_108B08
108A78:  LDR             R1, [R2]
108A7A:  CMP             R1, R0
108A7C:  BEQ             loc_108B08
108A7E:  ADDS.W          R1, R9, #1
108A82:  ITT NE
108A84:  LDRHNE          R1, [R2,#0x26]
108A86:  CMPNE           R1, R9
108A88:  BNE             loc_108B08
108A8A:  LDR             R6, [R2,#0x14]
108A8C:  ADD.W           R1, R6, #0x34 ; '4'
108A90:  CMP             R6, #0
108A92:  IT EQ
108A94:  ADDEQ.W         R1, R2, #8
108A98:  ADD.W           LR, R6, #0x38 ; '8'
108A9C:  LDR             R1, [R1]
108A9E:  CMP             R6, #0
108AA0:  MOV             R5, LR
108AA2:  ADD.W           R4, R6, #0x30 ; '0'
108AA6:  VMOV            S10, R1
108AAA:  ADD.W           R1, R2, #0xC
108AAE:  IT EQ
108AB0:  MOVEQ           R5, R1
108AB2:  CMP             R6, #0
108AB4:  VSUB.F32        S10, S10, S4
108AB8:  LDR             R5, [R5]
108ABA:  IT EQ
108ABC:  ADDEQ           R4, R2, #4
108ABE:  LDR             R4, [R4]
108AC0:  VMOV            S12, R5
108AC4:  VSUB.F32        S12, S12, S0
108AC8:  VMOV            S14, R4
108ACC:  VMUL.F32        S10, S10, S10
108AD0:  VSUB.F32        S14, S14, S6
108AD4:  VMLA.F32        S10, S12, S12
108AD8:  VMLA.F32        S10, S14, S14
108ADC:  VSQRT.F32       S10, S10
108AE0:  VCMP.F32        S10, S2
108AE4:  VMRS            APSR_nzcv, FPSCR
108AE8:  BHI             loc_108B08
108AEA:  LDR             R4, [R1]
108AEC:  VMOV            S10, R4
108AF0:  VADD.F32        S10, S10, S8
108AF4:  VMOV            R4, S10
108AF8:  STR             R4, [R1]
108AFA:  CBZ             R6, loc_108B08
108AFC:  VLDR            S10, [LR]
108B00:  VADD.F32        S10, S10, S8
108B04:  VSTR            S10, [LR]
108B08:  ADDS            R2, #0x3C ; '<'
108B0A:  SUBS            R3, #1
108B0C:  BNE             loc_108A74
108B0E:  LDR.W           R1, [R12,#4]
108B12:  MOVW            R2, #0xBB8
108B16:  LDR             R1, [R1]
108B18:  CMP             R1, #0
108B1A:  BEQ             loc_108BAC
108B1C:  LDR             R3, [R1]
108B1E:  CMP             R3, R0
108B20:  BEQ             loc_108BAC
108B22:  ADDS.W          R3, R9, #1
108B26:  ITT NE
108B28:  LDRHNE          R3, [R1,#0x26]
108B2A:  CMPNE           R3, R9
108B2C:  BNE             loc_108BAC
108B2E:  LDR             R3, [R1,#0x14]
108B30:  ADD.W           R5, R1, #0xC
108B34:  ADD.W           R6, R3, #0x34 ; '4'
108B38:  CMP             R3, #0
108B3A:  IT EQ
108B3C:  ADDEQ.W         R6, R1, #8
108B40:  ADD.W           R12, R3, #0x38 ; '8'
108B44:  LDR             R6, [R6]
108B46:  CMP             R3, #0
108B48:  ADD.W           R4, R3, #0x30 ; '0'
108B4C:  VMOV            S10, R6
108B50:  MOV             R6, R12
108B52:  IT EQ
108B54:  MOVEQ           R6, R5
108B56:  CMP             R3, #0
108B58:  VSUB.F32        S10, S10, S4
108B5C:  LDR             R6, [R6]
108B5E:  IT EQ
108B60:  ADDEQ           R4, R1, #4
108B62:  VMOV            S12, R6
108B66:  LDR             R6, [R4]
108B68:  VSUB.F32        S12, S12, S0
108B6C:  VMOV            S14, R6
108B70:  VMUL.F32        S10, S10, S10
108B74:  VSUB.F32        S14, S14, S6
108B78:  VMLA.F32        S10, S12, S12
108B7C:  VMLA.F32        S10, S14, S14
108B80:  VSQRT.F32       S10, S10
108B84:  VCMP.F32        S10, S2
108B88:  VMRS            APSR_nzcv, FPSCR
108B8C:  BHI             loc_108BAC
108B8E:  LDR             R6, [R5]
108B90:  VMOV            S10, R6
108B94:  VADD.F32        S10, S10, S8
108B98:  VMOV            R6, S10
108B9C:  STR             R6, [R5]
108B9E:  CBZ             R3, loc_108BAC
108BA0:  VLDR            S10, [R12]
108BA4:  VADD.F32        S10, S10, S8
108BA8:  VSTR            S10, [R12]
108BAC:  ADD.W           R1, R1, #0x1A4
108BB0:  SUBS            R2, #1
108BB2:  BNE             loc_108B18
108BB4:  POP.W           {R8,R9,R11}
108BB8:  POP             {R4-R7,PC}
