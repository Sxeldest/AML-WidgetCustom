; =========================================================
; Game Engine Function: sub_14AC7C
; Address            : 0x14AC7C - 0x14AE08
; =========================================================

14AC7C:  PUSH            {R4-R7,LR}
14AC7E:  ADD             R7, SP, #0xC
14AC80:  PUSH.W          {R8}
14AC84:  SUB             SP, SP, #0x28
14AC86:  MOV             R4, R0
14AC88:  LDR.W           R0, [R0,#0x128]
14AC8C:  CMP             R0, #0
14AC8E:  BEQ.W           loc_14AE00
14AC92:  MOV             R5, R1
14AC94:  BL              sub_F8C70
14AC98:  CMP             R0, #0
14AC9A:  BEQ.W           loc_14AE00
14AC9E:  ADDS            R1, R5, #3
14ACA0:  MOV             R2, SP
14ACA2:  VLD1.8          {D16-D17}, [R1]!
14ACA6:  VLD1.8          {D0-D1}, [R1]!
14ACAA:  VST1.32         {D16-D17}, [R2,#0x38+var_38]!
14ACAE:  LDRB            R0, [R5]
14ACB0:  LDR             R1, [R1]
14ACB2:  VST1.32         {D0-D1}, [R2]!
14ACB6:  CMP             R0, #0
14ACB8:  STR             R1, [R2]
14ACBA:  MOV.W           R2, #0
14ACBE:  STR             R2, [SP,#0x38+var_14]
14ACC0:  BEQ             loc_14ADA0
14ACC2:  VLDR            S4, =300.0
14ACC6:  VCMP.F32        S2, S4
14ACCA:  VMRS            APSR_nzcv, FPSCR
14ACCE:  BGT.W           loc_14AE00
14ACD2:  VLDR            S6, =-300.0
14ACD6:  VCMP.F32        S2, S6
14ACDA:  VMRS            APSR_nzcv, FPSCR
14ACDE:  BMI.W           loc_14AE00
14ACE2:  VCMP.F32        S3, S4
14ACE6:  VMRS            APSR_nzcv, FPSCR
14ACEA:  BGT.W           loc_14AE00
14ACEE:  VCMP.F32        S3, S6
14ACF2:  VMRS            APSR_nzcv, FPSCR
14ACF6:  BMI.W           loc_14AE00
14ACFA:  VMOV            S0, R1
14ACFE:  VCMP.F32        S0, S4
14AD02:  VMRS            APSR_nzcv, FPSCR
14AD06:  BGT             loc_14AE00
14AD08:  VCMP.F32        S0, S6
14AD0C:  VMRS            APSR_nzcv, FPSCR
14AD10:  BMI             loc_14AE00
14AD12:  CMP             R0, #2
14AD14:  BEQ             loc_14AD48
14AD16:  CMP             R0, #1
14AD18:  BNE             loc_14AD9C
14AD1A:  LDR             R0, =(off_23496C - 0x14AD20)
14AD1C:  ADD             R0, PC; off_23496C
14AD1E:  LDR             R0, [R0]; dword_23DEF4
14AD20:  LDR             R0, [R0]
14AD22:  LDR.W           R0, [R0,#0x3B0]
14AD26:  LDR             R0, [R0]
14AD28:  CBZ             R0, loc_14AD9C
14AD2A:  MOV.W           R1, #0x13A0
14AD2E:  LDRH            R2, [R0,R1]
14AD30:  LDRH.W          R1, [R5,#1]
14AD34:  CMP             R1, R2
14AD36:  BNE             loc_14AD78
14AD38:  LDR             R0, =(off_234970 - 0x14AD3E)
14AD3A:  ADD             R0, PC; off_234970
14AD3C:  LDR             R0, [R0]; dword_23DEF0
14AD3E:  LDR             R0, [R0]
14AD40:  BL              sub_E35A0
14AD44:  LDR             R0, [R0,#0x5C]
14AD46:  B               loc_14AD9E
14AD48:  LDR             R0, =(off_23496C - 0x14AD4E)
14AD4A:  ADD             R0, PC; off_23496C
14AD4C:  LDR             R0, [R0]; dword_23DEF4
14AD4E:  LDR             R0, [R0]
14AD50:  LDR.W           R0, [R0,#0x3B0]
14AD54:  LDR             R6, [R0,#4]
14AD56:  CBZ             R6, loc_14AD9C
14AD58:  LDRH.W          R1, [R5,#1]
14AD5C:  MOV             R0, R6
14AD5E:  BL              sub_F2396
14AD62:  CBZ             R0, loc_14AD9C
14AD64:  LDRH.W          R8, [R5,#1]
14AD68:  MOV             R0, R6
14AD6A:  MOV             R1, R8
14AD6C:  BL              sub_F2396
14AD70:  LDR.W           R0, [R6,R8,LSL#2]
14AD74:  LDR             R0, [R0,#0xC]
14AD76:  B               loc_14AD9E
14AD78:  LDRH            R2, [R4,#0x14]
14AD7A:  CMP             R1, R2
14AD7C:  BEQ             loc_14AE00
14AD7E:  CMP.W           R1, #0x3EC
14AD82:  BHI             loc_14AD9C
14AD84:  ADDS            R2, R0, R1
14AD86:  LDRB.W          R2, [R2,#0xFB4]
14AD8A:  CBZ             R2, loc_14AD9C
14AD8C:  ADD.W           R0, R0, R1,LSL#2
14AD90:  LDR             R0, [R0,#4]
14AD92:  LDR             R0, [R0]
14AD94:  LDR.W           R0, [R0,#0x128]
14AD98:  CMP             R0, #0
14AD9A:  BNE             loc_14AD44
14AD9C:  MOVS            R0, #0
14AD9E:  STR             R0, [SP,#0x38+var_14]
14ADA0:  LDR.W           R0, [R4,#0x128]
14ADA4:  BL              sub_F8C70
14ADA8:  CBZ             R0, loc_14ADEE
14ADAA:  LDR.W           R0, [R4,#0x128]
14ADAE:  BL              sub_104648
14ADB2:  LDRB.W          R1, [R5,#0x27]
14ADB6:  CMP             R0, R1
14ADB8:  BEQ             loc_14ADEE
14ADBA:  LDR.W           R0, [R4,#0x128]
14ADBE:  MOVS            R2, #1
14ADC0:  BL              sub_10479C
14ADC4:  LDR.W           R0, [R4,#0x128]
14ADC8:  BL              sub_104648
14ADCC:  LDRB.W          R1, [R5,#0x27]
14ADD0:  CMP             R0, R1
14ADD2:  BEQ             loc_14ADEE
14ADD4:  LDR.W           R0, [R4,#0x128]
14ADD8:  MOVW            R2, #0x270F
14ADDC:  BL              sub_104950
14ADE0:  LDRB.W          R1, [R5,#0x27]
14ADE4:  MOVS            R2, #1
14ADE6:  LDR.W           R0, [R4,#0x128]
14ADEA:  BL              sub_10479C
14ADEE:  LDR.W           R0, [R4,#0x128]
14ADF2:  MOV             R1, SP
14ADF4:  BL              sub_105CE0
14ADF8:  LDR.W           R0, [R4,#0x128]
14ADFC:  BL              sub_105A58
14AE00:  ADD             SP, SP, #0x28 ; '('
14AE02:  POP.W           {R8}
14AE06:  POP             {R4-R7,PC}
