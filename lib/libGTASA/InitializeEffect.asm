; =========================================================
; Game Engine Function: InitializeEffect
; Address            : 0x23E300 - 0x23E540
; =========================================================

23E300:  PUSH            {R4-R7,LR}
23E302:  ADD             R7, SP, #0xC
23E304:  PUSH.W          {R8-R11}
23E308:  SUB             SP, SP, #4
23E30A:  MOV             R10, R2
23E30C:  MOV             R8, R1
23E30E:  MOV             R4, R0
23E310:  CMP.W           R10, #0
23E314:  BEQ             loc_23E380
23E316:  MOVW            R6, #:lower16:(elf_hash_chain+0x6044)
23E31A:  LDR.W           R5, [R10]
23E31E:  MOVT            R6, #:upper16:(elf_hash_chain+0x6044)
23E322:  LDR             R0, [R4,R6]
23E324:  LDR             R1, [R0,#0x2C]
23E326:  MOV             R0, R4
23E328:  BLX             R1
23E32A:  ADD.W           R11, R4, R6
23E32E:  CMP             R5, #9; switch 10 cases
23E330:  BHI             def_23E332; jumptable 0023E332 default case
23E332:  TBB.W           [PC,R5]; switch jump
23E336:  DCB 0x2F; jump table for switch statement
23E337:  DCB 0x52
23E338:  DCB 0x5F
23E339:  DCB 0x5F
23E33A:  DCB 5
23E33B:  DCB 0x5F
23E33C:  DCB 0x5F
23E33D:  DCB 0x5F
23E33E:  DCB 0x5F
23E33F:  DCB 0x8B
23E340:  LDR.W           R0, [R8]; jumptable 0023E332 case 4
23E344:  CMP             R0, #4
23E346:  BEQ.W           loc_23E454
23E34A:  MOVS            R0, #0x7C ; '|'; byte_count
23E34C:  BLX             malloc
23E350:  MOV             R5, R0
23E352:  CMP             R5, #0
23E354:  BEQ.W           loc_23E4E2
23E358:  LDR             R0, =(sub_250EE0+1 - 0x23E368)
23E35A:  MOVS            R6, #0
23E35C:  LDR             R3, =(sub_2510CC+1 - 0x23E36C)
23E35E:  VMOV.I32        Q8, #0
23E362:  LDR             R1, =(sub_250EC4+1 - 0x23E372)
23E364:  ADD             R0, PC; sub_250EE0
23E366:  LDR             R2, =(sub_250F6C+1 - 0x23E376)
23E368:  ADD             R3, PC; sub_2510CC
23E36A:  STRD.W          R6, R6, [R5,#0x70]
23E36E:  ADD             R1, PC; sub_250EC4
23E370:  STR             R6, [R5,#0x78]
23E372:  ADD             R2, PC; sub_250F6C
23E374:  STR             R6, [R5,#0x20]
23E376:  STRD.W          R1, R0, [R5]
23E37A:  STRD.W          R2, R3, [R5,#8]
23E37E:  B               loc_23E442
23E380:  MOV             R5, #0x161AC
23E388:  LDR             R0, [R4,R5]
23E38A:  LDR             R1, [R0,#0x2C]
23E38C:  MOV             R0, R4
23E38E:  BLX             R1
23E390:  ADD.W           R11, R4, R5
23E394:  LDR.W           R0, [R8]; jumptable 0023E332 case 0
23E398:  CBZ             R0, loc_23E3C4
23E39A:  MOVS            R0, #1; item_count
23E39C:  MOVS            R1, #0x10; item_size
23E39E:  BLX             calloc
23E3A2:  MOV             R5, R0
23E3A4:  CMP             R5, #0
23E3A6:  BEQ.W           loc_23E4E2
23E3AA:  LDR             R0, =(sub_23EB4C+1 - 0x23E3B4)
23E3AC:  LDR             R2, =(nullsub_17+1 - 0x23E3B8)
23E3AE:  LDR             R1, =(nullsub_16+1 - 0x23E3BA)
23E3B0:  ADD             R0, PC; sub_23EB4C
23E3B2:  LDR             R3, =(j_j_free+1 - 0x23E3BC)
23E3B4:  ADD             R2, PC; nullsub_17
23E3B6:  ADD             R1, PC; nullsub_16
23E3B8:  ADD             R3, PC; j_j_free
23E3BA:  STRD.W          R3, R0, [R5]
23E3BE:  STRD.W          R1, R2, [R5,#8]
23E3C2:  B               loc_23E4A2
23E3C4:  CMP.W           R10, #0
23E3C8:  BNE             loc_23E454
23E3CA:  MOV             R0, R8
23E3CC:  MOVS            R1, #0xB8
23E3CE:  BLX             j___aeabi_memclr8
23E3D2:  B               loc_23E45E
23E3D4:  CMP.W           R5, #0x8000; jumptable 0023E332 default case
23E3D8:  BNE             loc_23E3F4; jumptable 0023E332 cases 2,3,5-8
23E3DA:  LDR.W           R0, [R8]; jumptable 0023E332 case 1
23E3DE:  CMP             R0, #1
23E3E0:  IT NE
23E3E2:  CMPNE.W         R0, #0x8000
23E3E6:  BEQ             loc_23E454
23E3E8:  BLX             j_ReverbCreate
23E3EC:  MOV             R5, R0
23E3EE:  CMP             R5, #0
23E3F0:  BNE             loc_23E4A2
23E3F2:  B               loc_23E4E2
23E3F4:  ORR.W           R0, R5, #1; jumptable 0023E332 cases 2,3,5-8
23E3F8:  MOVW            R1, #0x9001
23E3FC:  CMP             R0, R1
23E3FE:  BNE             loc_23E454
23E400:  LDR.W           R0, [R8]
23E404:  BIC.W           R0, R0, #1
23E408:  CMP.W           R0, #0x9000
23E40C:  BEQ             loc_23E454
23E40E:  MOVS            R0, #0x34 ; '4'; byte_count
23E410:  BLX             malloc
23E414:  MOV             R5, R0
23E416:  CMP             R5, #0
23E418:  BEQ             loc_23E4E2
23E41A:  LDR             R0, =(sub_2602EA+1 - 0x23E42A)
23E41C:  VMOV.I32        Q8, #0
23E420:  LDR             R1, =(j_j_free_0+1 - 0x23E42E)
23E422:  MOVS            R6, #0
23E424:  LDR             R3, =(sub_260346+1 - 0x23E432)
23E426:  ADD             R0, PC; sub_2602EA
23E428:  LDR             R2, =(sub_2602EE+1 - 0x23E43C)
23E42A:  ADD             R1, PC; j_j_free_0
23E42C:  STR             R6, [R5,#0x30]
23E42E:  ADD             R3, PC; sub_260346
23E430:  STRD.W          R1, R0, [R5]
23E434:  ADD.W           R0, R5, #0x20 ; ' '
23E438:  ADD             R2, PC; sub_2602EE
23E43A:  STRD.W          R2, R3, [R5,#8]
23E43E:  VST1.32         {D16-D17}, [R0]
23E442:  ADD.W           R0, R5, #0x10
23E446:  VST1.32         {D16-D17}, [R0]
23E44A:  B               loc_23E4A2
23E44C:  LDR.W           R0, [R8]; jumptable 0023E332 case 9
23E450:  CMP             R0, #9
23E452:  BNE             loc_23E472
23E454:  MOV             R0, R8; void *
23E456:  MOV             R1, R10; void *
23E458:  MOVS            R2, #0xB8; size_t
23E45A:  BLX             memcpy_0
23E45E:  LDR.W           R0, [R11]
23E462:  LDR             R1, [R0,#0x30]
23E464:  MOV             R0, R4
23E466:  BLX             R1
23E468:  MOVS            R0, #1
23E46A:  MOVS            R5, #0
23E46C:  STR.W           R0, [R8,#0xC0]
23E470:  B               loc_23E536
23E472:  MOVS            R0, #0x48 ; 'H'; byte_count
23E474:  BLX             malloc
23E478:  MOV             R5, R0
23E47A:  CBZ             R5, loc_23E4E2
23E47C:  LDR.W           R12, =(sub_2512F2+1 - 0x23E48C)
23E480:  MOVS            R6, #0
23E482:  LDR             R3, =(sub_2513E4+1 - 0x23E490)
23E484:  MOVS            R0, #1
23E486:  LDR             R1, =(j_j_free_1+1 - 0x23E496)
23E488:  ADD             R12, PC; sub_2512F2
23E48A:  LDR             R2, =(sub_2512F8+1 - 0x23E49C)
23E48C:  ADD             R3, PC; sub_2513E4
23E48E:  STRD.W          R6, R0, [R5,#0x14]
23E492:  ADD             R1, PC; j_j_free_1
23E494:  STRD.W          R6, R6, [R5,#0x40]
23E498:  ADD             R2, PC; sub_2512F8
23E49A:  STRD.W          R1, R12, [R5]
23E49E:  STRD.W          R2, R3, [R5,#8]
23E4A2:  BLX             fegetround
23E4A6:  MOV             R9, R0
23E4A8:  MOVS            R0, #3; rounding_direction
23E4AA:  BLX             fesetround
23E4AE:  LDR             R2, [R5,#4]
23E4B0:  MOV             R0, R5
23E4B2:  MOV             R1, R4
23E4B4:  BLX             R2
23E4B6:  CBZ             R0, loc_23E4EC
23E4B8:  ADD.W           R0, R8, #0xC4
23E4BC:  DMB.W           ISH
23E4C0:  LDREX.W         R6, [R0]
23E4C4:  STREX.W         R1, R5, [R0]
23E4C8:  CMP             R1, #0
23E4CA:  BNE             loc_23E4C0
23E4CC:  MOV             R0, R8; void *
23E4CE:  CMP.W           R10, #0
23E4D2:  DMB.W           ISH
23E4D6:  BEQ             loc_23E508
23E4D8:  MOV             R1, R10; void *
23E4DA:  MOVS            R2, #0xB8; size_t
23E4DC:  BLX             memcpy_0
23E4E0:  B               loc_23E50E
23E4E2:  LDR.W           R0, [R11]
23E4E6:  LDR             R1, [R0,#0x30]
23E4E8:  MOV             R0, R4
23E4EA:  B               loc_23E500
23E4EC:  MOV             R0, R9; rounding_direction
23E4EE:  BLX             fesetround
23E4F2:  LDR.W           R0, [R11]
23E4F6:  LDR             R1, [R0,#0x30]
23E4F8:  MOV             R0, R4
23E4FA:  BLX             R1
23E4FC:  LDR             R1, [R5]
23E4FE:  MOV             R0, R5
23E500:  BLX             R1
23E502:  MOVW            R5, #0xA005
23E506:  B               loc_23E536
23E508:  MOVS            R1, #0xB8
23E50A:  BLX             j___aeabi_memclr8
23E50E:  LDR.W           R0, [R8,#0xC4]
23E512:  MOVS            R5, #0
23E514:  STR.W           R5, [R8,#0xC0]
23E518:  MOV             R1, R4
23E51A:  MOV             R2, R8
23E51C:  LDR             R3, [R0,#8]
23E51E:  BLX             R3
23E520:  LDR.W           R0, [R11]
23E524:  LDR             R1, [R0,#0x30]
23E526:  MOV             R0, R4
23E528:  BLX             R1
23E52A:  MOV             R0, R9; rounding_direction
23E52C:  BLX             fesetround
23E530:  LDR             R1, [R6]
23E532:  MOV             R0, R6
23E534:  BLX             R1
23E536:  MOV             R0, R5
23E538:  ADD             SP, SP, #4
23E53A:  POP.W           {R8-R11}
23E53E:  POP             {R4-R7,PC}
