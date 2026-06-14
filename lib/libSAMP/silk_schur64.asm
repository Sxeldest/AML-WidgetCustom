; =========================================================
; Game Engine Function: silk_schur64
; Address            : 0x1AE834 - 0x1AEA20
; =========================================================

1AE834:  PUSH            {R4-R7,LR}
1AE836:  ADD             R7, SP, #0xC
1AE838:  PUSH.W          {R8-R11}
1AE83C:  SUB             SP, SP, #0xE4
1AE83E:  LDR             R3, =(__stack_chk_guard_ptr - 0x1AE844)
1AE840:  ADD             R3, PC; __stack_chk_guard_ptr
1AE842:  LDR             R3, [R3]; __stack_chk_guard
1AE844:  LDR             R3, [R3]
1AE846:  STR             R3, [SP,#0x100+var_20]
1AE848:  LDR             R3, [R1]
1AE84A:  CMP             R3, #1
1AE84C:  BLT.W           loc_1AE9E4
1AE850:  CMP             R2, #1
1AE852:  STRD.W          R3, R3, [SP,#0x100+var_E8]
1AE856:  BLT             loc_1AE870
1AE858:  ADDS            R4, R1, #4
1AE85A:  ADD             R5, SP, #0x100+var_E8
1AE85C:  MOVS            R1, #0
1AE85E:  LDR.W           R3, [R4,R1,LSL#2]
1AE862:  ADD.W           R6, R5, R1,LSL#3
1AE866:  ADDS            R1, #1
1AE868:  CMP             R1, R2
1AE86A:  STRD.W          R3, R3, [R6,#8]
1AE86E:  BLT             loc_1AE85E
1AE870:  MOVS            R6, #0
1AE872:  CMP             R2, #1
1AE874:  BLT.W           loc_1AE9CA
1AE878:  ADD.W           R9, SP, #0x100+var_E8
1AE87C:  MOV.W           R8, #8
1AE880:  MOV             R11, R2
1AE882:  STR             R2, [SP,#0x100+var_FC]
1AE884:  MOV             R5, R6
1AE886:  ADDS            R6, R5, #1
1AE888:  LDR.W           R10, [SP,#0x100+var_E4]
1AE88C:  LDR.W           R3, [R9,R6,LSL#3]
1AE890:  EOR.W           R1, R3, R3,ASR#31
1AE894:  SUB.W           R1, R1, R3,ASR#31
1AE898:  CMP             R1, R10
1AE89A:  BGE.W           loc_1AEA06
1AE89E:  NEGS            R1, R3
1AE8A0:  CMP             R3, #0
1AE8A2:  STRD.W          R11, R8, [SP,#0x100+var_F4]
1AE8A6:  MOV             R4, R0
1AE8A8:  IT MI
1AE8AA:  MOVMI           R3, R1
1AE8AC:  CMP.W           R10, #0
1AE8B0:  CLZ.W           R11, R3
1AE8B4:  STR             R5, [SP,#0x100+var_F8]
1AE8B6:  SUB.W           R0, R11, #1
1AE8BA:  STR             R6, [SP,#0x100+var_EC]
1AE8BC:  LSL.W           R8, R1, R0
1AE8C0:  MOV             R0, R10
1AE8C2:  IT MI
1AE8C4:  RSBMI.W         R0, R10, #0
1AE8C8:  CLZ.W           R5, R0
1AE8CC:  SUBS            R0, R5, #1
1AE8CE:  LSL.W           R9, R10, R0
1AE8D2:  MOV             R0, #0x1FFFFFFF
1AE8D6:  MOV.W           R1, R9,ASR#16
1AE8DA:  BLX             sub_220A40
1AE8DE:  UXTH.W          R1, R8
1AE8E2:  SXTH            R2, R0
1AE8E4:  MULS            R1, R2
1AE8E6:  ASRS            R1, R1, #0x10
1AE8E8:  SMLABT.W        R1, R0, R8, R1
1AE8EC:  SMMUL.W         R3, R1, R9
1AE8F0:  SUB.W           R3, R8, R3,LSL#3
1AE8F4:  UXTH            R6, R3
1AE8F6:  SMLABT.W        R0, R0, R3, R1
1AE8FA:  MULS            R2, R6
1AE8FC:  ADD.W           R1, R0, R2,ASR#16
1AE900:  RSB.W           R0, R5, #1
1AE904:  ADD             R0, R11
1AE906:  ADDS            R0, #0x1C
1AE908:  CMP             R0, #0x1E
1AE90A:  BGT             loc_1AE940
1AE90C:  RSB.W           R12, R0, #0x1F
1AE910:  MOV             R0, #0x7FFFFFFF
1AE914:  LDR.W           R8, [SP,#0x100+var_F0]
1AE918:  ADD.W           R9, SP, #0x100+var_E8
1AE91C:  LDR.W           R11, [SP,#0x100+var_F4]
1AE920:  LSR.W           R2, R0, R12
1AE924:  MOV.W           R0, #0x80000000
1AE928:  ASR.W           R3, R0, R12
1AE92C:  CMP             R3, R2
1AE92E:  MOV             R0, R4
1AE930:  BLE             loc_1AE960
1AE932:  CMP             R1, R3
1AE934:  MOV             R6, R3
1AE936:  BGT             loc_1AE96E
1AE938:  CMP             R1, R2
1AE93A:  IT LT
1AE93C:  MOVLT           R1, R2
1AE93E:  B               loc_1AE96C
1AE940:  SUB.W           R2, R0, #0x1F
1AE944:  CMP             R0, #0x3F ; '?'
1AE946:  MOV.W           LR, #0
1AE94A:  ADD.W           R9, SP, #0x100+var_E8
1AE94E:  IT LT
1AE950:  ASRLT.W         LR, R1, R2
1AE954:  LDR.W           R8, [SP,#0x100+var_F0]
1AE958:  LDR.W           R11, [SP,#0x100+var_F4]
1AE95C:  MOV             R0, R4
1AE95E:  B               loc_1AE972
1AE960:  CMP             R1, R2
1AE962:  MOV             R6, R2
1AE964:  BGT             loc_1AE96E
1AE966:  CMP             R1, R3
1AE968:  IT LT
1AE96A:  MOVLT           R1, R3
1AE96C:  MOV             R6, R1
1AE96E:  LSL.W           LR, R6, R12
1AE972:  MOVS            R1, #1
1AE974:  LDR             R3, [SP,#0x100+var_F8]
1AE976:  ADD.W           R1, R1, LR,ASR#14
1AE97A:  ASRS            R1, R1, #1
1AE97C:  STR.W           R1, [R0,R3,LSL#2]
1AE980:  LDR             R2, [SP,#0x100+var_FC]
1AE982:  CMP             R3, R2
1AE984:  BGE             loc_1AE9BA
1AE986:  ADD.W           R1, R9, R8
1AE98A:  SUB.W           R12, R11, #1
1AE98E:  MOVS            R3, #0
1AE990:  B               loc_1AE998
1AE992:  ADDS            R3, #1
1AE994:  LDR.W           R10, [R6,#0xC]
1AE998:  LDR.W           R6, [R1,R3,LSL#3]
1AE99C:  MOV.W           R5, R10,LSL#1
1AE9A0:  SMMLA.W         R5, LR, R5, R6
1AE9A4:  CMP             R12, R3
1AE9A6:  MOV.W           R6, R6,LSL#1
1AE9AA:  SMMLA.W         R4, LR, R6, R10
1AE9AE:  ADD.W           R6, R9, R3,LSL#3
1AE9B2:  STR.W           R5, [R1,R3,LSL#3]
1AE9B6:  STR             R4, [R6,#4]
1AE9B8:  BNE             loc_1AE992
1AE9BA:  LDR             R6, [SP,#0x100+var_EC]
1AE9BC:  ADD.W           R8, R8, #8
1AE9C0:  SUB.W           R11, R11, #1
1AE9C4:  CMP             R6, R2
1AE9C6:  BLT.W           loc_1AE884
1AE9CA:  CMP             R6, R2
1AE9CC:  BGE             loc_1AE9DA
1AE9CE:  SUBS            R1, R2, R6
1AE9D0:  ADD.W           R0, R0, R6,LSL#2; int
1AE9D4:  LSLS            R1, R1, #2; n
1AE9D6:  BLX             sub_22178C
1AE9DA:  LDR             R0, [SP,#0x100+var_E4]
1AE9DC:  CMP             R0, #1
1AE9DE:  IT LE
1AE9E0:  MOVLE           R0, #1; int
1AE9E2:  B               loc_1AE9EC
1AE9E4:  LSLS            R1, R2, #2; n
1AE9E6:  BLX             sub_22178C
1AE9EA:  MOVS            R0, #0
1AE9EC:  LDR             R1, =(__stack_chk_guard_ptr - 0x1AE9F4)
1AE9EE:  LDR             R2, [SP,#0x100+var_20]
1AE9F0:  ADD             R1, PC; __stack_chk_guard_ptr
1AE9F2:  LDR             R1, [R1]; __stack_chk_guard
1AE9F4:  LDR             R1, [R1]
1AE9F6:  SUBS            R1, R1, R2
1AE9F8:  ITTT EQ
1AE9FA:  ADDEQ           SP, SP, #0xE4
1AE9FC:  POPEQ.W         {R8-R11}
1AEA00:  POPEQ           {R4-R7,PC}
1AEA02:  BLX             __stack_chk_fail
1AEA06:  MOVW            R1, #0xFD71
1AEA0A:  CMP             R3, #0
1AEA0C:  ITT GT
1AEA0E:  MOVWGT          R1, #0x28F
1AEA12:  MOVTGT          R1, #0xFFFF
1AEA16:  STR.W           R1, [R0,R5,LSL#2]
1AEA1A:  CMP             R6, R2
1AEA1C:  BLT             loc_1AE9CE
1AEA1E:  B               loc_1AE9DA
