; =========================================================
; Game Engine Function: sub_155E80
; Address            : 0x155E80 - 0x155F88
; =========================================================

155E80:  PUSH            {R4-R7,LR}
155E82:  ADD             R7, SP, #0xC
155E84:  PUSH.W          {R8-R10}
155E88:  VPUSH           {D8-D9}
155E8C:  SUB             SP, SP, #0x20
155E8E:  MOV             R6, R0
155E90:  LDR             R0, [R0,#0x58]
155E92:  MOV             R5, R2
155E94:  MOV             R4, R1
155E96:  BL              sub_152694
155E9A:  CMP             R0, #0
155E9C:  BEQ             loc_155F7C
155E9E:  VMOV            S0, R5
155EA2:  VLDR            S2, =100.0
155EA6:  MOV             R8, R0
155EA8:  MOV             R0, R4
155EAA:  VCVT.F32.S32    S0, S0
155EAE:  VDIV.F32        S16, S0, S2
155EB2:  VCVT.F64.F32    D9, S16
155EB6:  BL              sub_15E670
155EBA:  VMOV            R2, R3, D9
155EBE:  MOV             R9, R0
155EC0:  ADD             R0, SP, #0x48+var_38
155EC2:  MOVS            R5, #0
155EC4:  VSTR            S16, [R8,#0x20]
155EC8:  STRD.W          R5, R5, [SP,#0x48+var_30]
155ECC:  STRB.W          R5, [SP,#0x48+var_38]
155ED0:  BL              sub_EA660
155ED4:  LDR             R1, =(aPlayerconfig - 0x155EE2); "playerConfig" ...
155ED6:  ADD.W           R10, R6, #0x60 ; '`'
155EDA:  VLDR            S18, =0.1
155EDE:  ADD             R1, PC; "playerConfig"
155EE0:  VCMP.F32        S16, S18
155EE4:  VMRS            APSR_nzcv, FPSCR
155EE8:  IT MI
155EEA:  MOVMI           R5, #1
155EEC:  MOV             R0, R10
155EEE:  BL              sub_E4710
155EF2:  MOV             R1, R9
155EF4:  BL              sub_E4710
155EF8:  LDR             R1, =(aVolume - 0x155EFE); "volume" ...
155EFA:  ADD             R1, PC; "volume"
155EFC:  BL              sub_E4710
155F00:  LDRB.W          R1, [SP,#0x48+var_38]
155F04:  LDRB            R2, [R0]
155F06:  STRB            R1, [R0]
155F08:  LDRD.W          R1, R6, [SP,#0x48+var_30]
155F0C:  LDRD.W          R3, R4, [R0,#8]
155F10:  STRD.W          R1, R6, [R0,#8]
155F14:  ADD             R0, SP, #0x48+var_38
155F16:  STRB.W          R2, [SP,#0x48+var_38]
155F1A:  STRD.W          R3, R4, [SP,#0x48+var_30]
155F1E:  BL              sub_E3F7A
155F22:  MOVS            R1, #0
155F24:  VCMP.F32        S16, S18
155F28:  MOV             R0, SP
155F2A:  STRB.W          R5, [R8,#0x1E]
155F2E:  STRD.W          R1, R1, [SP,#0x48+var_40]
155F32:  VMRS            APSR_nzcv, FPSCR
155F36:  STRB.W          R1, [SP,#0x48+var_48]
155F3A:  IT MI
155F3C:  MOVMI           R1, #1
155F3E:  BL              sub_EA862
155F42:  LDR             R1, =(aPlayerconfig - 0x155F48); "playerConfig" ...
155F44:  ADD             R1, PC; "playerConfig"
155F46:  MOV             R0, R10
155F48:  BL              sub_E4710
155F4C:  MOV             R1, R9
155F4E:  BL              sub_E4710
155F52:  LDR             R1, =(aMuted - 0x155F58); "muted" ...
155F54:  ADD             R1, PC; "muted"
155F56:  BL              sub_E4710
155F5A:  LDRB.W          R1, [SP,#0x48+var_48]
155F5E:  LDRB            R2, [R0]
155F60:  STRB            R1, [R0]
155F62:  LDRD.W          R1, R5, [SP,#0x48+var_40]
155F66:  LDRD.W          R3, R6, [R0,#8]
155F6A:  STRD.W          R1, R5, [R0,#8]
155F6E:  MOV             R0, SP
155F70:  STRB.W          R2, [SP,#0x48+var_48]
155F74:  STRD.W          R3, R6, [SP,#0x48+var_40]
155F78:  BL              sub_E3F7A
155F7C:  ADD             SP, SP, #0x20 ; ' '
155F7E:  VPOP            {D8-D9}
155F82:  POP.W           {R8-R10}
155F86:  POP             {R4-R7,PC}
