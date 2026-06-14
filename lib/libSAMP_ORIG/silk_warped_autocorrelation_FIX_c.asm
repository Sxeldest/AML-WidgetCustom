; =========================================================
; Game Engine Function: silk_warped_autocorrelation_FIX_c
; Address            : 0xD0850 - 0xD0A6A
; =========================================================

D0850:  PUSH            {R4-R7,LR}
D0852:  ADD             R7, SP, #0xC
D0854:  PUSH.W          {R8-R11}
D0858:  SUB             SP, SP, #0x14C
D085A:  STRD.W          R1, R0, [SP,#0x168+var_164]
D085E:  ADD.W           R11, SP, #0x168+var_88
D0862:  LDR             R0, =(__stack_chk_guard_ptr - 0xD086E)
D0864:  MOVS            R1, #0x64 ; 'd'; n
D0866:  MOV             R8, R3
D0868:  MOV             R4, R2
D086A:  ADD             R0, PC; __stack_chk_guard_ptr
D086C:  LDR             R0, [R0]; __stack_chk_guard
D086E:  LDR             R0, [R0]
D0870:  STR             R0, [SP,#0x168+var_20]
D0872:  MOV             R0, R11; int
D0874:  BLX             sub_10967C
D0878:  ADD             R0, SP, #0x168+var_150; int
D087A:  MOVS            R1, #0xC8; n
D087C:  BLX             sub_10967C
D0880:  LDRD.W          R5, R12, [R7,#arg_0]
D0884:  CMP             R5, #1
D0886:  BLT             loc_D097C
D0888:  ADD             R0, SP, #0x168+var_150
D088A:  CMP.W           R12, #1
D088E:  ADD.W           R6, R0, R12,LSL#3
D0892:  BLT             loc_D0954
D0894:  SXTH.W          LR, R8
D0898:  MOV.W           R10, #0
D089C:  MOVS            R1, #0
D089E:  STRD.W          R6, R4, [SP,#0x168+var_15C]
D08A2:  STR             R1, [SP,#0x168+var_154]
D08A4:  MOVS            R5, #0
D08A6:  LDRSH.W         R1, [R4,R1,LSL#1]
D08AA:  MOV.W           R8, R1,LSL#13
D08AE:  ADD             R1, SP, #0x168+var_150
D08B0:  STR.W           R8, [R11,R5,LSL#2]
D08B4:  ADD.W           R4, R11, R5,LSL#2
D08B8:  ADDS            R5, #2
D08BA:  LDR.W           R9, [SP,#0x168+var_88]
D08BE:  LDRD.W          R3, R2, [R1]
D08C2:  SMULL.W         R6, R0, R9, R8
D08C6:  LSRS            R6, R6, #0x10
D08C8:  ORR.W           R6, R6, R0,LSL#16
D08CC:  ASRS            R0, R0, #0x10
D08CE:  ADDS            R3, R3, R6
D08D0:  LDR             R6, [R4,#4]
D08D2:  ADCS            R0, R2
D08D4:  STR             R3, [R1]
D08D6:  SUB.W           R2, R6, R8
D08DA:  STR             R0, [R1,#4]
D08DC:  SMLABT.W        R3, LR, R2, R10
D08E0:  UXTH            R2, R2
D08E2:  MUL.W           R2, R2, LR
D08E6:  LDR.W           R10, [R4,#8]
D08EA:  ADD.W           R0, R3, R2,ASR#16
D08EE:  STR             R0, [R4,#4]
D08F0:  LDR             R4, [SP,#0x168+var_88]
D08F2:  SUB.W           R2, R10, R0
D08F6:  UXTH            R3, R2
D08F8:  SMLABT.W        R2, LR, R2, R6
D08FC:  SMULL.W         R0, R4, R4, R0
D0900:  MUL.W           R8, R3, LR
D0904:  LDRD.W          R6, R3, [R1,#8]
D0908:  LSRS            R0, R0, #0x10
D090A:  ORR.W           R0, R0, R4,LSL#16
D090E:  ASRS            R4, R4, #0x10
D0910:  ADDS            R0, R0, R6
D0912:  STR             R0, [R1,#8]
D0914:  ADC.W           R0, R4, R3
D0918:  STR             R0, [R1,#0xC]
D091A:  ADD.W           R8, R2, R8,ASR#16
D091E:  ADDS            R1, #0x10
D0920:  CMP             R5, R12
D0922:  BLT             loc_D08B0
D0924:  STR.W           R8, [R11,R12,LSL#2]
D0928:  LDR.W           R10, [SP,#0x168+var_88]
D092C:  LDR             R6, [SP,#0x168+var_15C]
D092E:  LDR             R4, [SP,#0x168+var_158]
D0930:  SMULL.W         R0, R1, R10, R8
D0934:  LDRD.W          R2, R3, [R6]
D0938:  LSRS            R0, R0, #0x10
D093A:  ORR.W           R0, R0, R1,LSL#16
D093E:  ASRS            R1, R1, #0x10
D0940:  ADDS            R0, R0, R2
D0942:  ADCS            R1, R3
D0944:  STRD.W          R0, R1, [R6]
D0948:  LDR             R1, [SP,#0x168+var_154]
D094A:  LDR             R0, [R7,#arg_0]
D094C:  ADDS            R1, #1
D094E:  CMP             R1, R0
D0950:  BNE             loc_D08A2
D0952:  B               loc_D097C
D0954:  LDRD.W          R1, R2, [R6]
D0958:  LDRSH.W         R0, [R4],#2
D095C:  LSLS            R0, R0, #0xD
D095E:  STR.W           R0, [R11,R12,LSL#2]
D0962:  LDR             R3, [SP,#0x168+var_88]
D0964:  SMULL.W         R0, R3, R3, R0
D0968:  LSRS            R0, R0, #0x10
D096A:  ORR.W           R0, R0, R3,LSL#16
D096E:  ASRS            R3, R3, #0x10
D0970:  ADDS            R1, R1, R0
D0972:  ADCS            R2, R3
D0974:  SUBS            R5, #1
D0976:  BNE             loc_D0958
D0978:  STRD.W          R1, R2, [R6]
D097C:  LDRD.W          R3, R6, [SP,#0x168+var_150]
D0980:  CMP             R6, #0
D0982:  ITEE NE
D0984:  CLZNE.W         R2, R6
D0988:  CLZEQ.W         R0, R3
D098C:  ADDEQ.W         R2, R0, #0x20 ; ' '
D0990:  LDR             R4, [SP,#0x168+var_160]
D0992:  MOV             R0, #0xFFFFFFF6
D0996:  SUB.W           R1, R2, #0x23 ; '#'
D099A:  CMN.W           R1, #0x16
D099E:  IT LE
D09A0:  MOVLE           R1, #0xFFFFFFEA
D09A4:  CMP             R2, #0x37 ; '7'
D09A6:  IT GT
D09A8:  MOVGT           R1, #0x14
D09AA:  LDR             R2, [SP,#0x168+var_164]
D09AC:  CMP.W           R1, #0xFFFFFFFF
D09B0:  SUB.W           R0, R0, R1
D09B4:  STR             R0, [R2]
D09B6:  BLE             loc_D09F8
D09B8:  CMP.W           R12, #0
D09BC:  BLT             loc_D0A50
D09BE:  SUB.W           R2, R1, #0x20 ; ' '
D09C2:  LSL.W           R0, R3, R1
D09C6:  CMP             R2, #0
D09C8:  IT GE
D09CA:  MOVGE           R0, #0
D09CC:  CMP.W           R12, #0
D09D0:  STR             R0, [R4]
D09D2:  BEQ             loc_D0A50
D09D4:  ADD             R0, SP, #0x168+var_150
D09D6:  ADDS            R6, R4, #4
D09D8:  ADD.W           R3, R0, #8
D09DC:  LDR             R0, [R3]
D09DE:  CMP             R2, #0
D09E0:  ADD.W           R3, R3, #8
D09E4:  LSL.W           R0, R0, R1
D09E8:  IT GE
D09EA:  MOVGE           R0, #0
D09EC:  SUBS.W          R12, R12, #1
D09F0:  STR.W           R0, [R6],#4
D09F4:  BNE             loc_D09DC
D09F6:  B               loc_D0A50
D09F8:  CMP.W           R12, #0
D09FC:  BLT             loc_D0A50
D09FE:  NEGS            R2, R1
D0A00:  LSR.W           R0, R3, R2
D0A04:  RSB.W           R3, R2, #0x20 ; ' '
D0A08:  LSL.W           R5, R6, R3
D0A0C:  ORRS            R0, R5
D0A0E:  MOV             R5, #0xFFFFFFE0
D0A12:  SUBS            R1, R5, R1
D0A14:  CMP             R1, #0
D0A16:  IT GE
D0A18:  ASRGE.W         R0, R6, R1
D0A1C:  CMP.W           R12, #0
D0A20:  STR             R0, [R4]
D0A22:  BEQ             loc_D0A50
D0A24:  ADD             R0, SP, #0x168+var_150
D0A26:  ADDS            R6, R4, #4
D0A28:  ADD.W           R1, R0, #8
D0A2C:  LDRD.W          R0, R5, [R1]
D0A30:  ADDS            R1, #8
D0A32:  LSL.W           R4, R5, R3
D0A36:  LSRS            R0, R2
D0A38:  ORRS            R0, R4
D0A3A:  SUB.W           R4, R2, #0x20 ; ' '
D0A3E:  CMP             R4, #0
D0A40:  IT GE
D0A42:  ASRGE.W         R0, R5, R4
D0A46:  SUBS.W          R12, R12, #1
D0A4A:  STR.W           R0, [R6],#4
D0A4E:  BNE             loc_D0A2C
D0A50:  LDR             R0, =(__stack_chk_guard_ptr - 0xD0A58)
D0A52:  LDR             R1, [SP,#0x168+var_20]
D0A54:  ADD             R0, PC; __stack_chk_guard_ptr
D0A56:  LDR             R0, [R0]; __stack_chk_guard
D0A58:  LDR             R0, [R0]
D0A5A:  SUBS            R0, R0, R1
D0A5C:  ITTT EQ
D0A5E:  ADDEQ           SP, SP, #0x14C
D0A60:  POPEQ.W         {R8-R11}
D0A64:  POPEQ           {R4-R7,PC}
D0A66:  BLX             __stack_chk_fail
