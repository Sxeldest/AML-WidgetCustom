; =========================================================
; Game Engine Function: _Z23jpeg_default_colorspaceP20jpeg_compress_struct
; Address            : 0x47A4A0 - 0x47A6CE
; =========================================================

47A4A0:  PUSH            {R4,R5,R7,LR}
47A4A2:  ADD             R7, SP, #8
47A4A4:  MOV             R4, R0
47A4A6:  LDR             R0, [R4,#0x28]
47A4A8:  CMP             R0, #5; switch 6 cases
47A4AA:  BHI.W           def_47A4AE; jumptable 0047A4AE default case
47A4AE:  TBB.W           [PC,R0]; switch jump
47A4B2:  DCB 0x35; jump table for switch statement
47A4B3:  DCB 0x70
47A4B4:  DCB 3
47A4B5:  DCB 3
47A4B6:  DCB 0x90
47A4B7:  DCB 0xC8
47A4B8:  LDR             R0, [R4,#0x14]; jumptable 0047A4AE cases 2,3
47A4BA:  CMP             R0, #0x64 ; 'd'
47A4BC:  BEQ             loc_47A4D2
47A4BE:  LDR             R0, [R4]
47A4C0:  MOVS            R1, #0x14
47A4C2:  STR             R1, [R0,#0x14]
47A4C4:  LDR             R0, [R4]
47A4C6:  LDR             R1, [R4,#0x14]
47A4C8:  STR             R1, [R0,#0x18]
47A4CA:  LDR             R0, [R4]
47A4CC:  LDR             R1, [R0]
47A4CE:  MOV             R0, R4
47A4D0:  BLX             R1
47A4D2:  ADR             R0, dword_47A6E0
47A4D4:  MOVS            R1, #3
47A4D6:  VLD1.64         {D16-D17}, [R0@128]
47A4DA:  MOVS            R0, #0
47A4DC:  MOVS            R3, #1
47A4DE:  STRB.W          R0, [R4,#0xCC]
47A4E2:  LDR             R2, [R4,#0x44]
47A4E4:  STRB.W          R3, [R4,#0xC4]
47A4E8:  STR             R1, [R4,#0x3C]
47A4EA:  STR             R1, [R4,#0x40]
47A4EC:  STR             R3, [R2]
47A4EE:  STR             R0, [R2,#0x18]
47A4F0:  ADD.W           R0, R2, #8
47A4F4:  MOVS            R2, #2
47A4F6:  VST1.32         {D16-D17}, [R0]
47A4FA:  VMOV.I32        Q8, #1
47A4FE:  LDR             R0, [R4,#0x44]
47A500:  STR             R3, [R0,#0x6C]
47A502:  STR             R2, [R0,#0x54]
47A504:  ADDS            R0, #0x5C ; '\'
47A506:  VST1.32         {D16-D17}, [R0]
47A50A:  LDR             R0, [R4,#0x44]
47A50C:  STR.W           R3, [R0,#0xC0]
47A510:  STR.W           R1, [R0,#0xA8]
47A514:  ADDS            R0, #0xB0
47A516:  VST1.32         {D16-D17}, [R0]
47A51A:  POP             {R4,R5,R7,PC}
47A51C:  LDR             R0, [R4,#0x14]; jumptable 0047A4AE case 0
47A51E:  CMP             R0, #0x64 ; 'd'
47A520:  BEQ             loc_47A536
47A522:  LDR             R0, [R4]
47A524:  MOVS            R1, #0x14
47A526:  STR             R1, [R0,#0x14]
47A528:  LDR             R0, [R4]
47A52A:  LDR             R1, [R4,#0x14]
47A52C:  STR             R1, [R0,#0x18]
47A52E:  LDR             R0, [R4]
47A530:  LDR             R1, [R0]
47A532:  MOV             R0, R4
47A534:  BLX             R1
47A536:  LDR             R0, [R4,#0x24]
47A538:  MOVS            R5, #0
47A53A:  STRB.W          R5, [R4,#0xC4]
47A53E:  STRB.W          R5, [R4,#0xCC]
47A542:  STRD.W          R0, R5, [R4,#0x3C]
47A546:  SUBS            R0, #1
47A548:  CMP             R0, #4
47A54A:  BCC             loc_47A56E
47A54C:  LDR             R0, [R4]
47A54E:  MOVS            R1, #0x1A
47A550:  STR             R1, [R0,#0x14]
47A552:  LDR             R0, [R4]
47A554:  LDR             R1, [R4,#0x3C]
47A556:  STR             R1, [R0,#0x18]
47A558:  MOVS            R1, #4
47A55A:  LDR             R0, [R4]
47A55C:  STR             R1, [R0,#0x1C]
47A55E:  LDR             R0, [R4]
47A560:  LDR             R1, [R0]
47A562:  MOV             R0, R4
47A564:  BLX             R1
47A566:  LDR             R0, [R4,#0x3C]
47A568:  CMP             R0, #1
47A56A:  IT LT
47A56C:  POPLT           {R4,R5,R7,PC}
47A56E:  ADR             R0, dword_47A6D0
47A570:  MOVS            R1, #0
47A572:  VLD1.64         {D16-D17}, [R0@128]
47A576:  MOVS            R0, #0
47A578:  LDR             R2, [R4,#0x44]
47A57A:  STR             R1, [R2,R0]
47A57C:  ADD             R2, R0
47A57E:  ADDS            R0, #0x54 ; 'T'
47A580:  STR             R5, [R2,#0x18]
47A582:  ADDS            R2, #8
47A584:  ADDS            R1, #1
47A586:  VST1.32         {D16-D17}, [R2]
47A58A:  LDR             R2, [R4,#0x3C]
47A58C:  CMP             R1, R2
47A58E:  BLT             loc_47A578
47A590:  POP             {R4,R5,R7,PC}
47A592:  LDR             R0, [R4,#0x14]; jumptable 0047A4AE case 1
47A594:  CMP             R0, #0x64 ; 'd'
47A596:  BEQ             loc_47A5AC
47A598:  LDR             R0, [R4]
47A59A:  MOVS            R1, #0x14
47A59C:  STR             R1, [R0,#0x14]
47A59E:  LDR             R0, [R4]
47A5A0:  LDR             R1, [R4,#0x14]
47A5A2:  STR             R1, [R0,#0x18]
47A5A4:  LDR             R0, [R4]
47A5A6:  LDR             R1, [R0]
47A5A8:  MOV             R0, R4
47A5AA:  BLX             R1
47A5AC:  ADR             R0, dword_47A6D0
47A5AE:  MOVS            R2, #1
47A5B0:  VLD1.64         {D16-D17}, [R0@128]
47A5B4:  MOVS            R0, #0
47A5B6:  STRB.W          R0, [R4,#0xCC]
47A5BA:  LDR             R1, [R4,#0x44]
47A5BC:  STRB.W          R2, [R4,#0xC4]
47A5C0:  STRD.W          R2, R2, [R4,#0x3C]
47A5C4:  STR             R2, [R1]
47A5C6:  STR             R0, [R1,#0x18]
47A5C8:  ADD.W           R0, R1, #8
47A5CC:  VST1.32         {D16-D17}, [R0]
47A5D0:  POP             {R4,R5,R7,PC}
47A5D2:  LDR             R0, [R4,#0x14]; jumptable 0047A4AE case 4
47A5D4:  CMP             R0, #0x64 ; 'd'
47A5D6:  BEQ             loc_47A5EC
47A5D8:  LDR             R0, [R4]
47A5DA:  MOVS            R1, #0x14
47A5DC:  STR             R1, [R0,#0x14]
47A5DE:  LDR             R0, [R4]
47A5E0:  LDR             R1, [R4,#0x14]
47A5E2:  STR             R1, [R0,#0x18]
47A5E4:  LDR             R0, [R4]
47A5E6:  LDR             R1, [R0]
47A5E8:  MOV             R0, R4
47A5EA:  BLX             R1
47A5EC:  ADR             R0, dword_47A6D0
47A5EE:  MOVS            R1, #4
47A5F0:  VLD1.64         {D16-D17}, [R0@128]
47A5F4:  MOVS            R0, #0
47A5F6:  MOVS            R3, #1
47A5F8:  STRB.W          R0, [R4,#0xC4]
47A5FC:  LDR             R2, [R4,#0x44]
47A5FE:  STRB.W          R3, [R4,#0xCC]
47A602:  STRD.W          R1, R1, [R4,#0x3C]
47A606:  MOVS            R1, #0x43 ; 'C'
47A608:  STR             R1, [R2]
47A60A:  ADD.W           R1, R2, #8
47A60E:  STR             R0, [R2,#0x18]
47A610:  MOVS            R2, #0x4D ; 'M'
47A612:  VST1.32         {D16-D17}, [R1]
47A616:  LDR             R1, [R4,#0x44]
47A618:  STR             R0, [R1,#0x6C]
47A61A:  STR             R2, [R1,#0x54]
47A61C:  ADDS            R1, #0x5C ; '\'
47A61E:  MOVS            R2, #0x59 ; 'Y'
47A620:  VST1.32         {D16-D17}, [R1]
47A624:  LDR             R1, [R4,#0x44]
47A626:  STR.W           R0, [R1,#0xC0]
47A62A:  STR.W           R2, [R1,#0xA8]
47A62E:  ADDS            R1, #0xB0
47A630:  VST1.32         {D16-D17}, [R1]
47A634:  LDR             R1, [R4,#0x44]
47A636:  STR.W           R0, [R1,#0x114]
47A63A:  MOVS            R0, #0x4B ; 'K'
47A63C:  STR.W           R0, [R1,#0xFC]
47A640:  B               loc_47A6B2
47A642:  LDR             R0, [R4,#0x14]; jumptable 0047A4AE case 5
47A644:  CMP             R0, #0x64 ; 'd'
47A646:  BEQ             loc_47A65C
47A648:  LDR             R0, [R4]
47A64A:  MOVS            R1, #0x14
47A64C:  STR             R1, [R0,#0x14]
47A64E:  LDR             R0, [R4]
47A650:  LDR             R1, [R4,#0x14]
47A652:  STR             R1, [R0,#0x18]
47A654:  LDR             R0, [R4]
47A656:  LDR             R1, [R0]
47A658:  MOV             R0, R4
47A65A:  BLX             R1
47A65C:  ADR             R0, dword_47A6E0
47A65E:  MOVS            R1, #5
47A660:  VLD1.64         {D16-D17}, [R0@128]
47A664:  MOVS            R0, #0
47A666:  MOVS            R2, #1
47A668:  MOVS            R5, #4
47A66A:  STRB.W          R0, [R4,#0xC4]
47A66E:  VMOV.I32        Q9, #1
47A672:  LDR             R3, [R4,#0x44]
47A674:  STRB.W          R2, [R4,#0xCC]
47A678:  STRD.W          R5, R1, [R4,#0x3C]
47A67C:  ADD.W           R1, R3, #8
47A680:  STR             R2, [R3]
47A682:  STR             R0, [R3,#0x18]
47A684:  MOVS            R3, #2
47A686:  VST1.32         {D16-D17}, [R1]
47A68A:  LDR             R1, [R4,#0x44]
47A68C:  STR             R2, [R1,#0x6C]
47A68E:  STR             R3, [R1,#0x54]
47A690:  ADDS            R1, #0x5C ; '\'
47A692:  VST1.32         {D18-D19}, [R1]
47A696:  LDR             R1, [R4,#0x44]
47A698:  STR.W           R2, [R1,#0xC0]
47A69C:  MOVS            R2, #3
47A69E:  STR.W           R2, [R1,#0xA8]
47A6A2:  ADDS            R1, #0xB0
47A6A4:  VST1.32         {D18-D19}, [R1]
47A6A8:  LDR             R1, [R4,#0x44]
47A6AA:  STR.W           R0, [R1,#0x114]
47A6AE:  STR.W           R5, [R1,#0xFC]
47A6B2:  ADD.W           R0, R1, #0x104
47A6B6:  VST1.32         {D16-D17}, [R0]
47A6BA:  POP             {R4,R5,R7,PC}
47A6BC:  LDR             R0, [R4]; jumptable 0047A4AE default case
47A6BE:  MOVS            R1, #9
47A6C0:  STR             R1, [R0,#0x14]
47A6C2:  LDR             R0, [R4]
47A6C4:  LDR             R1, [R0]
47A6C6:  MOV             R0, R4
47A6C8:  POP.W           {R4,R5,R7,LR}
47A6CC:  BX              R1
