; =========================================================
; Game Engine Function: sub_A3980
; Address            : 0xA3980 - 0xA3B4C
; =========================================================

A3980:  PUSH            {R4-R7,LR}
A3982:  ADD             R7, SP, #0xC
A3984:  PUSH.W          {R8-R11}
A3988:  SUB             SP, SP, #4
A398A:  VPUSH           {D8-D15}
A398E:  SUB             SP, SP, #0x10; float
A3990:  MOV             R8, R0
A3992:  LDR             R0, =(__stack_chk_guard_ptr - 0xA399E)
A3994:  LDRD.W          R5, R4, [R7,#arg_4]
A3998:  MOV             R9, R3
A399A:  ADD             R0, PC; __stack_chk_guard_ptr
A399C:  MOV             R6, R2
A399E:  MOV             R11, R1
A39A0:  LDR             R0, [R0]; __stack_chk_guard
A39A2:  LDR             R0, [R0]
A39A4:  STR             R0, [SP,#0x70+var_64]
A39A6:  CBNZ            R4, loc_A39B0
A39A8:  MOV             R0, R5; s
A39AA:  BLX             strlen
A39AE:  ADDS            R4, R5, R0
A39B0:  LDR             R1, [R7,#arg_C]
A39B2:  VMOV            S16, R6
A39B6:  VLDR            S0, [R11,#0x10]
A39BA:  MOVS            R0, #0
A39BC:  CMP             R4, R5
A39BE:  STRD.W          R0, R0, [R8]
A39C2:  BLS.W           loc_A3AF0
A39C6:  VDIV.F32        S24, S16, S0
A39CA:  ADD.W           R10, R11, #0xC
A39CE:  MOVS            R6, #0
A39D0:  VMOV            S22, R9
A39D4:  VLDR            S26, =0.0
A39D8:  VMOV            R9, S24
A39DC:  VLDR            S20, [R7,#arg_0]
A39E0:  VMOV.F32        S18, S26
A39E4:  VMOV.F32        S28, S26
A39E8:  VMOV.F32        S30, S26
A39EC:  B               loc_A3A22
A39EE:  VMOV.F32        S0, S30
A39F2:  LDR.W           R2, [R11]
A39F6:  LDR.W           R3, [R11,#8]
A39FA:  CMP             R1, R2
A39FC:  MOV             R2, R10
A39FE:  IT LT
A3A00:  ADDLT.W         R2, R3, R1,LSL#2
A3A04:  VLDR            S2, [R2]
A3A08:  MOV             R2, R5
A3A0A:  VMLA.F32        S0, S24, S2
A3A0E:  VCMP.F32        S0, S22
A3A12:  VMRS            APSR_nzcv, FPSCR
A3A16:  BGE             loc_A3AF6
A3A18:  VMOV.F32        S30, S0
A3A1C:  MOV             R5, R0
A3A1E:  CMP             R5, R4
A3A20:  BCS             loc_A3AF8
A3A22:  VCMP.F32        S20, #0.0
A3A26:  VMRS            APSR_nzcv, FPSCR
A3A2A:  BLE             loc_A3A32
A3A2C:  CBZ             R6, loc_A3A88
A3A2E:  CMP             R5, R6
A3A30:  BCS             loc_A3AA8
A3A32:  LDRSB.W         R0, [R5]
A3A36:  CMP             R0, #0
A3A38:  UXTB            R1, R0
A3A3A:  STR             R1, [SP,#0x70+var_68]
A3A3C:  BMI             loc_A3A42
A3A3E:  ADDS            R0, R5, #1
A3A40:  B               loc_A3A56
A3A42:  ADD             R0, SP, #0x70+var_68
A3A44:  MOV             R1, R5
A3A46:  MOV             R2, R4
A3A48:  BL              sub_88448
A3A4C:  LDR             R1, [SP,#0x70+var_68]
A3A4E:  ADD             R0, R5
A3A50:  CMP             R1, #0
A3A52:  MOV             R2, R0
A3A54:  BEQ             loc_A3AF6
A3A56:  CMP             R1, #0x1F
A3A58:  BHI             loc_A39EE
A3A5A:  CMP             R1, #0xD
A3A5C:  BEQ             loc_A3A1C
A3A5E:  CMP             R1, #0xA
A3A60:  BNE             loc_A39EE
A3A62:  VADD.F32        S18, S18, S16
A3A66:  MOV             R5, R0
A3A68:  VCMP.F32        S28, S30
A3A6C:  VMRS            APSR_nzcv, FPSCR
A3A70:  IT GE
A3A72:  VMOVGE.F32      S30, S28
A3A76:  VSTR            S30, [R8]
A3A7A:  VMOV.F32        S28, S30
A3A7E:  VMOV.F32        S30, S26
A3A82:  VSTR            S18, [R8,#4]
A3A86:  B               loc_A3A1E
A3A88:  VSUB.F32        S0, S20, S30
A3A8C:  MOV             R0, R11; int
A3A8E:  MOV             R1, R9; int
A3A90:  MOV             R2, R5; int
A3A92:  MOV             R3, R4; int
A3A94:  VSTR            S0, [SP,#0x70+var_70]
A3A98:  BL              sub_A37F4
A3A9C:  MOV             R6, R0
A3A9E:  CMP             R0, R5
A3AA0:  IT EQ
A3AA2:  ADDEQ           R6, #1
A3AA4:  CMP             R5, R6
A3AA6:  BCC             loc_A3A32
A3AA8:  VADD.F32        S18, S18, S16
A3AAC:  VCMP.F32        S28, S30
A3AB0:  VMRS            APSR_nzcv, FPSCR
A3AB4:  ITT MI
A3AB6:  VSTRMI          S30, [R8]
A3ABA:  VMOVMI.F32      S28, S30
A3ABE:  CMP             R5, R4
A3AC0:  VSTR            S18, [R8,#4]
A3AC4:  BCS             loc_A3AE8
A3AC6:  SUBS            R0, R4, R5
A3AC8:  MOV             R1, R5
A3ACA:  LDRB.W          R2, [R1],#1
A3ACE:  CMP             R2, #0x20 ; ' '
A3AD0:  IT NE
A3AD2:  CMPNE           R2, #9
A3AD4:  BNE             loc_A3AE2
A3AD6:  SUBS            R0, #1
A3AD8:  MOV             R5, R1
A3ADA:  BNE             loc_A3ACA
A3ADC:  MOVS            R6, #0
A3ADE:  MOV             R5, R4
A3AE0:  B               loc_A3AEA
A3AE2:  CMP             R2, #0xA
A3AE4:  IT EQ
A3AE6:  ADDEQ           R5, #1
A3AE8:  MOVS            R6, #0
A3AEA:  VMOV.F32        S30, S26
A3AEE:  B               loc_A3A1E
A3AF0:  VLDR            S18, =0.0
A3AF4:  B               loc_A3B1C
A3AF6:  MOV             R5, R2
A3AF8:  VCMP.F32        S28, S30
A3AFC:  LDR             R1, [R7,#arg_C]
A3AFE:  VMRS            APSR_nzcv, FPSCR
A3B02:  VCMP.F32        S30, #0.0
A3B06:  IT MI
A3B08:  VSTRMI          S30, [R8]
A3B0C:  VMRS            APSR_nzcv, FPSCR
A3B10:  BGT             loc_A3B1C
A3B12:  VCMP.F32        S18, #0.0
A3B16:  VMRS            APSR_nzcv, FPSCR
A3B1A:  BNE             loc_A3B24
A3B1C:  VADD.F32        S0, S18, S16
A3B20:  VSTR            S0, [R8,#4]
A3B24:  CMP             R1, #0
A3B26:  IT NE
A3B28:  STRNE           R5, [R1]
A3B2A:  LDR             R0, [SP,#0x70+var_64]
A3B2C:  LDR             R1, =(__stack_chk_guard_ptr - 0xA3B32)
A3B2E:  ADD             R1, PC; __stack_chk_guard_ptr
A3B30:  LDR             R1, [R1]; __stack_chk_guard
A3B32:  LDR             R1, [R1]
A3B34:  CMP             R1, R0
A3B36:  ITTTT EQ
A3B38:  ADDEQ           SP, SP, #0x10
A3B3A:  VPOPEQ          {D8-D15}
A3B3E:  ADDEQ           SP, SP, #4
A3B40:  POPEQ.W         {R8-R11}
A3B44:  IT EQ
A3B46:  POPEQ           {R4-R7,PC}
A3B48:  BLX             __stack_chk_fail
