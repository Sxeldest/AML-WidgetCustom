; =========================================================
; Game Engine Function: sub_13CF14
; Address            : 0x13CF14 - 0x13CF9C
; =========================================================

13CF14:  PUSH            {R4,R6,R7,LR}
13CF16:  ADD             R7, SP, #8
13CF18:  VPUSH           {D8-D9}
13CF1C:  SUB             SP, SP, #8
13CF1E:  LDR             R1, =(off_234B7C - 0x13CF28)
13CF20:  MOV             R4, R0
13CF22:  LDR             R0, [R0,#0x54]
13CF24:  ADD             R1, PC; off_234B7C
13CF26:  LDR             R1, [R1]; dword_238EC8
13CF28:  LDR             R2, [R0]
13CF2A:  VLDR            S16, [R1]
13CF2E:  LDR             R1, [R2,#8]
13CF30:  BLX             R1
13CF32:  VMOV.F32        S18, #0.5
13CF36:  LDR             R0, [R4,#0x54]
13CF38:  VADD.F32        S2, S16, S16
13CF3C:  MOV             R1, SP
13CF3E:  VLDR            S4, [R0,#0x14]
13CF42:  VLDR            S6, [R0,#0x18]
13CF46:  MOV             R0, R4
13CF48:  VMUL.F32        S0, S16, S18
13CF4C:  VADD.F32        S2, S2, S4
13CF50:  VADD.F32        S0, S0, S0
13CF54:  VSTR            S2, [SP,#0x20+var_20]
13CF58:  VADD.F32        S0, S0, S6
13CF5C:  VSTR            S0, [SP,#0x20+var_1C]
13CF60:  BL              sub_12BD38
13CF64:  LDR             R0, [R4,#0x54]
13CF66:  MOV             R1, SP
13CF68:  VLDR            S0, [R4,#0x14]
13CF6C:  VLDR            S2, [R4,#0x18]
13CF70:  VLDR            S4, [R0,#0x14]
13CF74:  VLDR            S6, [R0,#0x18]
13CF78:  VSUB.F32        S0, S0, S4
13CF7C:  VSUB.F32        S2, S2, S6
13CF80:  VMUL.F32        S0, S0, S18
13CF84:  VMUL.F32        S2, S2, S18
13CF88:  VSTR            S0, [SP,#0x20+var_20]
13CF8C:  VSTR            S2, [SP,#0x20+var_1C]
13CF90:  BL              sub_12BD92
13CF94:  ADD             SP, SP, #8
13CF96:  VPOP            {D8-D9}
13CF9A:  POP             {R4,R6,R7,PC}
