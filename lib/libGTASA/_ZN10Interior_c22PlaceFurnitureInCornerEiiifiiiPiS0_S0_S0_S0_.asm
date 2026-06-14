; =========================================================
; Game Engine Function: _ZN10Interior_c22PlaceFurnitureInCornerEiiifiiiPiS0_S0_S0_S0_
; Address            : 0x447248 - 0x44736C
; =========================================================

447248:  PUSH            {R4-R7,LR}
44724A:  ADD             R7, SP, #0xC
44724C:  PUSH.W          {R8-R11}
447250:  SUB             SP, SP, #4
447252:  VPUSH           {D8-D10}
447256:  SUB             SP, SP, #0x28
447258:  MOV             R8, R0
44725A:  LDR             R0, =(g_furnitureMan_ptr - 0x447266)
44725C:  LDR.W           R6, [R8,#0x14]
447260:  SXTH            R3, R3; __int16
447262:  ADD             R0, PC; g_furnitureMan_ptr
447264:  LDR             R0, [R0]; g_furnitureMan ; this
447266:  LDRB            R6, [R6,#0x1F]
447268:  STR             R6, [SP,#0x60+var_60]; float
44726A:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44726E:  LDR.W           R9, [R7,#arg_8]
447272:  MOV             R5, R0
447274:  MOV.W           R11, #0x14
447278:  ADDS.W          R0, R9, #1
44727C:  STR             R0, [SP,#0x60+var_44]
44727E:  IT NE
447280:  MOVNE.W         R11, #1
447284:  CMP             R5, #0
447286:  BEQ             loc_44732C
447288:  VMOV.F32        S20, #4.0
44728C:  VLDR            S16, [R7,#arg_0]
447290:  VLDR            S18, =0.000015259
447294:  MOV.W           R10, #0
447298:  LDR             R0, [SP,#0x60+var_44]
44729A:  CBNZ            R0, loc_4472BA
44729C:  BLX             rand
4472A0:  UXTH            R0, R0
4472A2:  VMOV            S0, R0
4472A6:  VCVT.F32.S32    S0, S0
4472AA:  VMUL.F32        S0, S0, S18
4472AE:  VMUL.F32        S0, S0, S20
4472B2:  VCVT.S32.F32    S0, S0
4472B6:  VMOV            R9, S0
4472BA:  CMP.W           R9, #3; switch 4 cases
4472BE:  BHI             def_4472C4; jumptable 004472C4 default case, case 1
4472C0:  MOVS            R6, #0
4472C2:  LDR             R4, [R7,#arg_C]
4472C4:  TBB.W           [PC,R9]; switch jump
4472C8:  DCB 2; jump table for switch statement
4472C9:  DCB 0x1C
4472CA:  DCB 0xB
4472CB:  DCB 0x12
4472CC:  LDR.W           R0, [R8,#0x14]; jumptable 004472C4 case 0
4472D0:  MOVS            R4, #0
4472D2:  LDR             R2, [R7,#arg_C]
4472D4:  LDRB            R1, [R5,#0xD]
4472D6:  LDRB            R0, [R0,#3]
4472D8:  SUBS            R0, R0, R2
4472DA:  SUBS            R6, R0, R1
4472DC:  B               def_4472C4; jumptable 004472C4 default case, case 1
4472DE:  LDR.W           R0, [R8,#0x14]; jumptable 004472C4 case 2
4472E2:  LDRB            R1, [R5,#0xC]
4472E4:  LDR             R6, [R7,#arg_C]
4472E6:  LDRB            R0, [R0,#2]
4472E8:  SUBS            R4, R0, R1
4472EA:  B               def_4472C4; jumptable 004472C4 default case, case 1
4472EC:  LDR.W           R0, [R8,#0x14]; jumptable 004472C4 case 3
4472F0:  LDRB            R1, [R5,#0xC]
4472F2:  LDRB            R2, [R5,#0xD]
4472F4:  LDRB            R3, [R0,#2]
4472F6:  LDRB            R0, [R0,#3]
4472F8:  SUBS            R6, R0, R1
4472FA:  LDR             R0, [R7,#arg_C]
4472FC:  SUBS            R0, R3, R0
4472FE:  SUBS            R4, R0, R2
447300:  LDR             R0, [R7,#arg_4]; jumptable 004472C4 default case, case 1
447302:  MOV             R1, R5; int
447304:  STRD.W          R0, R9, [SP,#0x60+var_5C]; int
447308:  ADD             R0, SP, #0x60+var_3C
44730A:  STR             R0, [SP,#0x60+var_54]; int
44730C:  ADD             R0, SP, #0x60+var_40
44730E:  STR             R0, [SP,#0x60+var_50]; int
447310:  MOVS            R0, #0
447312:  STR             R0, [SP,#0x60+var_4C]; int
447314:  MOV             R0, R8; int
447316:  MOV             R2, R4; int
447318:  MOV             R3, R6; int
44731A:  VSTR            S16, [SP,#0x60+var_60]
44731E:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
447322:  CBNZ            R0, loc_447330
447324:  ADD.W           R10, R10, #1
447328:  CMP             R10, R11
44732A:  BLT             loc_447298
44732C:  MOVS            R0, #0
44732E:  B               loc_44735E
447330:  LDR             R1, [R7,#arg_10]
447332:  LDR             R3, [R7,#arg_1C]
447334:  CMP             R1, #0
447336:  LDR             R2, [R7,#arg_20]
447338:  IT NE
44733A:  STRNE.W         R9, [R1]
44733E:  LDR             R1, [R7,#arg_14]
447340:  CMP             R1, #0
447342:  IT NE
447344:  STRNE           R4, [R1]
447346:  LDR             R1, [R7,#arg_18]
447348:  CMP             R1, #0
44734A:  IT NE
44734C:  STRNE           R6, [R1]
44734E:  CMP             R3, #0
447350:  ITT NE
447352:  LDRNE           R1, [SP,#0x60+var_3C]
447354:  STRNE           R1, [R3]
447356:  CMP             R2, #0
447358:  ITT NE
44735A:  LDRNE           R1, [SP,#0x60+var_40]
44735C:  STRNE           R1, [R2]
44735E:  ADD             SP, SP, #0x28 ; '('
447360:  VPOP            {D8-D10}
447364:  ADD             SP, SP, #4
447366:  POP.W           {R8-R11}
44736A:  POP             {R4-R7,PC}
