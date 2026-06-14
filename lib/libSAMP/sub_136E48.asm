; =========================================================
; Game Engine Function: sub_136E48
; Address            : 0x136E48 - 0x136F88
; =========================================================

136E48:  PUSH            {R4,R5,R7,LR}
136E4A:  ADD             R7, SP, #8
136E4C:  VPUSH           {D8}
136E50:  SUB             SP, SP, #0x18
136E52:  MOV             R4, R0
136E54:  LDR             R0, [R0,#0x54]
136E56:  CMP             R0, #0
136E58:  BEQ.W           loc_136F80
136E5C:  LDR             R1, =(off_234980 - 0x136E64)
136E5E:  LDR             R2, =(off_234B7C - 0x136E66)
136E60:  ADD             R1, PC; off_234980
136E62:  ADD             R2, PC; off_234B7C
136E64:  LDR             R1, [R1]; dword_238EC0
136E66:  LDR             R5, [R2]; dword_238EC8
136E68:  VLDR            S0, [R1]
136E6C:  VLDR            S2, [R5]
136E70:  LDR             R1, [R4,#0x24]
136E72:  VADD.F32        S0, S2, S0
136E76:  VADD.F32        S16, S2, S0
136E7A:  VLDR            S0, [R4,#0x28]
136E7E:  STR             R1, [R0,#0x24]
136E80:  VSUB.F32        S0, S0, S16
136E84:  VSTR            S0, [R0,#0x28]
136E88:  VLDR            S0, [R4,#0x20]
136E8C:  LDR             R0, [R4,#0x54]
136E8E:  VSUB.F32        S0, S0, S16
136E92:  LDR             R1, [R4,#0x1C]
136E94:  STR             R1, [R0,#0x1C]
136E96:  VSTR            S0, [R0,#0x20]
136E9A:  LDR             R0, [R4,#0x54]
136E9C:  LDR             R1, [R0]
136E9E:  LDR             R1, [R1,#8]
136EA0:  BLX             R1
136EA2:  LDR             R0, [R4,#0x58]
136EA4:  LDR             R1, [R0]
136EA6:  LDR             R1, [R1,#8]
136EA8:  BLX             R1
136EAA:  LDR             R0, [R4,#0x58]
136EAC:  ADD             R1, SP, #0x28+var_18
136EAE:  VLDR            S0, [R5]
136EB2:  VSTR            S0, [SP,#0x28+var_14]
136EB6:  VSTR            S0, [SP,#0x28+var_18]
136EBA:  BL              sub_12BD92
136EBE:  LDR             R0, [R4,#0x5C]
136EC0:  LDR             R1, [R0]
136EC2:  LDR             R1, [R1,#8]
136EC4:  BLX             R1
136EC6:  LDR             R0, [R4,#0x5C]
136EC8:  VLDR            S0, [R5]
136ECC:  LDR             R1, [R4,#0x54]
136ECE:  VLDR            S2, [R0,#0x14]
136ED2:  VSTR            S0, [SP,#0x28+var_14]
136ED6:  VADD.F32        S2, S2, S0
136EDA:  VLDR            S4, [R1,#0x14]
136EDE:  ADD             R1, SP, #0x28+var_18
136EE0:  VSUB.F32        S2, S4, S2
136EE4:  VSTR            S2, [SP,#0x28+var_18]
136EE8:  BL              sub_12BD92
136EEC:  MOVS            R1, #0
136EEE:  LDR             R0, [R4,#0x54]
136EF0:  STR             R1, [SP,#0x28+var_18]
136EF2:  ADD             R1, SP, #0x28+var_18
136EF4:  VSTR            S16, [SP,#0x28+var_14]
136EF8:  BL              sub_12BD92
136EFC:  LDR             R0, [R4,#0x54]
136EFE:  VLDR            S0, [R0,#0x14]
136F02:  VLDR            S2, [R0,#0x18]
136F06:  MOVS            R0, #4; prio
136F08:  VCVT.F64.F32    D17, S0
136F0C:  LDR             R1, =(aAxl - 0x136F14); "AXL" ...
136F0E:  LDR             R2, =(aMTablistSize1f - 0x136F16); "m_tabList size: %.1f, %.1f" ...
136F10:  ADD             R1, PC; "AXL"
136F12:  ADD             R2, PC; "m_tabList size: %.1f, %.1f"
136F14:  VCVT.F64.F32    D16, S2
136F18:  VSTR            D17, [SP,#0x28+var_28]
136F1C:  VSTR            D16, [SP,#0x28+var_20]
136F20:  BLX             __android_log_print
136F24:  LDR             R0, [R4,#0x54]
136F26:  ADD             R1, SP, #0x28+var_18
136F28:  VLDR            S4, =0.0
136F2C:  VLDR            S0, [R0,#0x14]
136F30:  VLDR            S2, [R0,#0x18]
136F34:  MOV             R0, R4
136F36:  VADD.F32        S0, S0, S4
136F3A:  VADD.F32        S2, S16, S2
136F3E:  VSTR            S0, [SP,#0x28+var_18]
136F42:  VSTR            S2, [SP,#0x28+var_14]
136F46:  BL              sub_12BD38
136F4A:  LDR             R0, [R4,#8]
136F4C:  VMOV.F32        S8, #0.5
136F50:  VLDR            S0, [R4,#0x14]
136F54:  ADD             R1, SP, #0x28+var_18
136F56:  VLDR            S2, [R4,#0x18]
136F5A:  VLDR            S4, [R0,#0x14]
136F5E:  VLDR            S6, [R0,#0x18]
136F62:  MOV             R0, R4
136F64:  VSUB.F32        S0, S4, S0
136F68:  VSUB.F32        S2, S6, S2
136F6C:  VMUL.F32        S0, S0, S8
136F70:  VMUL.F32        S2, S2, S8
136F74:  VSTR            S0, [SP,#0x28+var_18]
136F78:  VSTR            S2, [SP,#0x28+var_14]
136F7C:  BL              sub_12BD92
136F80:  ADD             SP, SP, #0x18
136F82:  VPOP            {D8}
136F86:  POP             {R4,R5,R7,PC}
