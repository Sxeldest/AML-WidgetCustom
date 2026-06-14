; =========================================================
; Game Engine Function: sub_258E98
; Address            : 0x258E98 - 0x259238
; =========================================================

258E98:  PUSH            {R4-R7,LR}
258E9A:  ADD             R7, SP, #0xC
258E9C:  PUSH.W          {R8-R10}
258EA0:  SUB             SP, SP, #0x20
258EA2:  MOV             R4, R2
258EA4:  MOV             R8, R3
258EA6:  MOV             R10, R1
258EA8:  MOV             R6, R0
258EAA:  CMP.W           R4, #0x1200
258EAE:  BGT.W           loc_258F70
258EB2:  MOVW            R0, #0x1001
258EB6:  SUBS            R0, R4, R0
258EB8:  CMP             R0, #0x32 ; '2'; switch 51 cases
258EBA:  BHI.W           def_258EBE; jumptable 00258EBE default case
258EBE:  TBH.W           [PC,R0,LSL#1]; switch jump
258EC2:  DCW 0xD0; jump table for switch statement
258EC4:  DCW 0xD3
258EC6:  DCW 0xD6
258EC8:  DCW 0xD9
258ECA:  DCW 0xF1
258ECC:  DCW 0x109
258ECE:  DCW 0x75
258ED0:  DCW 0xA3
258ED2:  DCW 0x75
258ED4:  DCW 0x128
258ED6:  DCW 0xA3
258ED8:  DCW 0xA3
258EDA:  DCW 0x12B
258EDC:  DCW 0x12E
258EDE:  DCW 0xA3
258EE0:  DCW 0x75
258EE2:  DCW 0xA3
258EE4:  DCW 0xA3
258EE6:  DCW 0xA3
258EE8:  DCW 0xA3
258EEA:  DCW 0x75
258EEC:  DCW 0x75
258EEE:  DCW 0xA3
258EF0:  DCW 0xA3
258EF2:  DCW 0xA3
258EF4:  DCW 0xA3
258EF6:  DCW 0xA3
258EF8:  DCW 0xA3
258EFA:  DCW 0xA3
258EFC:  DCW 0xA3
258EFE:  DCW 0xA3
258F00:  DCW 0x131
258F02:  DCW 0x134
258F04:  DCW 0x137
258F06:  DCW 0x13A
258F08:  DCW 0x33
258F0A:  DCW 0x33
258F0C:  DCW 0x33
258F0E:  DCW 0x75
258F10:  DCW 0xA3
258F12:  DCW 0xA3
258F14:  DCW 0xA3
258F16:  DCW 0xA3
258F18:  DCW 0xA3
258F1A:  DCW 0xA3
258F1C:  DCW 0xA3
258F1E:  DCW 0xA3
258F20:  DCW 0xA3
258F22:  DCW 0x83
258F24:  DCW 0x83
258F26:  DCW 0x75
258F28:  LDR.W           R0, [R10,#0x88]; jumptable 00258EBE cases 35-37
258F2C:  MOV             R9, #0x161AC
258F34:  LDR.W           R1, [R0,R9]
258F38:  LDR             R1, [R1,#0x2C]
258F3A:  BLX             R1
258F3C:  LDR.W           R0, [R10,#0x88]
258F40:  ADD             R2, SP, #0x38+var_28
258F42:  MOV             R1, R4
258F44:  VLDR            S0, [R0,#0x10]
258F48:  VLDR            S2, [R0,#0x14]
258F4C:  MOV             R0, R6
258F4E:  VCVT.F64.U32    D16, S0
258F52:  VCVT.F64.U32    D17, S2
258F56:  VDIV.F64        D0, D17, D16
258F5A:  BL              sub_265130
258F5E:  LDR.W           R0, [R10,#0x88]
258F62:  LDR.W           R1, [R0,R9]
258F66:  LDR             R1, [R1,#0x30]
258F68:  BLX             R1
258F6A:  VLDR            D16, [SP,#0x38+var_28]
258F6E:  B               loc_25918C
258F70:  MOVS            R0, #0x20006
258F76:  CMP             R4, R0
258F78:  BLE             loc_258F94
258F7A:  SUB.W           R0, R4, #0x20000; switch 6 cases
258F7E:  SUBS            R0, #7
258F80:  CMP             R0, #5
258F82:  BHI             def_258F84; jumptable 00258EBE cases 7,10,11,14,16-19,22-30,39-47
258F84:  TBB.W           [PC,R0]; switch jump
258F88:  DCB 3; jump table for switch statement
258F89:  DCB 0xDA
258F8A:  DCB 0xDD
258F8B:  DCB 0x12
258F8C:  DCB 0x12
258F8D:  DCB 0x12
258F8E:  VLDR            S0, [R6,#0x5C]; jumptable 00258F84 case 131079
258F92:  B               loc_259188
258F94:  MOVW            R0, #0x1201
258F98:  CMP             R4, R0
258F9A:  BEQ.W           loc_259148
258F9E:  CMP.W           R4, #0xC000
258FA2:  BEQ.W           loc_259184
258FA6:  CMP.W           R4, #0xD000
258FAA:  BNE             def_258F84; jumptable 00258EBE cases 7,10,11,14,16-19,22-30,39-47
258FAC:  ADD             R3, SP, #0x38+var_34; jumptable 00258EBE cases 6,8,15,20,21,38,50
258FAE:  MOV             R0, R6
258FB0:  MOV             R1, R10
258FB2:  MOV             R2, R4
258FB4:  BL              sub_259AC0
258FB8:  CMP             R0, #0
258FBA:  BNE.W           loc_259230
258FBE:  VLDR            S0, [SP,#0x38+var_34]
258FC2:  VCVT.F64.S32    D16, S0
258FC6:  B               loc_25918C
258FC8:  LDR.W           R0, [R10,#0x88]; jumptable 00258EBE cases 48,49
258FCC:  MOV             R9, #0x161AC
258FD4:  LDR.W           R1, [R0,R9]
258FD8:  LDR             R1, [R1,#0x2C]
258FDA:  BLX             R1
258FDC:  LDR.W           R0, [R10,#0x88]
258FE0:  MOV             R1, R4
258FE2:  MOV             R2, R8
258FE4:  VLDR            S0, [R0,#0x10]
258FE8:  VLDR            S2, [R0,#0x14]
258FEC:  MOV             R0, R6
258FEE:  VCVT.F64.U32    D16, S0
258FF2:  VCVT.F64.U32    D17, S2
258FF6:  VDIV.F64        D0, D17, D16
258FFA:  BL              sub_265130
258FFE:  B               loc_259222
259000:  MOVW            R0, #0x202; jumptable 00258EBE default case
259004:  CMP             R4, R0
259006:  BEQ             loc_258FAC; jumptable 00258EBE cases 6,8,15,20,21,38,50
259008:  LDR             R0, =(LogLevel_ptr - 0x25900E); jumptable 00258EBE cases 7,10,11,14,16-19,22-30,39-47
25900A:  ADD             R0, PC; LogLevel_ptr
25900C:  LDR             R0, [R0]; LogLevel
25900E:  LDR             R0, [R0]
259010:  CBZ             R0, loc_259022
259012:  LDR             R0, =(aEe - 0x25901E); "(EE)"
259014:  ADR             R1, aGetsourcedv; "GetSourcedv"
259016:  LDR             R2, =(aUnexpectedProp - 0x259020); "Unexpected property: 0x%04x\n"
259018:  MOV             R3, R4
25901A:  ADD             R0, PC; "(EE)"
25901C:  ADD             R2, PC; "Unexpected property: 0x%04x\n"
25901E:  BLX             j_al_print
259022:  LDR             R0, =(TrapALError_ptr - 0x259028)
259024:  ADD             R0, PC; TrapALError_ptr
259026:  LDR             R0, [R0]; TrapALError
259028:  LDRB            R0, [R0]
25902A:  CMP             R0, #0
25902C:  ITT NE
25902E:  MOVNE           R0, #5; sig
259030:  BLXNE           raise
259034:  LDREX.W         R0, [R10,#0x50]
259038:  CBNZ            R0, loc_259054
25903A:  ADD.W           R0, R10, #0x50 ; 'P'
25903E:  MOVW            R1, #0xA002
259042:  DMB.W           ISH
259046:  STREX.W         R2, R1, [R0]
25904A:  CBZ             R2, loc_259058
25904C:  LDREX.W         R2, [R0]
259050:  CMP             R2, #0
259052:  BEQ             loc_259046
259054:  CLREX.W
259058:  MOVW            R0, #0xA002
25905C:  DMB.W           ISH
259060:  B               loc_259230
259062:  VLDR            S0, [R6,#0x14]; jumptable 00258EBE case 0
259066:  B               loc_259188
259068:  VLDR            S0, [R6,#0x18]; jumptable 00258EBE case 1
25906C:  B               loc_259188
25906E:  VLDR            S0, [R6]; jumptable 00258EBE case 2
259072:  B               loc_259188
259074:  LDR.W           R0, [R10,#0x88]; jumptable 00258EBE case 3
259078:  MOV             R4, #0x161AC
259080:  LDR             R1, [R0,R4]
259082:  LDR             R1, [R1,#0x2C]
259084:  BLX             R1
259086:  VLDR            S0, [R6,#0x28]
25908A:  VCVT.F64.F32    D16, S0
25908E:  VSTR            D16, [R8]
259092:  VLDR            S0, [R6,#0x2C]
259096:  VCVT.F64.F32    D16, S0
25909A:  VSTR            D16, [R8,#8]
25909E:  VLDR            S0, [R6,#0x30]
2590A2:  B               loc_259102
2590A4:  LDR.W           R0, [R10,#0x88]; jumptable 00258EBE case 4
2590A8:  MOV             R4, #0x161AC
2590B0:  LDR             R1, [R0,R4]
2590B2:  LDR             R1, [R1,#0x2C]
2590B4:  BLX             R1
2590B6:  VLDR            S0, [R6,#0x40]
2590BA:  VCVT.F64.F32    D16, S0
2590BE:  VSTR            D16, [R8]
2590C2:  VLDR            S0, [R6,#0x44]
2590C6:  VCVT.F64.F32    D16, S0
2590CA:  VSTR            D16, [R8,#8]
2590CE:  VLDR            S0, [R6,#0x48]
2590D2:  B               loc_259102
2590D4:  LDR.W           R0, [R10,#0x88]; jumptable 00258EBE case 5
2590D8:  MOV             R4, #0x161AC
2590E0:  LDR             R1, [R0,R4]
2590E2:  LDR             R1, [R1,#0x2C]
2590E4:  BLX             R1
2590E6:  VLDR            S0, [R6,#0x34]
2590EA:  VCVT.F64.F32    D16, S0
2590EE:  VSTR            D16, [R8]
2590F2:  VLDR            S0, [R6,#0x38]
2590F6:  VCVT.F64.F32    D16, S0
2590FA:  VSTR            D16, [R8,#8]
2590FE:  VLDR            S0, [R6,#0x3C]
259102:  VCVT.F64.F32    D16, S0
259106:  VSTR            D16, [R8,#0x10]
25910A:  LDR.W           R0, [R10,#0x88]
25910E:  LDR             R1, [R0,R4]
259110:  B               loc_25922A
259112:  VLDR            S0, [R6,#4]; jumptable 00258EBE case 9
259116:  B               loc_259188
259118:  VLDR            S0, [R6,#0xC]; jumptable 00258EBE case 12
25911C:  B               loc_259188
25911E:  VLDR            S0, [R6,#0x10]; jumptable 00258EBE case 13
259122:  B               loc_259188
259124:  VLDR            S0, [R6,#0x1C]; jumptable 00258EBE case 31
259128:  B               loc_259188
25912A:  VLDR            S0, [R6,#0x24]; jumptable 00258EBE case 32
25912E:  B               loc_259188
259130:  VLDR            S0, [R6,#8]; jumptable 00258EBE case 33
259134:  B               loc_259188
259136:  VLDR            S0, [R6,#0x20]; jumptable 00258EBE case 34
25913A:  B               loc_259188
25913C:  VLDR            S0, [R6,#0x60]; jumptable 00258F84 case 131080
259140:  B               loc_259188
259142:  VLDR            S0, [R6,#0x58]; jumptable 00258F84 case 131081
259146:  B               loc_259188
259148:  LDR.W           R0, [R10,#0x88]
25914C:  MOV             R9, #0x161AC
259154:  LDR.W           R1, [R0,R9]
259158:  LDR             R1, [R1,#0x2C]
25915A:  BLX             R1
25915C:  LDR.W           R2, [R6,#0x90]
259160:  CBZ             R2, loc_25916E
259162:  MOV             R0, R2
259164:  LDR             R4, [R0]
259166:  CBNZ            R4, loc_259170
259168:  LDR             R0, [R0,#4]
25916A:  CMP             R0, #0
25916C:  BNE             loc_259164
25916E:  MOVS            R4, #0
259170:  LDR.W           R0, [R6,#0x80]
259174:  MOVW            R1, #0x1012
259178:  CMP             R0, R1
25917A:  BNE             loc_259192
25917C:  CBNZ            R4, loc_2591A4
25917E:  VMOV.I32        D16, #0
259182:  B               loc_2591FE
259184:  VLDR            S0, [R6,#0x64]
259188:  VCVT.F64.F32    D16, S0
25918C:  VSTR            D16, [R8]
259190:  B               loc_25922E
259192:  VMOV.I32        D16, #0
259196:  LDR.W           R0, [R6,#0x80]
25919A:  CBZ             R4, loc_2591FE
25919C:  MOVW            R1, #0x1013
2591A0:  CMP             R0, R1
2591A2:  BNE             loc_2591FE
2591A4:  LDRD.W          R0, R3, [R6,#0x88]
2591A8:  CMP             R2, #0
2591AA:  ITT NE
2591AC:  LDRNE.W         R12, [R6,#0x98]
2591B0:  CMPNE.W         R12, #0
2591B4:  MOV.W           R1, R0,LSR#18
2591B8:  ORR.W           R0, R3, R0,LSL#14
2591BC:  BEQ             loc_2591E2
2591BE:  MOVS            R6, #1
2591C0:  LDR             R3, [R2]
2591C2:  CBZ             R3, loc_2591D6
2591C4:  LDR             R3, [R3,#0xC]
2591C6:  ASRS            R5, R3, #0x1F
2591C8:  ADDS.W          R0, R0, R3,LSL#14
2591CC:  MOV.W           R5, R5,LSL#14
2591D0:  ORR.W           R5, R5, R3,LSR#18
2591D4:  ADCS            R1, R5
2591D6:  CMP             R6, R12
2591D8:  BCS             loc_2591E2
2591DA:  LDR             R2, [R2,#4]
2591DC:  ADDS            R6, #1
2591DE:  CMP             R2, #0
2591E0:  BNE             loc_2591C0
2591E2:  BLX             __aeabi_ul2d
2591E6:  VLDR            D16, =0.0000610351562
2591EA:  VMOV            D17, R0, R1
2591EE:  VLDR            S0, [R4,#4]
2591F2:  VMUL.F64        D16, D17, D16
2591F6:  VCVT.F64.S32    D17, S0
2591FA:  VDIV.F64        D16, D16, D17
2591FE:  VSTR            D16, [R8]
259202:  LDR.W           R0, [R10,#0x88]
259206:  LDR.W           R1, [R0,R9]
25920A:  LDR             R1, [R1,#0x34]
25920C:  BLX             R1
25920E:  BLX             __aeabi_l2d
259212:  VLDR            D16, =1.0e9
259216:  VMOV            D17, R0, R1
25921A:  VDIV.F64        D16, D17, D16
25921E:  VSTR            D16, [R8,#8]
259222:  LDR.W           R0, [R10,#0x88]
259226:  LDR.W           R1, [R0,R9]
25922A:  LDR             R1, [R1,#0x30]
25922C:  BLX             R1
25922E:  MOVS            R0, #0
259230:  ADD             SP, SP, #0x20 ; ' '
259232:  POP.W           {R8-R10}
259236:  POP             {R4-R7,PC}
