; =========================================================
; Game Engine Function: silk_LPC_inverse_pred_gain_c
; Address            : 0x1917A8 - 0x191B9A
; =========================================================

1917A8:  PUSH            {R4-R7,LR}
1917AA:  ADD             R7, SP, #0xC
1917AC:  PUSH.W          {R8-R11}
1917B0:  SUB             SP, SP, #0x84
1917B2:  LDR.W           R2, =(__stack_chk_guard_ptr - 0x1917BC)
1917B6:  CMP             R1, #1
1917B8:  ADD             R2, PC; __stack_chk_guard_ptr
1917BA:  LDR             R2, [R2]; __stack_chk_guard
1917BC:  LDR             R2, [R2]
1917BE:  STR             R2, [SP,#0xA0+var_20]
1917C0:  BLT             loc_1917E2
1917C2:  ADD             R2, SP, #0xA0+var_80
1917C4:  MOVS            R5, #0
1917C6:  MOV             R3, R1
1917C8:  LDRSH.W         R6, [R0],#2
1917CC:  SUBS            R3, #1
1917CE:  ADD             R5, R6
1917D0:  MOV.W           R6, R6,LSL#12
1917D4:  STR.W           R6, [R2],#4
1917D8:  BNE             loc_1917C8
1917DA:  CMP.W           R5, #0x1000
1917DE:  BGE.W           loc_191B4C
1917E2:  SUBS            R0, R1, #1
1917E4:  ADD.W           R11, SP, #0xA0+var_80
1917E8:  MOVW            R3, #0xEF9E
1917EC:  MOVW            R6, #0xDF3C
1917F0:  LDR.W           R2, [R11,R0,LSL#2]
1917F4:  MOVT            R3, #0xFF
1917F8:  MOVT            R6, #0x1FF
1917FC:  ADD             R3, R2
1917FE:  MOVW            R4, #:lower16:(elf_hash_chain+0x2EAE)
191802:  CMP             R3, R6
191804:  MOV.W           R6, #0
191808:  IT HI
19180A:  MOVHI           R6, #1
19180C:  MOVT            R4, #:upper16:(elf_hash_chain+0x2EAE)
191810:  CMP             R1, #2
191812:  BLT.W           loc_191B50
191816:  SUBS            R3, R1, #2
191818:  STR             R3, [SP,#0xA0+var_94]
19181A:  MOV.W           R3, #0x40000000
19181E:  MOV.W           R10, #1
191822:  MOV.W           R12, #0
191826:  MOV             R5, R0
191828:  LSLS            R0, R6, #0x1F
19182A:  MOV             R9, R1
19182C:  MOV.W           R0, #0
191830:  BNE.W           loc_191B80
191834:  SUB.W           R1, R0, R2,LSL#7
191838:  STR             R1, [SP,#0xA0+var_84]
19183A:  SMMUL.W         R1, R1, R1
19183E:  RSB.W           R1, R1, #0x40000000
191842:  UMULL.W         R2, R6, R3, R1
191846:  ASRS            R2, R1, #0x1F
191848:  MLA.W           R2, R3, R2, R6
19184C:  MLA.W           R2, R12, R1, R2
191850:  LSLS            R2, R2, #2
191852:  CMP             R2, R4
191854:  BLT.W           loc_191B80
191858:  CMP             R1, #0
19185A:  MOV             R0, R1
19185C:  STRD.W          R2, R5, [SP,#0xA0+var_9C]
191860:  IT MI
191862:  NEGMI           R0, R1
191864:  CLZ.W           R8, R0
191868:  SUB.W           R0, R8, #1
19186C:  LSL.W           R5, R1, R0
191870:  MOV             R0, #0x1FFFFFFF
191874:  ASRS            R1, R5, #0x10
191876:  BLX             sub_220A40
19187A:  UXTH            R1, R5
19187C:  SXTH            R2, R0
19187E:  MULS            R1, R2
191880:  ADD.W           R3, R10, R0,ASR#15
191884:  ASRS            R3, R3, #1
191886:  ASRS            R1, R1, #0x10
191888:  SMLABT.W        R1, R0, R5, R1
19188C:  NEGS            R1, R1
19188E:  LSLS            R1, R1, #3
191890:  MULS            R3, R1
191892:  UXTH            R6, R1
191894:  MULS            R2, R6
191896:  ADD.W           R3, R3, R0,LSL#16
19189A:  SMLATB.W        R0, R1, R0, R3
19189E:  MOVS            R3, #0
1918A0:  CMP             R3, #0
1918A2:  ADD.W           R0, R0, R2,ASR#16
1918A6:  BLE             loc_1918B6
1918A8:  MOV.W           R12, #0x80000000
1918AC:  STR             R0, [SP,#0xA0+var_88]
1918AE:  CMP.W           R3, R9,LSR#1
1918B2:  BNE             loc_1918F2
1918B4:  B               loc_191B06
1918B6:  MOV             R1, #0x7FFFFFFF
1918BA:  MOV.W           R2, #0x80000000
1918BE:  CMP.W           R10, #0
1918C2:  MOV.W           R12, #0x80000000
1918C6:  BNE             loc_1918D8
1918C8:  CMP             R0, R2
1918CA:  MOV.W           R6, #0x80000000
1918CE:  BGT             loc_1918E8
1918D0:  CMP             R0, R1
1918D2:  IT LT
1918D4:  MOVLT           R0, R1
1918D6:  B               loc_1918E6
1918D8:  CMP             R0, R1
1918DA:  MOV             R6, #0x7FFFFFFF
1918DE:  BGT             loc_1918E8
1918E0:  CMP             R0, R2
1918E2:  IT LT
1918E4:  MOVLT           R0, R2
1918E6:  MOV             R6, R0
1918E8:  STR             R6, [SP,#0xA0+var_88]
1918EA:  CMP.W           R3, R9,LSR#1
1918EE:  BEQ.W           loc_191B06
1918F2:  RSB.W           R0, R8, #0x20 ; ' '
1918F6:  MOV.W           R9, R9,LSR#1
1918FA:  CMP             R0, #1
1918FC:  BNE             loc_1919D6
1918FE:  LDR.W           LR, [SP,#0xA0+var_94]
191902:  MOV.W           R8, #0
191906:  LDR.W           R1, [R11,LR,LSL#2]
19190A:  LDR             R3, [SP,#0xA0+var_84]
19190C:  LDR.W           R0, [R11,R8,LSL#2]
191910:  SMULL.W         R4, R5, R1, R3
191914:  MOV             R6, R0
191916:  LSRS            R4, R4, #0x1E
191918:  ORR.W           R4, R4, R5,LSL#2
19191C:  LSRS            R5, R5, #0x1E
19191E:  ADDS            R4, #1
191920:  ADC.W           R5, R5, #0
191924:  MOVS.W          R5, R5,LSR#1
191928:  MOV.W           R4, R4,RRX
19192C:  SUBS            R5, R0, R4
19192E:  CMP.W           R5, #0xFFFFFFFF
191932:  ITE GT
191934:  EORGT.W         R4, R4, #0x80000000
191938:  EORLE.W         R6, R6, #0x80000000
19193C:  ANDS            R4, R6
19193E:  CMP             R4, #0
191940:  IT LT
191942:  EORLT.W         R5, R12, R5,ASR#31
191946:  LDR             R2, [SP,#0xA0+var_88]
191948:  SMULL.W         R4, R5, R5, R2
19194C:  AND.W           R6, R4, #1
191950:  MOVS.W          R5, R5,ASR#1
191954:  MOV.W           R4, R4,RRX
191958:  ADDS            R4, R4, R6
19195A:  ADC.W           R5, R5, #0
19195E:  ADDS.W          R6, R4, #0x80000000
191962:  ADCS.W          R5, R5, #0
191966:  BNE.W           loc_191B4C
19196A:  SMULL.W         R0, R5, R0, R3
19196E:  LSRS            R0, R0, #0x1E
191970:  ORR.W           R0, R0, R5,LSL#2
191974:  LSRS            R5, R5, #0x1E
191976:  ADDS            R0, #1
191978:  ADC.W           R5, R5, #0
19197C:  MOVS.W          R5, R5,LSR#1
191980:  MOV.W           R0, R0,RRX
191984:  SUBS            R5, R1, R0
191986:  CMP.W           R5, #0xFFFFFFFF
19198A:  ITE GT
19198C:  EORGT.W         R0, R0, #0x80000000
191990:  EORLE.W         R1, R1, #0x80000000
191994:  ANDS            R0, R1
191996:  CMP             R0, #0
191998:  IT LT
19199A:  EORLT.W         R5, R12, R5,ASR#31
19199E:  STR.W           R4, [R11,R8,LSL#2]
1919A2:  SMULL.W         R0, R1, R5, R2
1919A6:  AND.W           R4, R0, #1
1919AA:  MOVS.W          R1, R1,ASR#1
1919AE:  MOV.W           R0, R0,RRX
1919B2:  ADDS            R0, R0, R4
1919B4:  ADC.W           R1, R1, #0
1919B8:  ADDS.W          R4, R0, #0x80000000
1919BC:  ADCS.W          R1, R1, #0
1919C0:  BNE.W           loc_191B4C
1919C4:  STR.W           R0, [R11,LR,LSL#2]
1919C8:  ADD.W           R8, R8, #1
1919CC:  SUB.W           LR, LR, #1
1919D0:  CMP             R8, R9
1919D2:  BLT             loc_191906
1919D4:  B               loc_191B06
1919D6:  SUBS            R3, R0, #1
1919D8:  LDR             R0, [SP,#0xA0+var_94]
1919DA:  MOV.W           LR, #0
1919DE:  STR.W           R9, [SP,#0xA0+var_90]
1919E2:  LDR.W           R6, [R11,R0,LSL#2]
1919E6:  LDR.W           R8, [SP,#0xA0+var_84]
1919EA:  STR             R0, [SP,#0xA0+var_8C]
1919EC:  LDR.W           R5, [R11,LR,LSL#2]
1919F0:  SMULL.W         R0, R1, R6, R8
1919F4:  MOV             R2, R5
1919F6:  LSRS            R0, R0, #0x1E
1919F8:  ORR.W           R0, R0, R1,LSL#2
1919FC:  LSRS            R1, R1, #0x1E
1919FE:  ADDS            R0, #1
191A00:  ADC.W           R1, R1, #0
191A04:  MOVS.W          R1, R1,LSR#1
191A08:  MOV.W           R0, R0,RRX
191A0C:  SUBS            R1, R5, R0
191A0E:  CMP.W           R1, #0xFFFFFFFF
191A12:  ITE GT
191A14:  EORGT.W         R0, R0, #0x80000000
191A18:  EORLE.W         R2, R2, #0x80000000
191A1C:  ANDS            R0, R2
191A1E:  CMP             R0, #0
191A20:  RSB.W           R0, R3, #0x20 ; ' '
191A24:  IT LT
191A26:  EORLT.W         R1, R12, R1,ASR#31
191A2A:  LDR.W           R10, [SP,#0xA0+var_88]
191A2E:  SMULL.W         R2, R11, R1, R10
191A32:  SUB.W           R1, R3, #0x20 ; ' '
191A36:  CMP             R1, #0
191A38:  ASR.W           R12, R11, R3
191A3C:  LSR.W           R2, R2, R3
191A40:  IT GE
191A42:  MOVGE.W         R12, R11,ASR#31
191A46:  LSL.W           R9, R11, R0
191A4A:  ORR.W           R2, R2, R9
191A4E:  CMP             R1, #0
191A50:  IT GE
191A52:  ASRGE.W         R2, R11, R1
191A56:  MOV             R9, R3
191A58:  ADDS            R2, #1
191A5A:  ADC.W           R4, R12, #0
191A5E:  MOVS.W          R4, R4,ASR#1
191A62:  MOV.W           R2, R2,RRX
191A66:  ADDS.W          R3, R2, #0x80000000
191A6A:  ADCS.W          R3, R4, #0
191A6E:  BNE             loc_191B4C
191A70:  SMULL.W         R3, R5, R5, R8
191A74:  MOV.W           R12, #0x80000000
191A78:  LSRS            R3, R3, #0x1E
191A7A:  ORR.W           R3, R3, R5,LSL#2
191A7E:  LSRS            R5, R5, #0x1E
191A80:  ADDS            R3, #1
191A82:  ADC.W           R5, R5, #0
191A86:  MOVS.W          R5, R5,LSR#1
191A8A:  MOV.W           R3, R3,RRX
191A8E:  SUBS            R5, R6, R3
191A90:  CMP.W           R5, #0xFFFFFFFF
191A94:  ITE GT
191A96:  EORGT.W         R3, R3, #0x80000000
191A9A:  EORLE.W         R6, R6, #0x80000000
191A9E:  ANDS            R3, R6
191AA0:  CMP             R3, #0
191AA2:  MOV.W           R3, #0x80000000
191AA6:  IT LT
191AA8:  EORLT.W         R5, R3, R5,ASR#31
191AAC:  CMP             R1, #0
191AAE:  SMULL.W         R3, R6, R5, R10
191AB2:  ADD             R5, SP, #0xA0+var_80
191AB4:  STR.W           R2, [R5,LR,LSL#2]
191AB8:  MOV             R11, R5
191ABA:  ASR.W           R2, R6, R9
191ABE:  LSL.W           R0, R6, R0
191AC2:  IT GE
191AC4:  ASRGE           R2, R6, #0x1F
191AC6:  LSR.W           R3, R3, R9
191ACA:  ORRS            R0, R3
191ACC:  CMP             R1, #0
191ACE:  IT GE
191AD0:  ASRGE.W         R0, R6, R1
191AD4:  MOV             R3, R9
191AD6:  ADDS            R0, #1
191AD8:  ADC.W           R1, R2, #0
191ADC:  MOVS.W          R1, R1,ASR#1
191AE0:  MOV.W           R0, R0,RRX
191AE4:  ADDS.W          R2, R0, #0x80000000
191AE8:  ADCS.W          R1, R1, #0
191AEC:  BNE             loc_191B4C
191AEE:  LDR             R1, [SP,#0xA0+var_8C]
191AF0:  ADD.W           LR, LR, #1
191AF4:  LDR.W           R9, [SP,#0xA0+var_90]
191AF8:  STR.W           R0, [R11,R1,LSL#2]
191AFC:  MOV             R0, R1
191AFE:  SUBS            R0, #1
191B00:  CMP             LR, R9
191B02:  BLT.W           loc_1919E2
191B06:  LDR             R1, [SP,#0xA0+var_98]
191B08:  MOVW            R3, #0xEF9E
191B0C:  MOVW            R6, #0xDF3C
191B10:  MOVT            R3, #0xFF
191B14:  SUBS            R0, R1, #1
191B16:  MOVT            R6, #0x1FF
191B1A:  MOVW            R4, #:lower16:(elf_hash_chain+0x2EAE)
191B1E:  MOV.W           R10, #1
191B22:  LDR.W           R2, [R11,R0,LSL#2]
191B26:  MOVT            R4, #:upper16:(elf_hash_chain+0x2EAE)
191B2A:  ADD             R3, R2
191B2C:  CMP             R3, R6
191B2E:  MOV.W           R6, #0
191B32:  IT HI
191B34:  MOVHI           R6, #1
191B36:  LDR             R3, [SP,#0xA0+var_9C]
191B38:  LDR             R5, [SP,#0xA0+var_94]
191B3A:  CMP             R1, #1
191B3C:  MOV.W           R12, R3,ASR#31
191B40:  SUB.W           R5, R5, #1
191B44:  STR             R5, [SP,#0xA0+var_94]
191B46:  BGT.W           loc_191826
191B4A:  B               loc_191B58
191B4C:  MOVS            R0, #0
191B4E:  B               loc_191B80
191B50:  MOV.W           R3, #0x40000000
191B54:  MOV.W           R12, #0
191B58:  MOVS            R0, #0
191B5A:  CBNZ            R6, loc_191B80
191B5C:  LDR             R1, [SP,#0xA0+var_80]
191B5E:  SUB.W           R0, R0, R1,LSL#7
191B62:  SMMUL.W         R0, R0, R0
191B66:  RSB.W           R0, R0, #0x40000000
191B6A:  UMULL.W         R1, R2, R3, R0
191B6E:  ASRS            R1, R0, #0x1F
191B70:  MLA.W           R1, R3, R1, R2
191B74:  MLA.W           R0, R12, R0, R1
191B78:  LSLS            R0, R0, #2
191B7A:  CMP             R0, R4
191B7C:  IT LT
191B7E:  MOVLT           R0, #0
191B80:  LDR             R1, =(__stack_chk_guard_ptr - 0x191B88)
191B82:  LDR             R2, [SP,#0xA0+var_20]
191B84:  ADD             R1, PC; __stack_chk_guard_ptr
191B86:  LDR             R1, [R1]; __stack_chk_guard
191B88:  LDR             R1, [R1]
191B8A:  SUBS            R1, R1, R2
191B8C:  ITTT EQ
191B8E:  ADDEQ           SP, SP, #0x84
191B90:  POPEQ.W         {R8-R11}
191B94:  POPEQ           {R4-R7,PC}
191B96:  BLX             __stack_chk_fail
