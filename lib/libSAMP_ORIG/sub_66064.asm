; =========================================================
; Game Engine Function: sub_66064
; Address            : 0x66064 - 0x66168
; =========================================================

66064:  PUSH            {R4-R7,LR}
66066:  ADD             R7, SP, #0xC
66068:  PUSH.W          {R8}
6606C:  SUB             SP, SP, #0x10
6606E:  MOV             R4, R0
66070:  LDR             R0, [R0,#4]
66072:  CBZ             R0, loc_660D2
66074:  LDR             R5, =(off_114AA8 - 0x6607E)
66076:  LDR.W           R12, [R0]
6607A:  ADD             R5, PC; off_114AA8
6607C:  LDR.W           R8, [R5]; dword_1A4404
66080:  MOV             R5, #0x667D24
66088:  LDR.W           LR, [R8]
6608C:  ADD             R5, LR
6608E:  CMP             R12, R5
66090:  BEQ             loc_660D2
66092:  LDRH            R5, [R0,#0x26]
66094:  VMOV            S4, R3
66098:  VMOV            S0, R2
6609C:  SUBW            R6, R5, #0x219
660A0:  VMOV            S2, R1
660A4:  CMP             R6, #2
660A6:  BCC             loc_660B0
660A8:  MOVW            R6, #0x1C1
660AC:  CMP             R5, R6
660AE:  BNE             loc_660DA
660B0:  VCVT.F64.F32    D16, S2
660B4:  LDR             R1, [R4,#8]
660B6:  LDR             R0, =(unk_50D7E - 0x660BC)
660B8:  ADD             R0, PC; unk_50D7E
660BA:  VMOV            R2, R3, D16
660BE:  VCVT.F64.F32    D16, S4
660C2:  VCVT.F64.F32    D17, S0
660C6:  VSTR            D17, [SP,#0x20+var_20]
660CA:  VSTR            D16, [SP,#0x20+var_18]
660CE:  BL              sub_682E8
660D2:  ADD             SP, SP, #0x10
660D4:  POP.W           {R8}
660D8:  POP             {R4-R7,PC}
660DA:  VLDR            S4, =-3000.0
660DE:  VCMP.F32        S0, S4
660E2:  VMRS            APSR_nzcv, FPSCR
660E6:  BMI             loc_6611A
660E8:  VLDR            S6, =3000.0
660EC:  VCMP.F32        S2, S6
660F0:  VMRS            APSR_nzcv, FPSCR
660F4:  BGT             loc_6611A
660F6:  VCMP.F32        S2, S4
660FA:  VMRS            APSR_nzcv, FPSCR
660FE:  BMI             loc_6611A
66100:  VCMP.F32        S0, S6
66104:  VMRS            APSR_nzcv, FPSCR
66108:  BGT             loc_6611A
6610A:  LDR.W           R12, [R12,#0x3C]
6610E:  ADD             SP, SP, #0x10
66110:  POP.W           {R8}
66114:  POP.W           {R4-R7,LR}
66118:  BX              R12
6611A:  LDR.W           R12, [R0,#0x14]
6611E:  CMP.W           R12, #0
66122:  BEQ             loc_660D2
66124:  LDR             R0, [R0,#0x18]
66126:  STR.W           R3, [R12,#0x38]
6612A:  CMP             R0, #0
6612C:  STR.W           R2, [R12,#0x34]
66130:  STR.W           R1, [R12,#0x30]
66134:  BEQ             loc_660D2
66136:  MOVW            R1, #0xEDEF
6613A:  LDR             R0, [R0,#4]
6613C:  MOVT            R1, #0x44 ; 'D'
66140:  ADD.W           R2, LR, R1
66144:  ADD.W           R1, R0, #0x10
66148:  MOV             R0, R12
6614A:  BLX             R2
6614C:  LDR.W           R1, [R8]
66150:  MOV             R2, #0x3EBFE9
66158:  LDR             R0, [R4,#4]
6615A:  ADD             R1, R2
6615C:  ADD             SP, SP, #0x10
6615E:  POP.W           {R8}
66162:  POP.W           {R4-R7,LR}
66166:  BX              R1
