; =========================================================
; Game Engine Function: _ZNK9CDecision12MakeDecisionEibiiiiRsS0_
; Address            : 0x4BD988 - 0x4BDBFE
; =========================================================

4BD988:  PUSH            {R4-R7,LR}
4BD98A:  ADD             R7, SP, #0xC
4BD98C:  PUSH.W          {R8-R11}
4BD990:  SUB             SP, SP, #0x54
4BD992:  ADD             R4, SP, #0x70+var_50
4BD994:  VMOV.I32        Q8, #0xC8
4BD998:  VMOV.I32        Q9, #0
4BD99C:  ADD.W           R10, R4, #0x18
4BD9A0:  MOV             R6, R4
4BD9A2:  MOVS            R5, #0xC8
4BD9A4:  VST1.32         {D16-D17}, [R6]!
4BD9A8:  MOV             R4, R10
4BD9AA:  ADD.W           LR, SP, #0x70+var_68
4BD9AE:  MOV.W           R8, #0
4BD9B2:  STR             R5, [R6]
4BD9B4:  ADD.W           R9, R0, R1
4BD9B8:  VST1.32         {D18-D19}, [R4]!
4BD9BC:  STR.W           R8, [R4]
4BD9C0:  MOV             R4, LR
4BD9C2:  VST1.32         {D16-D17}, [R4]!
4BD9C6:  STR.W           R8, [SP,#0x70+var_24]
4BD9CA:  STRH.W          R8, [SP,#0x70+var_6C]
4BD9CE:  STR             R5, [R4]
4BD9D0:  STR             R5, [SP,#0x70+var_3C]
4BD9D2:  STR.W           R8, [SP,#0x70+var_70]
4BD9D6:  STR             R5, [SP,#0x70+var_54]
4BD9D8:  LDRB.W          R6, [R9,#0x18]
4BD9DC:  LDR.W           R12, [R7,#arg_4]
4BD9E0:  LDR.W           R11, [R7,#arg_0]
4BD9E4:  CBZ             R6, loc_4BDA12
4BD9E6:  LDR             R1, [R0]
4BD9E8:  MOV.W           R8, #0
4BD9EC:  MOV             R5, R12
4BD9EE:  CMP             R1, R12
4BD9F0:  IT NE
4BD9F2:  CMPNE           R1, R11
4BD9F4:  BEQ             loc_4BDA1A
4BD9F6:  ADDS            R4, R1, #1
4BD9F8:  IT NE
4BD9FA:  CMPNE           R1, R3
4BD9FC:  BEQ             loc_4BDA1A
4BD9FE:  ADDS            R4, R0, R2
4BDA00:  LDRB.W          R4, [R4,#0x30]
4BDA04:  CBZ             R4, loc_4BDA16
4BDA06:  MOV.W           R8, #1
4BDA0A:  STR             R1, [SP,#0x70+var_68]
4BDA0C:  STRB.W          R6, [SP,#0x70+var_70]
4BDA10:  B               loc_4BDA1A
4BDA12:  MOV             R5, R12
4BDA14:  B               loc_4BDA1A
4BDA16:  MOV.W           R8, #0
4BDA1A:  LDRB.W          R6, [R9,#0x1C]
4BDA1E:  CBZ             R6, loc_4BDA4E
4BDA20:  LDR             R1, [R0,#4]
4BDA22:  CMP             R1, R5
4BDA24:  IT NE
4BDA26:  CMPNE           R1, R11
4BDA28:  BEQ             loc_4BDA4E
4BDA2A:  ADDS            R4, R1, #1
4BDA2C:  IT NE
4BDA2E:  CMPNE           R1, R3
4BDA30:  BEQ             loc_4BDA4E
4BDA32:  ADDS            R4, R0, R2
4BDA34:  LDRB.W          R4, [R4,#0x32]
4BDA38:  CMP             R4, #0
4BDA3A:  ITTTT NE
4BDA3C:  STRNE.W         R1, [LR,R8,LSL#2]
4BDA40:  MOVNE           R1, SP
4BDA42:  ORRNE.W         R1, R1, R8
4BDA46:  STRBNE          R6, [R1]
4BDA48:  IT NE
4BDA4A:  ADDNE.W         R8, R8, #1
4BDA4E:  LDRB.W          R6, [R9,#0x20]
4BDA52:  CBZ             R6, loc_4BDA7E
4BDA54:  LDR             R1, [R0,#8]
4BDA56:  CMP             R1, R5
4BDA58:  IT NE
4BDA5A:  CMPNE           R1, R11
4BDA5C:  BEQ             loc_4BDA7E
4BDA5E:  ADDS            R4, R1, #1
4BDA60:  IT NE
4BDA62:  CMPNE           R1, R3
4BDA64:  BEQ             loc_4BDA7E
4BDA66:  ADDS            R4, R0, R2
4BDA68:  LDRB.W          R4, [R4,#0x34]
4BDA6C:  CMP             R4, #0
4BDA6E:  ITTTT NE
4BDA70:  STRNE.W         R1, [LR,R8,LSL#2]
4BDA74:  MOVNE           R1, SP
4BDA76:  STRBNE.W        R6, [R1,R8]
4BDA7A:  ADDNE.W         R8, R8, #1
4BDA7E:  LDRB.W          R6, [R9,#0x24]
4BDA82:  CBZ             R6, loc_4BDAAE
4BDA84:  LDR             R1, [R0,#0xC]
4BDA86:  CMP             R1, R5
4BDA88:  IT NE
4BDA8A:  CMPNE           R1, R11
4BDA8C:  BEQ             loc_4BDAAE
4BDA8E:  ADDS            R4, R1, #1
4BDA90:  IT NE
4BDA92:  CMPNE           R1, R3
4BDA94:  BEQ             loc_4BDAAE
4BDA96:  ADDS            R4, R0, R2
4BDA98:  LDRB.W          R4, [R4,#0x36]
4BDA9C:  CMP             R4, #0
4BDA9E:  ITTTT NE
4BDAA0:  STRNE.W         R1, [LR,R8,LSL#2]
4BDAA4:  MOVNE           R1, SP
4BDAA6:  STRBNE.W        R6, [R1,R8]
4BDAAA:  ADDNE.W         R8, R8, #1
4BDAAE:  LDRB.W          R6, [R9,#0x28]
4BDAB2:  CBZ             R6, loc_4BDADE
4BDAB4:  LDR             R1, [R0,#0x10]
4BDAB6:  CMP             R1, R5
4BDAB8:  IT NE
4BDABA:  CMPNE           R1, R11
4BDABC:  BEQ             loc_4BDADE
4BDABE:  ADDS            R4, R1, #1
4BDAC0:  IT NE
4BDAC2:  CMPNE           R1, R3
4BDAC4:  BEQ             loc_4BDADE
4BDAC6:  ADDS            R4, R0, R2
4BDAC8:  LDRB.W          R4, [R4,#0x38]
4BDACC:  CMP             R4, #0
4BDACE:  ITTTT NE
4BDAD0:  STRNE.W         R1, [LR,R8,LSL#2]
4BDAD4:  MOVNE           R1, SP
4BDAD6:  STRBNE.W        R6, [R1,R8]
4BDADA:  ADDNE.W         R8, R8, #1
4BDADE:  LDRD.W          R12, R4, [R7,#arg_C]
4BDAE2:  LDRB.W          R1, [R9,#0x2C]
4BDAE6:  CMP             R1, #0
4BDAE8:  ITT NE
4BDAEA:  LDRNE           R6, [R0,#0x14]
4BDAEC:  CMPNE           R6, R5
4BDAEE:  BEQ             loc_4BDB1C
4BDAF0:  CMP             R6, R11
4BDAF2:  IT NE
4BDAF4:  ADDSNE.W        R5, R6, #1
4BDAF8:  BEQ             loc_4BDB1C
4BDAFA:  CMP             R6, R3
4BDAFC:  ITTT NE
4BDAFE:  ADDNE           R0, R2
4BDB00:  LDRBNE.W        R0, [R0,#0x3A]
4BDB04:  CMPNE           R0, #0
4BDB06:  BEQ             loc_4BDB1C
4BDB08:  MOV             R0, SP
4BDB0A:  STR.W           R6, [LR,R8,LSL#2]
4BDB0E:  ADD             R6, SP, #0x70+var_50
4BDB10:  STRB.W          R1, [R0,R8]
4BDB14:  MOVS            R0, #0xC8
4BDB16:  STRH.W          R0, [R12]
4BDB1A:  B               loc_4BDB2A
4BDB1C:  ADD             R6, SP, #0x70+var_50
4BDB1E:  MOVS            R0, #0xC8
4BDB20:  CMP.W           R8, #0
4BDB24:  STRH.W          R0, [R12]
4BDB28:  BLE             loc_4BDBF0
4BDB2A:  LDR             R0, [R7,#arg_8]
4BDB2C:  MOVS            R1, #6
4BDB2E:  VLDR            S0, =0.0
4BDB32:  MOV             R2, SP
4BDB34:  STR             R1, [SP,#0x70+var_20]
4BDB36:  MOVS            R1, #0
4BDB38:  MOV             R3, R10
4BDB3A:  LDR.W           R5, [LR,R1,LSL#2]
4BDB3E:  STR.W           R5, [R3,#-0x18]
4BDB42:  LDRB            R5, [R2,R1]
4BDB44:  ADDS            R1, #1
4BDB46:  VMOV            S2, R5
4BDB4A:  VCVT.F32.U32    S2, S2
4BDB4E:  VADD.F32        S0, S0, S2
4BDB52:  VSTM            R3!, {S0}
4BDB56:  LDR             R5, [SP,#0x70+var_20]
4BDB58:  CMP             R1, R5
4BDB5A:  BLT             loc_4BDB3A
4BDB5C:  CMP             R5, #1
4BDB5E:  BLT             loc_4BDB80
4BDB60:  VMOV.F32        S2, #1.0
4BDB64:  MOVS            R1, #0
4BDB66:  MOV             R2, R10
4BDB68:  VDIV.F32        S0, S2, S0
4BDB6C:  VLDR            S2, [R2]
4BDB70:  ADDS            R1, #1
4BDB72:  VMUL.F32        S2, S0, S2
4BDB76:  VSTM            R2!, {S2}
4BDB7A:  LDR             R5, [SP,#0x70+var_20]
4BDB7C:  CMP             R1, R5
4BDB7E:  BLT             loc_4BDB6C
4BDB80:  MOVS            R1, #0xC8
4BDB82:  STRH.W          R1, [R12]
4BDB86:  ADDS            R1, R0, #1
4BDB88:  BEQ             loc_4BDBAA
4BDB8A:  CMP             R5, #1
4BDB8C:  BLT             loc_4BDBAA
4BDB8E:  MOVS            R1, #0
4BDB90:  LDR.W           R2, [R6,R1,LSL#2]
4BDB94:  CMP             R2, R0
4BDB96:  BEQ             loc_4BDBA0
4BDB98:  ADDS            R1, #1
4BDB9A:  CMP             R1, R5
4BDB9C:  BLT             loc_4BDB90
4BDB9E:  B               loc_4BDBAA
4BDBA0:  STRH.W          R0, [R12]
4BDBA4:  UXTH            R0, R0
4BDBA6:  CMP             R0, #0xC8
4BDBA8:  BNE             loc_4BDBF0
4BDBAA:  MOV             R6, R12
4BDBAC:  BLX             rand
4BDBB0:  VMOV            S0, R0
4BDBB4:  MOV             R1, R6
4BDBB6:  CMP             R5, #1
4BDBB8:  VCVT.F32.S32    S0, S0
4BDBBC:  BLT             loc_4BDBF0
4BDBBE:  VLDR            S2, =4.6566e-10
4BDBC2:  MOVS            R0, #0
4BDBC4:  VMUL.F32        S0, S0, S2
4BDBC8:  VLDR            S2, =0.0
4BDBCC:  VADD.F32        S0, S0, S2
4BDBD0:  VLDR            S2, [R10]
4BDBD4:  VCMPE.F32       S0, S2
4BDBD8:  VMRS            APSR_nzcv, FPSCR
4BDBDC:  BLE             loc_4BDBEA
4BDBDE:  ADDS            R0, #1
4BDBE0:  ADD.W           R10, R10, #4
4BDBE4:  CMP             R0, R5
4BDBE6:  BLT             loc_4BDBD0
4BDBE8:  B               loc_4BDBF0
4BDBEA:  LDR.W           R0, [R10,#-0x18]
4BDBEE:  STRH            R0, [R1]
4BDBF0:  MOVW            R0, #0xFFFF
4BDBF4:  STRH            R0, [R4]
4BDBF6:  ADD             SP, SP, #0x54 ; 'T'
4BDBF8:  POP.W           {R8-R11}
4BDBFC:  POP             {R4-R7,PC}
