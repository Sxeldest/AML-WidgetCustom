; =========================================================
; Game Engine Function: sub_FA0E8
; Address            : 0xFA0E8 - 0xFA17A
; =========================================================

FA0E8:  PUSH            {R4-R7,LR}
FA0EA:  ADD             R7, SP, #0xC
FA0EC:  PUSH.W          {R11}
FA0F0:  SUB             SP, SP, #0x38
FA0F2:  MOV             R6, R0
FA0F4:  MOV             R4, R0
FA0F6:  LDR.W           R1, [R6,#0x50]!
FA0FA:  CBZ             R1, loc_FA108
FA0FC:  LDR             R0, =(unk_B2E44 - 0xFA102)
FA0FE:  ADD             R0, PC; unk_B2E44
FA100:  BL              sub_107188
FA104:  MOVS            R0, #0
FA106:  STR             R0, [R6]
FA108:  VLDR            S0, [R4,#0x2C]
FA10C:  MOVS            R5, #0
FA10E:  VLDR            S2, [R4,#0x30]
FA112:  VCVT.F64.F32    D16, S0
FA116:  VMOV            R2, R3, D16
FA11A:  VLDR            S4, [R4,#0x34]
FA11E:  VLDR            S6, [R4,#0x38]
FA122:  VLDR            S8, [R4,#0x3C]
FA126:  VLDR            S10, [R4,#0x40]
FA12A:  VLDR            S0, [R4,#0x48]
FA12E:  VCVT.F64.F32    D16, S10
FA132:  LDR             R0, =(unk_B2E30 - 0xFA13C)
FA134:  LDRB.W          R1, [R4,#0x44]
FA138:  ADD             R0, PC; unk_B2E30
FA13A:  STRB            R5, [R4,#1]
FA13C:  STR             R6, [SP,#0x48+var_18]
FA13E:  VCVT.F64.F32    D17, S8
FA142:  VCVT.F64.F32    D18, S6
FA146:  VCVT.F64.F32    D19, S4
FA14A:  VCVT.F64.F32    D20, S2
FA14E:  VCVT.F64.F32    D21, S0
FA152:  VSTR            D20, [SP,#0x48+var_48]
FA156:  VSTR            D19, [SP,#0x48+var_40]
FA15A:  VSTR            D18, [SP,#0x48+var_38]
FA15E:  VSTR            D17, [SP,#0x48+var_30]
FA162:  VSTR            D16, [SP,#0x48+var_28]
FA166:  VSTR            D21, [SP,#0x48+var_20]
FA16A:  BL              sub_107188
FA16E:  MOVS            R0, #1
FA170:  STRB            R0, [R4,#1]
FA172:  ADD             SP, SP, #0x38 ; '8'
FA174:  POP.W           {R11}
FA178:  POP             {R4-R7,PC}
