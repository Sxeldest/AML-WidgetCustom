; =========================================================
; Game Engine Function: sub_38D0CC
; Address            : 0x38D0CC - 0x38D8DC
; =========================================================

38D0CC:  PUSH            {R4-R7,LR}
38D0CE:  ADD             R7, SP, #0xC
38D0D0:  PUSH.W          {R8-R11}
38D0D4:  SUB             SP, SP, #4
38D0D6:  VPUSH           {D8-D15}
38D0DA:  SUB             SP, SP, #0x48
38D0DC:  MOV             R4, SP
38D0DE:  BFC.W           R4, #0, #4
38D0E2:  MOV             SP, R4
38D0E4:  MOV             R11, R0
38D0E6:  MOVS            R4, #:lower16:(elf_hash_chain+0xFE9B)
38D0E8:  LDRB.W          R2, [R11]
38D0EC:  MOVT            R4, #:upper16:(elf_hash_chain+0xFE9B)
38D0F0:  TST.W           R2, #8
38D0F4:  BEQ.W           loc_38D2B0
38D0F8:  LDR.W           R0, =(dword_932098 - 0x38D100)
38D0FC:  ADD             R0, PC; dword_932098
38D0FE:  LDR             R0, [R0]
38D100:  LDR             R0, [R0,#0xC]
38D102:  CMP             R0, #0
38D104:  BEQ.W           loc_38D2B0
38D108:  LDR.W           R6, [R11,#0x10]
38D10C:  LSLS            R0, R2, #0x1B
38D10E:  ADD.W           R10, R6, #0x10
38D112:  BMI.W           loc_38D450
38D116:  VLDR            S16, =0.0
38D11A:  VMOV.I32        Q8, #0
38D11E:  ADD.W           R8, SP, #0xA8+var_78
38D122:  MOV             R5, R1
38D124:  VMOV.F32        S0, S16
38D128:  VST1.64         {D16-D17}, [R8@128]
38D12C:  LDR.W           R2, [R5],#4
38D130:  LDR             R0, [R5]; this
38D132:  CMP             R2, #0
38D134:  BEQ             loc_38D162
38D136:  CMP             R0, #0
38D138:  BEQ.W           loc_38D796
38D13C:  VLDR            S0, =0.0
38D140:  ADDS            R1, #8
38D142:  MOV             R2, R0
38D144:  LDR             R3, [R2,#0x10]
38D146:  CBZ             R3, loc_38D15A
38D148:  LDR             R2, [R2,#0x14]
38D14A:  LDRB.W          R3, [R2,#0x2E]
38D14E:  LSLS            R3, R3, #0x1B
38D150:  ITT MI
38D152:  VLDRMI          S2, [R2,#0x18]
38D156:  VADDMI.F32      S0, S0, S2
38D15A:  LDR.W           R2, [R1],#4
38D15E:  CMP             R2, #0
38D160:  BNE             loc_38D144
38D162:  CMP             R0, #0
38D164:  BEQ.W           loc_38D79A
38D168:  VMOV.F32        S2, #1.0
38D16C:  STR             R6, [SP,#0xA8+var_A0]
38D16E:  VLDR            S16, =0.0
38D172:  ADD.W           R9, SP, #0xA8+var_84
38D176:  MOV             R4, R5
38D178:  VMOV.F32        S18, S16
38D17C:  VSUB.F32        S0, S2, S0
38D180:  VMOV            R6, S0
38D184:  LDR             R1, [R0,#0x10]
38D186:  CBZ             R1, loc_38D1BE
38D188:  LDRB            R1, [R1,#4]
38D18A:  LSLS            R1, R1, #0x1E
38D18C:  BPL             loc_38D1BE
38D18E:  LDR             R1, [R0,#0x14]
38D190:  LDRH            R1, [R1,#0x2E]
38D192:  AND.W           R1, R1, #0x2040
38D196:  CMP             R1, #0x40 ; '@'
38D198:  BNE             loc_38D1BE
38D19A:  MOV             R1, R9; CVector *
38D19C:  MOV             R2, R6; float
38D19E:  BLX             j__ZN14CAnimBlendNode21GetCurrentTranslationER7CVectorf; CAnimBlendNode::GetCurrentTranslation(CVector &,float)
38D1A2:  LDR             R0, [R4]
38D1A4:  VLDR            S0, [SP,#0xA8+var_80]
38D1A8:  LDR             R0, [R0,#0x14]
38D1AA:  VADD.F32        S16, S16, S0
38D1AE:  LDRB.W          R0, [R0,#0x2E]
38D1B2:  LSLS            R0, R0, #0x18
38D1B4:  ITT MI
38D1B6:  VLDRMI          S0, [SP,#0xA8+var_84]
38D1BA:  VADDMI.F32      S18, S18, S0
38D1BE:  LDR.W           R0, [R4,#4]!
38D1C2:  CMP             R0, #0
38D1C4:  BNE             loc_38D184
38D1C6:  LDR             R1, [R5]
38D1C8:  CMP             R1, #0
38D1CA:  BEQ.W           loc_38D7BE
38D1CE:  VLDR            S30, =0.0
38D1D2:  ADD.W           R9, SP, #0xA8+var_84
38D1D6:  STR.W           R10, [SP,#0xA8+var_A4]
38D1DA:  ADD.W           R10, SP, #0xA8+var_98
38D1DE:  VMOV.F32        S17, S30
38D1E2:  MOVS            R0, #0
38D1E4:  VMOV.F32        S28, S30
38D1E8:  STR             R0, [SP,#0xA8+var_9C]
38D1EA:  VMOV.F32        S26, S30
38D1EE:  VMOV.F32        S22, S30
38D1F2:  VMOV.F32        S24, S30
38D1F6:  VMOV.F32        S20, S30
38D1FA:  LDR             R0, [R1,#0x10]
38D1FC:  MOV             R4, R5
38D1FE:  CMP             R0, #0
38D200:  BEQ             loc_38D292
38D202:  MOV             R0, R1; this
38D204:  MOV             R1, R9; CVector *
38D206:  MOV             R2, R10; CQuaternion *
38D208:  MOV             R3, R6; float
38D20A:  BLX             j__ZN14CAnimBlendNode6UpdateER7CVectorR11CQuaternionf; CAnimBlendNode::Update(CVector &,CQuaternion &,float)
38D20E:  VLD1.64         {D16-D17}, [R8@128]
38D212:  MOV             R1, R0
38D214:  VLD1.64         {D18-D19}, [R10@128]
38D218:  VADD.F32        Q8, Q9, Q8
38D21C:  VST1.64         {D16-D17}, [R8@128]
38D220:  LDR             R0, [R4]; this
38D222:  LDR             R2, [R0,#0x10]
38D224:  LDRB            R2, [R2,#4]
38D226:  LSLS            R2, R2, #0x1E
38D228:  BPL             loc_38D294
38D22A:  LDR             R2, [R0,#0x14]
38D22C:  LDRH            R2, [R2,#0x2E]
38D22E:  TST.W           R2, #0x2000
38D232:  BNE             loc_38D294
38D234:  VLDR            S0, [SP,#0xA8+var_84]
38D238:  LSLS            R3, R2, #0x19
38D23A:  VLDR            S2, [SP,#0xA8+var_80]
38D23E:  VLDR            S4, [SP,#0xA8+var_7C]
38D242:  VADD.F32        S28, S28, S0
38D246:  VADD.F32        S26, S26, S2
38D24A:  VADD.F32        S22, S22, S4
38D24E:  BPL             loc_38D294
38D250:  VADD.F32        S0, S24, S0
38D254:  LSLS            R2, R2, #0x18
38D256:  VADD.F32        S20, S20, S2
38D25A:  IT MI
38D25C:  VMOVMI.F32      S24, S0
38D260:  LDR             R2, [SP,#0xA8+var_9C]
38D262:  CMP             R1, #1
38D264:  ORR.W           R2, R2, R1
38D268:  STR             R2, [SP,#0xA8+var_9C]
38D26A:  BNE             loc_38D294
38D26C:  MOV             R1, R9; CVector *
38D26E:  MOV             R2, R6; float
38D270:  BLX             j__ZN14CAnimBlendNode17GetEndTranslationER7CVectorf; CAnimBlendNode::GetEndTranslation(CVector &,float)
38D274:  LDR             R0, [R4]
38D276:  VLDR            S0, [SP,#0xA8+var_80]
38D27A:  LDR             R1, [R0,#0x14]
38D27C:  VADD.F32        S17, S17, S0
38D280:  LDRB.W          R1, [R1,#0x2E]
38D284:  LSLS            R1, R1, #0x18
38D286:  ITT MI
38D288:  VLDRMI          S0, [SP,#0xA8+var_84]
38D28C:  VADDMI.F32      S30, S30, S0
38D290:  B               loc_38D294
38D292:  MOV             R0, R1
38D294:  MOV             R5, R4
38D296:  ADDS            R0, #0x18
38D298:  LDR.W           R1, [R5,#4]!
38D29C:  STR             R0, [R4]
38D29E:  CMP             R1, #0
38D2A0:  BNE             loc_38D1FA
38D2A2:  LDRD.W          R10, R6, [SP,#0xA8+var_A4]
38D2A6:  MOVS            R4, #:lower16:(elf_hash_chain+0xFE9B)
38D2A8:  LDR             R5, [SP,#0xA8+var_9C]
38D2AA:  MOVT            R4, #:upper16:(elf_hash_chain+0xFE9B)
38D2AE:  B               loc_38D7E4
38D2B0:  VLDR            S1, =0.0
38D2B4:  VMOV.I32        Q8, #0
38D2B8:  ADD             R6, SP, #0xA8+var_98
38D2BA:  LDR.W           R9, [R11,#0x10]
38D2BE:  VMOV.F32        S4, S1
38D2C2:  MOV             R10, R1
38D2C4:  VST1.64         {D16-D17}, [R6@128]
38D2C8:  ADD.W           R8, R9, #0x10
38D2CC:  LDR.W           R3, [R10],#4
38D2D0:  LDR.W           R0, [R10]; this
38D2D4:  CBZ             R3, loc_38D302
38D2D6:  CMP             R0, #0
38D2D8:  BEQ.W           loc_38D42C
38D2DC:  VLDR            S4, =0.0
38D2E0:  ADDS            R1, #8
38D2E2:  MOV             R3, R0
38D2E4:  LDR             R5, [R3,#0x10]
38D2E6:  CBZ             R5, loc_38D2FA
38D2E8:  LDR             R3, [R3,#0x14]
38D2EA:  LDRB.W          R5, [R3,#0x2E]
38D2EE:  LSLS            R5, R5, #0x1B
38D2F0:  ITT MI
38D2F2:  VLDRMI          S6, [R3,#0x18]
38D2F6:  VADDMI.F32      S4, S4, S6
38D2FA:  LDR.W           R3, [R1],#4
38D2FE:  CMP             R3, #0
38D300:  BNE             loc_38D2E4
38D302:  VMOV.F32        S0, S1
38D306:  CMP             R0, #0
38D308:  VMOV.F32        S16, S1
38D30C:  VMOV.F32        S18, S1
38D310:  VMOV.F32        S20, S1
38D314:  VMOV.F32        S22, S1
38D318:  BEQ             loc_38D3BC
38D31A:  VMOV.F32        S0, #1.0
38D31E:  STR.W           R11, [SP,#0xA8+var_9C]
38D322:  ADD.W           R11, SP, #0xA8+var_84
38D326:  ADD             R5, SP, #0xA8+var_78
38D328:  VSUB.F32        S4, S0, S4
38D32C:  VLDR            S1, =0.0
38D330:  VMOV.F32        S0, S1
38D334:  VMOV.F32        S22, S1
38D338:  VMOV.F32        S20, S1
38D33C:  VMOV.F32        S18, S1
38D340:  VMOV.F32        S16, S1
38D344:  VMOV            R4, S4
38D348:  LDR             R1, [R0,#0x10]
38D34A:  CBZ             R1, loc_38D39A
38D34C:  MOV             R1, R11; CVector *
38D34E:  MOV             R2, R5; CQuaternion *
38D350:  MOV             R3, R4; float
38D352:  BLX             j__ZN14CAnimBlendNode6UpdateER7CVectorR11CQuaternionf; CAnimBlendNode::Update(CVector &,CQuaternion &,float)
38D356:  LDR.W           R0, [R10]
38D35A:  LDR             R1, [R0,#0x10]
38D35C:  LDRB            R1, [R1,#4]
38D35E:  LSLS            R1, R1, #0x1E
38D360:  BPL             loc_38D384
38D362:  LDR             R0, [R0,#0x14]
38D364:  VLDR            S4, [SP,#0xA8+var_7C]
38D368:  VLDR            S0, [SP,#0xA8+var_84]
38D36C:  VLDR            S2, [SP,#0xA8+var_80]
38D370:  VADD.F32        S16, S16, S4
38D374:  VLDR            S4, [R0,#0x18]
38D378:  VADD.F32        S20, S20, S0
38D37C:  VADD.F32        S18, S18, S2
38D380:  VADD.F32        S22, S22, S4
38D384:  VLD1.64         {D16-D17}, [R6@128]
38D388:  VLD1.64         {D18-D19}, [R5@128]
38D38C:  VADD.F32        Q0, Q9, Q8
38D390:  VST1.64         {D0-D1}, [R6@128]
38D394:  LDR.W           R1, [R10]
38D398:  B               loc_38D39C
38D39A:  MOV             R1, R0
38D39C:  MOV             R2, R10
38D39E:  ADDS            R1, #0x18
38D3A0:  LDR.W           R0, [R2,#4]!
38D3A4:  STR.W           R1, [R10]
38D3A8:  CMP             R0, #0
38D3AA:  MOV             R10, R2
38D3AC:  BNE             loc_38D348
38D3AE:  LDR.W           R11, [SP,#0xA8+var_9C]
38D3B2:  MOVS            R4, #0x20003
38D3B8:  LDRB.W          R2, [R11]
38D3BC:  LSLS            R0, R2, #0x1E
38D3BE:  BMI.W           loc_38D736
38D3C2:  MOV.W           R0, #0x3F800000
38D3C6:  MOVS            R1, #0
38D3C8:  VMUL.F32        S8, S1, S1
38D3CC:  STR.W           R0, [R9,#0x10]
38D3D0:  VMUL.F32        S10, S0, S0
38D3D4:  STR.W           R0, [R9,#0x24]
38D3D8:  STR.W           R1, [R9,#0x20]
38D3DC:  STRD.W          R1, R1, [R9,#0x14]
38D3E0:  STR.W           R1, [R9,#0x28]
38D3E4:  STRD.W          R1, R1, [R9,#0x30]
38D3E8:  STR.W           R0, [R9,#0x38]
38D3EC:  LDR.W           R0, [R9,#0x1C]
38D3F0:  STRD.W          R1, R1, [R9,#0x40]
38D3F4:  VADD.F32        S8, S10, S8
38D3F8:  STR.W           R1, [R9,#0x48]
38D3FC:  ORRS            R0, R4
38D3FE:  STR.W           R0, [R9,#0x1C]
38D402:  VLDR            S4, [SP,#0xA8+var_90]
38D406:  VLDR            S6, [SP,#0xA8+var_8C]
38D40A:  VMUL.F32        S12, S4, S4
38D40E:  VMUL.F32        S10, S6, S6
38D412:  VADD.F32        S8, S8, S12
38D416:  VADD.F32        S8, S8, S10
38D41A:  VCMP.F32        S8, #0.0
38D41E:  VMRS            APSR_nzcv, FPSCR
38D422:  BNE.W           loc_38D6FE
38D426:  VMOV.F32        S0, #1.0
38D42A:  B               loc_38D726
38D42C:  VLDR            S1, =0.0
38D430:  VMOV.F32        S0, S1
38D434:  VMOV.F32        S16, S1
38D438:  VMOV.F32        S18, S1
38D43C:  VMOV.F32        S20, S1
38D440:  VMOV.F32        S22, S1
38D444:  LSLS            R0, R2, #0x1E
38D446:  BPL             loc_38D3C2
38D448:  B               loc_38D736
38D44A:  ALIGN 4
38D44C:  DCFS 0.0
38D450:  VLDR            S16, =0.0
38D454:  VMOV.I32        Q8, #0
38D458:  STRD.W          R10, R6, [SP,#0xA8+var_A4]
38D45C:  ADD.W           R10, SP, #0xA8+var_78
38D460:  VMOV.F32        S0, S16
38D464:  MOV             R5, R1
38D466:  VST1.64         {D16-D17}, [R10@128]
38D46A:  LDR.W           R2, [R5],#4
38D46E:  LDR             R0, [R5]; this
38D470:  CMP             R2, #0
38D472:  BEQ             loc_38D49C
38D474:  VLDR            S0, =0.0
38D478:  ADD.W           R2, R1, #8
38D47C:  MOV             R3, R0
38D47E:  LDR             R6, [R3,#0x10]
38D480:  CBZ             R6, loc_38D494
38D482:  LDR             R3, [R3,#0x14]
38D484:  LDRB.W          R6, [R3,#0x2E]
38D488:  LSLS            R6, R6, #0x1B
38D48A:  ITT MI
38D48C:  VLDRMI          S2, [R3,#0x18]
38D490:  VADDMI.F32      S0, S0, S2
38D494:  LDR.W           R3, [R2],#4
38D498:  CMP             R3, #0
38D49A:  BNE             loc_38D47E
38D49C:  VMOV.F32        S22, #1.0
38D4A0:  ADD.W           R4, R1, #8
38D4A4:  VMOV.F32        S20, S16
38D4A8:  ADD.W           R8, SP, #0xA8+var_84
38D4AC:  VMOV.F32        S18, S16
38D4B0:  STR.W           R11, [SP,#0xA8+var_9C]
38D4B4:  VSUB.F32        S0, S22, S0
38D4B8:  VMOV            R6, S0
38D4BC:  LDR             R1, [R0,#0x10]
38D4BE:  CBZ             R1, loc_38D4F2
38D4C0:  LDRB            R1, [R1,#4]
38D4C2:  LSLS            R1, R1, #0x1E
38D4C4:  ITTT MI
38D4C6:  LDRMI           R1, [R0,#0x14]
38D4C8:  LDRBMI.W        R1, [R1,#0x2E]
38D4CC:  MOVSMI.W        R1, R1,LSL#25
38D4D0:  BPL             loc_38D4F2
38D4D2:  MOV             R1, R8; CVector *
38D4D4:  MOV             R2, R6; float
38D4D6:  BLX             j__ZN14CAnimBlendNode21GetCurrentTranslationER7CVectorf; CAnimBlendNode::GetCurrentTranslation(CVector &,float)
38D4DA:  VLDR            S0, [SP,#0xA8+var_84]
38D4DE:  VLDR            S2, [SP,#0xA8+var_80]
38D4E2:  VLDR            S4, [SP,#0xA8+var_7C]
38D4E6:  VADD.F32        S16, S16, S0
38D4EA:  VADD.F32        S20, S20, S2
38D4EE:  VADD.F32        S18, S18, S4
38D4F2:  LDR.W           R0, [R4],#4
38D4F6:  CMP             R0, #0
38D4F8:  BNE             loc_38D4BC
38D4FA:  VLDR            S24, =0.0
38D4FE:  ADD.W           R8, SP, #0xA8+var_84
38D502:  LDR             R1, [R5]
38D504:  ADD             R4, SP, #0xA8+var_98
38D506:  VMOV.F32        S26, S24
38D50A:  MOV.W           R9, #0
38D50E:  VMOV.F32        S28, S24
38D512:  VMOV.F32        S21, S24
38D516:  VMOV.F32        S23, S24
38D51A:  VMOV.F32        S25, S24
38D51E:  VMOV.F32        S30, S24
38D522:  VMOV.F32        S17, S24
38D526:  VMOV.F32        S19, S24
38D52A:  LDR             R0, [R1,#0x10]
38D52C:  MOV             R11, R5
38D52E:  CMP             R0, #0
38D530:  BEQ             loc_38D5B8
38D532:  MOV             R0, R1; this
38D534:  MOV             R1, R8; CVector *
38D536:  MOV             R2, R4; CQuaternion *
38D538:  MOV             R3, R6; float
38D53A:  BLX             j__ZN14CAnimBlendNode6UpdateER7CVectorR11CQuaternionf; CAnimBlendNode::Update(CVector &,CQuaternion &,float)
38D53E:  VLD1.64         {D16-D17}, [R10@128]
38D542:  MOV             R1, R0
38D544:  VLD1.64         {D18-D19}, [R4@128]
38D548:  VADD.F32        Q8, Q9, Q8
38D54C:  VST1.64         {D16-D17}, [R10@128]
38D550:  LDR.W           R0, [R11]; this
38D554:  LDR             R2, [R0,#0x10]
38D556:  LDRB            R2, [R2,#4]
38D558:  LSLS            R2, R2, #0x1E
38D55A:  BPL             loc_38D5BA
38D55C:  VLDR            S0, [SP,#0xA8+var_84]
38D560:  VLDR            S2, [SP,#0xA8+var_80]
38D564:  VLDR            S4, [SP,#0xA8+var_7C]
38D568:  VADD.F32        S19, S19, S0
38D56C:  LDR             R2, [R0,#0x14]
38D56E:  VADD.F32        S17, S17, S2
38D572:  VADD.F32        S30, S30, S4
38D576:  LDRB.W          R2, [R2,#0x2E]
38D57A:  LSLS            R2, R2, #0x19
38D57C:  BPL             loc_38D5BA
38D57E:  VADD.F32        S24, S24, S4
38D582:  ORR.W           R9, R9, R1
38D586:  VADD.F32        S26, S26, S2
38D58A:  CMP             R1, #1
38D58C:  VADD.F32        S28, S28, S0
38D590:  BNE             loc_38D5BA
38D592:  MOV             R1, R8; CVector *
38D594:  MOV             R2, R6; float
38D596:  BLX             j__ZN14CAnimBlendNode17GetEndTranslationER7CVectorf; CAnimBlendNode::GetEndTranslation(CVector &,float)
38D59A:  VLDR            S0, [SP,#0xA8+var_84]
38D59E:  VLDR            S2, [SP,#0xA8+var_80]
38D5A2:  VLDR            S4, [SP,#0xA8+var_7C]
38D5A6:  VADD.F32        S25, S25, S0
38D5AA:  VADD.F32        S23, S23, S2
38D5AE:  LDR.W           R0, [R11]
38D5B2:  VADD.F32        S21, S21, S4
38D5B6:  B               loc_38D5BA
38D5B8:  MOV             R0, R1
38D5BA:  MOV             R5, R11
38D5BC:  ADDS            R0, #0x18
38D5BE:  LDR.W           R1, [R5,#4]!
38D5C2:  STR.W           R0, [R11]
38D5C6:  CMP             R1, #0
38D5C8:  BNE             loc_38D52A
38D5CA:  LDR             R4, [SP,#0xA8+var_9C]
38D5CC:  LDRB            R0, [R4]
38D5CE:  LDRD.W          R5, R6, [SP,#0xA8+var_A4]
38D5D2:  TST.W           R0, #2
38D5D6:  BNE             loc_38D66E
38D5D8:  MOV.W           R0, #0x3F800000
38D5DC:  MOVS            R1, #0
38D5DE:  STR             R0, [R6,#0x10]
38D5E0:  STR             R0, [R6,#0x24]
38D5E2:  STR             R1, [R6,#0x20]
38D5E4:  STRD.W          R1, R1, [R6,#0x14]
38D5E8:  STR             R1, [R6,#0x28]
38D5EA:  STRD.W          R1, R1, [R6,#0x30]
38D5EE:  STR             R0, [R6,#0x38]
38D5F0:  LDR             R0, [R6,#0x1C]
38D5F2:  STRD.W          R1, R1, [R6,#0x40]
38D5F6:  STR             R1, [R6,#0x48]
38D5F8:  MOVS            R1, #0x20003
38D5FE:  ORRS            R0, R1
38D600:  STR             R0, [R6,#0x1C]
38D602:  VLDR            S0, [SP,#0xA8+var_78]
38D606:  VLDR            S6, [SP,#0xA8+var_74]
38D60A:  VMUL.F32        S10, S0, S0
38D60E:  VLDR            S2, [SP,#0xA8+var_70]
38D612:  VMUL.F32        S8, S6, S6
38D616:  VLDR            S4, [SP,#0xA8+var_6C]
38D61A:  VMUL.F32        S12, S2, S2
38D61E:  VADD.F32        S8, S10, S8
38D622:  VMUL.F32        S10, S4, S4
38D626:  VADD.F32        S8, S8, S12
38D62A:  VADD.F32        S8, S8, S10
38D62E:  VCMP.F32        S8, #0.0
38D632:  VMRS            APSR_nzcv, FPSCR
38D636:  BEQ             loc_38D660
38D638:  VSQRT.F32       S8, S8
38D63C:  VMOV.F32        S10, #1.0
38D640:  VDIV.F32        S8, S10, S8
38D644:  VMUL.F32        S6, S6, S8
38D648:  VMUL.F32        S22, S4, S8
38D64C:  VMUL.F32        S0, S0, S8
38D650:  VMUL.F32        S2, S2, S8
38D654:  VSTR            S6, [SP,#0xA8+var_74]
38D658:  VSTR            S0, [SP,#0xA8+var_78]
38D65C:  VSTR            S2, [SP,#0xA8+var_70]
38D660:  ADD             R0, SP, #0xA8+var_78
38D662:  MOV             R1, R5
38D664:  VSTR            S22, [SP,#0xA8+var_6C]
38D668:  BLX             j__ZNK11CQuaternion3GetEP11RwMatrixTag; CQuaternion::Get(RwMatrixTag *)
38D66C:  LDRB            R0, [R4]
38D66E:  LSLS            R0, R0, #0x1D
38D670:  BMI             loc_38D6FA
38D672:  LDR             R0, =(dword_932098 - 0x38D680)
38D674:  VSUB.F32        S0, S26, S20
38D678:  VSUB.F32        S2, S28, S16
38D67C:  ADD             R0, PC; dword_932098
38D67E:  VSUB.F32        S4, S24, S18
38D682:  LDR             R0, [R0]
38D684:  LDR             R1, [R0,#0xC]
38D686:  VSTR            S2, [R1]
38D68A:  VSTR            S0, [R1,#4]
38D68E:  VSTR            S4, [R1,#8]
38D692:  MOVS.W          R1, R9,LSL#31
38D696:  BEQ             loc_38D6BE
38D698:  LDR             R0, [R0,#0xC]
38D69A:  VLDR            S0, [R0]
38D69E:  VLDR            S2, [R0,#4]
38D6A2:  VLDR            S4, [R0,#8]
38D6A6:  VADD.F32        S0, S25, S0
38D6AA:  VADD.F32        S2, S23, S2
38D6AE:  VADD.F32        S4, S21, S4
38D6B2:  VSTR            S0, [R0]
38D6B6:  VSTR            S2, [R0,#4]
38D6BA:  VSTR            S4, [R0,#8]
38D6BE:  VSUB.F32        S4, S19, S28
38D6C2:  VSUB.F32        S0, S30, S24
38D6C6:  VSUB.F32        S2, S17, S26
38D6CA:  VSTR            S4, [R6,#0x40]
38D6CE:  VSTR            S2, [R6,#0x44]
38D6D2:  VSTR            S0, [R6,#0x48]
38D6D6:  VLDR            S6, [R4,#4]
38D6DA:  VADD.F32        S4, S4, S6
38D6DE:  VSTR            S4, [R6,#0x40]
38D6E2:  VLDR            S4, [R4,#8]
38D6E6:  VADD.F32        S2, S2, S4
38D6EA:  VSTR            S2, [R6,#0x44]
38D6EE:  VLDR            S2, [R4,#0xC]
38D6F2:  VADD.F32        S0, S0, S2
38D6F6:  VSTR            S0, [R6,#0x48]
38D6FA:  MOV             R0, R5
38D6FC:  B               loc_38D780
38D6FE:  VSQRT.F32       S8, S8
38D702:  VMOV.F32        S10, #1.0
38D706:  VDIV.F32        S8, S10, S8
38D70A:  VMUL.F32        S10, S1, S8
38D70E:  VMUL.F32        S2, S0, S8
38D712:  VMUL.F32        S0, S6, S8
38D716:  VMUL.F32        S4, S4, S8
38D71A:  VSTR            S10, [SP,#0xA8+var_94]
38D71E:  VSTR            S2, [SP,#0xA8+var_98]
38D722:  VSTR            S4, [SP,#0xA8+var_90]
38D726:  ADD             R0, SP, #0xA8+var_98
38D728:  MOV             R1, R8
38D72A:  VSTR            S0, [SP,#0xA8+var_8C]
38D72E:  BLX             j__ZNK11CQuaternion3GetEP11RwMatrixTag; CQuaternion::Get(RwMatrixTag *)
38D732:  LDRB.W          R2, [R11]
38D736:  LSLS            R0, R2, #0x1D
38D738:  BMI             loc_38D77E
38D73A:  VMOV.F32        S0, #1.0
38D73E:  VSTR            S20, [R9,#0x40]
38D742:  VSTR            S18, [R9,#0x44]
38D746:  VSTR            S16, [R9,#0x48]
38D74A:  VLDR            S2, [R11,#4]
38D74E:  VSUB.F32        S0, S0, S22
38D752:  VMUL.F32        S2, S0, S2
38D756:  VADD.F32        S2, S20, S2
38D75A:  VSTR            S2, [R9,#0x40]
38D75E:  VLDR            S2, [R11,#8]
38D762:  VMUL.F32        S2, S0, S2
38D766:  VADD.F32        S2, S18, S2
38D76A:  VSTR            S2, [R9,#0x44]
38D76E:  VLDR            S2, [R11,#0xC]
38D772:  VMUL.F32        S0, S0, S2
38D776:  VADD.F32        S0, S16, S0
38D77A:  VSTR            S0, [R9,#0x48]
38D77E:  MOV             R0, R8
38D780:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
38D784:  SUB.W           R4, R7, #-var_60
38D788:  MOV             SP, R4
38D78A:  VPOP            {D8-D15}
38D78E:  ADD             SP, SP, #4
38D790:  POP.W           {R8-R11}
38D794:  POP             {R4-R7,PC}
38D796:  VLDR            S16, =0.0
38D79A:  MOVS            R5, #0
38D79C:  VMOV.F32        S18, S16
38D7A0:  VMOV.F32        S20, S16
38D7A4:  VMOV.F32        S24, S16
38D7A8:  VMOV.F32        S22, S16
38D7AC:  VMOV.F32        S26, S16
38D7B0:  VMOV.F32        S28, S16
38D7B4:  VMOV.F32        S17, S16
38D7B8:  VMOV.F32        S30, S16
38D7BC:  B               loc_38D7E4
38D7BE:  VLDR            S20, =0.0
38D7C2:  MOVS            R4, #:lower16:(elf_hash_chain+0xFE9B)
38D7C4:  MOVS            R5, #0
38D7C6:  MOVT            R4, #:upper16:(elf_hash_chain+0xFE9B)
38D7CA:  VMOV.F32        S24, S20
38D7CE:  LDR             R6, [SP,#0xA8+var_A0]
38D7D0:  VMOV.F32        S22, S20
38D7D4:  VMOV.F32        S26, S20
38D7D8:  VMOV.F32        S28, S20
38D7DC:  VMOV.F32        S17, S20
38D7E0:  VMOV.F32        S30, S20
38D7E4:  LDRB.W          R0, [R11]
38D7E8:  TST.W           R0, #2
38D7EC:  BNE             loc_38D886
38D7EE:  MOV.W           R0, #0x3F800000
38D7F2:  MOVS            R1, #0
38D7F4:  STR             R0, [R6,#0x10]
38D7F6:  STR             R0, [R6,#0x24]
38D7F8:  STR             R1, [R6,#0x20]
38D7FA:  STRD.W          R1, R1, [R6,#0x14]
38D7FE:  STR             R1, [R6,#0x28]
38D800:  STRD.W          R1, R1, [R6,#0x30]
38D804:  STR             R0, [R6,#0x38]
38D806:  LDR             R0, [R6,#0x1C]
38D808:  STRD.W          R1, R1, [R6,#0x40]
38D80C:  STR             R1, [R6,#0x48]
38D80E:  ORRS            R0, R4
38D810:  STR             R0, [R6,#0x1C]
38D812:  VLDR            S0, [SP,#0xA8+var_78]
38D816:  VLDR            S6, [SP,#0xA8+var_74]
38D81A:  VMUL.F32        S10, S0, S0
38D81E:  VLDR            S2, [SP,#0xA8+var_70]
38D822:  VMUL.F32        S8, S6, S6
38D826:  VLDR            S4, [SP,#0xA8+var_6C]
38D82A:  VMUL.F32        S12, S2, S2
38D82E:  VADD.F32        S8, S10, S8
38D832:  VMUL.F32        S10, S4, S4
38D836:  VADD.F32        S8, S8, S12
38D83A:  VADD.F32        S8, S8, S10
38D83E:  VCMP.F32        S8, #0.0
38D842:  VMRS            APSR_nzcv, FPSCR
38D846:  BNE             loc_38D84E
38D848:  VMOV.F32        S0, #1.0
38D84C:  B               loc_38D876
38D84E:  VSQRT.F32       S8, S8
38D852:  VMOV.F32        S10, #1.0
38D856:  VDIV.F32        S8, S10, S8
38D85A:  VMUL.F32        S6, S6, S8
38D85E:  VMUL.F32        S10, S0, S8
38D862:  VMUL.F32        S0, S4, S8
38D866:  VMUL.F32        S2, S2, S8
38D86A:  VSTR            S6, [SP,#0xA8+var_74]
38D86E:  VSTR            S10, [SP,#0xA8+var_78]
38D872:  VSTR            S2, [SP,#0xA8+var_70]
38D876:  ADD             R0, SP, #0xA8+var_78
38D878:  MOV             R1, R10
38D87A:  VSTR            S0, [SP,#0xA8+var_6C]
38D87E:  BLX             j__ZNK11CQuaternion3GetEP11RwMatrixTag; CQuaternion::Get(RwMatrixTag *)
38D882:  LDRB.W          R0, [R11]
38D886:  LSLS            R0, R0, #0x1D
38D888:  BMI             loc_38D8D8
38D88A:  LDR             R0, =(dword_932098 - 0x38D898)
38D88C:  VSUB.F32        S0, S24, S18
38D890:  VSUB.F32        S2, S20, S16
38D894:  ADD             R0, PC; dword_932098
38D896:  LDR             R0, [R0]
38D898:  LDR             R1, [R0,#0xC]
38D89A:  VSTR            S0, [R1]
38D89E:  LDR             R1, [R0,#0xC]
38D8A0:  VSTR            S2, [R1,#4]
38D8A4:  LSLS            R1, R5, #0x1F
38D8A6:  BEQ             loc_38D8C4
38D8A8:  LDR             R1, [R0,#0xC]
38D8AA:  VLDR            S0, [R1]
38D8AE:  VADD.F32        S0, S30, S0
38D8B2:  VSTR            S0, [R1]
38D8B6:  LDR             R0, [R0,#0xC]
38D8B8:  VLDR            S0, [R0,#4]
38D8BC:  VADD.F32        S0, S17, S0
38D8C0:  VSTR            S0, [R0,#4]
38D8C4:  VSUB.F32        S2, S28, S24
38D8C8:  VSUB.F32        S0, S26, S20
38D8CC:  VSTR            S2, [R6,#0x40]
38D8D0:  VSTR            S0, [R6,#0x44]
38D8D4:  VSTR            S22, [R6,#0x48]
38D8D8:  MOV             R0, R10
38D8DA:  B               loc_38D780
