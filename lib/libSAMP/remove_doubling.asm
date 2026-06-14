; =========================================================
; Game Engine Function: remove_doubling
; Address            : 0x1A06B4 - 0x1A0AA6
; =========================================================

1A06B4:  PUSH            {R4-R7,LR}
1A06B6:  ADD             R7, SP, #0xC
1A06B8:  PUSH.W          {R8-R11}
1A06BC:  SUB             SP, SP, #0x5C
1A06BE:  LDR.W           R6, =(__stack_chk_guard_ptr - 0x1A06D0)
1A06C2:  MOV             R9, R1
1A06C4:  LDR.W           R12, [R7,#arg_0]
1A06C8:  ADD.W           R4, R9, R9,LSR#31
1A06CC:  ADD             R6, PC; __stack_chk_guard_ptr
1A06CE:  MOV.W           R5, #0xFFFFFFFF
1A06D2:  ADD.W           R10, R5, R4,ASR#1
1A06D6:  ADD.W           LR, R2, R2,LSR#31
1A06DA:  LDR             R6, [R6]; __stack_chk_guard
1A06DC:  LDR             R6, [R6]
1A06DE:  STR.W           R6, [R7,#var_24]
1A06E2:  LDR.W           R6, [R12]
1A06E6:  ADD.W           R5, R6, R6,LSR#31
1A06EA:  ASRS            R6, R5, #1
1A06EC:  CMP.W           R6, R4,ASR#1
1A06F0:  MOV             R6, R10
1A06F2:  IT LT
1A06F4:  ASRLT           R6, R5, #1
1A06F6:  ASRS            R5, R4, #1
1A06F8:  STR.W           R6, [R7,#var_54]
1A06FC:  STR.W           R6, [R12]
1A0700:  BIC.W           R6, R4, #1
1A0704:  ADD.W           R8, R0, R6
1A0708:  MOVS            R6, #0xB
1A070A:  ADD.W           R6, R6, R5,LSL#2
1A070E:  LDR.W           R12, [R7,#arg_4]
1A0712:  BIC.W           R6, R6, #7
1A0716:  STR.W           R5, [R7,#var_60]
1A071A:  SUB.W           R4, SP, R6
1A071E:  ADD.W           R6, R3, R3,LSR#31
1A0722:  STR.W           R2, [R7,#var_74]
1A0726:  ASRS            R1, R6, #1
1A0728:  STR.W           R4, [R7,#var_3C]
1A072C:  STR.W           R1, [R7,#var_58]
1A0730:  MOVS            R1, #0
1A0732:  MOV             SP, R4
1A0734:  CMP             R3, #2
1A0736:  MOV.W           R11, #0
1A073A:  STR.W           R3, [R7,#var_44]
1A073E:  BLT             loc_1A0768
1A0740:  LDR.W           R2, [R7,#var_54]
1A0744:  MOV             R5, R8
1A0746:  LDR.W           R4, [R7,#var_58]
1A074A:  MOV.W           R11, #0
1A074E:  SUB.W           R6, R1, R2,LSL#1
1A0752:  LDRSH.W         R2, [R5]
1A0756:  SUBS            R4, #1
1A0758:  LDRSH           R3, [R5,R6]
1A075A:  ADD.W           R5, R5, #2
1A075E:  SMLABB.W        R1, R2, R2, R1
1A0762:  SMLABB.W        R11, R3, R2, R11
1A0766:  BNE             loc_1A0752
1A0768:  MOV.W           R2, LR,ASR#1
1A076C:  ADD.W           R12, R12, R12,LSR#31
1A0770:  STR.W           R2, [R7,#var_40]
1A0774:  CMP.W           R9, #2
1A0778:  LDR.W           R2, [R7,#var_3C]
1A077C:  STR.W           R8, [R7,#var_5C]
1A0780:  STR             R1, [R2]
1A0782:  BLT             loc_1A07BA
1A0784:  LDR.W           R2, [R7,#var_58]
1A0788:  MOV             R3, R1
1A078A:  ADD.W           LR, R0, R2,LSL#1
1A078E:  LDR.W           R2, [R7,#var_3C]
1A0792:  ADDS            R2, #4
1A0794:  LDRSH.W         R5, [R0,R10,LSL#1]
1A0798:  LDRSH.W         R4, [LR,R10,LSL#1]
1A079C:  SUB.W           R10, R10, #1
1A07A0:  SMLABB.W        R6, R5, R5, R3
1A07A4:  MLS.W           R3, R4, R4, R6
1A07A8:  CMP             R3, #0
1A07AA:  MOV             R6, R3
1A07AC:  IT LE
1A07AE:  MOVLE           R6, #0
1A07B0:  STR.W           R6, [R2],#4
1A07B4:  ADDS.W          R6, R10, #1
1A07B8:  BNE             loc_1A0794
1A07BA:  STR.W           R0, [R7,#var_78]
1A07BE:  MOV.W           R0, R12,ASR#1
1A07C2:  STR.W           R0, [R7,#var_4C]
1A07C6:  LDR.W           R4, [R7,#var_54]
1A07CA:  LDR.W           R0, [R7,#var_3C]
1A07CE:  STR.W           R11, [R7,#var_28]
1A07D2:  STR.W           R1, [R7,#var_48]
1A07D6:  LDR.W           R5, [R0,R4,LSL#2]
1A07DA:  MOV             R0, R11
1A07DC:  MOV             R2, R5
1A07DE:  BL              sub_1A0AF0
1A07E2:  MOV             R9, R0
1A07E4:  MOVW            R0, #0x7333
1A07E8:  MOVW            R1, #0x6CCD
1A07EC:  SMULBB.W        R0, R9, R0
1A07F0:  MOVW            R2, #0x599A
1A07F4:  SMULBB.W        R1, R9, R1
1A07F8:  SMULBB.W        R2, R9, R2
1A07FC:  MOV             R10, R4
1A07FE:  ASRS            R0, R0, #0xF
1A0800:  STR.W           R0, [R7,#var_70]
1A0804:  ASRS            R0, R1, #0xF
1A0806:  STR.W           R0, [R7,#var_64]
1A080A:  ASRS            R0, R2, #0xF
1A080C:  STR.W           R0, [R7,#var_68]
1A0810:  LDR.W           R0, [R7,#var_40]
1A0814:  LSLS            R1, R0, #1
1A0816:  ADD.W           R0, R0, R0,LSL#1
1A081A:  STR.W           R0, [R7,#var_50]
1A081E:  LSLS            R0, R4, #1
1A0820:  STR.W           R0, [R7,#var_38]
1A0824:  MOVS            R0, #2
1A0826:  STR.W           R1, [R7,#var_6C]
1A082A:  MOV             R11, R0
1A082C:  LDR.W           R0, [R7,#var_38]
1A0830:  MOV.W           R4, R11,LSL#1
1A0834:  ADD             R0, R11
1A0836:  MOV             R1, R4
1A0838:  BLX             sub_220A6C
1A083C:  MOV             R8, R0
1A083E:  LDR.W           R0, [R7,#var_40]
1A0842:  CMP             R8, R0
1A0844:  BLT.W           loc_1A098A
1A0848:  CMP.W           R11, #2
1A084C:  STR.W           R9, [R7,#var_2C]
1A0850:  STRD.W          R5, R10, [R7,#var_34]
1A0854:  BNE             loc_1A086A
1A0856:  LDR.W           R2, [R7,#var_54]
1A085A:  LDR.W           R1, [R7,#var_60]
1A085E:  ADD.W           R0, R8, R2
1A0862:  CMP             R0, R1
1A0864:  IT GT
1A0866:  MOVGT           R0, R2
1A0868:  B               loc_1A087E
1A086A:  ADR             R0, dword_1A0AAC
1A086C:  LDR.W           R1, [R7,#var_38]
1A0870:  LDR.W           R0, [R0,R11,LSL#2]
1A0874:  MLA.W           R0, R1, R0, R11
1A0878:  MOV             R1, R4
1A087A:  BLX             sub_220A6C
1A087E:  LDR.W           R2, [R7,#var_44]
1A0882:  MOVS            R1, #0
1A0884:  CMP             R2, #2
1A0886:  MOV.W           R2, #0
1A088A:  BLT             loc_1A08C2
1A088C:  LDR.W           R2, [R7,#var_5C]
1A0890:  SUB.W           LR, R1, R0,LSL#1
1A0894:  LDR.W           R6, [R7,#var_58]
1A0898:  MOVS            R3, #0
1A089A:  SUB.W           R12, R2, R8,LSL#1
1A089E:  MOV             R5, R2
1A08A0:  MOVS            R2, #0
1A08A2:  LDRSH.W         R10, [R12,R3,LSL#1]
1A08A6:  SUBS            R6, #1
1A08A8:  LDRSH.W         R9, [R5]
1A08AC:  LDRSH.W         R4, [R5,LR]
1A08B0:  ADD.W           R5, R5, #2
1A08B4:  ADD.W           R3, R3, #1
1A08B8:  SMLABB.W        R1, R10, R9, R1
1A08BC:  SMLABB.W        R2, R4, R9, R2
1A08C0:  BNE             loc_1A08A2
1A08C2:  LDR.W           R6, [R7,#var_3C]
1A08C6:  LDR.W           R3, [R6,R8,LSL#2]
1A08CA:  LDR.W           R0, [R6,R0,LSL#2]
1A08CE:  ADD             R0, R3
1A08D0:  ASRS            R4, R0, #1
1A08D2:  ADDS            R0, R2, R1
1A08D4:  LDR.W           R1, [R7,#var_48]
1A08D8:  MOV             R2, R4
1A08DA:  MOV.W           R10, R0,ASR#1
1A08DE:  MOV             R0, R10
1A08E0:  BL              sub_1A0AF0
1A08E4:  LDR.W           R1, [R7,#var_4C]
1A08E8:  SUBS.W          R1, R8, R1
1A08EC:  IT MI
1A08EE:  NEGMI           R1, R1
1A08F0:  LDR.W           R9, [R7,#var_2C]
1A08F4:  CMP             R1, #2
1A08F6:  LDR.W           R5, [R7,#var_34]
1A08FA:  LDR             R1, [R7,#arg_8]
1A08FC:  BLT             loc_1A091C
1A08FE:  BNE             loc_1A091A
1A0900:  MUL.W           R1, R11, R11
1A0904:  LDR.W           R2, [R7,#var_54]
1A0908:  ADD.W           R1, R1, R1,LSL#2
1A090C:  CMP             R1, R2
1A090E:  LDR             R2, [R7,#arg_8]
1A0910:  MOV.W           R1, #0
1A0914:  IT LT
1A0916:  ASRLT           R1, R2, #1
1A0918:  B               loc_1A091C
1A091A:  MOVS            R1, #0
1A091C:  SXTH            R2, R1
1A091E:  LDR.W           R1, [R7,#var_50]
1A0922:  CMP             R8, R1
1A0924:  BGE             loc_1A0938
1A0926:  LDR.W           R1, [R7,#var_64]
1A092A:  SUBS            R1, R1, R2
1A092C:  MOVW            R2, #0x3333
1A0930:  CMP             R1, R2
1A0932:  IT LE
1A0934:  MOVLE           R1, R2
1A0936:  B               loc_1A0960
1A0938:  LDR.W           R1, [R7,#var_68]
1A093C:  MOVW            R3, #0x2666
1A0940:  SUBS            R1, R1, R2
1A0942:  CMP             R1, R3
1A0944:  IT LE
1A0946:  MOVLE           R1, R3
1A0948:  LDR.W           R3, [R7,#var_6C]
1A094C:  CMP             R8, R3
1A094E:  BGE             loc_1A0960
1A0950:  LDR.W           R1, [R7,#var_70]
1A0954:  SUBS            R1, R1, R2
1A0956:  CMP.W           R1, #0x4000
1A095A:  IT LE
1A095C:  MOVLE.W         R1, #0x4000
1A0960:  SXTH            R1, R1
1A0962:  CMP             R1, R0
1A0964:  IT LT
1A0966:  MOVLT           R5, R4
1A0968:  LDR.W           R1, [R7,#var_28]
1A096C:  IT LT
1A096E:  MOVLT           R1, R10
1A0970:  LDR.W           R10, [R7,#var_30]
1A0974:  STR.W           R1, [R7,#var_28]
1A0978:  ITT LT
1A097A:  MOVLT           R10, R8
1A097C:  MOVLT           R9, R0
1A097E:  ADD.W           R0, R11, #1
1A0982:  CMP.W           R11, #0xF
1A0986:  BLT.W           loc_1A082A
1A098A:  LDR.W           R0, [R7,#var_28]
1A098E:  CMP             R0, #0
1A0990:  IT LE
1A0992:  MOVLE           R0, #0
1A0994:  CMP             R5, R0
1A0996:  BLE             loc_1A09A4
1A0998:  ADDS            R1, R5, #1
1A099A:  BLX             j_frac_div32
1A099E:  MOV.W           R12, R0,LSR#16
1A09A2:  B               loc_1A09A8
1A09A4:  MOVW            R12, #0x7FFF
1A09A8:  LDRD.W          R2, R8, [R7,#var_5C]
1A09AC:  MOVS            R1, #0
1A09AE:  LDR.W           R0, [R7,#var_44]
1A09B2:  MOV.W           LR, #0
1A09B6:  LDR.W           R4, [R7,#var_78]
1A09BA:  MOVS            R3, #0
1A09BC:  CMP             R0, #2
1A09BE:  BLT             loc_1A0A20
1A09C0:  SUB.W           R0, R1, R10,LSL#1
1A09C4:  LDR.W           R1, [R7,#var_60]
1A09C8:  MOV             R6, R8
1A09CA:  MOV.W           LR, #0
1A09CE:  ADD.W           R1, R4, R1,LSL#1
1A09D2:  ADDS            R3, R1, #2
1A09D4:  LDRSH           R5, [R3,R0]
1A09D6:  SUBS            R6, #1
1A09D8:  LDRSH.W         R4, [R3,#-2]
1A09DC:  ADD.W           R3, R3, #2
1A09E0:  SMLABB.W        LR, R5, R4, LR
1A09E4:  BNE             loc_1A09D4
1A09E6:  MOVS            R1, #0
1A09E8:  SUB.W           R3, R1, R10,LSL#1
1A09EC:  MOV             R6, R2
1A09EE:  MOV             R5, R8
1A09F0:  LDRSH           R0, [R6,R3]
1A09F2:  SUBS            R5, #1
1A09F4:  LDRSH.W         R4, [R6]
1A09F8:  ADD.W           R6, R6, #2
1A09FC:  SMLABB.W        R1, R0, R4, R1
1A0A00:  BNE             loc_1A09F0
1A0A02:  MOV             R0, #0xFFFFFFFE
1A0A06:  SUB.W           R6, R0, R10,LSL#1
1A0A0A:  MOVS            R3, #0
1A0A0C:  LDRSH           R0, [R2,R6]
1A0A0E:  SUBS.W          R8, R8, #1
1A0A12:  LDRSH.W         R5, [R2]
1A0A16:  ADD.W           R2, R2, #2
1A0A1A:  SMLABB.W        R3, R0, R5, R3
1A0A1E:  BNE             loc_1A0A0C
1A0A20:  SUB.W           R5, R1, LR
1A0A24:  MOVW            R6, #0x599A
1A0A28:  UXTH            R4, R5
1A0A2A:  ASRS            R0, R5, #0x10
1A0A2C:  MOVW            R5, #0xB334
1A0A30:  MULS            R4, R6
1A0A32:  MULS            R0, R5
1A0A34:  ADD.W           R0, R0, R4,LSR#15
1A0A38:  SUB.W           R4, R3, LR
1A0A3C:  CMP             R4, R0
1A0A3E:  BLE             loc_1A0A44
1A0A40:  MOVS            R1, #1
1A0A42:  B               loc_1A0A60
1A0A44:  SUBS            R0, R1, R3
1A0A46:  MOVS            R1, #0
1A0A48:  UXTH            R2, R0
1A0A4A:  ASRS            R0, R0, #0x10
1A0A4C:  MULS            R2, R6
1A0A4E:  MULS            R0, R5
1A0A50:  ADD.W           R0, R0, R2,LSR#15
1A0A54:  SUB.W           R2, LR, R3
1A0A58:  CMP             R2, R0
1A0A5A:  IT GT
1A0A5C:  MOVGT.W         R1, #0xFFFFFFFF
1A0A60:  ADD.W           R0, R1, R10,LSL#1
1A0A64:  LDR.W           R1, [R7,#var_74]
1A0A68:  CMP             R0, R1
1A0A6A:  IT LT
1A0A6C:  MOVLT           R0, R1
1A0A6E:  LDR             R1, [R7,#arg_0]
1A0A70:  STR             R0, [R1]
1A0A72:  SXTH.W          R0, R9
1A0A76:  SXTH.W          R1, R12
1A0A7A:  CMP             R1, R0
1A0A7C:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A0A8A)
1A0A7E:  IT GT
1A0A80:  MOVGT           R12, R9
1A0A82:  LDR.W           R1, [R7,#var_24]
1A0A86:  ADD             R0, PC; __stack_chk_guard_ptr
1A0A88:  LDR             R0, [R0]; __stack_chk_guard
1A0A8A:  LDR             R0, [R0]
1A0A8C:  SUBS            R0, R0, R1
1A0A8E:  ITTTT EQ
1A0A90:  SXTHEQ.W        R0, R12
1A0A94:  SUBEQ.W         R4, R7, #-var_1C
1A0A98:  MOVEQ           SP, R4
1A0A9A:  POPEQ.W         {R8-R11}
1A0A9E:  IT EQ
1A0AA0:  POPEQ           {R4-R7,PC}
1A0AA2:  BLX             __stack_chk_fail
