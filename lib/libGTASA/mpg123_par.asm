; =========================================================
; Game Engine Function: mpg123_par
; Address            : 0x22F320 - 0x22F42C
; =========================================================

22F320:  MOV             R12, R0
22F322:  CMP.W           R12, #0
22F326:  ITT EQ
22F328:  MOVEQ           R0, #0x19
22F32A:  BXEQ            LR
22F32C:  CMP             R1, #0x10; switch 17 cases
22F32E:  BHI             def_22F332; jumptable 0022F332 default case, cases 8,9
22F330:  MOVS            R0, #0x23 ; '#'
22F332:  TBB.W           [PC,R1]; switch jump
22F336:  DCB 9; jump table for switch statement
22F337:  DCB 0xD
22F338:  DCB 0x14
22F339:  DCB 0x5E
22F33A:  DCB 0x1C
22F33B:  DCB 0x24
22F33C:  DCB 0x2B
22F33D:  DCB 0x66
22F33E:  DCB 0x32
22F33F:  DCB 0x32
22F340:  DCB 0x6D
22F341:  DCB 0x34
22F342:  DCB 0x47
22F343:  DCB 0x4C
22F344:  DCB 0x53
22F345:  DCB 0x33
22F346:  DCB 0x57
22F347:  ALIGN 2
22F348:  MOVS            R0, #0; jumptable 0022F332 case 0
22F34A:  STR.W           R2, [R12]
22F34E:  BX              LR
22F350:  LSLS            R0, R2, #0x19; jumptable 0022F332 case 1
22F352:  ITTT PL
22F354:  STRPL.W         R2, [R12,#4]
22F358:  MOVPL           R0, #0
22F35A:  BXPL            LR
22F35C:  B               loc_22F36A
22F35E:  LSLS            R0, R2, #0x19; jumptable 0022F332 case 2
22F360:  BMI             loc_22F36A
22F362:  LDR.W           R0, [R12,#4]
22F366:  ORRS            R0, R2
22F368:  B               loc_22F3D4
22F36A:  MOVS            R0, #0xD
22F36C:  BX              LR
22F36E:  CMP             R2, #2; jumptable 0022F332 case 4
22F370:  ITTT LS
22F372:  STRLS.W         R2, [R12,#0xC]
22F376:  MOVLS           R0, #0
22F378:  BXLS            LR
22F37A:  MOVS            R0, #3
22F37C:  BX              LR
22F37E:  CMP             R2, #2; jumptable 0022F332 case 5
22F380:  ITEE HI
22F382:  MOVHI           R0, #0xC
22F384:  STRLS.W         R2, [R12,#0x10]
22F388:  MOVLS           R0, #0
22F38A:  BX              LR
22F38C:  MOVS            R0, #0; jumptable 0022F332 case 6
22F38E:  CMP             R2, #0
22F390:  IT LE
22F392:  MOVLE           R2, R0
22F394:  STR.W           R2, [R12,#0x14]
22F398:  BX              LR
22F39A:  MOVS            R0, #5; jumptable 0022F332 default case, cases 8,9
22F39C:  BX              LR; jumptable 0022F332 case 15
22F39E:  VMOV            S0, R2; jumptable 0022F332 case 11
22F3A2:  VLDR            D18, =0.0000305175781
22F3A6:  VLDR            D16, [SP,#arg_0]
22F3AA:  CMP             R2, #0
22F3AC:  VCVT.F64.S32    D17, S0
22F3B0:  MOV.W           R0, #0
22F3B4:  VMUL.F64        D17, D17, D18
22F3B8:  IT EQ
22F3BA:  VMOVEQ.F64      D17, D16
22F3BE:  VSTR            D17, [R12,#0x118]
22F3C2:  BX              LR
22F3C4:  MOVS            R0, #0; jumptable 0022F332 case 12
22F3C6:  CMP             R2, #0
22F3C8:  IT GT
22F3CA:  MOVGT           R0, #0x15
22F3CC:  BX              LR
22F3CE:  LDR.W           R0, [R12,#4]; jumptable 0022F332 case 13
22F3D2:  BICS            R0, R2
22F3D4:  STR.W           R0, [R12,#4]
22F3D8:  MOVS            R0, #0
22F3DA:  BX              LR
22F3DC:  MOVS            R0, #0; jumptable 0022F332 case 14
22F3DE:  STR.W           R2, [R12,#0x120]
22F3E2:  BX              LR
22F3E4:  CMP             R2, #0; jumptable 0022F332 case 16
22F3E6:  ITEE LT
22F3E8:  MOVLT           R0, #0x27 ; '''
22F3EA:  STRGE.W         R2, [R12,#0x128]
22F3EE:  MOVGE           R0, #0
22F3F0:  BX              LR
22F3F2:  MOV             R0, #0x17700; jumptable 0022F332 case 3
22F3FA:  CMP             R2, R0
22F3FC:  BLE             loc_22F41E
22F3FE:  MOVS            R0, #3
22F400:  BX              LR
22F402:  MOVS            R0, #0; jumptable 0022F332 case 7
22F404:  CMP             R2, #0
22F406:  IT LE
22F408:  MOVLE           R2, R0
22F40A:  STR.W           R2, [R12,#0x18]
22F40E:  BX              LR
22F410:  MOVS            R0, #0; jumptable 0022F332 case 10
22F412:  CMP             R2, #0
22F414:  IT LE
22F416:  MOVLE           R2, R0
22F418:  STR.W           R2, [R12,#0x110]
22F41C:  BX              LR
22F41E:  MOVS            R0, #0
22F420:  CMP             R2, #0
22F422:  IT LE
22F424:  MOVLE           R2, R0
22F426:  STR.W           R2, [R12,#8]
22F42A:  BX              LR
