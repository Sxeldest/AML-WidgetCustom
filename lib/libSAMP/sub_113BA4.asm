; =========================================================
; Game Engine Function: sub_113BA4
; Address            : 0x113BA4 - 0x113D44
; =========================================================

113BA4:  PUSH            {R4-R7,LR}
113BA6:  ADD             R7, SP, #0xC
113BA8:  PUSH.W          {R8-R11}
113BAC:  SUB             SP, SP, #4
113BAE:  VPUSH           {D8-D13}
113BB2:  SUB             SP, SP, #0x40
113BB4:  VMOV.F32        S0, #1.0
113BB8:  VLDR            S2, =0.0
113BBC:  VMOV            S16, R1
113BC0:  MOV             R8, R3
113BC2:  ADD.W           R10, SP, #0x90+var_54
113BC6:  MOV             R9, R2
113BC8:  MOV             R11, R0
113BCA:  MOVS            R4, #0
113BCC:  MOV             R0, R10
113BCE:  MOVS            R1, #4
113BD0:  MOVS            R2, #4
113BD2:  VCMP.F32        S16, S0
113BD6:  VMRS            APSR_nzcv, FPSCR
113BDA:  IT GE
113BDC:  VMOVGE.F32      S2, S16
113BE0:  VCVT.F64.F32    D16, S2
113BE4:  LDR             R3, =(a030f - 0x113BEC); "%03.0f" ...
113BE6:  STR             R4, [SP,#0x90+var_54]
113BE8:  ADD             R3, PC; "%03.0f"
113BEA:  VSTR            D16, [SP,#0x90+var_90]
113BEE:  BL              sub_113E38
113BF2:  MOV             R5, R11
113BF4:  MOVW            R1, #0xCCCD
113BF8:  LDR.W           R0, [R5,#-0x18]!
113BFC:  MOVT            R1, #0x3FCC
113C00:  LDR             R2, [R0,#0x18]
113C02:  MOV             R0, R5
113C04:  BLX             R2
113C06:  MOV             R6, R0
113C08:  LDR             R0, [R5]
113C0A:  MOVS            R1, #0x40900000
113C10:  LDR             R2, [R0,#0x18]
113C12:  MOV             R0, R5
113C14:  BLX             R2
113C16:  MOV             R1, R0
113C18:  MOV             R0, R6
113C1A:  BL              sub_163C58
113C1E:  MOVS            R0, #0
113C20:  BL              sub_163CA4
113C24:  MOVS            R0, #0
113C26:  BL              sub_163D1C
113C2A:  MOVS            R0, #3
113C2C:  BL              sub_163D80
113C30:  MOV             R0, #0xC0FFFFFF
113C34:  STR             R0, [SP,#0x90+var_58]
113C36:  ADD             R0, SP, #0x90+var_58
113C38:  BL              sub_163C74
113C3C:  ADD             R6, SP, #0x90+var_60
113C3E:  MOV             R0, R10
113C40:  STRD.W          R4, R4, [SP,#0x90+var_60]
113C44:  MOV             R1, R6
113C46:  BL              sub_163C40
113C4A:  LDR             R0, [R5]
113C4C:  MOV             R1, R5
113C4E:  LDR             R2, [R0,#0x14]
113C50:  ADD             R0, SP, #0x90+var_68
113C52:  BLX             R2
113C54:  LDR             R0, [R5]
113C56:  MOV             R1, R5
113C58:  VLDR            S20, [SP,#0x90+var_68]
113C5C:  LDR             R2, [R0,#0x14]
113C5E:  ADD             R0, SP, #0x90+var_70
113C60:  BLX             R2
113C62:  LDR             R0, [R5]
113C64:  MOV             R1, R5
113C66:  VLDR            S22, [SP,#0x90+var_6C]
113C6A:  LDR             R2, [R0,#0x4C]
113C6C:  ADD             R0, SP, #0x90+var_78
113C6E:  BLX             R2
113C70:  VMOV.F32        S18, #0.5
113C74:  VLDR            S2, [SP,#0x90+var_74]
113C78:  VMOV            S0, R9
113C7C:  MOV             R2, R6
113C7E:  VMLS.F32        S22, S2, S0
113C82:  VMOV            R1, S22
113C86:  VMUL.F32        S4, S20, S18
113C8A:  VMOV            R0, S4
113C8E:  BL              sub_163D64
113C92:  LDR.W           R0, [R11,#4]!
113C96:  CMP             R0, #0
113C98:  BEQ             loc_113D36
113C9A:  LDR             R0, [R0]
113C9C:  CMP             R0, #0
113C9E:  BEQ             loc_113D36
113CA0:  LDR             R0, [R5]
113CA2:  ADD             R2, SP, #0x90+var_70
113CA4:  MOV             R1, R5
113CA6:  VMOV            S20, R8
113CAA:  LDR             R3, [R0,#8]
113CAC:  MOV.W           R0, #0x44000000
113CB0:  STRD.W          R0, R0, [SP,#0x90+var_70]
113CB4:  ADD             R0, SP, #0x90+var_68
113CB6:  BLX             R3
113CB8:  LDR             R0, [R5]
113CBA:  MOV             R1, R5
113CBC:  LDR             R2, [R0,#0x14]
113CBE:  ADD             R0, SP, #0x90+var_70
113CC0:  BLX             R2
113CC2:  LDR             R0, [R5]
113CC4:  MOV             R1, R5
113CC6:  VLDR            S22, [SP,#0x90+var_70]
113CCA:  LDR             R2, [R0,#0x14]
113CCC:  ADD             R0, SP, #0x90+var_78
113CCE:  BLX             R2
113CD0:  LDR             R0, [R5]
113CD2:  MOV             R1, R5
113CD4:  VLDR            S24, [SP,#0x90+var_74]
113CD8:  VLDR            S26, [SP,#0x90+var_64]
113CDC:  LDR             R2, [R0,#0x4C]
113CDE:  ADD             R0, SP, #0x90+var_80
113CE0:  BLX             R2
113CE2:  VMUL.F32        S0, S26, S18
113CE6:  VLDR            S2, [SP,#0x90+var_7C]
113CEA:  VMOV.F32        S4, #-2.0
113CEE:  MOV.W           R6, #0xFFFFFFFF
113CF2:  VMLS.F32        S0, S2, S20
113CF6:  VMUL.F32        S2, S22, S18
113CFA:  VSUB.F32        S0, S24, S0
113CFE:  VMOV            R1, S2; int
113D02:  VLDR            S2, =0.016667
113D06:  VMLA.F32        S4, S16, S2
113D0A:  VMOV            R2, S0; int
113D0E:  VMOV.F32        S0, #2.0
113D12:  VCMP.F32        S4, S0
113D16:  VMRS            APSR_nzcv, FPSCR
113D1A:  IT GT
113D1C:  VMOVGT.F32      S4, S0
113D20:  LDRD.W          R3, R0, [SP,#0x90+var_68]; int
113D24:  STR             R6, [SP,#0x90+var_84]
113D26:  ADD             R6, SP, #0x90+var_84
113D28:  STR             R0, [SP,#0x90+var_90]; float
113D2A:  MOV             R0, R11; int
113D2C:  STR             R6, [SP,#0x90+var_88]; int
113D2E:  VSTR            S4, [SP,#0x90+var_90+4]
113D32:  BL              sub_163228
113D36:  ADD             SP, SP, #0x40 ; '@'
113D38:  VPOP            {D8-D13}
113D3C:  ADD             SP, SP, #4
113D3E:  POP.W           {R8-R11}
113D42:  POP             {R4-R7,PC}
