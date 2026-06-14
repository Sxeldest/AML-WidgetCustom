; =========================================================
; Game Engine Function: sub_737F4
; Address            : 0x737F4 - 0x738B0
; =========================================================

737F4:  PUSH            {R4-R7,LR}
737F6:  ADD             R7, SP, #0xC
737F8:  PUSH.W          {R11}
737FC:  SUB             SP, SP, #0x18
737FE:  MOV             R5, R0
73800:  LDR             R0, =(__stack_chk_guard_ptr - 0x73808)
73802:  CMP             R1, R5
73804:  ADD             R0, PC; __stack_chk_guard_ptr
73806:  LDR             R0, [R0]; __stack_chk_guard
73808:  LDR             R0, [R0]
7380A:  STR             R0, [SP,#0x28+var_14]
7380C:  BEQ             loc_73896
7380E:  LDR             R0, [R5,#0x10]
73810:  MOV             R4, R1
73812:  CMP             R0, R5
73814:  BEQ             loc_73822
73816:  LDR             R1, [R4,#0x10]
73818:  CMP             R4, R1
7381A:  BEQ             loc_7383E
7381C:  STR             R1, [R5,#0x10]
7381E:  STR             R0, [R4,#0x10]
73820:  B               loc_73896
73822:  LDR             R1, [R4,#0x10]
73824:  CMP             R1, R4
73826:  BEQ             loc_73858
73828:  LDR             R1, [R0]
7382A:  LDR             R2, [R1,#0xC]
7382C:  MOV             R1, R4
7382E:  BLX             R2
73830:  LDR             R0, [R5,#0x10]
73832:  LDR             R1, [R0]
73834:  LDR             R1, [R1,#0x10]
73836:  BLX             R1
73838:  LDR             R0, [R4,#0x10]
7383A:  STR             R0, [R5,#0x10]
7383C:  B               loc_73894
7383E:  LDR             R0, [R1]
73840:  LDR             R2, [R0,#0xC]
73842:  MOV             R0, R1
73844:  MOV             R1, R5
73846:  BLX             R2
73848:  LDR             R0, [R4,#0x10]
7384A:  LDR             R1, [R0]
7384C:  LDR             R1, [R1,#0x10]
7384E:  BLX             R1
73850:  LDR             R0, [R5,#0x10]
73852:  STR             R0, [R4,#0x10]
73854:  STR             R5, [R5,#0x10]
73856:  B               loc_73896
73858:  LDR             R1, [R0]
7385A:  LDR             R2, [R1,#0xC]
7385C:  MOV             R1, SP
7385E:  BLX             R2
73860:  LDR             R0, [R5,#0x10]
73862:  LDR             R1, [R0]
73864:  LDR             R1, [R1,#0x10]
73866:  BLX             R1
73868:  MOVS            R6, #0
7386A:  STR             R6, [R5,#0x10]
7386C:  LDR             R0, [R4,#0x10]
7386E:  LDR             R1, [R0]
73870:  LDR             R2, [R1,#0xC]
73872:  MOV             R1, R5
73874:  BLX             R2
73876:  LDR             R0, [R4,#0x10]
73878:  LDR             R1, [R0]
7387A:  LDR             R1, [R1,#0x10]
7387C:  BLX             R1
7387E:  LDR             R0, [SP,#0x28+var_28]
73880:  STR             R6, [R4,#0x10]
73882:  STR             R5, [R5,#0x10]
73884:  LDR             R2, [R0,#0xC]
73886:  MOV             R0, SP
73888:  MOV             R1, R4
7388A:  BLX             R2
7388C:  LDR             R0, [SP,#0x28+var_28]
7388E:  LDR             R1, [R0,#0x10]
73890:  MOV             R0, SP
73892:  BLX             R1
73894:  STR             R4, [R4,#0x10]
73896:  LDR             R0, [SP,#0x28+var_14]
73898:  LDR             R1, =(__stack_chk_guard_ptr - 0x7389E)
7389A:  ADD             R1, PC; __stack_chk_guard_ptr
7389C:  LDR             R1, [R1]; __stack_chk_guard
7389E:  LDR             R1, [R1]
738A0:  CMP             R1, R0
738A2:  ITTT EQ
738A4:  ADDEQ           SP, SP, #0x18
738A6:  POPEQ.W         {R11}
738AA:  POPEQ           {R4-R7,PC}
738AC:  BLX             __stack_chk_fail
