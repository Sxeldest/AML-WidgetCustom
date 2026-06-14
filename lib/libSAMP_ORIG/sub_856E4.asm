; =========================================================
; Game Engine Function: sub_856E4
; Address            : 0x856E4 - 0x857E6
; =========================================================

856E4:  PUSH            {R4-R7,LR}
856E6:  ADD             R7, SP, #0xC
856E8:  PUSH.W          {R8,R9,R11}
856EC:  SUB             SP, SP, #0x48
856EE:  MOV             R4, R0
856F0:  LDR             R0, =(__stack_chk_guard_ptr - 0x856F6)
856F2:  ADD             R0, PC; __stack_chk_guard_ptr
856F4:  LDR             R0, [R0]; __stack_chk_guard
856F6:  LDR             R0, [R0]
856F8:  STR             R0, [SP,#0x60+var_1C]
856FA:  MOV             R0, R4
856FC:  BL              sub_84A98
85700:  LDR             R0, =(off_114AD8 - 0x85706)
85702:  ADD             R0, PC; off_114AD8
85704:  LDR             R0, [R0]; dword_1A4434
85706:  LDR             R0, [R0]
85708:  CMP             R0, #0
8570A:  ITTT NE
8570C:  LDRNE.W         R0, [R0,#0x3B0]
85710:  LDRNE           R0, [R0,#0x10]
85712:  CMPNE           R0, #0
85714:  BNE             loc_85730
85716:  LDR             R0, [SP,#0x60+var_1C]
85718:  LDR             R1, =(__stack_chk_guard_ptr - 0x8571E)
8571A:  ADD             R1, PC; __stack_chk_guard_ptr
8571C:  LDR             R1, [R1]; __stack_chk_guard
8571E:  LDR             R1, [R1]
85720:  CMP             R1, R0
85722:  ITTT EQ
85724:  ADDEQ           SP, SP, #0x48 ; 'H'
85726:  POPEQ.W         {R8,R9,R11}
8572A:  POPEQ           {R4-R7,PC}
8572C:  BLX             __stack_chk_fail
85730:  LDRH.W          R1, [R4,#0x5C]
85734:  CMP.W           R1, #0x3E8
85738:  BHI             loc_85716
8573A:  ADD.W           R0, R0, R1,LSL#2
8573E:  LDR.W           R0, [R0,#0x3EC]
85742:  CMP             R0, #0
85744:  BEQ             loc_85716
85746:  LDR             R0, [R0,#4]
85748:  MOVS            R1, #0
8574A:  STR             R1, [SP,#0x60+var_54]
8574C:  STR             R1, [SP,#0x60+var_44]
8574E:  CMP             R0, #0
85750:  STRD.W          R1, R1, [SP,#0x60+var_5C]
85754:  STR             R1, [SP,#0x60+var_34]
85756:  STRD.W          R1, R1, [SP,#0x60+var_4C]
8575A:  STR             R1, [SP,#0x60+var_24]
8575C:  STRD.W          R1, R1, [SP,#0x60+var_3C]
85760:  STRD.W          R1, R1, [SP,#0x60+var_2C]
85764:  ITT NE
85766:  LDRNE           R0, [R0,#0x14]
85768:  CMPNE           R0, #0
8576A:  BEQ             loc_857A4
8576C:  LDR             R1, [R0]
8576E:  STR             R1, [SP,#0x60+var_5C]
85770:  LDR             R1, [R0,#0x24]
85772:  LDR.W           LR, [R0,#8]
85776:  LDR.W           R9, [R0,#0x14]
8577A:  LDR             R3, [R0,#0x20]
8577C:  LDR.W           R12, [R0,#4]
85780:  LDR.W           R8, [R0,#0x10]
85784:  LDR             R2, [R0,#0x18]
85786:  LDR             R6, [R0,#0x28]
85788:  LDR             R5, [R0,#0x30]
8578A:  STRD.W          R3, R1, [SP,#0x60+var_3C]
8578E:  LDR             R1, [R0,#0x34]
85790:  LDR             R0, [R0,#0x38]
85792:  STR             R5, [SP,#0x60+var_2C]
85794:  STR             R6, [SP,#0x60+var_34]
85796:  STR             R2, [SP,#0x60+var_44]
85798:  STRD.W          R8, R9, [SP,#0x60+var_4C]
8579C:  STRD.W          R12, LR, [SP,#0x60+var_58]
857A0:  STR             R1, [SP,#0x60+var_28]
857A2:  STR             R0, [SP,#0x60+var_24]
857A4:  MOV             R0, R4
857A6:  BL              sub_85328
857AA:  LDRD.W          R5, R6, [R0]
857AE:  CMP             R5, R6
857B0:  BEQ             loc_85716
857B2:  ADD             R0, SP, #0x60+var_5C
857B4:  ADD.W           R8, R0, #0x30 ; '0'
857B8:  LDR             R0, =(off_114D50 - 0x857BE)
857BA:  ADD             R0, PC; off_114D50
857BC:  LDR.W           R9, [R0]; off_1ABF60
857C0:  B               loc_857C8
857C2:  ADDS            R5, #4
857C4:  CMP             R5, R6
857C6:  BEQ             loc_85716
857C8:  LDR             R0, [R5]
857CA:  BL              sub_7DB4C
857CE:  CMP             R0, #0
857D0:  BEQ             loc_857C2
857D2:  LDR             R0, [R5]
857D4:  LDR.W           R4, [R9]
857D8:  BL              sub_7DB44
857DC:  MOV             R1, R8
857DE:  MOVS            R2, #0
857E0:  MOVS            R3, #0
857E2:  BLX             R4
857E4:  B               loc_857C2
