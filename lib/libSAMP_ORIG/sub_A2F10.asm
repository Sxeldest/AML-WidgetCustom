; =========================================================
; Game Engine Function: sub_A2F10
; Address            : 0xA2F10 - 0xA3108
; =========================================================

A2F10:  PUSH            {R4-R7,LR}
A2F12:  ADD             R7, SP, #0xC
A2F14:  PUSH.W          {R8-R11}
A2F18:  SUB             SP, SP, #0x24; float
A2F1A:  MOV             R8, R0
A2F1C:  LDR             R0, [R0,#0x58]
A2F1E:  LDR.W           R1, [R8,#0x48]
A2F22:  LDRB.W          R3, [R8,#4]
A2F26:  RSB.W           R0, R0, R0,LSL#3
A2F2A:  LDR.W           R10, [R8,#0x1C]
A2F2E:  ADD.W           R1, R1, R0,LSL#2
A2F32:  LSLS            R0, R3, #0x1E
A2F34:  ADD.W           R9, R1, #8
A2F38:  STR             R1, [SP,#0x40+var_20]
A2F3A:  BMI             loc_A2F9E
A2F3C:  LDR             R0, =(aXxxxxxxXXXxxxx - 0xA2F4C); "..-         -XXXXXXX-    X    -        "... ...
A2F3E:  ADD.W           R11, R1, #0xA
A2F42:  MOVS            R6, #0
A2F44:  MOV.W           LR, #0
A2F48:  ADD             R0, PC; "..-         -XXXXXXX-    X    -        "...
A2F4A:  MOV             R12, R0
A2F4C:  MOV             R0, R12
A2F4E:  MOVS            R5, #0
A2F50:  ADD.W           R0, R12, LR
A2F54:  LDRH.W          R4, [R11]
A2F58:  MOVS            R3, #0
A2F5A:  LDRH.W          R1, [R9]
A2F5E:  ADD             R4, R6
A2F60:  LDRB            R2, [R0,R5]
A2F62:  MLA.W           R1, R10, R4, R1
A2F66:  LDR.W           R4, [R8,#0x14]
A2F6A:  CMP             R2, #0x2E ; '.'
A2F6C:  IT EQ
A2F6E:  MOVEQ.W         R3, #0xFFFFFFFF
A2F72:  CMP             R2, #0x58 ; 'X'
A2F74:  MOV.W           R2, #0
A2F78:  ADD             R4, R1
A2F7A:  STRB            R3, [R4,R5]
A2F7C:  LDR.W           R3, [R8,#0x14]
A2F80:  IT EQ
A2F82:  MOVEQ.W         R2, #0xFFFFFFFF
A2F86:  ADD             R1, R3
A2F88:  ADD             R1, R5
A2F8A:  ADDS            R5, #1
A2F8C:  CMP             R5, #0x6C ; 'l'
A2F8E:  STRB.W          R2, [R1,#0x6D]
A2F92:  BNE             loc_A2F54
A2F94:  ADDS            R6, #1
A2F96:  ADD             LR, R5
A2F98:  CMP             R6, #0x1B
A2F9A:  BNE             loc_A2F4C
A2F9C:  B               loc_A2FCA
A2F9E:  LDRH            R0, [R1,#0xA]
A2FA0:  MOVS            R3, #0xFF
A2FA2:  LDRH.W          R1, [R9]
A2FA6:  MLA.W           R0, R10, R0, R1
A2FAA:  LDR.W           R1, [R8,#0x14]
A2FAE:  ADD.W           R2, R0, R10
A2FB2:  ADD             R1, R2
A2FB4:  STRB            R3, [R1,#1]
A2FB6:  LDR.W           R1, [R8,#0x14]
A2FBA:  STRB            R3, [R1,R2]
A2FBC:  LDR.W           R1, [R8,#0x14]
A2FC0:  ADD             R1, R0
A2FC2:  STRB            R3, [R1,#1]
A2FC4:  LDR.W           R1, [R8,#0x14]
A2FC8:  STRB            R3, [R1,R0]
A2FCA:  LDRH.W          R0, [R9]
A2FCE:  VMOV.F32        S0, #0.5
A2FD2:  VLDR            S6, [R8,#0x28]
A2FD6:  LDR.W           R2, [R8,#0x40]
A2FDA:  VMOV            S2, R0
A2FDE:  LDR             R0, [SP,#0x40+var_20]
A2FE0:  CMP             R2, #1
A2FE2:  VCVT.F32.U32    S2, S2
A2FE6:  LDRH            R0, [R0,#0xA]
A2FE8:  VMOV            S4, R0
A2FEC:  VCVT.F32.U32    S4, S4
A2FF0:  VADD.F32        S2, S2, S0
A2FF4:  VADD.F32        S0, S4, S0
A2FF8:  VLDR            S4, [R8,#0x24]
A2FFC:  VMUL.F32        S2, S4, S2
A3000:  VMUL.F32        S0, S6, S0
A3004:  VSTR            S2, [R8,#0x2C]
A3008:  VSTR            S0, [R8,#0x30]
A300C:  BLT             loc_A30D4
A300E:  MOVS            R5, #0
A3010:  MOVS            R6, #0x18
A3012:  B               loc_A301C
A3014:  ADDS            R5, #1
A3016:  ADDS            R6, #0x1C
A3018:  CMP             R5, R2
A301A:  BGE             loc_A30D4
A301C:  LDR.W           R1, [R8,#0x48]
A3020:  LDR             R0, [R1,R6]; int
A3022:  CMP             R0, #0
A3024:  BEQ             loc_A3014
A3026:  ADD             R1, R6
A3028:  LDR.W           R12, [R1,#-0x18]
A302C:  CMP.W           R12, #0x10000
A3030:  BHI             loc_A3014
A3032:  LDRH.W          R3, [R1,#-0x12]
A3036:  LDRH.W          R4, [R1,#-0xE]
A303A:  VLDR            S0, [R1,#-8]
A303E:  VLDR            S12, [R1,#-4]
A3042:  VMOV            S8, R3
A3046:  VMOV            S10, R4
A304A:  ADD             R4, R3
A304C:  LDRH.W          LR, [R1,#-0x14]
A3050:  VMOV            R2, S0; int
A3054:  LDRH.W          R9, [R1,#-0x10]
A3058:  VMOV            R3, S12; int
A305C:  VMOV            S1, R4
A3060:  VLDR            S2, [R8,#0x24]
A3064:  ADD.W           R4, LR, R9
A3068:  VMOV            S6, LR
A306C:  VMOV            S14, R9
A3070:  VLDR            S4, [R8,#0x28]
A3074:  VMOV            S3, R4
A3078:  LDR.W           R1, [R1,#-0xC]
A307C:  VCVT.F32.U32    S8, S8
A3080:  STR             R1, [SP,#0x40+var_28]; float
A3082:  VCVT.F32.U32    S10, S10
A3086:  UXTH.W          R1, R12; int
A308A:  VCVT.F32.U32    S14, S14
A308E:  VCVT.F32.U32    S6, S6
A3092:  VCVT.F32.S32    S1, S1
A3096:  VCVT.F32.S32    S3, S3
A309A:  VADD.F32        S8, S12, S8
A309E:  VMUL.F32        S10, S4, S10
A30A2:  VMUL.F32        S14, S2, S14
A30A6:  VADD.F32        S0, S0, S6
A30AA:  VMUL.F32        S4, S4, S1
A30AE:  VMUL.F32        S2, S2, S3
A30B2:  VSTR            S8, [SP,#0x40+var_3C]
A30B6:  VSTR            S10, [SP,#0x40+var_34]
A30BA:  VSTR            S14, [SP,#0x40+var_38]
A30BE:  VSTR            S0, [SP,#0x40+var_40]
A30C2:  VSTR            S4, [SP,#0x40+var_2C]
A30C6:  VSTR            S2, [SP,#0x40+var_30]
A30CA:  BL              sub_A2DDC
A30CE:  LDR.W           R2, [R8,#0x40]
A30D2:  B               loc_A3014
A30D4:  LDR.W           R1, [R8,#0x34]
A30D8:  CMP             R1, #1
A30DA:  BLT             loc_A3100
A30DC:  MOVS            R5, #0
A30DE:  B               loc_A30E6
A30E0:  ADDS            R5, #1
A30E2:  CMP             R5, R1
A30E4:  BGE             loc_A3100
A30E6:  LDR.W           R0, [R8,#0x3C]
A30EA:  LDR.W           R0, [R0,R5,LSL#2]
A30EE:  LDRB.W          R2, [R0,#0x54]
A30F2:  CMP             R2, #0
A30F4:  BEQ             loc_A30E0
A30F6:  BL              sub_A3138
A30FA:  LDR.W           R1, [R8,#0x34]
A30FE:  B               loc_A30E0
A3100:  ADD             SP, SP, #0x24 ; '$'
A3102:  POP.W           {R8-R11}
A3106:  POP             {R4-R7,PC}
