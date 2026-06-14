; =========================================================
; Game Engine Function: sub_9E6E4
; Address            : 0x9E6E4 - 0x9E88E
; =========================================================

9E6E4:  PUSH            {R4-R7,LR}
9E6E6:  ADD             R7, SP, #0xC
9E6E8:  PUSH.W          {R8-R11}
9E6EC:  SUB             SP, SP, #0x8C
9E6EE:  MOV             R5, R0
9E6F0:  LDR             R0, =(__stack_chk_guard_ptr - 0x9E6FA)
9E6F2:  MOV             R10, R3
9E6F4:  MOV             R11, R2
9E6F6:  ADD             R0, PC; __stack_chk_guard_ptr
9E6F8:  MOV             R8, R1
9E6FA:  LDR             R0, [R0]; __stack_chk_guard
9E6FC:  LDR             R0, [R0]
9E6FE:  STR             R0, [SP,#0xA8+var_20]
9E700:  LDR.W           LR, [R5,#0x18]
9E704:  CMP.W           LR, #0
9E708:  BNE.W           loc_9E84E
9E70C:  LDR             R4, [R5,#0x14]
9E70E:  CMP             R4, #0
9E710:  BNE             loc_9E7AA
9E712:  LDR             R0, [R5,#0x4C]
9E714:  CMP             R0, #0
9E716:  BNE             loc_9E79E
9E718:  ADD.W           R9, SP, #0xA8+var_98
9E71C:  VMOV.I32        Q8, #0
9E720:  ADD.W           R0, R9, #0x48 ; 'H'; s
9E724:  LDR             R2, =(aProggycleanTtf - 0x9E73A); "ProggyClean.ttf, %dpx" ...
9E726:  MOVS            R3, #0xC
9E728:  ADD.W           R4, R9, #0x20 ; ' '
9E72C:  MOV             R1, R0
9E72E:  VST1.64         {D16-D17}, [R4]!
9E732:  MOV.W           R6, #0x3F800000
9E736:  ADD             R2, PC; "ProggyClean.ttf, %dpx"
9E738:  VST1.64         {D16-D17}, [R1]!
9E73C:  VST1.64         {D16-D17}, [R1],R3
9E740:  MOVS            R3, #1
9E742:  VST1.32         {D16-D17}, [R1]
9E746:  MOVS            R1, #0
9E748:  STR             R1, [R4]
9E74A:  STR             R1, [SP,#0xA8+var_8C]
9E74C:  STRD.W          R1, R1, [SP,#0xA8+var_98]
9E750:  STR             R1, [SP,#0xA8+var_64]
9E752:  STRD.W          R1, R6, [SP,#0xA8+var_58]
9E756:  STRB.W          R1, [SP,#0xA8+var_5C]
9E75A:  MOV             R1, #0x7F7FFFFF
9E762:  STRB.W          R3, [SP,#0xA8+var_90]
9E766:  STR             R1, [SP,#0xA8+var_60]
9E768:  MOVS            R1, #0x41500000
9E76E:  STR             R3, [SP,#0xA8+var_80]
9E770:  STR             R1, [SP,#0xA8+var_88]
9E772:  MOVS            R1, #0x28 ; '('
9E774:  STRB.W          R3, [SP,#0xA8+var_7C]
9E778:  STR             R3, [SP,#0xA8+var_84]
9E77A:  MOVS            R3, #0xD
9E77C:  BL              sub_886C0
9E780:  LDR             R0, [R4]
9E782:  LDR             R3, =(unk_53880 - 0x9E78C)
9E784:  LDR             R1, =(a7Hv0qsLQ65N42C - 0x9E794); "7])#######hV0qs'/###[),##/l:$#Q6>##5[n4"... ...
9E786:  CMP             R0, #0
9E788:  ADD             R3, PC; unk_53880
9E78A:  LDR             R2, [SP,#0xA8+var_88]; int
9E78C:  IT NE
9E78E:  MOVNE           R3, R0
9E790:  ADD             R1, PC; "7])#######hV0qs'/###[),##/l:$#Q6>##5[n4"...
9E792:  STR             R3, [SP,#0xA8+var_A8]; int
9E794:  MOV             R0, R5; int
9E796:  MOV             R3, R9; int
9E798:  BL              sub_9EA30
9E79C:  STR             R6, [R0,#0x34]
9E79E:  MOV             R0, R5
9E7A0:  BL              sub_9F330
9E7A4:  LDR             R4, [R5,#0x14]
9E7A6:  CMP             R4, #0
9E7A8:  BEQ             loc_9E84A
9E7AA:  LDRD.W          R0, R1, [R5,#0x1C]
9E7AE:  MULS            R0, R1
9E7B0:  LSLS            R0, R0, #2
9E7B2:  BL              sub_885E4
9E7B6:  MOV             LR, R0
9E7B8:  LDRD.W          R0, R1, [R5,#0x1C]
9E7BC:  STR.W           LR, [R5,#0x18]
9E7C0:  MUL.W           R9, R1, R0
9E7C4:  CMP.W           R9, #1
9E7C8:  BLT             loc_9E84E
9E7CA:  CMP.W           R9, #4
9E7CE:  BCC             loc_9E82A
9E7D0:  ADD.W           R0, R4, R9
9E7D4:  CMP             LR, R0
9E7D6:  ITT CC
9E7D8:  ADDCC.W         R0, LR, R9,LSL#2
9E7DC:  CMPCC           R4, R0
9E7DE:  BCC             loc_9E82A
9E7E0:  BIC.W           R3, R9, #3
9E7E4:  VMOV.I32        Q8, #0xFFFFFF
9E7E8:  AND.W           R0, R9, #3
9E7EC:  ADDS            R2, R4, R3
9E7EE:  ADD.W           R1, LR, R3,LSL#2
9E7F2:  ADD             R6, SP, #0xA8+var_9C
9E7F4:  STR             R0, [SP,#0xA8+var_A0]
9E7F6:  MOV             R0, LR
9E7F8:  STR             R3, [SP,#0xA8+var_A4]
9E7FA:  LDR.W           R12, [R4],#4
9E7FE:  SUBS            R3, #4
9E800:  STR.W           R12, [SP,#0xA8+var_9C]
9E804:  VLD1.32         {D18[0]}, [R6@32]
9E808:  VMOVL.U8        Q9, D18
9E80C:  VMOVL.U16       Q9, D18
9E810:  VSHL.I32        Q9, Q9, #0x18
9E814:  VORR            Q9, Q9, Q8
9E818:  VST1.32         {D18-D19}, [R0]!
9E81C:  BNE             loc_9E7FA
9E81E:  LDR             R0, [SP,#0xA8+var_A4]
9E820:  CMP             R9, R0
9E822:  LDR.W           R9, [SP,#0xA8+var_A0]
9E826:  BNE             loc_9E82E
9E828:  B               loc_9E84E
9E82A:  MOV             R1, LR
9E82C:  MOV             R2, R4
9E82E:  ADD.W           R0, R9, #1
9E832:  MOV             R3, #0xFFFFFF
9E836:  LDRB.W          R6, [R2],#1
9E83A:  SUBS            R0, #1
9E83C:  CMP             R0, #1
9E83E:  ORR.W           R6, R3, R6,LSL#24
9E842:  STR.W           R6, [R1],#4
9E846:  BHI             loc_9E836
9E848:  B               loc_9E84E
9E84A:  LDR.W           LR, [R5,#0x18]
9E84E:  STR.W           LR, [R8]
9E852:  CMP.W           R11, #0
9E856:  ITT NE
9E858:  LDRNE           R0, [R5,#0x1C]
9E85A:  STRNE.W         R0, [R11]
9E85E:  CMP.W           R10, #0
9E862:  LDR             R0, [R7,#arg_0]
9E864:  ITT NE
9E866:  LDRNE           R1, [R5,#0x20]
9E868:  STRNE.W         R1, [R10]
9E86C:  CMP             R0, #0
9E86E:  ITT NE
9E870:  MOVNE           R1, #4
9E872:  STRNE           R1, [R0]
9E874:  LDR             R0, [SP,#0xA8+var_20]
9E876:  LDR             R1, =(__stack_chk_guard_ptr - 0x9E87C)
9E878:  ADD             R1, PC; __stack_chk_guard_ptr
9E87A:  LDR             R1, [R1]; __stack_chk_guard
9E87C:  LDR             R1, [R1]
9E87E:  CMP             R1, R0
9E880:  ITTT EQ
9E882:  ADDEQ           SP, SP, #0x8C
9E884:  POPEQ.W         {R8-R11}
9E888:  POPEQ           {R4-R7,PC}
9E88A:  BLX             __stack_chk_fail
