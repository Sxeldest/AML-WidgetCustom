; =========================================================
; Game Engine Function: GetHrtf
; Address            : 0x1D780C - 0x1D78BC
; =========================================================

1D780C:  PUSH            {R4-R7,R11,LR}
1D7810:  ADD             R11, SP, #0x10
1D7814:  MOV             R7, R0
1D7818:  MOVW            R1, #0x1501
1D781C:  LDR             R0, [R7,#0x18]
1D7820:  CMP             R0, R1
1D7824:  BNE             loc_1D7884
1D7828:  LDR             R2, =(dword_382924 - 0x1D7838)
1D782C:  LDR             R1, [R7,#0xC]
1D7830:  LDR             R2, [PC,R2]; dword_382924
1D7834:  CMP             R2, #0
1D7838:  BEQ             loc_1D7868
1D783C:  LDR             R3, =(dword_382928 - 0x1D784C)
1D7840:  MOVW            R4, #0xD240
1D7844:  LDR             R5, [PC,R3]; dword_382928
1D7848:  MOV             R3, #0
1D784C:  LDR             R6, [R5]
1D7850:  CMP             R1, R6
1D7854:  BEQ             loc_1D78B4
1D7858:  ADD             R3, R3, #1
1D785C:  ADD             R5, R5, R4
1D7860:  CMP             R3, R2
1D7864:  BCC             loc_1D784C
1D7868:  MOVW            R2, #0xAC44
1D786C:  CMP             R1, R2
1D7870:  BNE             loc_1D7884
1D7874:  LDR             R0, =(unk_C51A8 - 0x1D7880)
1D7878:  ADD             R5, PC, R0; unk_C51A8
1D787C:  MOV             R0, R5
1D7880:  POP             {R4-R7,R11,PC}
1D7884:  LDR             R1, =(LogLevel_ptr - 0x1D7894)
1D7888:  MOV             R5, #0
1D788C:  LDR             R1, [PC,R1]; LogLevel
1D7890:  LDR             R1, [R1]
1D7894:  CMP             R1, #0
1D7898:  BEQ             loc_1D78B4
1D789C:  BL              j_DevFmtChannelsString
1D78A0:  LDR             R3, [R7,#0xC]
1D78A4:  MOV             R2, R0
1D78A8:  ADR             R0, aGethrtf_0; "GetHrtf"
1D78AC:  ADR             R1, aIncompatibleFo; "Incompatible format: %s %uhz\n"
1D78B0:  BL              j_al_print
1D78B4:  MOV             R0, R5
1D78B8:  POP             {R4-R7,R11,PC}
