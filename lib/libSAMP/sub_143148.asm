; =========================================================
; Game Engine Function: sub_143148
; Address            : 0x143148 - 0x14335E
; =========================================================

143148:  PUSH            {R4,R5,R7,LR}
14314A:  ADD             R7, SP, #8
14314C:  SUB.W           SP, SP, #0x230
143150:  MOV             R4, R0
143152:  LDR.W           R0, [R0,#0x218]
143156:  CMP             R0, #5
143158:  BNE.W           loc_143358
14315C:  MOV             R5, R1
14315E:  LDR             R2, [R1,#0xC]; size
143160:  LDR             R1, [R1,#0x14]; src
143162:  ADD             R0, SP, #0x238+var_121+1; int
143164:  MOVS            R3, #0
143166:  BL              sub_17D4F2
14316A:  MOVS            R1, #8
14316C:  BL              sub_17DA96
143170:  ADD             R0, SP, #0x238+var_121+1; int
143172:  ADDW            R1, SP, #0x238+var_121; int
143176:  MOVS            R2, #8
143178:  MOVS            R3, #1
14317A:  BL              sub_17D786
14317E:  LDR             R0, [R5,#0xC]
143180:  LDR             R1, [R5,#0x14]
143182:  SUBS            R2, R0, #2; size
143184:  ADDS            R1, #2; src
143186:  MOV             R0, SP; int
143188:  MOVS            R3, #0
14318A:  BL              sub_17D4F2
14318E:  LDRB.W          R0, [SP,#0x238+var_121]; int
143192:  CMP             R0, #0x4C ; 'L'
143194:  BGT             loc_1431B0
143196:  CMP             R0, #0x26 ; '&'
143198:  BGT             loc_1431D2
14319A:  CMP             R0, #3
14319C:  BEQ             loc_143226
14319E:  CMP             R0, #8
1431A0:  BEQ             loc_14324A
1431A2:  CMP             R0, #9
1431A4:  BNE.W           def_1431E2; jumptable 001431E2 default case, cases 63-66
1431A8:  MOV             R1, SP; int
1431AA:  BL              sub_143A0C
1431AE:  B               loc_14334C
1431B0:  CMP             R0, #0x5B ; '['
1431B2:  BLE             loc_1431F8
1431B4:  CMP             R0, #0x78 ; 'x'
1431B6:  BLE             loc_143262
1431B8:  CMP             R0, #0x79 ; 'y'
1431BA:  BEQ.W           loc_1432BC
1431BE:  CMP             R0, #0x7A ; 'z'
1431C0:  BEQ.W           loc_1432C4
1431C4:  CMP             R0, #0x7C ; '|'
1431C6:  BNE.W           def_1431E2; jumptable 001431E2 default case, cases 63-66
1431CA:  MOV             R0, SP
1431CC:  BL              sub_144154
1431D0:  B               loc_14334C
1431D2:  SUB.W           R1, R0, #0x27 ; '''; switch 11 cases
1431D6:  CMP             R1, #0xA
1431D8:  BLS             loc_14320E
1431DA:  SUB.W           R1, R0, #0x3C ; '<'; jumptable 0014320E default case
1431DE:  CMP             R1, #8
1431E0:  BHI             def_1431E2; jumptable 001431E2 default case, cases 63-66
1431E2:  TBB.W           [PC,R1]; switch jump
1431E6:  DCB 5; jump table for switch statement
1431E7:  DCB 0xA4
1431E8:  DCB 0xA8
1431E9:  DCB 0x4E
1431EA:  DCB 0x4E
1431EB:  DCB 0x4E
1431EC:  DCB 0x4E
1431ED:  DCB 0xAC
1431EE:  DCB 0xB0
1431EF:  ALIGN 2
1431F0:  MOV             R1, SP; jumptable 001431E2 case 60
1431F2:  BL              sub_143ABC
1431F6:  B               loc_14334C
1431F8:  CMP             R0, #0x53 ; 'S'
1431FA:  BGT             loc_143272
1431FC:  CMP             R0, #0x4D ; 'M'
1431FE:  BEQ             loc_1432CC
143200:  CMP             R0, #0x4E ; 'N'
143202:  BNE             def_1431E2; jumptable 001431E2 default case, cases 63-66
143204:  MOV             R1, SP; int
143206:  MOV             R0, R4; int
143208:  BL              sub_143F84
14320C:  B               loc_14334C
14320E:  TBB.W           [PC,R1]; switch jump
143212:  DCB 6; jump table for switch statement
143213:  DCB 0x38
143214:  DCB 0x38
143215:  DCB 0x38
143216:  DCB 0x69
143217:  DCB 0x38
143218:  DCB 0x38
143219:  DCB 0x38
14321A:  DCB 0x7D
14321B:  DCB 0x83
14321C:  DCB 0x89
14321D:  ALIGN 2
14321E:  MOV             R1, SP; jumptable 0014320E case 39
143220:  BL              sub_143A60
143224:  B               loc_14334C
143226:  SUB.W           R1, R7, #-var_9; int
14322A:  MOV             R0, SP; int
14322C:  MOVS            R2, #8
14322E:  MOVS            R3, #1
143230:  BL              sub_17D786
143234:  LDRB.W          R0, [R7,#var_9]
143238:  VMOV            S0, R0
14323C:  VCVT.F32.U32    S0, S0
143240:  VMOV            R0, S0
143244:  BL              sub_10A784
143248:  B               loc_14334C
14324A:  SUB.W           R1, R7, #-var_9; int
14324E:  MOV             R0, SP; int
143250:  MOVS            R2, #8
143252:  MOVS            R3, #1
143254:  BL              sub_17D786
143258:  LDRB.W          R0, [R7,#var_9]
14325C:  BL              sub_10A4A4
143260:  B               loc_14334C
143262:  CMP             R0, #0x5C ; '\'
143264:  BEQ             loc_1432D4
143266:  CMP             R0, #0x6C ; 'l'
143268:  BNE             def_1431E2; jumptable 001431E2 default case, cases 63-66
14326A:  MOV             R1, SP; int
14326C:  BL              sub_144040
143270:  B               loc_14334C
143272:  CMP             R0, #0x54 ; 'T'
143274:  BEQ             loc_1432DC
143276:  CMP             R0, #0x5B ; '['
143278:  BNE             def_1431E2; jumptable 001431E2 default case, cases 63-66
14327A:  MOV             R1, SP
14327C:  BL              sub_143FD8
143280:  B               loc_14334C
143282:  LDR             R1, =(dword_3142F8 - 0x143288); jumptable 001431E2 default case, cases 63-66
143284:  ADD             R1, PC; dword_3142F8
143286:  LDR             R4, [R1,#(dword_3142FC - 0x3142F8)]
143288:  CMP             R4, #0
14328A:  BEQ             loc_14334C
14328C:  ADDS            R2, R1, #4
14328E:  MOV             R1, R2
143290:  LDRB            R5, [R4,#0x10]
143292:  MOV             R3, R4
143294:  CMP             R5, R0
143296:  IT CC
143298:  ADDCC           R3, #4
14329A:  LDR             R3, [R3]
14329C:  IT CS
14329E:  MOVCS           R1, R4
1432A0:  CMP             R3, #0
1432A2:  MOV             R4, R3
1432A4:  BNE             loc_143290
1432A6:  CMP             R1, R2
1432A8:  BEQ             loc_14334C
1432AA:  LDRB            R2, [R1,#0x10]
1432AC:  CMP             R0, R2
1432AE:  BCC             loc_14334C
1432B0:  ADD.W           R0, R1, #0x14
1432B4:  MOV             R1, SP
1432B6:  BL              sub_1441A4
1432BA:  B               loc_14334C
1432BC:  MOV             R0, SP
1432BE:  BL              sub_1440DC
1432C2:  B               loc_14334C
1432C4:  MOV             R0, SP
1432C6:  BL              sub_1440A4
1432CA:  B               loc_14334C
1432CC:  MOV             R1, SP; int
1432CE:  BL              sub_143E90
1432D2:  B               loc_14334C
1432D4:  MOV             R1, SP
1432D6:  BL              sub_14400C
1432DA:  B               loc_14334C
1432DC:  MOV             R1, SP; int
1432DE:  BL              sub_143EC8
1432E2:  B               loc_14334C
1432E4:  MOVS            R0, #0; jumptable 0014320E case 43
1432E6:  STRB.W          R0, [R7,#var_9]
1432EA:  SUB.W           R1, R7, #-var_9; int
1432EE:  MOV             R0, SP; int
1432F0:  MOVS            R2, #8
1432F2:  MOVS            R3, #1
1432F4:  BL              sub_17D786
1432F8:  LDR.W           R0, [R4,#0x20C]
1432FC:  LDRB.W          R1, [R7,#var_9]
143300:  CMP             R1, #0
143302:  IT NE
143304:  MOVNE           R1, #1
143306:  STRB.W          R1, [R0,#0x49]
14330A:  B               loc_14334C
14330C:  LDR             R0, =(dword_314304 - 0x143312); jumptable 0014320E case 47
14330E:  ADD             R0, PC; dword_314304
143310:  MOV             R1, SP
143312:  BL              sub_13DF62
143316:  B               loc_14334C
143318:  LDR             R0, =(dword_314304 - 0x14331E); jumptable 0014320E case 48
14331A:  ADD             R0, PC; dword_314304
14331C:  MOV             R1, SP
14331E:  BL              sub_13E172
143322:  B               loc_14334C
143324:  LDR             R0, =(dword_314304 - 0x14332A); jumptable 0014320E case 49
143326:  ADD             R0, PC; dword_314304
143328:  BL              sub_13E2A0
14332C:  B               loc_14334C
14332E:  MOV             R1, SP; jumptable 001431E2 case 61
143330:  BL              sub_143BDC
143334:  B               loc_14334C
143336:  MOV             R0, SP; jumptable 001431E2 case 62
143338:  BL              sub_143CA0
14333C:  B               loc_14334C
14333E:  MOV             R0, SP; jumptable 001431E2 case 67
143340:  BL              sub_143D34
143344:  B               loc_14334C
143346:  MOV             R1, SP; jumptable 001431E2 case 68
143348:  BL              sub_143DB8
14334C:  MOV             R0, SP
14334E:  BL              sub_17D542
143352:  ADD             R0, SP, #0x238+var_121+1
143354:  BL              sub_17D542
143358:  ADD.W           SP, SP, #0x230
14335C:  POP             {R4,R5,R7,PC}
