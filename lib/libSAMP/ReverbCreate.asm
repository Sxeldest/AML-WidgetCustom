; =========================================================
; Game Engine Function: ReverbCreate
; Address            : 0x1DE394 - 0x1DE568
; =========================================================

1DE394:  PUSH            {R4-R6,R10,R11,LR}
1DE398:  ADD             R11, SP, #0x10
1DE39C:  MOV             R0, #0x1E0; size
1DE3A0:  BL              malloc
1DE3A4:  MOV             R4, R0
1DE3A8:  CMP             R4, #0
1DE3AC:  BEQ             loc_1DE55C
1DE3B0:  LDR             R12, =(sub_1DEDF0 - 0x1DE3F0)
1DE3B4:  MOV             R5, #0
1DE3B8:  LDR             R3, =(sub_1DE5A0 - 0x1DE3EC)
1DE3BC:  MOV             R0, #1
1DE3C0:  LDR             R1, =(sub_1DF5A4 - 0x1DE3D4)
1DE3C4:  LDR             R2, =(sub_1DE578 - 0x1DE3DC)
1DE3C8:  STR             R5, [R4,#0x20]
1DE3CC:  ADD             R1, PC, R1; sub_1DF5A4
1DE3D0:  STR             R5, [R4,#0x24]
1DE3D4:  ADD             R2, PC, R2; sub_1DE578
1DE3D8:  STR             R5, [R4,#0x28]
1DE3DC:  STR             R5, [R4,#0x2C]
1DE3E0:  STR             R0, [R4,#0x30]
1DE3E4:  ADD             R0, PC, R3; sub_1DE5A0
1DE3E8:  ADD             R3, PC, R12; sub_1DEDF0
1DE3EC:  STR             R5, [R4,#0x64]
1DE3F0:  STR             R2, [R4]
1DE3F4:  STMIB           R4, {R0,R3}
1DE3F8:  ADD             R0, R4, #0x34 ; '4'; int
1DE3FC:  STR             R1, [R4,#0xC]
1DE400:  MOV             R1, #0x24 ; '$'; n
1DE404:  STR             R5, [R4,#0x10]
1DE408:  STR             R5, [R4,#0x14]
1DE40C:  STR             R5, [R4,#0x18]
1DE410:  STR             R5, [R4,#0x1C]
1DE414:  BL              sub_22178C
1DE418:  ADD             R0, R4, #0xB8; int
1DE41C:  MOV             R1, #0x28 ; '('; n
1DE420:  STR             R5, [R4,#0x58]
1DE424:  STR             R5, [R4,#0x5C]
1DE428:  STR             R5, [R4,#0x60]
1DE42C:  STR             R5, [R4,#0x68]
1DE430:  STR             R5, [R4,#0x6C]
1DE434:  STR             R5, [R4,#0x70]
1DE438:  STR             R5, [R4,#0x74]
1DE43C:  STR             R5, [R4,#0x78]
1DE440:  STR             R5, [R4,#0x7C]
1DE444:  STR             R5, [R4,#0x80]
1DE448:  STR             R5, [R4,#0x84]
1DE44C:  STR             R5, [R4,#0x88]
1DE450:  STR             R5, [R4,#0x8C]
1DE454:  STR             R5, [R4,#0x90]
1DE458:  STR             R5, [R4,#0xEC]
1DE45C:  BL              sub_22178C
1DE460:  ADD             R0, R4, #0x1A0; int
1DE464:  MOV             R1, #0x3C ; '<'; n
1DE468:  MOV             R6, R4
1DE46C:  STR             R5, [R4,#0xE0]
1DE470:  STR             R5, [R4,#0x170]
1DE474:  STR             R5, [R4,#0xE4]
1DE478:  STR             R5, [R4,#0x174]
1DE47C:  STR             R5, [R4,#0xE8]
1DE480:  STR             R5, [R4,#0xF0]
1DE484:  STR             R5, [R4,#0xF4]
1DE488:  STR             R5, [R4,#0xF8]
1DE48C:  STR             R5, [R4,#0xFC]
1DE490:  STR             R5, [R4,#0x100]
1DE494:  STR             R5, [R4,#0x104]
1DE498:  STR             R5, [R4,#0x108]
1DE49C:  STR             R5, [R4,#0x10C]
1DE4A0:  STR             R5, [R4,#0x110]
1DE4A4:  STR             R5, [R4,#0x114]
1DE4A8:  STR             R5, [R4,#0x118]
1DE4AC:  STR             R5, [R4,#0x11C]
1DE4B0:  STR             R5, [R4,#0x120]
1DE4B4:  STR             R5, [R4,#0x124]
1DE4B8:  STR             R5, [R4,#0x128]
1DE4BC:  STR             R5, [R4,#0x12C]
1DE4C0:  STR             R5, [R4,#0x130]
1DE4C4:  STR             R5, [R4,#0x134]
1DE4C8:  STR             R5, [R4,#0x138]
1DE4CC:  STR             R5, [R4,#0x13C]
1DE4D0:  STR             R5, [R4,#0x140]
1DE4D4:  STR             R5, [R4,#0x144]
1DE4D8:  STR             R5, [R4,#0x148]
1DE4DC:  STR             R5, [R4,#0x14C]
1DE4E0:  STR             R5, [R4,#0x150]
1DE4E4:  STR             R5, [R4,#0x154]
1DE4E8:  STR             R5, [R4,#0x158]
1DE4EC:  STR             R5, [R4,#0x15C]
1DE4F0:  STR             R5, [R4,#0x160]
1DE4F4:  STR             R5, [R4,#0x164]
1DE4F8:  STR             R5, [R4,#0x168]
1DE4FC:  STR             R5, [R4,#0x16C]
1DE500:  STR             R5, [R4,#0x178]
1DE504:  STR             R5, [R4,#0x94]
1DE508:  STR             R5, [R4,#0x98]
1DE50C:  STR             R5, [R4,#0x9C]
1DE510:  STR             R5, [R4,#0xA0]
1DE514:  STR             R5, [R4,#0xA4]
1DE518:  STR             R5, [R4,#0xA8]
1DE51C:  STR             R5, [R4,#0xAC]
1DE520:  STR             R5, [R4,#0xB0]
1DE524:  STR             R5, [R4,#0xB4]
1DE528:  STR             R5, [R6,#0x17C]!
1DE52C:  STR             R5, [R4,#0x180]
1DE530:  STR             R5, [R4,#0x184]
1DE534:  STR             R5, [R4,#0x188]
1DE538:  STR             R5, [R4,#0x18C]
1DE53C:  STR             R5, [R4,#0x190]
1DE540:  STR             R5, [R4,#0x194]
1DE544:  STR             R5, [R4,#0x198]
1DE548:  STR             R5, [R4,#0x19C]
1DE54C:  BL              sub_22178C
1DE550:  MOV             R0, R4
1DE554:  STR             R6, [R4,#0x1DC]
1DE558:  POP             {R4-R6,R10,R11,PC}
1DE55C:  MOV             R4, #0
1DE560:  MOV             R0, R4
1DE564:  POP             {R4-R6,R10,R11,PC}
