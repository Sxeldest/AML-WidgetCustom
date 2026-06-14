; =========================================================
; Game Engine Function: sub_265130
; Address            : 0x265130 - 0x26532E
; =========================================================

265130:  PUSH            {R4-R7,LR}
265132:  ADD             R7, SP, #0xC
265134:  PUSH.W          {R8-R11}
265138:  SUB             SP, SP, #4
26513A:  MOV             R8, R0
26513C:  MOV             R12, R1
26513E:  LDR.W           R1, [R8,#0x90]
265142:  MOV             R9, R2
265144:  CBZ             R1, loc_265152
265146:  MOV             R0, R1
265148:  LDR             R6, [R0]
26514A:  CBNZ            R6, loc_265154
26514C:  LDR             R0, [R0,#4]
26514E:  CMP             R0, #0
265150:  BNE             loc_265148
265152:  MOVS            R6, #0
265154:  LDR.W           R0, [R8,#0x80]
265158:  MOVW            R2, #0x1012
26515C:  CMP             R0, R2
26515E:  BNE             loc_265164
265160:  CBNZ            R6, loc_265172
265162:  B               loc_2651BC
265164:  LDR.W           R0, [R8,#0x80]
265168:  CBZ             R6, loc_2651BC
26516A:  MOVW            R2, #0x1013
26516E:  CMP             R0, R2
265170:  BNE             loc_2651BC
265172:  VLDR            D16, =0.015
265176:  VMOV.F64        D17, D0
26517A:  VCMPE.F64       D0, D16
26517E:  VMRS            APSR_nzcv, FPSCR
265182:  VCMPE.F64       D0, #0.0
265186:  IT LT
265188:  VMOVLT.F64      D17, D16
26518C:  VMRS            APSR_nzcv, FPSCR
265190:  LDR.W           R0, [R8,#0x88]
265194:  IT GT
265196:  VMOVGT.F64      D0, D17
26519A:  CBZ             R1, loc_2651C8
26519C:  MOVS            R2, #0
26519E:  MOVS            R4, #0
2651A0:  LDR             R3, [R1]
2651A2:  CBZ             R3, loc_2651B2
2651A4:  LDR             R3, [R3,#0xC]
2651A6:  LDR.W           R5, [R8,#0x98]
2651AA:  ADD             R4, R3
2651AC:  CMP             R2, R5
2651AE:  IT CC
2651B0:  ADDCC           R0, R3
2651B2:  LDR             R1, [R1,#4]
2651B4:  ADDS            R2, #1
2651B6:  CMP             R1, #0
2651B8:  BNE             loc_2651A0
2651BA:  B               loc_2651CA
2651BC:  MOVS            R0, #0
2651BE:  VMOV.I32        D16, #0
2651C2:  STRD.W          R0, R0, [R9]
2651C6:  B               loc_265322
2651C8:  MOVS            R4, #0
2651CA:  LDR.W           R1, [R8,#0x80]
2651CE:  MOVW            R2, #0x1012
2651D2:  MOV             R11, R0
2651D4:  CMP             R1, R2
2651D6:  BNE             loc_2651F0
2651D8:  VLDR            S2, [R6,#4]
2651DC:  VCVT.F64.S32    D16, S2
2651E0:  VMUL.F64        D16, D0, D16
2651E4:  VCVT.U32.F64    S0, D16
2651E8:  VMOV            R1, S0
2651EC:  ADD.W           R11, R0, R1
2651F0:  LDRB.W          R1, [R8,#0x4D]
2651F4:  CBZ             R1, loc_26520E
2651F6:  MOV             R1, R4
2651F8:  MOV             R5, R12
2651FA:  BLX             __aeabi_uidivmod
2651FE:  MOV             R10, R1
265200:  MOV             R0, R11
265202:  MOV             R1, R4
265204:  BLX             __aeabi_uidivmod
265208:  MOV             R12, R5
26520A:  MOV             R11, R1
26520C:  B               loc_26521E
26520E:  MOV.W           R10, #0
265212:  CMP             R11, R4
265214:  IT CS
265216:  MOVCS           R11, R10
265218:  CMP             R0, R4
26521A:  IT CC
26521C:  MOVCC           R10, R0
26521E:  MOVW            R0, #0x1024
265222:  SUB.W           R0, R12, R0
265226:  CMP             R0, #0xE; switch 15 cases
265228:  BHI.W           def_26522C; jumptable 0026522C default case, cases 3-12
26522C:  TBB.W           [PC,R0]; switch jump
265230:  DCB 0x28; jump table for switch statement
265231:  DCB 8
265232:  DCB 0xF
265233:  DCB 0x7B
265234:  DCB 0x7B
265235:  DCB 0x7B
265236:  DCB 0x7B
265237:  DCB 0x7B
265238:  DCB 0x7B
265239:  DCB 0x7B
26523A:  DCB 0x7B
26523B:  DCB 0x7B
26523C:  DCB 0x7B
26523D:  DCB 0xF
26523E:  DCB 8
26523F:  ALIGN 2
265240:  VMOV            S0, R10; jumptable 0026522C cases 1,14
265244:  VCVT.F64.U32    D17, S0
265248:  VMOV            S0, R11
26524C:  B               loc_26531A
26524E:  LDR             R1, [R6,#0x1C]; jumptable 0026522C cases 2,13
265250:  MOVW            R0, #0x140C
265254:  CMP             R1, R0
265256:  BNE             loc_26526C
265258:  LDR             R0, [R6,#0x10]
26525A:  SUB.W           R0, R0, #0x1500
26525E:  CMP             R0, #6
265260:  BHI             loc_2652AE
265262:  LDR             R1, =(unk_60A660 - 0x265268)
265264:  ADD             R1, PC; unk_60A660
265266:  LDR.W           R0, [R1,R0,LSL#2]
26526A:  B               loc_2652B0
26526C:  LDR             R0, [R6,#0x18]
26526E:  SUB.W           R0, R0, #0x1500
265272:  CMP             R0, #6
265274:  BHI             loc_2652EE
265276:  LDR             R2, =(unk_60A680 - 0x26527C)
265278:  ADD             R2, PC; unk_60A680
26527A:  LDR.W           R0, [R2,R0,LSL#2]
26527E:  B               loc_2652F0
265280:  VLDR            S0, [R6,#4]; jumptable 0026522C case 0
265284:  VMOV            S2, R10
265288:  VCVT.F64.U32    D16, S2
26528C:  VCVT.F64.S32    D17, S0
265290:  VDIV.F64        D16, D16, D17
265294:  VSTR            D16, [R9]
265298:  VMOV            S2, R11
26529C:  VLDR            S0, [R6,#4]
2652A0:  VCVT.F64.U32    D16, S2
2652A4:  VCVT.F64.S32    D17, S0
2652A8:  VDIV.F64        D16, D16, D17
2652AC:  B               loc_265322
2652AE:  MOVS            R0, #0
2652B0:  MOV             R1, #0xFC0FC0FD
2652B8:  UMULL.W         R2, R3, R10, R1
2652BC:  LSRS            R2, R3, #6
2652BE:  MOVW            R3, #0x1012
2652C2:  MULS            R2, R0
2652C4:  VMOV            S0, R2
2652C8:  VCVT.F64.U32    D16, S0
2652CC:  VSTR            D16, [R9]
2652D0:  LDR.W           R2, [R8,#0x80]
2652D4:  CMP             R2, R3
2652D6:  BNE             loc_265322
2652D8:  ADD.W           R2, R11, #0x40 ; '@'
2652DC:  UMULL.W         R1, R2, R2, R1
2652E0:  LSRS            R1, R2, #6
2652E2:  MULS            R0, R1
2652E4:  VMOV            S0, R0
2652E8:  VCVT.F64.U32    D16, S0
2652EC:  B               loc_265322
2652EE:  MOVS            R0, #0
2652F0:  SUB.W           R1, R1, #0x1400
2652F4:  CMP             R1, #0xB
2652F6:  BHI             loc_265302
2652F8:  LDR             R2, =(unk_60A6A0 - 0x2652FE)
2652FA:  ADD             R2, PC; unk_60A6A0
2652FC:  LDR.W           R1, [R2,R1,LSL#2]
265300:  B               loc_265304
265302:  MOVS            R1, #0
265304:  MULS            R0, R1
265306:  MUL.W           R1, R0, R10
26530A:  MUL.W           R0, R0, R11
26530E:  VMOV            S0, R1
265312:  VCVT.F64.U32    D17, S0
265316:  VMOV            S0, R0
26531A:  VCVT.F64.U32    D16, S0
26531E:  VSTR            D17, [R9]
265322:  VSTR            D16, [R9,#8]
265326:  ADD             SP, SP, #4; jumptable 0026522C default case, cases 3-12
265328:  POP.W           {R8-R11}
26532C:  POP             {R4-R7,PC}
