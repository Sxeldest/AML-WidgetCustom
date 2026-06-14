; =========================================================
; Game Engine Function: sub_12AE34
; Address            : 0x12AE34 - 0x12B006
; =========================================================

12AE34:  PUSH            {R4-R7,LR}
12AE36:  ADD             R7, SP, #0xC
12AE38:  PUSH.W          {R8-R11}
12AE3C:  SUB             SP, SP, #4
12AE3E:  VPUSH           {D10-D11}
12AE42:  VPUSH           {D8}
12AE46:  SUB             SP, SP, #0x38
12AE48:  LDRB            R6, [R3]
12AE4A:  MOV             R4, R0
12AE4C:  LDR             R0, [R3,#4]
12AE4E:  ANDS.W          R12, R6, #1
12AE52:  IT EQ
12AE54:  LSREQ           R0, R6, #1
12AE56:  CMP             R0, #0
12AE58:  BEQ.W           loc_12AFF4
12AE5C:  VLDR            S16, [R7,#arg_4]
12AE60:  MOV             R5, R1
12AE62:  VMOV.I32        Q5, #0
12AE66:  MOV.W           R10, #0
12AE6A:  VCMP.F32        S16, #0.0
12AE6E:  VMRS            APSR_nzcv, FPSCR
12AE72:  ITT EQ
12AE74:  LDREQ           R6, [R4,#8]
12AE76:  VLDREQ          S16, [R6,#0x10]
12AE7A:  LDRD.W          LR, R1, [R5]
12AE7E:  CMP.W           R12, #0
12AE82:  STRD.W          LR, R1, [SP,#0x70+var_40]
12AE86:  ADD             R1, SP, #0x70+var_50
12AE88:  VLD1.32         {D16-D17}, [R2]
12AE8C:  LDR             R6, [R3,#8]
12AE8E:  VST1.64         {D16-D17}, [R1]
12AE92:  IT EQ
12AE94:  ADDEQ           R6, R3, #1
12AE96:  ADD.W           R8, R6, R0
12AE9A:  MOV             R11, R6
12AE9C:  LDRB            R0, [R6]
12AE9E:  CMP             R0, #9
12AEA0:  BLE             loc_12AF3A
12AEA2:  CMP             R0, #0xA
12AEA4:  BEQ             loc_12AF92
12AEA6:  CMP             R0, #0x7B ; '{'
12AEA8:  BNE.W           loc_12AFD2
12AEAC:  ADD.W           R9, R6, #7
12AEB0:  CMP             R9, R8
12AEB2:  BCS.W           loc_12AFD2
12AEB6:  LDRB.W          R0, [R9]
12AEBA:  CMP             R0, #0x7D ; '}'
12AEBC:  BNE.W           loc_12AFD2
12AEC0:  CMP             R6, R11
12AEC2:  BEQ             loc_12AF18
12AEC4:  LDR             R0, [R7,#arg_0]
12AEC6:  ADD             R1, SP, #0x70+var_40; int
12AEC8:  ADD             R2, SP, #0x70+var_50; int
12AECA:  STR             R0, [SP,#0x70+var_6C]; int
12AECC:  MOV             R0, R4; int
12AECE:  MOV             R3, R11; int
12AED0:  VSTR            S16, [SP,#0x70+var_68]
12AED4:  STR             R6, [SP,#0x70+var_70]; int
12AED6:  BL              sub_12ACA8
12AEDA:  VCMP.F32        S16, #0.0
12AEDE:  LDR             R1, [R4,#8]; int
12AEE0:  VMOV.F32        S0, S16
12AEE4:  VMRS            APSR_nzcv, FPSCR
12AEE8:  IT EQ
12AEEA:  VLDREQ          S0, [R1,#0x10]
12AEEE:  VMOV            R2, S0; int
12AEF2:  MOVW            R3, #0xFFFF
12AEF6:  ADD             R0, SP, #0x70+var_60; int
12AEF8:  MOVT            R3, #0x7F7F; int
12AEFC:  STRD.W          R10, R11, [SP,#0x70+var_70]; float
12AF00:  STRD.W          R6, R10, [SP,#0x70+var_68]; int
12AF04:  BL              sub_178B18
12AF08:  VLDR            S0, [SP,#0x70+var_40]
12AF0C:  VLDR            S2, [SP,#0x70+var_60]
12AF10:  VADD.F32        S0, S2, S0
12AF14:  VSTR            S0, [SP,#0x70+var_40]
12AF18:  ADD             R3, SP, #0x70+var_60
12AF1A:  ADDS            R1, R6, #1
12AF1C:  MOV             R2, R9
12AF1E:  VST1.64         {D10-D11}, [R3]
12AF22:  BL              sub_12B008
12AF26:  CBZ             R0, loc_12AF34
12AF28:  ADD             R0, SP, #0x70+var_60
12AF2A:  VLD1.64         {D16-D17}, [R0]
12AF2E:  ADD             R0, SP, #0x70+var_50
12AF30:  VST1.64         {D16-D17}, [R0]
12AF34:  ADD.W           R11, R6, #8
12AF38:  B               loc_12AFD4
12AF3A:  BNE             loc_12AFBE
12AF3C:  CMP             R6, R11
12AF3E:  BEQ             loc_12AFC2
12AF40:  LDR             R0, [R7,#arg_0]
12AF42:  ADD             R1, SP, #0x70+var_40; int
12AF44:  ADD             R2, SP, #0x70+var_50; int
12AF46:  STR             R0, [SP,#0x70+var_6C]; int
12AF48:  MOV             R0, R4; int
12AF4A:  MOV             R3, R11; int
12AF4C:  VSTR            S16, [SP,#0x70+var_68]
12AF50:  STR             R6, [SP,#0x70+var_70]; int
12AF52:  BL              sub_12ACA8
12AF56:  VCMP.F32        S16, #0.0
12AF5A:  LDR             R1, [R4,#8]; int
12AF5C:  VMOV.F32        S0, S16
12AF60:  VMRS            APSR_nzcv, FPSCR
12AF64:  IT EQ
12AF66:  VLDREQ          S0, [R1,#0x10]
12AF6A:  VMOV            R2, S0; int
12AF6E:  MOVW            R3, #0xFFFF
12AF72:  ADD             R0, SP, #0x70+var_60; int
12AF74:  MOVT            R3, #0x7F7F; int
12AF78:  STRD.W          R10, R11, [SP,#0x70+var_70]; float
12AF7C:  STRD.W          R6, R10, [SP,#0x70+var_68]; int
12AF80:  BL              sub_178B18
12AF84:  VLDR            S0, [SP,#0x70+var_40]
12AF88:  VLDR            S2, [SP,#0x70+var_60]
12AF8C:  VADD.F32        S0, S2, S0
12AF90:  B               loc_12AFC6
12AF92:  CMP             R6, R11
12AF94:  BEQ             loc_12AFAC
12AF96:  LDR             R0, [R7,#arg_0]
12AF98:  ADD             R1, SP, #0x70+var_40; int
12AF9A:  ADD             R2, SP, #0x70+var_50; int
12AF9C:  STR             R0, [SP,#0x70+var_6C]; int
12AF9E:  MOV             R0, R4; int
12AFA0:  MOV             R3, R11; int
12AFA2:  VSTR            S16, [SP,#0x70+var_68]
12AFA6:  STR             R6, [SP,#0x70+var_70]; int
12AFA8:  BL              sub_12ACA8
12AFAC:  VLDR            S0, [SP,#0x70+var_3C]
12AFB0:  LDR             R0, [R5]
12AFB2:  VADD.F32        S0, S16, S0
12AFB6:  STR             R0, [SP,#0x70+var_40]
12AFB8:  VSTR            S0, [SP,#0x70+var_3C]
12AFBC:  B               loc_12AFCE
12AFBE:  CBNZ            R0, loc_12AFD2
12AFC0:  B               loc_12AFDA
12AFC2:  VLDR            S0, [SP,#0x70+var_40]
12AFC6:  VADD.F32        S0, S16, S0
12AFCA:  VSTR            S0, [SP,#0x70+var_40]
12AFCE:  ADD.W           R11, R6, #1
12AFD2:  MOV             R9, R6
12AFD4:  ADD.W           R6, R9, #1
12AFD8:  B               loc_12AE9C
12AFDA:  CMP             R6, R11
12AFDC:  BEQ             loc_12AFF4
12AFDE:  LDR             R0, [R7,#arg_0]
12AFE0:  ADD             R1, SP, #0x70+var_40; int
12AFE2:  ADD             R2, SP, #0x70+var_50; int
12AFE4:  STR             R0, [SP,#0x70+var_6C]; int
12AFE6:  MOV             R0, R4; int
12AFE8:  MOV             R3, R11; int
12AFEA:  VSTR            S16, [SP,#0x70+var_68]
12AFEE:  STR             R6, [SP,#0x70+var_70]; int
12AFF0:  BL              sub_12ACA8
12AFF4:  ADD             SP, SP, #0x38 ; '8'
12AFF6:  VPOP            {D8}
12AFFA:  VPOP            {D10-D11}
12AFFE:  ADD             SP, SP, #4
12B000:  POP.W           {R8-R11}
12B004:  POP             {R4-R7,PC}
