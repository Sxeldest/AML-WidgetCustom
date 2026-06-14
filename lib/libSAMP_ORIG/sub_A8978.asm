; =========================================================
; Game Engine Function: sub_A8978
; Address            : 0xA8978 - 0xA9018
; =========================================================

A8978:  PUSH            {R4-R7,LR}
A897A:  ADD             R7, SP, #0xC
A897C:  PUSH.W          {R8-R11}
A8980:  SUB             SP, SP, #4
A8982:  VPUSH           {D8-D15}
A8986:  SUB             SP, SP, #0x30
A8988:  STR             R3, [SP,#0x90+var_7C]
A898A:  MOV             R8, R1
A898C:  LDR             R3, =(off_114D5C - 0xA89A2)
A898E:  VMOV.F32        S16, #1.0
A8992:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xA89A4)
A8996:  VMOV.F32        S2, #-4.0
A899A:  VLDR            S24, [R7,#arg_C]
A899E:  ADD             R3, PC; off_114D5C
A89A0:  ADD             R1, PC; __stack_chk_guard_ptr
A89A2:  LDR             R6, [R7,#arg_4]
A89A4:  LDR.W           R12, [R7,#arg_0]
A89A8:  LDR             R1, [R1]; __stack_chk_guard
A89AA:  SUBS.W          R11, R6, R12
A89AE:  LDR             R5, [R3]; dword_1ACF68
A89B0:  VCMP.F32        S24, S16
A89B4:  MOV.W           R3, #0
A89B8:  LDR             R1, [R1]
A89BA:  STR             R1, [SP,#0x90+var_64]
A89BC:  MOV.W           R1, #0
A89C0:  STR.W           R11, [SP,#0x90+var_80]
A89C4:  IT LE
A89C6:  SUBLE.W         R11, R12, R6
A89CA:  VMRS            APSR_nzcv, FPSCR
A89CE:  IT NE
A89D0:  MOVNE           R1, #1
A89D2:  STR             R2, [SP,#0x90+var_88]
A89D4:  BIC.W           R2, R2, #1
A89D8:  STR             R2, [SP,#0x90+var_84]
A89DA:  SUBS            R2, #8
A89DC:  CLZ.W           R2, R2
A89E0:  LDR.W           R10, [R5]
A89E4:  STR             R5, [SP,#0x90+var_8C]
A89E6:  MOV.W           R2, R2,LSR#5
A89EA:  AND.W           R2, R2, R1
A89EE:  MOVW            R1, #0x1588
A89F2:  ADD.W           R9, R10, R1
A89F6:  LDR             R1, [R7,#arg_10]
A89F8:  AND.W           R1, R1, #1
A89FC:  STRD.W          R1, R0, [SP,#0x90+var_74]
A8A00:  ADD.W           R1, R0, R1,LSL#2
A8A04:  VLDR            S0, [R1]
A8A08:  VLDR            S30, [R1,#8]
A8A0C:  VSUB.F32        S4, S30, S0
A8A10:  VADD.F32        S17, S4, S2
A8A14:  VLDR            S2, [R9]
A8A18:  BEQ             loc_A8A3E
A8A1A:  CMP.W           R11, #0
A8A1E:  BMI             loc_A8A3E
A8A20:  ADD.W           R1, R11, #1
A8A24:  VMOV            S4, R1
A8A28:  VCVT.F32.S32    S4, S4
A8A2C:  VDIV.F32        S4, S17, S4
A8A30:  VCMP.F32        S4, S2
A8A34:  VMRS            APSR_nzcv, FPSCR
A8A38:  IT GE
A8A3A:  VMOVGE.F32      S2, S4
A8A3E:  VMOV.F32        S20, #2.0
A8A42:  MUL.W           R1, R6, R12
A8A46:  VMOV.F32        S18, #0.5
A8A4A:  VCMP.F32        S2, S17
A8A4E:  VMOV.F32        S22, S17
A8A52:  VMRS            APSR_nzcv, FPSCR
A8A56:  IT MI
A8A58:  VMOVMI.F32      S22, S2
A8A5C:  CMP             R1, #0
A8A5E:  IT MI
A8A60:  MOVMI           R3, #1
A8A62:  AND.W           R0, R2, R3
A8A66:  STR             R2, [SP,#0x90+var_78]
A8A68:  VADD.F32        S26, S0, S20
A8A6C:  CMP             R0, #1
A8A6E:  VMUL.F32        S19, S22, S18
A8A72:  BNE             loc_A8AD4
A8A74:  VDIV.F32        S2, S16, S24
A8A78:  CMP.W           R12, #0xFFFFFFFF
A8A7C:  VMOV            S0, R12
A8A80:  VMOV            R5, S2
A8A84:  VCVT.F32.S32    S0, S0
A8A88:  VNEG.F32        S4, S0
A8A8C:  IT GT
A8A8E:  VMOVGT.F32      S4, S0
A8A92:  VMOV            R0, S4; x
A8A96:  MOV             R1, R5; y
A8A98:  BLX             powf
A8A9C:  VMOV            S0, R6
A8AA0:  MOV             R4, R0
A8AA2:  CMP.W           R6, #0xFFFFFFFF
A8AA6:  MOV             R1, R5; y
A8AA8:  VCVT.F32.S32    S0, S0
A8AAC:  VNEG.F32        S2, S0
A8AB0:  IT GT
A8AB2:  VMOVGT.F32      S2, S0
A8AB6:  VMOV            R0, S2; x
A8ABA:  BLX             powf
A8ABE:  VMOV            S0, R0
A8AC2:  LDR.W           R12, [R7,#arg_0]
A8AC6:  VMOV            S2, R4
A8ACA:  VADD.F32        S0, S2, S0
A8ACE:  VDIV.F32        S28, S2, S0
A8AD2:  B               loc_A8AE2
A8AD4:  VLDR            S28, =0.0
A8AD8:  CMP.W           R12, #0
A8ADC:  IT MI
A8ADE:  VMOVMI.F32      S28, S16
A8AE2:  VADD.F32        S26, S19, S26
A8AE6:  LDR.W           R0, [R9,#0x448]
A8AEA:  CMP             R0, R8
A8AEC:  BNE             loc_A8B4E
A8AEE:  LDR.W           R0, [R9,#0x470]
A8AF2:  MOVS            R5, #0
A8AF4:  CMP             R0, #2
A8AF6:  BEQ             loc_A8B56
A8AF8:  LDR.W           R8, [SP,#0x90+var_70]
A8AFC:  CMP             R0, #1
A8AFE:  BNE.W           loc_A8E9C
A8B02:  LDRB.W          R0, [R10,#0xE8]
A8B06:  CMP             R0, #0
A8B08:  BEQ             loc_A8BAE
A8B0A:  VSUB.F32        S0, S17, S22
A8B0E:  LDR             R2, [SP,#0x90+var_78]
A8B10:  VCMP.F32        S0, #0.0
A8B14:  VMRS            APSR_nzcv, FPSCR
A8B18:  BLE             loc_A8BBA
A8B1A:  LDR             R1, [SP,#0x90+var_74]
A8B1C:  ADD.W           R0, R10, R1,LSL#2
A8B20:  VLDR            S2, [R0,#0xE0]
A8B24:  VSUB.F32        S2, S2, S26
A8B28:  VDIV.F32        S2, S2, S0
A8B2C:  VCMP.F32        S2, S16
A8B30:  VLDR            S0, =0.0
A8B34:  VMRS            APSR_nzcv, FPSCR
A8B38:  VCMP.F32        S2, #0.0
A8B3C:  IT GT
A8B3E:  VMOVGT.F32      S2, S16
A8B42:  VMRS            APSR_nzcv, FPSCR
A8B46:  IT MI
A8B48:  VMOVMI.F32      S2, S0
A8B4C:  B               loc_A8BC0
A8B4E:  MOVS            R5, #0
A8B50:  LDR.W           R8, [SP,#0x90+var_70]
A8B54:  B               loc_A8E9C
A8B56:  ADD             R0, SP, #0x90+var_6C; int
A8B58:  MOVS            R1, #3; int
A8B5A:  MOVS            R2, #5; int
A8B5C:  MOVS            R3, #0; int
A8B5E:  MOV             R10, R12
A8B60:  MOV             R4, R6
A8B62:  STR             R5, [SP,#0x90+var_90]; float
A8B64:  BL              sub_99284
A8B68:  VLDR            S2, [SP,#0x90+var_68]
A8B6C:  LDR             R0, [SP,#0x90+var_74]
A8B6E:  VNEG.F32        S21, S2
A8B72:  VLDR            S0, [SP,#0x90+var_6C]
A8B76:  CMP             R0, #0
A8B78:  IT EQ
A8B7A:  VMOVEQ.F32      S21, S0
A8B7E:  LDR.W           R0, [R9,#0x53C]
A8B82:  CMP             R0, R8
A8B84:  ITT EQ
A8B86:  LDRBEQ.W        R0, [R9,#0x454]
A8B8A:  CMPEQ           R0, #0
A8B8C:  BEQ.W           loc_A8CBA
A8B90:  LDR.W           R8, [SP,#0x90+var_70]
A8B94:  VCMP.F32        S21, #0.0
A8B98:  VMRS            APSR_nzcv, FPSCR
A8B9C:  MOV             R6, R4
A8B9E:  MOV             R12, R10
A8BA0:  BEQ.W           loc_A8DFE
A8BA4:  CMP             R6, R12
A8BA6:  BNE             loc_A8BFE
A8BA8:  VLDR            S23, =0.0
A8BAC:  B               loc_A8D2C
A8BAE:  MOV             R4, R12
A8BB0:  BL              sub_8B080
A8BB4:  MOV             R12, R4
A8BB6:  MOVS            R5, #0
A8BB8:  B               loc_A8E9C
A8BBA:  VLDR            S2, =0.0
A8BBE:  LDR             R1, [SP,#0x90+var_74]
A8BC0:  VSUB.F32        S0, S16, S2
A8BC4:  CMP             R1, #0
A8BC6:  IT EQ
A8BC8:  VMOVEQ.F32      S0, S2
A8BCC:  CMP             R2, #0
A8BCE:  BEQ.W           loc_A8E2E
A8BD2:  VCMP.F32        S0, S28
A8BD6:  VMRS            APSR_nzcv, FPSCR
A8BDA:  BPL             loc_A8C5E
A8BDC:  VDIV.F32        S0, S0, S28
A8BE0:  MOV             R4, R6
A8BE2:  MOV             R5, R12
A8BE4:  VSUB.F32        S0, S16, S0
A8BE8:  VMOV            R1, S24; y
A8BEC:  VMOV            R0, S0; x
A8BF0:  BLX             powf
A8BF4:  AND.W           R1, R6, R6,ASR#31
A8BF8:  MOV             R4, R5
A8BFA:  SUBS            R2, R5, R1
A8BFC:  B               loc_A8C98
A8BFE:  LDR             R0, [SP,#0x90+var_7C]
A8C00:  MOV             R2, R6
A8C02:  LDR             R1, [R0]
A8C04:  MOV             R0, R12
A8C06:  ITT GT
A8C08:  MOVGT           R2, R12
A8C0A:  MOVGT           R0, R6
A8C0C:  CMP             R0, R1
A8C0E:  IT GE
A8C10:  MOVGE           R0, R1
A8C12:  CMP             R2, R1
A8C14:  IT GT
A8C16:  MOVGT           R0, R2
A8C18:  LDR             R1, [SP,#0x90+var_78]
A8C1A:  CMP             R1, #0
A8C1C:  BEQ             loc_A8CCA
A8C1E:  CMP.W           R0, #0xFFFFFFFF
A8C22:  BLE             loc_A8CF0
A8C24:  BIC.W           R1, R12, R12,ASR#31
A8C28:  SUBS            R0, R0, R1
A8C2A:  SUBS            R1, R6, R1
A8C2C:  BLX             sub_108848
A8C30:  VDIV.F32        S0, S16, S24
A8C34:  VMOV            S2, R0
A8C38:  VMOV            R1, S0; y
A8C3C:  VCVT.F32.S32    S2, S2
A8C40:  VMOV            R0, S2; x
A8C44:  BLX             powf
A8C48:  VSUB.F32        S0, S16, S28
A8C4C:  MOV             R12, R10
A8C4E:  VMOV.F32        S23, S28
A8C52:  MOV             R6, R4
A8C54:  VMOV            S2, R0
A8C58:  VMLA.F32        S23, S2, S0
A8C5C:  B               loc_A8D2C
A8C5E:  VMOV.F32        S2, #-1.0
A8C62:  VLDR            S4, =0.000001
A8C66:  MOV             R4, R12
A8C68:  VADD.F32        S2, S28, S2
A8C6C:  VABS.F32        S2, S2
A8C70:  VCMP.F32        S2, S4
A8C74:  VMRS            APSR_nzcv, FPSCR
A8C78:  BLE             loc_A8C86
A8C7A:  VSUB.F32        S0, S0, S28
A8C7E:  VSUB.F32        S2, S16, S28
A8C82:  VDIV.F32        S0, S0, S2
A8C86:  VMOV            R0, S0; x
A8C8A:  VMOV            R1, S24; y
A8C8E:  BLX             powf
A8C92:  BIC.W           R1, R4, R4,ASR#31
A8C96:  SUBS            R2, R6, R1
A8C98:  VMOV            S0, R2
A8C9C:  VMOV            S2, R1
A8CA0:  VCVT.F32.S32    S0, S0
A8CA4:  VCVT.F32.S32    S2, S2
A8CA8:  VMOV            S4, R0
A8CAC:  VMLA.F32        S2, S0, S4
A8CB0:  VCVT.S32.F32    S0, S2
A8CB4:  VMOV            R2, S0
A8CB8:  B               loc_A8E84
A8CBA:  BL              sub_8B080
A8CBE:  LDR.W           R8, [SP,#0x90+var_70]
A8CC2:  MOV             R6, R4
A8CC4:  MOV             R12, R10
A8CC6:  MOVS            R5, #0
A8CC8:  B               loc_A8E9C
A8CCA:  LDR             R1, [SP,#0x90+var_80]
A8CCC:  SUB.W           R0, R0, R12
A8CD0:  VMOV            S2, R0
A8CD4:  VMOV            S0, R1
A8CD8:  VCVT.F32.S32    S2, S2
A8CDC:  VCVT.F32.S32    S0, S0
A8CE0:  VDIV.F32        S23, S2, S0
A8CE4:  B               loc_A8D2C
A8CE6:  ALIGN 4
A8CE8:  DCD off_114D5C - 0xA89A2
A8CEC:  DCFS 0.0
A8CF0:  AND.W           R1, R6, R6,ASR#31
A8CF4:  SUB.W           R0, R0, R12
A8CF8:  SUB.W           R1, R1, R12
A8CFC:  BLX             sub_108848
A8D00:  VDIV.F32        S0, S16, S24
A8D04:  VMOV            S2, R0
A8D08:  VMOV            R1, S0; y
A8D0C:  VCVT.F32.S32    S2, S2
A8D10:  VSUB.F32        S2, S16, S2
A8D14:  VMOV            R0, S2; x
A8D18:  BLX             powf
A8D1C:  VMOV            S0, R0
A8D20:  MOV             R12, R10
A8D22:  MOV             R6, R4
A8D24:  VSUB.F32        S0, S16, S0
A8D28:  VMUL.F32        S23, S28, S0
A8D2C:  LDR             R0, [SP,#0x90+var_84]
A8D2E:  MOVS            R5, #0
A8D30:  CMP             R0, #8
A8D32:  MOV.W           R0, #0
A8D36:  BNE             loc_A8D44
A8D38:  LDR             R0, [R7,#arg_8]
A8D3A:  MOVS            R1, #3
A8D3C:  BL              sub_AB7D0
A8D40:  MOV             R12, R10
A8D42:  MOV             R6, R4
A8D44:  CMP             R0, #1
A8D46:  IT LT
A8D48:  MOVLT           R5, #1
A8D4A:  LDR             R0, [SP,#0x90+var_78]
A8D4C:  MVNS            R0, R0
A8D4E:  TST             R0, R5
A8D50:  BNE             loc_A8D76
A8D52:  VLDR            S0, =100.0
A8D56:  LDR             R0, [SP,#0x90+var_8C]
A8D58:  VDIV.F32        S0, S21, S0
A8D5C:  LDR             R0, [R0]
A8D5E:  VLDR            S2, [R0,#0x334]
A8D62:  VCMP.F32        S2, #0.0
A8D66:  VMRS            APSR_nzcv, FPSCR
A8D6A:  BLE             loc_A8DBC
A8D6C:  VMOV.F32        S2, #10.0
A8D70:  VDIV.F32        S0, S0, S2
A8D74:  B               loc_A8DBC
A8D76:  LDR             R0, [SP,#0x90+var_8C]
A8D78:  ADD.W           R1, R11, #0x64 ; 'd'
A8D7C:  CMP             R1, #0xC9
A8D7E:  LDR             R0, [R0]
A8D80:  BCC             loc_A8D90
A8D82:  VLDR            S0, [R0,#0x334]
A8D86:  VCMP.F32        S0, #0.0
A8D8A:  VMRS            APSR_nzcv, FPSCR
A8D8E:  BLE             loc_A8DB4
A8D90:  VMOV            S0, R11
A8D94:  VCMP.F32        S21, #0.0
A8D98:  VCVT.F32.S32    S0, S0
A8D9C:  VMRS            APSR_nzcv, FPSCR
A8DA0:  VMOV.F32        S4, S16
A8DA4:  VMOV.F32        S2, #-1.0
A8DA8:  IT MI
A8DAA:  VMOVMI.F32      S4, S2
A8DAE:  VDIV.F32        S0, S4, S0
A8DB2:  B               loc_A8DBC
A8DB4:  VLDR            S0, =100.0
A8DB8:  VDIV.F32        S0, S21, S0
A8DBC:  VMOV.F32        S2, #10.0
A8DC0:  VLDR            S4, [R0,#0x338]
A8DC4:  VCMP.F32        S4, #0.0
A8DC8:  VMRS            APSR_nzcv, FPSCR
A8DCC:  VCMP.F32        S23, S16
A8DD0:  VMUL.F32        S2, S0, S2
A8DD4:  IT GT
A8DD6:  VMOVGT.F32      S0, S2
A8DDA:  VMRS            APSR_nzcv, FPSCR
A8DDE:  ITT GE
A8DE0:  VCMPGE.F32      S0, #0.0
A8DE4:  VMRSGE          APSR_nzcv, FPSCR
A8DE8:  BGT             loc_A8DFE
A8DEA:  VCMP.F32        S23, #0.0
A8DEE:  VMRS            APSR_nzcv, FPSCR
A8DF2:  BHI             loc_A8E02
A8DF4:  VCMP.F32        S0, #0.0
A8DF8:  VMRS            APSR_nzcv, FPSCR
A8DFC:  BPL             loc_A8E02
A8DFE:  MOVS            R5, #0
A8E00:  B               loc_A8E9C
A8E02:  VADD.F32        S0, S23, S0
A8E06:  VLDR            S2, =0.0
A8E0A:  VCMP.F32        S0, S16
A8E0E:  VMRS            APSR_nzcv, FPSCR
A8E12:  VCMP.F32        S0, #0.0
A8E16:  IT GT
A8E18:  VMOVGT.F32      S0, S16
A8E1C:  VMRS            APSR_nzcv, FPSCR
A8E20:  IT MI
A8E22:  VMOVMI.F32      S0, S2
A8E26:  LDR             R2, [SP,#0x90+var_78]
A8E28:  CMP             R2, #0
A8E2A:  BNE.W           loc_A8BD2
A8E2E:  LDR             R0, [SP,#0x90+var_84]
A8E30:  CMP             R0, #8
A8E32:  BNE             loc_A8E56
A8E34:  LDR             R0, [SP,#0x90+var_80]
A8E36:  VMOV            S4, R12
A8E3A:  MOV             R4, R12
A8E3C:  VCVT.F32.S32    S4, S4
A8E40:  VMOV            S2, R0
A8E44:  VCVT.F32.S32    S2, S2
A8E48:  VMLA.F32        S4, S2, S0
A8E4C:  VCVT.S32.F32    S0, S4
A8E50:  VMOV            R2, S0
A8E54:  B               loc_A8E84
A8E56:  LDR             R0, [SP,#0x90+var_80]
A8E58:  MOV             R4, R12
A8E5A:  VMOV            S2, R0
A8E5E:  VCVT.F32.S32    S2, S2
A8E62:  VMUL.F32        S0, S0, S2
A8E66:  VADD.F32        S2, S0, S18
A8E6A:  VCVT.S32.F32    S0, S0
A8E6E:  VCVT.S32.F32    S2, S2
A8E72:  VMOV            R0, S0
A8E76:  VMOV            R1, S2
A8E7A:  CMP             R0, R1
A8E7C:  IT LT
A8E7E:  MOVLT           R0, R1
A8E80:  ADD.W           R2, R0, R12
A8E84:  LDR             R1, [SP,#0x90+var_88]
A8E86:  LDR             R0, [R7,#arg_8]
A8E88:  BL              sub_AF46C
A8E8C:  LDR             R2, [SP,#0x90+var_7C]
A8E8E:  MOV             R12, R4
A8E90:  LDR             R1, [R2]
A8E92:  CMP             R1, R0
A8E94:  ITTE NE
A8E96:  STRNE           R0, [R2]
A8E98:  MOVNE           R5, #1
A8E9A:  MOVEQ           R5, #0
A8E9C:  LDR             R4, [R7,#arg_14]
A8E9E:  VCMP.F32        S17, S16
A8EA2:  VMRS            APSR_nzcv, FPSCR
A8EA6:  BPL             loc_A8EB6
A8EA8:  VLDR            D16, [R8]
A8EAC:  VMOV            D17, D16
A8EB0:  VST1.32         {D16-D17}, [R4]
A8EB4:  B               loc_A8FF4
A8EB6:  VMOV.F32        S17, #-2.0
A8EBA:  CMP             R6, R12
A8EBC:  VADD.F32        S0, S30, S17
A8EC0:  VSUB.F32        S30, S0, S19
A8EC4:  BNE             loc_A8ED0
A8EC6:  VLDR            S28, =0.0
A8ECA:  LDR.W           R9, [SP,#0x90+var_74]
A8ECE:  B               loc_A8F7E
A8ED0:  LDR             R0, [SP,#0x90+var_7C]
A8ED2:  MOV             R2, R6
A8ED4:  LDR             R1, [R0]
A8ED6:  MOV             R0, R12
A8ED8:  ITT GT
A8EDA:  MOVGT           R2, R12
A8EDC:  MOVGT           R0, R6
A8EDE:  CMP             R0, R1
A8EE0:  IT GE
A8EE2:  MOVGE           R0, R1
A8EE4:  CMP             R2, R1
A8EE6:  IT GT
A8EE8:  MOVGT           R0, R2
A8EEA:  LDR             R1, [SP,#0x90+var_78]
A8EEC:  LDR.W           R9, [SP,#0x90+var_74]
A8EF0:  CBZ             R1, loc_A8F2A
A8EF2:  CMP.W           R0, #0xFFFFFFFF
A8EF6:  BLE             loc_A8F46
A8EF8:  BIC.W           R1, R12, R12,ASR#31
A8EFC:  SUBS            R0, R0, R1
A8EFE:  SUBS            R1, R6, R1
A8F00:  BLX             sub_108848
A8F04:  VDIV.F32        S0, S16, S24
A8F08:  VMOV            S2, R0
A8F0C:  VMOV            R1, S0; y
A8F10:  VCVT.F32.S32    S2, S2
A8F14:  VMOV            R0, S2; x
A8F18:  BLX             powf
A8F1C:  VSUB.F32        S0, S16, S28
A8F20:  VMOV            S2, R0
A8F24:  VMLA.F32        S28, S2, S0
A8F28:  B               loc_A8F7E
A8F2A:  LDR             R1, [SP,#0x90+var_80]
A8F2C:  SUB.W           R0, R0, R12
A8F30:  VMOV            S2, R0
A8F34:  VMOV            S0, R1
A8F38:  VCVT.F32.S32    S2, S2
A8F3C:  VCVT.F32.S32    S0, S0
A8F40:  VDIV.F32        S28, S2, S0
A8F44:  B               loc_A8F7E
A8F46:  AND.W           R1, R6, R6,ASR#31
A8F4A:  SUB.W           R0, R0, R12
A8F4E:  SUB.W           R1, R1, R12
A8F52:  BLX             sub_108848
A8F56:  VDIV.F32        S0, S16, S24
A8F5A:  VMOV            S2, R0
A8F5E:  VMOV            R1, S0; y
A8F62:  VCVT.F32.S32    S2, S2
A8F66:  VSUB.F32        S2, S16, S2
A8F6A:  VMOV            R0, S2; x
A8F6E:  BLX             powf
A8F72:  VMOV            S0, R0
A8F76:  VSUB.F32        S0, S16, S0
A8F7A:  VMUL.F32        S28, S28, S0
A8F7E:  VSUB.F32        S4, S30, S26
A8F82:  CMP.W           R9, #0
A8F86:  VSUB.F32        S2, S16, S28
A8F8A:  IT EQ
A8F8C:  VMOVEQ.F32      S2, S28
A8F90:  VNEG.F32        S0, S22
A8F94:  VMLA.F32        S26, S4, S2
A8F98:  BNE             loc_A8FC8
A8F9A:  VMOV.F32        S6, S26
A8F9E:  VLDR            S2, [R8,#4]
A8FA2:  VLDR            S4, [R8,#0xC]
A8FA6:  VMLA.F32        S26, S0, S18
A8FAA:  VADD.F32        S4, S4, S17
A8FAE:  VMLA.F32        S6, S22, S18
A8FB2:  VSTR            S26, [R4]
A8FB6:  VADD.F32        S2, S2, S20
A8FBA:  VSTR            S4, [R4,#0xC]
A8FBE:  VSTR            S6, [R4,#8]
A8FC2:  VSTR            S2, [R4,#4]
A8FC6:  B               loc_A8FF4
A8FC8:  VMOV.F32        S6, S26
A8FCC:  VLDR            S4, [R8,#8]
A8FD0:  VLDR            S2, [R8]
A8FD4:  VMLA.F32        S26, S0, S18
A8FD8:  VMLA.F32        S6, S22, S18
A8FDC:  VSTR            S26, [R4,#4]
A8FE0:  VADD.F32        S4, S4, S17
A8FE4:  VADD.F32        S0, S2, S20
A8FE8:  VSTR            S6, [R4,#0xC]
A8FEC:  VSTR            S4, [R4,#8]
A8FF0:  VSTR            S0, [R4]
A8FF4:  LDR             R0, [SP,#0x90+var_64]
A8FF6:  LDR             R1, =(__stack_chk_guard_ptr - 0xA8FFC)
A8FF8:  ADD             R1, PC; __stack_chk_guard_ptr
A8FFA:  LDR             R1, [R1]; __stack_chk_guard
A8FFC:  LDR             R1, [R1]
A8FFE:  CMP             R1, R0
A9000:  ITTTT EQ
A9002:  MOVEQ           R0, R5
A9004:  ADDEQ           SP, SP, #0x30 ; '0'
A9006:  VPOPEQ          {D8-D15}
A900A:  ADDEQ           SP, SP, #4
A900C:  ITT EQ
A900E:  POPEQ.W         {R8-R11}
A9012:  POPEQ           {R4-R7,PC}
A9014:  BLX             __stack_chk_fail
