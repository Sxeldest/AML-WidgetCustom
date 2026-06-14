; =========================================================
; Game Engine Function: stereo_itheta
; Address            : 0x19F6A8 - 0x19F854
; =========================================================

19F6A8:  PUSH            {R4-R7,LR}
19F6AA:  ADD             R7, SP, #0xC
19F6AC:  PUSH.W          {R8-R10}
19F6B0:  MOV             R6, R0
19F6B2:  CBZ             R2, loc_19F6E4
19F6B4:  CMP             R3, #1
19F6B6:  BLT             loc_19F70E
19F6B8:  MOVS            R0, #1
19F6BA:  MOV.W           R10, #1
19F6BE:  LDRSH.W         R2, [R1],#2
19F6C2:  SUBS            R3, #1
19F6C4:  LDRSH.W         R5, [R6],#2
19F6C8:  MOV.W           R4, R2,ASR#1
19F6CC:  ADD.W           R4, R4, R5,ASR#1
19F6D0:  MOV.W           R5, R5,ASR#1
19F6D4:  SUB.W           R2, R5, R2,ASR#1
19F6D8:  SMLABB.W        R0, R4, R4, R0
19F6DC:  SMLABB.W        R10, R2, R2, R10
19F6E0:  BNE             loc_19F6BE
19F6E2:  B               loc_19F714
19F6E4:  CMP             R3, #1
19F6E6:  BLT             loc_19F70E
19F6E8:  MOVS            R0, #0
19F6EA:  MOV             R2, R3
19F6EC:  LDRSH.W         R5, [R6],#2
19F6F0:  SUBS            R2, #1
19F6F2:  SMLABB.W        R0, R5, R5, R0
19F6F6:  BNE             loc_19F6EC
19F6F8:  ADDS            R0, #1
19F6FA:  MOVS            R2, #0
19F6FC:  LDRSH.W         R6, [R1],#2
19F700:  SUBS            R3, #1
19F702:  SMLABB.W        R2, R6, R6, R2
19F706:  BNE             loc_19F6FC
19F708:  ADD.W           R10, R2, #1
19F70C:  B               loc_19F714
19F70E:  MOV.W           R10, #1
19F712:  MOVS            R0, #1
19F714:  MOVW            R9, #0
19F718:  MOVW            R8, #0
19F71C:  MOVT            R9, #0xD159
19F720:  MOVT            R8, #0x7FFF
19F724:  BLX             j_celt_sqrt
19F728:  MOV             R6, R0
19F72A:  MOV             R0, R10
19F72C:  BLX             j_celt_sqrt
19F730:  SXTH            R4, R6
19F732:  SXTH            R5, R0
19F734:  CMP             R5, R4
19F736:  BGE             loc_19F7BA
19F738:  LSLS            R1, R0, #0x10
19F73A:  MOV.W           R10, R0,LSL#15
19F73E:  MOV             R0, R4
19F740:  ASRS            R6, R1, #0x11
19F742:  BLX             j_celt_rcp
19F746:  SMULBT.W        R5, R6, R0
19F74A:  MOV             R0, R4
19F74C:  BLX             j_celt_rcp
19F750:  UXTH            R0, R0
19F752:  MULS            R6, R0
19F754:  MOV             R0, R4
19F756:  BLX             j_celt_rcp
19F75A:  UXTH.W          R1, R10
19F75E:  ASRS            R0, R0, #0x10
19F760:  MULS            R0, R1
19F762:  ASRS            R1, R6, #0xF
19F764:  ADD.W           R1, R1, R5,LSL#1
19F768:  MOV.W           R2, #0x8000
19F76C:  MOVW            R3, #0x2690
19F770:  ADD.W           R0, R1, R0,ASR#15
19F774:  MOVW            R1, #0x7FFF
19F778:  CMP             R0, R1
19F77A:  IT LT
19F77C:  MOVLT           R1, R0
19F77E:  SXTH            R0, R1
19F780:  SMLABB.W        R0, R0, R3, R2
19F784:  MOVW            R3, #0xFFFF
19F788:  BICS            R0, R3
19F78A:  ADD             R0, R9
19F78C:  SMULTB.W        R0, R0, R1
19F790:  ADD.W           R0, R2, R0,LSL#1
19F794:  BFC.W           R0, #0, #0x10
19F798:  SUB.W           R0, R0, #0x150000
19F79C:  SMULTB.W        R0, R0, R1
19F7A0:  LSLS            R1, R1, #0x10
19F7A2:  ASRS            R1, R1, #0xF
19F7A4:  ADD.W           R0, R2, R0,LSL#1
19F7A8:  BFC.W           R0, #0, #0x10
19F7AC:  ADD             R0, R8
19F7AE:  ASRS            R0, R0, #0x10
19F7B0:  MULS            R0, R1
19F7B2:  ADD.W           R0, R0, #0x8000
19F7B6:  ASRS            R0, R0, #0x11
19F7B8:  B               loc_19F842
19F7BA:  LSLS            R0, R6, #0x10
19F7BC:  MOV.W           R10, R6,LSL#15
19F7C0:  ASRS            R6, R0, #0x11
19F7C2:  MOV             R0, R5
19F7C4:  BLX             j_celt_rcp
19F7C8:  SMULBT.W        R4, R6, R0
19F7CC:  MOV             R0, R5
19F7CE:  BLX             j_celt_rcp
19F7D2:  UXTH            R0, R0
19F7D4:  MULS            R6, R0
19F7D6:  MOV             R0, R5
19F7D8:  BLX             j_celt_rcp
19F7DC:  UXTH.W          R1, R10
19F7E0:  ASRS            R0, R0, #0x10
19F7E2:  MULS            R0, R1
19F7E4:  ASRS            R1, R6, #0xF
19F7E6:  ADD.W           R1, R1, R4,LSL#1
19F7EA:  MOV.W           R2, #0x8000
19F7EE:  MOVW            R3, #0x2690
19F7F2:  ADD.W           R0, R1, R0,ASR#15
19F7F6:  MOVW            R1, #0x7FFF
19F7FA:  CMP             R0, R1
19F7FC:  IT LT
19F7FE:  MOVLT           R1, R0
19F800:  SXTH            R0, R1
19F802:  SMLABB.W        R0, R0, R3, R2
19F806:  MOVW            R3, #0xFFFF
19F80A:  BICS            R0, R3
19F80C:  ADD             R0, R9
19F80E:  SMULTB.W        R0, R0, R1
19F812:  ADD.W           R0, R2, R0,LSL#1
19F816:  BFC.W           R0, #0, #0x10
19F81A:  SUB.W           R0, R0, #0x150000
19F81E:  SMULTB.W        R0, R0, R1
19F822:  LSLS            R1, R1, #0x10
19F824:  ASRS            R1, R1, #0xF
19F826:  ADD.W           R0, R2, R0,LSL#1
19F82A:  BFC.W           R0, #0, #0x10
19F82E:  ADD             R0, R8
19F830:  ASRS            R0, R0, #0x10
19F832:  MULS            R0, R1
19F834:  MOVW            R1, #0x6488
19F838:  ADD.W           R0, R0, #0x8000
19F83C:  ASRS            R0, R0, #0x10
19F83E:  SUB.W           R0, R1, R0,LSR#1
19F842:  SXTH            R0, R0
19F844:  MOVW            R1, #0x517D
19F848:  SMULBB.W        R0, R0, R1
19F84C:  ASRS            R0, R0, #0xF
19F84E:  POP.W           {R8-R10}
19F852:  POP             {R4-R7,PC}
