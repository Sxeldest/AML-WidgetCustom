; =========================================================
; Game Engine Function: sub_F8AD8
; Address            : 0xF8AD8 - 0xF8C02
; =========================================================

F8AD8:  PUSH            {R4-R7,LR}
F8ADA:  ADD             R7, SP, #0xC
F8ADC:  PUSH.W          {R8-R11}
F8AE0:  SUB             SP, SP, #4
F8AE2:  VPUSH           {D8-D10}
F8AE6:  SUB             SP, SP, #0x78
F8AE8:  MOV             R6, R0
F8AEA:  LDR             R0, [R0,#4]
F8AEC:  CBZ             R0, loc_F8B48
F8AEE:  LDR             R4, =(off_23494C - 0xF8B00)
F8AF0:  MOVW            R5, #0x7D24
F8AF4:  LDR.W           R12, [R0]
F8AF8:  MOVT            R5, #0x66 ; 'f'
F8AFC:  ADD             R4, PC; off_23494C
F8AFE:  LDR             R4, [R4]; dword_23DF24
F8B00:  LDR             R4, [R4]
F8B02:  ADD             R5, R4
F8B04:  CMP             R12, R5
F8B06:  BEQ             loc_F8B48
F8B08:  LDRH            R4, [R0,#0x26]
F8B0A:  VMOV            S16, R3
F8B0E:  VMOV            S18, R2
F8B12:  SUBW            R5, R4, #0x219
F8B16:  VMOV            S20, R1
F8B1A:  CMP             R5, #2
F8B1C:  BCC             loc_F8B26
F8B1E:  MOVW            R5, #0x1C1
F8B22:  CMP             R4, R5
F8B24:  BNE             loc_F8B56
F8B26:  VCVT.F64.F32    D16, S20
F8B2A:  LDR             R1, [R6,#8]
F8B2C:  LDR             R0, =(unk_B2C64 - 0xF8B32)
F8B2E:  ADD             R0, PC; unk_B2C64
F8B30:  VMOV            R2, R3, D16
F8B34:  VCVT.F64.F32    D16, S16
F8B38:  VCVT.F64.F32    D17, S18
F8B3C:  VSTR            D17, [SP,#0xB0+var_B0]
F8B40:  VSTR            D16, [SP,#0xB0+var_A8]
F8B44:  BL              sub_107188
F8B48:  ADD             SP, SP, #0x78 ; 'x'
F8B4A:  VPOP            {D8-D10}
F8B4E:  ADD             SP, SP, #4
F8B50:  POP.W           {R8-R11}
F8B54:  POP             {R4-R7,PC}
F8B56:  VLDR            S0, =-3000.0
F8B5A:  VCMP.F32        S18, S0
F8B5E:  VMRS            APSR_nzcv, FPSCR
F8B62:  BMI             loc_F8B9C
F8B64:  VLDR            S2, =3000.0
F8B68:  VCMP.F32        S20, S2
F8B6C:  VMRS            APSR_nzcv, FPSCR
F8B70:  BGT             loc_F8B9C
F8B72:  VCMP.F32        S20, S0
F8B76:  VMRS            APSR_nzcv, FPSCR
F8B7A:  BMI             loc_F8B9C
F8B7C:  VCMP.F32        S18, S2
F8B80:  VMRS            APSR_nzcv, FPSCR
F8B84:  BGT             loc_F8B9C
F8B86:  LDR.W           R12, [R12,#0x3C]
F8B8A:  ADD             SP, SP, #0x78 ; 'x'
F8B8C:  VPOP            {D8-D10}
F8B90:  ADD             SP, SP, #4
F8B92:  POP.W           {R8-R11}
F8B96:  POP.W           {R4-R7,LR}
F8B9A:  BX              R12
F8B9C:  ADD             R1, SP, #0xB0+var_78
F8B9E:  MOV             R0, R6
F8BA0:  BL              sub_F8910
F8BA4:  ADD.W           R10, SP, #0xB0+var_58
F8BA8:  ADD.W           R11, SP, #0xB0+var_74
F8BAC:  LDR             R0, [SP,#0xB0+var_78]
F8BAE:  STR             R0, [SP,#0xB0+var_7C]
F8BB0:  LDRD.W          R5, R4, [SP,#0xB0+var_68]
F8BB4:  LDM.W           R10, {R8-R10}
F8BB8:  LDR             R0, [SP,#0xB0+var_3C]
F8BBA:  LDM.W           R11, {R2,R3,R11}
F8BBE:  LDRD.W          R12, LR, [SP,#0xB0+var_60]
F8BC2:  LDR             R1, [SP,#0xB0+var_4C]
F8BC4:  STR             R0, [SP,#0xB0+var_80]
F8BC6:  ADD             R0, SP, #0xB0+var_A8
F8BC8:  STM.W           R0, {R4,R12,LR}
F8BCC:  ADD             R0, SP, #0xB0+var_9C
F8BCE:  STM.W           R0, {R8-R10}
F8BD2:  MOV             R0, R6
F8BD4:  STR             R1, [SP,#0xB0+var_90]
F8BD6:  VSTR            S20, [SP,#0xB0+var_8C]
F8BDA:  VSTR            S18, [SP,#0xB0+var_88]
F8BDE:  VSTR            S16, [SP,#0xB0+var_84]
F8BE2:  STRD.W          R11, R5, [SP,#0xB0+var_B0]
F8BE6:  LDR             R1, [SP,#0xB0+var_7C]
F8BE8:  BL              sub_F894A
F8BEC:  MOV             R0, R6
F8BEE:  ADD             SP, SP, #0x78 ; 'x'
F8BF0:  VPOP            {D8-D10}
F8BF4:  ADD             SP, SP, #4
F8BF6:  POP.W           {R8-R11}
F8BFA:  POP.W           {R4-R7,LR}
F8BFE:  B.W             sub_F8C14
