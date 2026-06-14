; =========================================================
; Game Engine Function: sub_476FD8
; Address            : 0x476FD8 - 0x4771D8
; =========================================================

476FD8:  PUSH            {R4-R7,LR}
476FDA:  ADD             R7, SP, #0xC
476FDC:  PUSH.W          {R8-R11}
476FE0:  SUB             SP, SP, #4
476FE2:  VPUSH           {D8-D15}
476FE6:  SUB             SP, SP, #8
476FE8:  MOV             R4, R0
476FEA:  LDR             R0, [R4,#0x3C]
476FEC:  CMP             R0, #1
476FEE:  BLT.W           loc_4771CA
476FF2:  LDR.W           R0, [R4,#0x158]
476FF6:  VMOV.F64        D8, #8.0
476FFA:  LDR             R6, =(unk_61D170 - 0x477008)
476FFC:  MOV.W           R10, #0
477000:  STR             R0, [SP,#0x68+var_64]
477002:  LDR             R5, [R4,#0x44]
477004:  ADD             R6, PC; unk_61D170
477006:  VMOV.F64        D9, #1.0
47700A:  VLDR            D10, =1.38703985
47700E:  VLDR            D11, =1.30656296
477012:  VLDR            D12, =1.1758756
477016:  VLDR            D13, =0.785694958
47701A:  VLDR            D14, =0.5411961
47701E:  VLDR            D15, =0.275899379
477022:  LDR.W           R9, [R5,#0x10]
477026:  CMP.W           R9, #3
47702A:  ADD.W           R0, R4, R9,LSL#2
47702E:  ADD.W           R8, R0, #0x48 ; 'H'
477032:  BHI             loc_47703E
477034:  LDR.W           R11, [R8]
477038:  CMP.W           R11, #0
47703C:  BNE             loc_477056
47703E:  LDR             R0, [R4]
477040:  MOVS            R1, #0x34 ; '4'
477042:  STR             R1, [R0,#0x14]
477044:  LDR             R0, [R4]
477046:  STR.W           R9, [R0,#0x18]
47704A:  LDR             R0, [R4]
47704C:  LDR             R1, [R0]
47704E:  MOV             R0, R4
477050:  BLX             R1
477052:  LDR.W           R11, [R8]
477056:  LDR.W           R0, [R4,#0xB8]
47705A:  MOV             R8, R5
47705C:  CMP             R0, #2
47705E:  BNE.W           loc_4771AC
477062:  LDR             R0, [SP,#0x68+var_64]
477064:  ADD.W           R5, R0, R9,LSL#2
477068:  LDR.W           R0, [R5,#0x20]!
47706C:  CBNZ            R0, loc_47707E
47706E:  LDR             R0, [R4,#4]
477070:  MOVS            R1, #1
477072:  MOV.W           R2, #0x100
477076:  LDR             R3, [R0]
477078:  MOV             R0, R4
47707A:  BLX             R3
47707C:  STR             R0, [R5]
47707E:  ADDS            R0, #0x1C
477080:  ADD.W           R1, R11, #0xE
477084:  MOVS            R2, #0
477086:  LDRH.W          R3, [R1,#-0xE]
47708A:  VMOV            S0, R3
47708E:  ADDS            R3, R6, R2
477090:  VCVT.F64.U32    D16, S0
477094:  VLDR            D17, [R3]
477098:  ADD.W           R3, R11, R2,LSL#1
47709C:  ADDS            R2, #8
47709E:  VMUL.F64        D16, D17, D16
4770A2:  CMP             R2, #0x40 ; '@'
4770A4:  VMUL.F64        D16, D16, D8
4770A8:  VDIV.F64        D16, D9, D16
4770AC:  VCVT.F32.F64    S0, D16
4770B0:  VSTR            S0, [R0,#-0x1C]
4770B4:  LDRH            R5, [R3,#2]
4770B6:  VMOV            S0, R5
4770BA:  VCVT.F64.U32    D16, S0
4770BE:  VMUL.F64        D16, D17, D16
4770C2:  VMUL.F64        D16, D16, D10
4770C6:  VMUL.F64        D16, D16, D8
4770CA:  VDIV.F64        D16, D9, D16
4770CE:  VCVT.F32.F64    S0, D16
4770D2:  VSTR            S0, [R0,#-0x18]
4770D6:  LDRH            R5, [R3,#4]
4770D8:  VMOV            S0, R5
4770DC:  VCVT.F64.U32    D16, S0
4770E0:  VMUL.F64        D16, D17, D16
4770E4:  VMUL.F64        D16, D16, D11
4770E8:  VMUL.F64        D16, D16, D8
4770EC:  VDIV.F64        D16, D9, D16
4770F0:  VCVT.F32.F64    S0, D16
4770F4:  VSTR            S0, [R0,#-0x14]
4770F8:  LDRH            R5, [R3,#6]
4770FA:  VMOV            S0, R5
4770FE:  VCVT.F64.U32    D16, S0
477102:  VMUL.F64        D16, D17, D16
477106:  VMUL.F64        D16, D16, D12
47710A:  VMUL.F64        D16, D16, D8
47710E:  VDIV.F64        D16, D9, D16
477112:  VCVT.F32.F64    S0, D16
477116:  VSTR            S0, [R0,#-0x10]
47711A:  LDRH            R5, [R3,#8]
47711C:  VMOV            S0, R5
477120:  VCVT.F64.U32    D16, S0
477124:  VMUL.F64        D16, D17, D16
477128:  VMUL.F64        D16, D16, D8
47712C:  VDIV.F64        D16, D9, D16
477130:  VCVT.F32.F64    S0, D16
477134:  VSTR            S0, [R0,#-0xC]
477138:  LDRH            R5, [R3,#0xA]
47713A:  VMOV            S0, R5
47713E:  VCVT.F64.U32    D16, S0
477142:  VMUL.F64        D16, D17, D16
477146:  VMUL.F64        D16, D16, D13
47714A:  VMUL.F64        D16, D16, D8
47714E:  VDIV.F64        D16, D9, D16
477152:  VCVT.F32.F64    S0, D16
477156:  VSTR            S0, [R0,#-8]
47715A:  LDRH            R3, [R3,#0xC]
47715C:  VMOV            S0, R3
477160:  VCVT.F64.U32    D16, S0
477164:  VMUL.F64        D16, D17, D16
477168:  VMUL.F64        D16, D16, D14
47716C:  VMUL.F64        D16, D16, D8
477170:  VDIV.F64        D16, D9, D16
477174:  VCVT.F32.F64    S0, D16
477178:  VSTR            S0, [R0,#-4]
47717C:  LDRH            R3, [R1]
47717E:  ADD.W           R1, R1, #0x10
477182:  VMOV            S0, R3
477186:  VCVT.F64.U32    D16, S0
47718A:  VMUL.F64        D16, D17, D16
47718E:  VMUL.F64        D16, D16, D15
477192:  VMUL.F64        D16, D16, D8
477196:  VDIV.F64        D16, D9, D16
47719A:  VCVT.F32.F64    S0, D16
47719E:  VSTR            S0, [R0]
4771A2:  ADD.W           R0, R0, #0x20 ; ' '
4771A6:  BNE.W           loc_477086
4771AA:  B               loc_4771BA
4771AC:  LDR             R0, [R4]
4771AE:  MOVS            R1, #0x30 ; '0'
4771B0:  STR             R1, [R0,#0x14]
4771B2:  LDR             R0, [R4]
4771B4:  LDR             R1, [R0]
4771B6:  MOV             R0, R4
4771B8:  BLX             R1
4771BA:  MOV             R5, R8
4771BC:  LDR             R0, [R4,#0x3C]
4771BE:  ADD.W           R10, R10, #1
4771C2:  ADDS            R5, #0x54 ; 'T'
4771C4:  CMP             R10, R0
4771C6:  BLT.W           loc_477022
4771CA:  ADD             SP, SP, #8
4771CC:  VPOP            {D8-D15}
4771D0:  ADD             SP, SP, #4
4771D2:  POP.W           {R8-R11}
4771D6:  POP             {R4-R7,PC}
