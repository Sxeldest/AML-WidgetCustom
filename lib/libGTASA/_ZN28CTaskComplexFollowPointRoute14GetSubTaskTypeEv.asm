; =========================================================
; Game Engine Function: _ZN28CTaskComplexFollowPointRoute14GetSubTaskTypeEv
; Address            : 0x51E61C - 0x51E750
; =========================================================

51E61C:  PUSH            {R7,LR}
51E61E:  MOV             R7, SP
51E620:  SUB             SP, SP, #0x10
51E622:  LDR.W           R12, [R0,#0x20]
51E626:  LDR.W           R2, [R12]
51E62A:  CBZ             R2, loc_51E686
51E62C:  LDR             R3, [R0,#0x24]
51E62E:  ADDS            R1, R3, #1
51E630:  CMP             R1, R2
51E632:  ITTT LT
51E634:  MOVLT.W         R0, #(elf_hash_bucket+0x288); this
51E638:  ADDLT           SP, SP, #0x10
51E63A:  POPLT           {R7,PC}
51E63C:  BNE             loc_51E652
51E63E:  LDRB.W          R0, [R0,#(elf_hash_bucket+0x2B0 - 0x384)]
51E642:  LSLS            R0, R0, #0x1D
51E644:  MOVW            R0, #0x387
51E648:  IT PL
51E64A:  MOVPL.W         R0, #0x384
51E64E:  ADD             SP, SP, #0x10
51E650:  POP             {R7,PC}
51E652:  CMP             R3, R2
51E654:  BNE             def_51E662; jumptable 0051E662 default case
51E656:  LDRD.W          R3, R2, [R0,#(elf_hash_bucket+0x294 - 0x384)]
51E65A:  ADDS            R1, R2, #1
51E65C:  STR             R1, [R0,#(elf_hash_bucket+0x298 - 0x384)]
51E65E:  CMP             R3, #3; switch 4 cases
51E660:  BHI             def_51E662; jumptable 0051E662 default case
51E662:  TBB.W           [PC,R3]; switch jump
51E666:  DCB 2; jump table for switch statement
51E667:  DCB 0xF
51E668:  DCB 0x14
51E669:  DCB 0x6F
51E66A:  LDRB.W          R1, [R0,#(elf_hash_bucket+0x2B0 - 0x384)]; jumptable 0051E662 case 0
51E66E:  TST.W           R1, #8
51E672:  ITT NE
51E674:  ANDNE.W         R1, R1, #0x8F
51E678:  STRBNE.W        R1, [R0,#(elf_hash_bucket+0x2B0 - 0x384)]
51E67C:  B               loc_51E686
51E67E:  MOVS            R0, #0xC8; jumptable 0051E662 default case
51E680:  ADD             SP, SP, #0x10
51E682:  POP             {R7,PC}
51E684:  CBZ             R2, loc_51E6EA; jumptable 0051E662 case 1
51E686:  MOVW            R0, #0x516
51E68A:  ADD             SP, SP, #0x10
51E68C:  POP             {R7,PC}
51E68E:  LDR.W           R3, [R12]; jumptable 0051E662 case 2
51E692:  CMP             R3, #2
51E694:  BLT             loc_51E744; jumptable 0051E662 case 3
51E696:  ADD.W           R1, R3, R3,LSL#1
51E69A:  SUB.W           LR, R3, #1
51E69E:  ADD.W           R1, R12, R1,LSL#2
51E6A2:  SUB.W           R2, R1, #8
51E6A6:  ADD.W           R1, R12, #4
51E6AA:  MOV.W           R12, #1
51E6AE:  VLDR            D16, [R1]
51E6B2:  SUB.W           LR, LR, #1
51E6B6:  LDR             R3, [R1,#8]
51E6B8:  CMP             R12, LR
51E6BA:  STR             R3, [SP,#0x18+var_10]
51E6BC:  VSTR            D16, [SP,#0x18+var_18]
51E6C0:  VLDR            D16, [R2]
51E6C4:  LDR             R3, [R2,#8]
51E6C6:  STR             R3, [R1,#8]
51E6C8:  VSTR            D16, [R1]
51E6CC:  ADD.W           R1, R1, #0xC
51E6D0:  VLDR            D16, [SP,#0x18+var_18]
51E6D4:  LDR             R3, [SP,#0x18+var_10]
51E6D6:  STR             R3, [R2,#8]
51E6D8:  ADD.W           R3, R12, #1
51E6DC:  VSTR            D16, [R2]
51E6E0:  SUB.W           R2, R2, #0xC
51E6E4:  MOV             R12, R3
51E6E6:  BLT             loc_51E6AE
51E6E8:  B               loc_51E744; jumptable 0051E662 case 3
51E6EA:  LDR.W           R3, [R12]
51E6EE:  CMP             R3, #2
51E6F0:  BLT             loc_51E744; jumptable 0051E662 case 3
51E6F2:  ADD.W           R1, R3, R3,LSL#1
51E6F6:  SUB.W           LR, R3, #1
51E6FA:  ADD.W           R1, R12, R1,LSL#2
51E6FE:  SUB.W           R2, R1, #8
51E702:  ADD.W           R1, R12, #4
51E706:  MOV.W           R12, #1
51E70A:  VLDR            D16, [R1]
51E70E:  SUB.W           LR, LR, #1
51E712:  LDR             R3, [R1,#8]
51E714:  CMP             R12, LR
51E716:  STR             R3, [SP,#0x18+var_10]
51E718:  VSTR            D16, [SP,#0x18+var_18]
51E71C:  VLDR            D16, [R2]
51E720:  LDR             R3, [R2,#8]
51E722:  STR             R3, [R1,#8]
51E724:  VSTR            D16, [R1]
51E728:  ADD.W           R1, R1, #0xC
51E72C:  VLDR            D16, [SP,#0x18+var_18]
51E730:  LDR             R3, [SP,#0x18+var_10]
51E732:  STR             R3, [R2,#8]
51E734:  ADD.W           R3, R12, #1
51E738:  VSTR            D16, [R2]
51E73C:  SUB.W           R2, R2, #0xC
51E740:  MOV             R12, R3
51E742:  BLT             loc_51E70A
51E744:  MOVS            R1, #0; jumptable 0051E662 case 3
51E746:  STR             R1, [R0,#(elf_hash_bucket+0x2AC - 0x384)]
51E748:  ADD             SP, SP, #0x10
51E74A:  POP.W           {R7,LR}
51E74E:  B               _ZN28CTaskComplexFollowPointRoute14GetSubTaskTypeEv; CTaskComplexFollowPointRoute::GetSubTaskType(void)
