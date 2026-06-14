; =========================================================
; Game Engine Function: sub_1666C8
; Address            : 0x1666C8 - 0x166910
; =========================================================

1666C8:  PUSH            {R4-R7,LR}
1666CA:  ADD             R7, SP, #0xC
1666CC:  PUSH.W          {R8-R11}
1666D0:  SUB             SP, SP, #4
1666D2:  VPUSH           {D8-D11}
1666D6:  SUB             SP, SP, #0x10
1666D8:  VMOV.I32        Q5, #0
1666DC:  ADD.W           R11, R0, #0xC
1666E0:  MOVS            R6, #0
1666E2:  MOV             R4, R0
1666E4:  STR             R6, [R0,#0x40]
1666E6:  ADD.W           R5, R4, #0x58 ; 'X'
1666EA:  VST1.32         {D10-D11}, [R11]!
1666EE:  MOV             R10, R2
1666F0:  MOV             R8, R1
1666F2:  VST1.32         {D10-D11}, [R11]!
1666F6:  MOV             R0, R11
1666F8:  VST1.32         {D10-D11}, [R5]!
1666FC:  VST1.32         {D10-D11}, [R0]!
166700:  STR             R6, [R0]
166702:  MOVS            R0, #0x50 ; 'P'
166704:  VST1.32         {D10-D11}, [R5],R0
166708:  VST1.32         {D10-D11}, [R5]!
16670C:  MOV             R0, R5
16670E:  BL              sub_166998
166712:  ADR             R0, dword_166940
166714:  MOVS            R1, #0x18
166716:  VLD1.64         {D8-D9}, [R0]
16671A:  ADD.W           R0, R4, #0x1D0
16671E:  VST1.32         {D8-D9}, [R0]!
166722:  VST1.32         {D8-D9}, [R0]!
166726:  VST1.32         {D8-D9}, [R0]!
16672A:  VST1.32         {D8-D9}, [R0]!
16672E:  VST1.32         {D8-D9}, [R0]!
166732:  VST1.32         {D8-D9}, [R0],R1
166736:  STRD.W          R6, R6, [R4,#0x1C4]
16673A:  STR.W           R6, [R4,#0x1CC]
16673E:  BL              sub_17BDA0
166742:  ADD.W           R0, R4, #0x25C
166746:  STR             R0, [SP,#0x50+var_48]
166748:  VST1.32         {D10-D11}, [R0]!
16674C:  STR             R6, [R0]
16674E:  MOVW            R0, #0x18D0
166752:  ADD.W           R1, R8, R0
166756:  ADD.W           R8, R4, #0x280
16675A:  STR.W           R6, [R4,#0x270]
16675E:  MOV             R0, R8
166760:  BL              sub_166A58
166764:  ADD.W           R0, R4, #0x314
166768:  STR             R0, [SP,#0x50+var_44]
16676A:  VST1.32         {D8-D9}, [R0]!
16676E:  VST1.32         {D8-D9}, [R0]
166772:  MOV             R0, R10
166774:  BL              sub_165460
166778:  STR             R0, [R4]
16677A:  MOV             R0, R10
16677C:  MOVS            R1, #0
16677E:  MOVS            R2, #0
166780:  BL              sub_16560C
166784:  LDRD.W          R1, R2, [R4,#0x1C4]
166788:  STR             R0, [R4,#4]
16678A:  CMP             R1, R2
16678C:  BNE             loc_16680C
16678E:  CMP             R1, #0
166790:  ADD.W           R9, R1, #1
166794:  ITTE NE
166796:  ADDNE.W         R0, R1, R1,LSR#31
16679A:  ADDNE.W         R0, R1, R0,ASR#1
16679E:  MOVEQ           R0, #8
1667A0:  CMP             R0, R9
1667A2:  IT GT
1667A4:  MOVGT           R9, R0
1667A6:  CMP             R1, R9
1667A8:  BGE             loc_16680C
1667AA:  LDR             R0, =(dword_381B58 - 0x1667B0)
1667AC:  ADD             R0, PC; dword_381B58
1667AE:  STR             R0, [SP,#0x50+var_4C]
1667B0:  LDR             R1, [R0]
1667B2:  MOV.W           R0, R9,LSL#2
1667B6:  CBZ             R1, loc_1667C2
1667B8:  LDR.W           R2, [R1,#0x370]
1667BC:  ADDS            R2, #1
1667BE:  STR.W           R2, [R1,#0x370]
1667C2:  LDR             R6, =(dword_381B60 - 0x1667CA)
1667C4:  LDR             R2, =(off_2390AC - 0x1667CC)
1667C6:  ADD             R6, PC; dword_381B60
1667C8:  ADD             R2, PC; off_2390AC
1667CA:  LDR             R1, [R6]
1667CC:  LDR             R2, [R2]; sub_171190
1667CE:  BLX             R2; sub_171190
1667D0:  LDR.W           R1, [R4,#0x1CC]; src
1667D4:  CBZ             R1, loc_166804
1667D6:  LDR.W           R2, [R4,#0x1C4]
1667DA:  STR             R0, [SP,#0x50+var_50]
1667DC:  LSLS            R2, R2, #2; n
1667DE:  BLX             j_memcpy
1667E2:  LDR.W           R0, [R4,#0x1CC]
1667E6:  CBZ             R0, loc_1667F8
1667E8:  LDR             R1, [SP,#0x50+var_4C]
1667EA:  LDR             R1, [R1]
1667EC:  CBZ             R1, loc_1667F8
1667EE:  LDR.W           R2, [R1,#0x370]
1667F2:  SUBS            R2, #1
1667F4:  STR.W           R2, [R1,#0x370]
1667F8:  LDR             R2, =(off_2390B0 - 0x166800)
1667FA:  LDR             R1, [R6]
1667FC:  ADD             R2, PC; off_2390B0
1667FE:  LDR             R2, [R2]; j_opus_decoder_destroy_0
166800:  BLX             R2; j_opus_decoder_destroy_0
166802:  LDR             R0, [SP,#0x50+var_50]
166804:  LDR.W           R1, [R4,#0x1C4]
166808:  STRD.W          R9, R0, [R4,#0x1C8]
16680C:  LDR.W           R2, [R4,#0x1CC]
166810:  VMOV.I32        Q5, #0
166814:  LDR             R0, [R4,#4]
166816:  STR.W           R0, [R2,R1,LSL#2]
16681A:  ADD.W           R0, R4, #8
16681E:  MOVS            R1, #0xC
166820:  VST1.32         {D10-D11}, [R0],R1
166824:  MOV.W           R1, #0x1B0
166828:  VST1.32         {D10-D11}, [R0],R1
16682C:  LDR             R1, [R0]
16682E:  VST1.32         {D10-D11}, [R11]!
166832:  ADDS            R1, #1
166834:  VST1.32         {D10-D11}, [R11]
166838:  STR             R1, [R0]
16683A:  MOV             R0, R10; char *
16683C:  MOV.W           R1, #0xFFFFFFFF; size_t
166840:  MOV.W           R9, #0xFFFFFFFF
166844:  BLX             __strlen_chk
166848:  LDR             R1, =(aMove - 0x166854); "#MOVE" ...
16684A:  ADDS            R0, #1
16684C:  STR             R0, [R4,#0x4C]
16684E:  MOV             R0, R4
166850:  ADD             R1, PC; "#MOVE"
166852:  MOVS            R2, #0
166854:  ADD.W           R5, R4, #0x54 ; 'T'
166858:  MOVS            R6, #0
16685A:  BL              sub_166AD4
16685E:  ADR             R1, dword_166950
166860:  STR             R0, [R4,#0x50]
166862:  VLD1.64         {D16-D17}, [R1]
166866:  ADR             R1, dword_166960
166868:  MOVW            R0, #0xFFFF
16686C:  MOVS            R2, #0xF
16686E:  VLD1.64         {D18-D19}, [R1]
166872:  ADR             R1, dword_166970
166874:  MOVT            R0, #0x7F7F
166878:  VLD1.64         {D20-D21}, [R1]
16687C:  MOV.W           R1, #0x3F000000
166880:  STRD.W          R0, R1, [R4,#0x64]
166884:  STR             R1, [R4,#0x6C]
166886:  MOVS            R1, #0xFFFF0000
16688C:  STRD.W          R0, R0, [R4,#0xC0]
166890:  STR.W           R1, [R4,#0x84]
166894:  MOVS            R1, #0xFF
166896:  STRB.W          R1, [R4,#0x83]
16689A:  ADD.W           R1, R4, #0x70 ; 'p'
16689E:  VST1.32         {D10-D11}, [R1],R2
1668A2:  STR             R6, [R1]
1668A4:  MOVS            R1, #0x48 ; 'H'
1668A6:  VST1.32         {D16-D17}, [R5],R1
1668AA:  MOV.W           R1, #0x278
1668AE:  STR.W           R0, [R4,#0xBC]
1668B2:  LDR             R0, [R4]
1668B4:  VST1.32         {D18-D19}, [R5]!
1668B8:  STR.W           R0, [R4,#0x2AC]
1668BC:  ADD.W           R0, R4, #0x2F8
1668C0:  VST1.32         {D20-D21}, [R5],R1
1668C4:  MOV.W           R1, #0x3F800000
1668C8:  VST1.32         {D10-D11}, [R0]!
1668CC:  STRD.W          R1, R9, [R4,#0x274]
1668D0:  ADD.W           R1, R4, #0x324
1668D4:  VST1.32         {D8-D9}, [R5]
1668D8:  STR             R6, [R0]
1668DA:  LDR             R0, [SP,#0x50+var_44]
1668DC:  VLD1.32         {D16-D17}, [R1]
1668E0:  VST1.32         {D16-D17}, [R0]
1668E4:  MOV             R0, R4
1668E6:  STRH.W          R9, [R4,#0x88]
1668EA:  STRB.W          R6, [R4,#0x98]
1668EE:  STRD.W          R6, R9, [R4,#0x8C]
1668F2:  STR.W           R9, [R4,#0x94]
1668F6:  STR.W           R8, [R4,#0x27C]
1668FA:  STRD.W          R9, R6, [R4,#0x230]
1668FE:  STRD.W          R6, R6, [R4,#0x30C]
166902:  ADD             SP, SP, #0x10
166904:  VPOP            {D8-D11}
166908:  ADD             SP, SP, #4
16690A:  POP.W           {R8-R11}
16690E:  POP             {R4-R7,PC}
