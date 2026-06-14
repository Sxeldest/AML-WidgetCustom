; =========================================================
; Game Engine Function: sub_12F3D0
; Address            : 0x12F3D0 - 0x12F56E
; =========================================================

12F3D0:  PUSH            {R4-R7,LR}
12F3D2:  ADD             R7, SP, #0xC
12F3D4:  PUSH.W          {R8}
12F3D8:  SUB             SP, SP, #0x10
12F3DA:  MOV             R4, R0
12F3DC:  LDR             R6, [R0,#0x5C]
12F3DE:  LDR             R0, [R0,#0x64]
12F3E0:  MOV             R5, R1
12F3E2:  CMP             R0, R6
12F3E4:  IT NE
12F3E6:  STRNE           R6, [R4,#0x64]
12F3E8:  LDR             R0, [R4,#0x60]
12F3EA:  LDR             R1, [R4,#0x68]
12F3EC:  CMP             R1, R0
12F3EE:  IT NE
12F3F0:  STRNE           R0, [R4,#0x68]
12F3F2:  LDRB.W          R0, [R6,#0x50]
12F3F6:  CBZ             R0, loc_12F402
12F3F8:  LDR             R0, [R6]
12F3FA:  MOVS            R1, #0
12F3FC:  LDR             R2, [R0,#0x24]
12F3FE:  MOV             R0, R6
12F400:  BLX             R2
12F402:  MOVS            R0, #0
12F404:  CMP             R5, #5; switch 6 cases
12F406:  STRB.W          R0, [R6,#0x50]
12F40A:  BHI.W           def_12F40E; jumptable 0012F40E default case
12F40E:  TBB.W           [PC,R5]; switch jump
12F412:  DCB 3; jump table for switch statement
12F413:  DCB 0xA
12F414:  DCB 0x11
12F415:  DCB 0x18
12F416:  DCB 0x1F
12F417:  DCB 0x27
12F418:  LDR             R5, [R4,#0x70]; jumptable 0012F40E case 0
12F41A:  LDRB.W          R0, [R5,#0x50]
12F41E:  CMP             R0, #1
12F420:  BNE             loc_12F492
12F422:  MOV             R0, R5
12F424:  B               loc_12F49E
12F426:  LDR             R6, [R4,#0x74]; jumptable 0012F40E case 1
12F428:  LDRB.W          R0, [R6,#0x50]
12F42C:  CMP             R0, #1
12F42E:  BNE             loc_12F4AA
12F430:  MOV             R0, R6
12F432:  B               loc_12F4B6
12F434:  LDR             R5, [R4,#0x78]; jumptable 0012F40E case 2
12F436:  LDRB.W          R0, [R5,#0x50]
12F43A:  CMP             R0, #1
12F43C:  BNE             loc_12F4C0
12F43E:  MOV             R0, R5
12F440:  B               loc_12F4CC
12F442:  LDR             R5, [R4,#0x7C]; jumptable 0012F40E case 3
12F444:  LDRB.W          R0, [R5,#0x50]
12F448:  CMP             R0, #1
12F44A:  BNE             loc_12F4D8
12F44C:  MOV             R0, R5
12F44E:  B               loc_12F4E4
12F450:  LDR.W           R5, [R4,#0x80]; jumptable 0012F40E case 4
12F454:  LDRB.W          R0, [R5,#0x50]
12F458:  CMP             R0, #1
12F45A:  BNE             loc_12F4F0
12F45C:  MOV             R0, R5
12F45E:  B               loc_12F4FE
12F460:  LDR.W           R5, [R4,#0x84]; jumptable 0012F40E case 5
12F464:  MOV             R0, R5
12F466:  BL              sub_12F588
12F46A:  CMP             R0, #0
12F46C:  BEQ             loc_12F50A
12F46E:  LDRB.W          R0, [R5,#0x50]
12F472:  CMP             R0, #1
12F474:  MOV             R0, R5
12F476:  BEQ             loc_12F486
12F478:  LDR             R0, [R5]
12F47A:  MOVS            R1, #1
12F47C:  LDR             R2, [R0,#0x24]
12F47E:  MOV             R0, R5
12F480:  BLX             R2
12F482:  LDR.W           R0, [R4,#0x84]
12F486:  STR             R0, [R4,#0x5C]
12F488:  MOVS            R0, #1
12F48A:  STRB.W          R0, [R5,#0x50]
12F48E:  MOVS            R5, #5
12F490:  B               def_12F40E; jumptable 0012F40E default case
12F492:  LDR             R0, [R5]
12F494:  MOVS            R1, #1
12F496:  LDR             R2, [R0,#0x24]
12F498:  MOV             R0, R5
12F49A:  BLX             R2
12F49C:  LDR             R0, [R4,#0x70]
12F49E:  STR             R0, [R4,#0x5C]
12F4A0:  MOVS            R0, #1
12F4A2:  STRB.W          R0, [R5,#0x50]
12F4A6:  MOVS            R5, #0
12F4A8:  B               def_12F40E; jumptable 0012F40E default case
12F4AA:  LDR             R0, [R6]
12F4AC:  MOVS            R1, #1
12F4AE:  LDR             R2, [R0,#0x24]
12F4B0:  MOV             R0, R6
12F4B2:  BLX             R2
12F4B4:  LDR             R0, [R4,#0x74]
12F4B6:  MOVS            R5, #1
12F4B8:  STR             R0, [R4,#0x5C]
12F4BA:  STRB.W          R5, [R6,#0x50]
12F4BE:  B               def_12F40E; jumptable 0012F40E default case
12F4C0:  LDR             R0, [R5]
12F4C2:  MOVS            R1, #1
12F4C4:  LDR             R2, [R0,#0x24]
12F4C6:  MOV             R0, R5
12F4C8:  BLX             R2
12F4CA:  LDR             R0, [R4,#0x78]
12F4CC:  STR             R0, [R4,#0x5C]
12F4CE:  MOVS            R0, #1
12F4D0:  STRB.W          R0, [R5,#0x50]
12F4D4:  MOVS            R5, #2
12F4D6:  B               def_12F40E; jumptable 0012F40E default case
12F4D8:  LDR             R0, [R5]
12F4DA:  MOVS            R1, #1
12F4DC:  LDR             R2, [R0,#0x24]
12F4DE:  MOV             R0, R5
12F4E0:  BLX             R2
12F4E2:  LDR             R0, [R4,#0x7C]
12F4E4:  STR             R0, [R4,#0x5C]
12F4E6:  MOVS            R0, #1
12F4E8:  STRB.W          R0, [R5,#0x50]
12F4EC:  MOVS            R5, #3
12F4EE:  B               def_12F40E; jumptable 0012F40E default case
12F4F0:  LDR             R0, [R5]
12F4F2:  MOVS            R1, #1
12F4F4:  LDR             R2, [R0,#0x24]
12F4F6:  MOV             R0, R5
12F4F8:  BLX             R2
12F4FA:  LDR.W           R0, [R4,#0x80]
12F4FE:  STR             R0, [R4,#0x5C]
12F500:  MOVS            R0, #1
12F502:  STRB.W          R0, [R5,#0x50]
12F506:  MOVS            R5, #4
12F508:  B               def_12F40E; jumptable 0012F40E default case
12F50A:  LDRD.W          R6, R5, [R4,#0x5C]
12F50E:  LDRB.W          R0, [R6,#0x50]
12F512:  CMP             R0, #1
12F514:  BEQ             loc_12F520
12F516:  LDR             R0, [R6]
12F518:  MOVS            R1, #1
12F51A:  LDR             R2, [R0,#0x24]
12F51C:  MOV             R0, R6
12F51E:  BLX             R2
12F520:  LDR             R0, =(off_23496C - 0x12F52C)
12F522:  MOVS            R1, #1
12F524:  STRB.W          R1, [R6,#0x50]
12F528:  ADD             R0, PC; off_23496C
12F52A:  LDR             R0, [R0]; dword_23DEF4
12F52C:  LDR.W           R8, [R0]
12F530:  CMP.W           R8, #0
12F534:  BEQ             loc_12F55E
12F536:  LDR             R1, =(byte_8F794 - 0x12F53E)
12F538:  ADD             R0, SP, #0x20+var_1C; int
12F53A:  ADD             R1, PC; byte_8F794 ; s
12F53C:  BL              sub_DC6DC
12F540:  STR             R0, [SP,#0x20+var_20]
12F542:  MOV             R0, R8
12F544:  MOVS            R1, #1
12F546:  MOVS            R2, #0x1E
12F548:  MOV.W           R3, #0xFFFFFFFF
12F54C:  BL              sub_144712
12F550:  LDRB.W          R0, [SP,#0x20+var_1C]
12F554:  LSLS            R0, R0, #0x1F
12F556:  ITT NE
12F558:  LDRNE           R0, [SP,#0x20+var_14]; void *
12F55A:  BLXNE           j__ZdlPv; operator delete(void *)
12F55E:  MOV             R0, R4
12F560:  BL              sub_12F5E0
12F564:  STR             R5, [R4,#0x60]; jumptable 0012F40E default case
12F566:  ADD             SP, SP, #0x10
12F568:  POP.W           {R8}
12F56C:  POP             {R4-R7,PC}
