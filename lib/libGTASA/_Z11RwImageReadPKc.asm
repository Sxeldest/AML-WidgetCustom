; =========================================================
; Game Engine Function: _Z11RwImageReadPKc
; Address            : 0x1D982C - 0x1D9904
; =========================================================

1D982C:  PUSH            {R4-R7,LR}
1D982E:  ADD             R7, SP, #0xC
1D9830:  PUSH.W          {R8,R9,R11}
1D9834:  SUB             SP, SP, #8
1D9836:  MOV             R8, R0
1D9838:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9840)
1D983A:  MOVS            R1, #0x3A ; ':'
1D983C:  ADD             R0, PC; RwEngineInstance_ptr
1D983E:  LDR             R4, [R0]; RwEngineInstance
1D9840:  LDR             R0, [R4]
1D9842:  LDR.W           R2, [R0,#0x108]
1D9846:  MOV             R0, R8
1D9848:  BLX             R2
1D984A:  MOV             R5, R0
1D984C:  LDR             R0, [R4]
1D984E:  CMP             R5, #0
1D9850:  MOV.W           R1, #0x2F ; '/'
1D9854:  LDR.W           R2, [R0,#0x108]
1D9858:  IT EQ
1D985A:  MOVEQ           R5, R8
1D985C:  MOV             R0, R5
1D985E:  BLX             R2
1D9860:  LDR             R1, [R4]
1D9862:  CMP             R0, #0
1D9864:  LDR.W           R2, [R1,#0x108]
1D9868:  IT NE
1D986A:  MOVNE           R5, R0
1D986C:  MOV             R0, R5
1D986E:  MOVS            R1, #0x5C ; '\'
1D9870:  BLX             R2
1D9872:  LDR             R1, [R4]
1D9874:  CMP             R0, #0
1D9876:  LDR.W           R2, [R1,#0x108]
1D987A:  IT NE
1D987C:  MOVNE           R5, R0
1D987E:  MOV             R0, R5
1D9880:  MOVS            R1, #0x2E ; '.'
1D9882:  BLX             R2
1D9884:  MOV             R5, R0
1D9886:  CBZ             R5, loc_1D98FA
1D9888:  LDR             R0, =(RwEngineInstance_ptr - 0x1D9890)
1D988A:  LDR             R1, =(dword_6BCF04 - 0x1D9892)
1D988C:  ADD             R0, PC; RwEngineInstance_ptr
1D988E:  ADD             R1, PC; dword_6BCF04
1D9890:  LDR             R0, [R0]; RwEngineInstance
1D9892:  LDR             R1, [R1]
1D9894:  LDR             R0, [R0]
1D9896:  ADD             R1, R0
1D9898:  LDR.W           R6, [R1,#0x21C]
1D989C:  CBZ             R6, loc_1D98FA
1D989E:  LDR.W           R2, [R0,#0x110]
1D98A2:  MOV             R0, R6
1D98A4:  MOV             R1, R5
1D98A6:  BLX             R2
1D98A8:  CBZ             R0, loc_1D98DE
1D98AA:  LDR             R0, =(RwEngineInstance_ptr - 0x1D98B0)
1D98AC:  ADD             R0, PC; RwEngineInstance_ptr
1D98AE:  LDR             R4, [R0]; RwEngineInstance
1D98B0:  LDR             R0, =(RwEngineInstance_ptr - 0x1D98B6)
1D98B2:  ADD             R0, PC; RwEngineInstance_ptr
1D98B4:  LDR.W           R9, [R0]; RwEngineInstance
1D98B8:  LDR             R0, [R4]
1D98BA:  MOV             R1, R5
1D98BC:  LDR.W           R2, [R0,#0x110]
1D98C0:  ADD.W           R0, R6, #0x14
1D98C4:  BLX             R2
1D98C6:  CBZ             R0, loc_1D98DE
1D98C8:  LDR             R6, [R6,#0x30]
1D98CA:  CBZ             R6, loc_1D98FA
1D98CC:  LDR.W           R0, [R9]
1D98D0:  MOV             R1, R5
1D98D2:  LDR.W           R2, [R0,#0x110]
1D98D6:  MOV             R0, R6
1D98D8:  BLX             R2
1D98DA:  CMP             R0, #0
1D98DC:  BNE             loc_1D98B8
1D98DE:  LDR             R1, [R6,#0x28]
1D98E0:  MOVS            R0, #0
1D98E2:  CBZ             R1, loc_1D98FC
1D98E4:  LDR             R2, =(sub_1D9B50+1 - 0x1D98F2)
1D98E6:  MOV             R3, SP
1D98E8:  STRD.W          R1, R0, [SP,#0x20+var_20]
1D98EC:  MOV             R0, R8; char *
1D98EE:  ADD             R2, PC; sub_1D9B50
1D98F0:  MOVS            R1, #5
1D98F2:  BL              sub_1D991C
1D98F6:  LDR             R0, [SP,#0x20+var_1C]
1D98F8:  B               loc_1D98FC
1D98FA:  MOVS            R0, #0
1D98FC:  ADD             SP, SP, #8
1D98FE:  POP.W           {R8,R9,R11}
1D9902:  POP             {R4-R7,PC}
