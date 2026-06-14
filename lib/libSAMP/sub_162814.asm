; =========================================================
; Game Engine Function: sub_162814
; Address            : 0x162814 - 0x16289E
; =========================================================

162814:  PUSH            {R4-R7,LR}
162816:  ADD             R7, SP, #0xC
162818:  PUSH.W          {R8,R9,R11}
16281C:  SUB             SP, SP, #0x38
16281E:  MOV             R8, R0
162820:  ADD             R0, SP, #0x50+var_2C
162822:  MOV             R6, R3
162824:  MOV             R5, R2
162826:  MOV             R9, R1
162828:  BL              sub_F06B2
16282C:  BL              sub_F0734
162830:  MOV             R4, R0
162832:  LDR             R0, [R7,#arg_0]
162834:  LDRB            R1, [R4]
162836:  LSLS            R1, R1, #0x1F
162838:  BNE             loc_162840
16283A:  MOVS            R1, #0
16283C:  STRH            R1, [R4]
16283E:  B               loc_162850
162840:  LDR             R1, [R4,#8]
162842:  MOVS            R2, #0
162844:  STRB            R2, [R1]
162846:  LDRB            R3, [R4]
162848:  LDR             R1, [R4]
16284A:  STR             R2, [R4,#4]
16284C:  LSLS            R2, R3, #0x1F
16284E:  BNE             loc_162854
162850:  MOVS            R2, #9
162852:  B               loc_16285A
162854:  SUBS            R1, #2
162856:  BIC.W           R2, R1, #1
16285A:  LDR             R0, [R0]
16285C:  STR             R6, [SP,#0x50+var_28]
16285E:  STR             R0, [SP,#0x50+var_20]
162860:  MOVS            R0, #0
162862:  MOVS            R3, #0xCC
162864:  ADD             R1, SP, #0x50+var_28
162866:  STRD.W          R3, R0, [SP,#0x50+var_48]
16286A:  STRD.W          R1, R0, [SP,#0x50+var_40]
16286E:  ADD             R0, SP, #0x50+var_34
162870:  MOV             R1, R4
162872:  MOV             R3, R9
162874:  STR             R5, [SP,#0x50+var_50]
162876:  BL              sub_DCA40
16287A:  LDRB            R0, [R4]
16287C:  LDRD.W          R2, R1, [R4,#4]
162880:  ANDS.W          R3, R0, #1
162884:  ITT EQ
162886:  ADDEQ           R1, R4, #1; text
162888:  LSREQ           R2, R0, #1
16288A:  MOV             R0, R8; int
16288C:  BL              sub_ED4F8
162890:  ADD             R0, SP, #0x50+var_2C
162892:  BL              sub_F0720
162896:  ADD             SP, SP, #0x38 ; '8'
162898:  POP.W           {R8,R9,R11}
16289C:  POP             {R4-R7,PC}
