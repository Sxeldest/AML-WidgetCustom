; =========================================================
; Game Engine Function: sub_113E58
; Address            : 0x113E58 - 0x113F38
; =========================================================

113E58:  PUSH            {R4-R7,LR}
113E5A:  ADD             R7, SP, #0xC
113E5C:  PUSH.W          {R11}
113E60:  VPUSH           {D8-D11}
113E64:  SUB             SP, SP, #0x40
113E66:  MOV             R5, R0
113E68:  LDR             R0, [R0]
113E6A:  ADDS            R4, R5, #4
113E6C:  MOV             R1, R5
113E6E:  LDR             R3, [R0,#8]
113E70:  ADD             R0, SP, #0x70+var_38
113E72:  MOV             R2, R4
113E74:  BLX             R3
113E76:  LDR             R0, [R5]
113E78:  MOV             R1, R5
113E7A:  MOV             R2, R4
113E7C:  VLDR            S16, [SP,#0x70+var_38]
113E80:  LDR             R3, [R0,#8]
113E82:  ADD             R0, SP, #0x70+var_40
113E84:  BLX             R3
113E86:  VLDR            S0, [SP,#0x70+var_3C]
113E8A:  VCMP.F32        S16, S0
113E8E:  VMRS            APSR_nzcv, FPSCR
113E92:  BNE             loc_113EAE
113E94:  LDR             R0, [R5]
113E96:  MOV             R1, R5
113E98:  MOV             R2, R4
113E9A:  LDR             R3, [R0,#8]
113E9C:  ADD             R0, SP, #0x70+var_48
113E9E:  BLX             R3
113EA0:  VLDR            S0, [SP,#0x70+var_48]
113EA4:  VCMP.F32        S0, #0.0
113EA8:  VMRS            APSR_nzcv, FPSCR
113EAC:  BEQ             loc_113F2C
113EAE:  LDR.W           R0, [R5,#-0x10]!
113EB2:  MOV             R1, R5
113EB4:  LDR             R2, [R0,#0x14]
113EB6:  ADD             R0, SP, #0x70+var_38
113EB8:  BLX             R2
113EBA:  LDR             R0, [R5]
113EBC:  MOV             R1, R5
113EBE:  VLDR            S16, [SP,#0x70+var_38]
113EC2:  LDR             R2, [R0,#0x4C]
113EC4:  ADD             R0, SP, #0x70+var_40
113EC6:  BLX             R2
113EC8:  LDR             R0, [R5]
113ECA:  MOV             R1, R5
113ECC:  VLDR            S18, [SP,#0x70+var_40]
113ED0:  LDR             R2, [R0,#0x14]
113ED2:  ADD             R0, SP, #0x70+var_48
113ED4:  BLX             R2
113ED6:  LDR             R0, [R5]
113ED8:  MOV             R1, R5
113EDA:  VLDR            S20, [SP,#0x70+var_44]
113EDE:  LDR             R2, [R0,#0x4C]
113EE0:  ADD             R0, SP, #0x70+var_50
113EE2:  BLX             R2
113EE4:  LDR             R0, [R5]
113EE6:  MOV             R1, R5
113EE8:  VLDR            S22, [SP,#0x70+var_4C]
113EEC:  LDR             R2, [R0,#0x4C]
113EEE:  ADD             R0, SP, #0x70+var_58
113EF0:  BLX             R2
113EF2:  LDR             R0, [R5]
113EF4:  MOV             R1, R5
113EF6:  LDR             R6, [SP,#0x70+var_58]
113EF8:  LDR             R2, [R0,#0x4C]
113EFA:  ADD             R0, SP, #0x70+var_60
113EFC:  BLX             R2
113EFE:  VMOV.F32        S0, #0.5
113F02:  MOV.W           R3, #0xFFFFFFFF
113F06:  VSUB.F32        S2, S16, S18
113F0A:  STR             R3, [SP,#0x70+var_64]
113F0C:  ADD             R3, SP, #0x70+var_64
113F0E:  LDR             R0, [SP,#0x70+var_5C]
113F10:  STRD.W          R0, R3, [SP,#0x70+var_70]
113F14:  MOV             R0, R4
113F16:  MOV             R3, R6
113F18:  VMUL.F32        S0, S2, S0
113F1C:  VSUB.F32        S2, S20, S22
113F20:  VMOV            R1, S0
113F24:  VMOV            R2, S2
113F28:  BL              sub_163176
113F2C:  ADD             SP, SP, #0x40 ; '@'
113F2E:  VPOP            {D8-D11}
113F32:  POP.W           {R11}
113F36:  POP             {R4-R7,PC}
