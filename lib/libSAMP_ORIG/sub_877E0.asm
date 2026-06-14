; =========================================================
; Game Engine Function: sub_877E0
; Address            : 0x877E0 - 0x878A0
; =========================================================

877E0:  PUSH            {R4-R7,LR}
877E2:  ADD             R7, SP, #0xC
877E4:  PUSH.W          {R11}
877E8:  SUB             SP, SP, #0x10
877EA:  MOV             R4, R0
877EC:  LDR             R0, =(__stack_chk_guard_ptr - 0x877F2)
877EE:  ADD             R0, PC; __stack_chk_guard_ptr
877F0:  LDR             R0, [R0]; __stack_chk_guard
877F2:  LDR             R0, [R0]
877F4:  STR             R0, [SP,#0x20+var_14]
877F6:  MOVS            R0, #0
877F8:  STRB            R0, [R4,#0x14]
877FA:  STRD.W          R0, R0, [R4]
877FE:  STR             R0, [R4,#8]
87800:  MOVW            R0, #0x804; unsigned int
87804:  BLX             j__Znwj; operator new(uint)
87808:  MOV             R6, R0
8780A:  BL              sub_87146
8780E:  LDR             R1, =(unk_116E48 - 0x87814)
87810:  ADD             R1, PC; unk_116E48
87812:  MOV             R0, R6
87814:  BL              sub_8732C
87818:  LDRB            R1, [R4,#0x14]
8781A:  MOVS            R2, #0
8781C:  LDR             R0, [R4,#0x10]
8781E:  STR             R2, [SP,#0x20+var_20]
87820:  CBZ             R1, loc_8782A
87822:  CBNZ            R0, loc_8782A
87824:  LDR             R0, [R4]
87826:  LDR             R1, [R4,#0xC]
87828:  B               loc_8787E
8782A:  LDR             R1, [R4,#4]
8782C:  CBZ             R1, loc_87858
8782E:  SUBS            R2, R1, #1
87830:  ADD.W           R1, R1, R1,LSR#31
87834:  LDR             R0, [R4]
87836:  MOVS            R3, #0
87838:  ASRS            R1, R1, #1
8783A:  LDR.W           R5, [R0,R1,LSL#3]
8783E:  CMP             R5, #0
87840:  BEQ             loc_87874
87842:  IT GT
87844:  SUBGT           R2, R1, #1
87846:  CMP             R5, #0
87848:  IT LE
8784A:  ADDLE           R3, R1, #1
8784C:  SUBS            R1, R2, R3
8784E:  ADD.W           R1, R1, R1,LSR#31
87852:  ADD.W           R1, R3, R1,ASR#1
87856:  BGE             loc_8783A
87858:  MOVS            R0, #0
8785A:  STR             R6, [SP,#0x20+var_18]
8785C:  STR             R0, [SP,#0x20+var_1C]
8785E:  ADD             R2, SP, #0x20+var_1C
87860:  MOV             R1, SP
87862:  MOV             R0, R4
87864:  BL              sub_879D4
87868:  LDR             R1, [SP,#0x20+var_20]
8786A:  MOVS            R2, #1
8786C:  STRB            R2, [R4,#0x14]
8786E:  STRD.W          R0, R1, [R4,#0xC]
87872:  B               loc_87884
87874:  MOVS            R2, #1
87876:  STRB            R2, [R4,#0x14]
87878:  MOVS            R2, #0
8787A:  STRD.W          R1, R2, [R4,#0xC]
8787E:  ADD.W           R0, R0, R1,LSL#3
87882:  STR             R6, [R0,#4]
87884:  LDR             R0, [SP,#0x20+var_14]
87886:  LDR             R1, =(__stack_chk_guard_ptr - 0x8788C)
87888:  ADD             R1, PC; __stack_chk_guard_ptr
8788A:  LDR             R1, [R1]; __stack_chk_guard
8788C:  LDR             R1, [R1]
8788E:  CMP             R1, R0
87890:  ITTTT EQ
87892:  MOVEQ           R0, R4
87894:  ADDEQ           SP, SP, #0x10
87896:  POPEQ.W         {R11}
8789A:  POPEQ           {R4-R7,PC}
8789C:  BLX             __stack_chk_fail
