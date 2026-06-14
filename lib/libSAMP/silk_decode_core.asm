; =========================================================
; Game Engine Function: silk_decode_core
; Address            : 0x1967B4 - 0x1971CE
; =========================================================

1967B4:  PUSH            {R4-R7,LR}
1967B6:  ADD             R7, SP, #0xC
1967B8:  PUSH.W          {R8-R11}
1967BC:  SUB             SP, SP, #0x94
1967BE:  MOV             R6, R0
1967C0:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1967CE)
1967C4:  STR.W           R2, [R7,#src]
1967C8:  MOV             R10, R1
1967CA:  ADD             R0, PC; __stack_chk_guard_ptr
1967CC:  MOVS            R1, #7
1967CE:  LDR             R0, [R0]; __stack_chk_guard
1967D0:  LDR             R0, [R0]
1967D2:  STR.W           R0, [R7,#var_24]
1967D6:  LDR.W           R0, [R6,#0x920]
1967DA:  ADD.W           R2, R1, R0,LSL#1
1967DE:  BIC.W           R2, R2, #7
1967E2:  SUB.W           R2, SP, R2
1967E6:  STR.W           R2, [R7,#var_94]
1967EA:  MOV             SP, R2
1967EC:  LDR.W           R2, [R6,#0x918]
1967F0:  ADD             R0, R2
1967F2:  ADD.W           R0, R1, R0,LSL#2
1967F6:  BIC.W           R0, R0, #7
1967FA:  SUB.W           R0, SP, R0
1967FE:  STR.W           R0, [R7,#var_98]
196802:  MOV             SP, R0
196804:  LDR.W           R0, [R6,#0x91C]
196808:  ADD.W           R1, R1, R0,LSL#2
19680C:  BIC.W           R1, R1, #7
196810:  SUB.W           R5, SP, R1
196814:  MOVS            R1, #0x47 ; 'G'
196816:  ADD.W           R0, R1, R0,LSL#2
19681A:  MOV             R8, R5
19681C:  BIC.W           R0, R0, #7
196820:  MOV             SP, R5
196822:  SUB.W           R0, SP, R0
196826:  STR.W           R0, [R7,#var_7C]
19682A:  MOV             SP, R0
19682C:  LDRSB.W         R0, [R6,#0xACF]
196830:  CMP             R2, #1
196832:  STR.W           R0, [R7,#var_9C]
196836:  MOV             R0, R6
196838:  STR.W           R0, [R7,#var_60]
19683C:  BLT             loc_1968C6
19683E:  LDR.W           R0, =(silk_Quantization_Offsets_Q10_ptr - 0x196852)
196842:  MOV             R2, #0xFFFFFFFC
196846:  LDRSB.W         R1, [R6,#0xACD]
19684A:  MOVW            R12, #0x636B
19684E:  ADD             R0, PC; silk_Quantization_Offsets_Q10_ptr
196850:  LDR.W           R6, [R7,#var_60]
196854:  MOVW            LR, #0x8435
196858:  MOVT            R12, #0x3619
19685C:  LDR             R0, [R0]; silk_Quantization_Offsets_Q10
19685E:  AND.W           R1, R2, R1,LSL#1
196862:  LDRSB.W         R6, [R6,#0xACE]
196866:  MOVT            LR, #0xBB3
19686A:  ADD             R0, R1
19686C:  LDR.W           R2, [R7,#var_60]
196870:  LDRSH.W         R0, [R0,R6,LSL#1]
196874:  ADDS            R1, R2, #4
196876:  LDRSB.W         R5, [R2,#0xAD2]
19687A:  MOVS            R2, #0
19687C:  LSLS            R0, R0, #4
19687E:  B               loc_196886
196880:  ORR.W           R5, R5, #0x500
196884:  B               loc_19689E
196886:  MLA.W           R6, R5, LR, R12
19688A:  LDRSH.W         R4, [R3,R2,LSL#1]
19688E:  CMP             R4, #1
196890:  MOV.W           R5, R4,LSL#14
196894:  STR.W           R5, [R1,R2,LSL#2]
196898:  BLT             loc_1968A4
19689A:  SUB.W           R5, R5, #0x500
19689E:  STR.W           R5, [R1,R2,LSL#2]
1968A2:  B               loc_1968AA
1968A4:  CMP.W           R4, #0xFFFFFFFF
1968A8:  BLE             loc_196880
1968AA:  ADD             R5, R0
1968AC:  CMP             R6, #0
1968AE:  IT LT
1968B0:  NEGLT           R5, R5
1968B2:  STR.W           R5, [R1,R2,LSL#2]
1968B6:  ADDS            R5, R6, R4
1968B8:  ADDS            R2, #1
1968BA:  LDR.W           R6, [R7,#var_60]
1968BE:  LDR.W           R4, [R6,#0x918]
1968C2:  CMP             R2, R4
1968C4:  BLT             loc_196886
1968C6:  ADDW            R12, R6, #0x504
1968CA:  STR.W           R12, [R7,#var_AC]
1968CE:  LDR.W           R1, [R7,#var_7C]
1968D2:  MOV             LR, R8
1968D4:  LDM.W           R12!, {R2-R6}
1968D8:  STM             R1!, {R2-R6}
1968DA:  LDM.W           R12!, {R2-R6}
1968DE:  STM             R1!, {R2-R6}
1968E0:  LDM.W           R12, {R0,R2-R6}
1968E4:  STM             R1!, {R0,R2-R6}
1968E6:  LDR.W           R6, [R7,#var_60]
1968EA:  LDR.W           R0, [R6,#0x914]
1968EE:  CMP             R0, #1
1968F0:  BLT.W           loc_197192
1968F4:  MOVW            R0, #0x1044
1968F8:  ADD.W           R9, R6, #4
1968FC:  ADD             R0, R6
1968FE:  STR.W           R0, [R7,#var_90]
196902:  LDR.W           R0, [R7,#var_98]
196906:  MOV.W           R11, #0
19690A:  SUBS            R0, #4
19690C:  STR.W           R0, [R7,#var_A0]
196910:  LDR.W           R0, [R7,#var_94]
196914:  SUBS            R0, #2
196916:  STR.W           R0, [R7,#var_A8]
19691A:  ADD.W           R0, R6, #0x1040
19691E:  STR.W           R0, [R7,#var_88]
196922:  LDR.W           R0, [R6,#0x920]
196926:  STR.W           R0, [R7,#var_84]
19692A:  LDR.W           R0, [R7,#src]
19692E:  STR.W           R0, [R7,#var_64]
196932:  STR.W           R10, [R7,#var_8C]
196936:  STR.W           LR, [R7,#var_78]
19693A:  MOV             R0, #0xFFFFFFE0
19693E:  LDR.W           R2, [R6,#0x924]
196942:  AND.W           R0, R0, R11,LSL#4
196946:  ADD             R0, R10
196948:  ADD.W           R1, R0, #0x20 ; ' '; src
19694C:  SUB.W           R0, R7, #-dest; dest
196950:  LSLS            R2, R2, #1; n
196952:  STR.W           R1, [R7,#var_50]
196956:  BLX             j_memcpy
19695A:  ADD.W           R0, R10, R11,LSL#2
19695E:  LDR.W           R4, [R0,#0x10]!
196962:  STR.W           R0, [R7,#var_4C]
196966:  CMP             R4, #0
196968:  MOV             R0, R4
19696A:  IT MI
19696C:  NEGMI           R0, R4
19696E:  CLZ.W           R8, R0
196972:  SUB.W           R0, R8, #1
196976:  LSL.W           R5, R4, R0
19697A:  MOV             R0, #0x1FFFFFFF
19697E:  ASRS            R1, R5, #0x10
196980:  BLX             sub_220A40
196984:  UXTH            R2, R5
196986:  SXTH            R1, R0
196988:  MULS            R2, R1
19698A:  MOVS            R3, #1
19698C:  ADD.W           R3, R3, R0,ASR#15
196990:  LDRB.W          R12, [R6,#0xACD]
196994:  ASRS            R3, R3, #1
196996:  STR.W           R4, [R7,#var_6C]
19699A:  ASRS            R2, R2, #0x10
19699C:  SMLABT.W        R2, R0, R5, R2
1969A0:  NEGS            R2, R2
1969A2:  LSLS            R2, R2, #3
1969A4:  MULS            R3, R2
1969A6:  ADD.W           R3, R3, R0,LSL#16
1969AA:  SMLATB.W        R0, R2, R0, R3
1969AE:  UXTH            R2, R2
1969B0:  MULS            R2, R1
1969B2:  ADD.W           R3, R0, R2,ASR#16
1969B6:  ADD.W           R0, R11, R11,LSL#2
1969BA:  ADD.W           LR, R10, R0,LSL#1
1969BE:  RSB.W           R0, R8, #0x3E ; '>'
1969C2:  CMP             R0, #0x2F ; '/'
1969C4:  BGT             loc_1969E8
1969C6:  RSB.W           R6, R0, #0x2F ; '/'
1969CA:  MOV             R0, #0x7FFFFFFF
1969CE:  MOV.W           R2, #0x80000000
1969D2:  LSRS            R0, R6
1969D4:  ASRS            R2, R6
1969D6:  CMP             R2, R0
1969D8:  BLE             loc_1969FE
1969DA:  CMP             R3, R2
1969DC:  MOV             R4, R2
1969DE:  BGT             loc_196A0C
1969E0:  CMP             R3, R0
1969E2:  IT LT
1969E4:  MOVLT           R3, R0
1969E6:  B               loc_196A0A
1969E8:  SUB.W           R2, R0, #0x2F ; '/'
1969EC:  CMP             R0, #0x4F ; 'O'
1969EE:  MOV.W           R0, #0
1969F2:  IT LT
1969F4:  ASRLT.W         R0, R3, R2
1969F8:  STR.W           R0, [R7,#var_54]
1969FC:  B               loc_196A1C
1969FE:  CMP             R3, R0
196A00:  MOV             R4, R0
196A02:  BGT             loc_196A0C
196A04:  CMP             R3, R2
196A06:  IT LT
196A08:  MOVLT           R3, R2
196A0A:  MOV             R4, R3
196A0C:  LSL.W           R0, R4, R6
196A10:  LDR.W           R6, [R7,#var_60]
196A14:  STR.W           R0, [R7,#var_54]
196A18:  LDR.W           R4, [R7,#var_6C]
196A1C:  ADD.W           R0, LR, #0x60 ; '`'
196A20:  STR.W           R0, [R7,#var_5C]
196A24:  LDR             R0, [R6]
196A26:  CMP             R4, R0
196A28:  BNE             loc_196A32
196A2A:  MOV.W           LR, #0x10000
196A2E:  MOV             R0, R4
196A30:  B               loc_196C4A
196A32:  CMP             R0, #0
196A34:  MOV             R2, R0
196A36:  IT MI
196A38:  NEGMI           R2, R0
196A3A:  CLZ.W           R3, R2
196A3E:  SUBS            R2, R3, #1
196A40:  LSLS            R0, R2
196A42:  UXTH            R2, R0
196A44:  MULS            R2, R1
196A46:  ASRS            R2, R2, #0x10
196A48:  SMLABT.W        R2, R1, R0, R2
196A4C:  SMMUL.W         R6, R2, R5
196A50:  SUB.W           R0, R0, R6,LSL#3
196A54:  UXTH            R6, R0
196A56:  SMLABT.W        R0, R1, R0, R2
196A5A:  MULS            R6, R1
196A5C:  ADD.W           R2, R0, R6,ASR#16
196A60:  RSB.W           R0, R8, #1
196A64:  ADD             R0, R3
196A66:  ADDS            R0, #0x1C
196A68:  CMP             R0, #0xF
196A6A:  BGT             loc_196A8E
196A6C:  RSB.W           R1, R0, #0x10
196A70:  MOV             R0, #0x7FFFFFFF
196A74:  MOV.W           R3, #0x80000000
196A78:  LSRS            R0, R1
196A7A:  ASRS            R3, R1
196A7C:  CMP             R3, R0
196A7E:  BLE             loc_196AA0
196A80:  CMP             R2, R3
196A82:  MOV             R6, R3
196A84:  BGT             loc_196AAE
196A86:  CMP             R2, R0
196A88:  IT LT
196A8A:  MOVLT           R2, R0
196A8C:  B               loc_196AAC
196A8E:  SUB.W           R3, R0, #0x10
196A92:  CMP             R0, #0x30 ; '0'
196A94:  MOV.W           LR, #0
196A98:  IT LT
196A9A:  ASRLT.W         LR, R2, R3
196A9E:  B               loc_196AB2
196AA0:  CMP             R2, R0
196AA2:  MOV             R6, R0
196AA4:  BGT             loc_196AAE
196AA6:  CMP             R2, R3
196AA8:  IT LT
196AAA:  MOVLT           R2, R3
196AAC:  MOV             R6, R2
196AAE:  LSL.W           LR, R6, R1
196AB2:  LDR.W           R1, [R7,#var_7C]
196AB6:  UXTH.W          R2, LR
196ABA:  MOV.W           R8, #1
196ABE:  LDRD.W          R0, R6, [R1]
196AC2:  LDRD.W          R5, R3, [R1,#8]
196AC6:  SXTH            R4, R0
196AC8:  MULS            R4, R2
196ACA:  ASRS            R4, R4, #0x10
196ACC:  SMLABT.W        R4, R0, LR, R4
196AD0:  ADD.W           R0, R8, R0,ASR#15
196AD4:  ASRS            R0, R0, #1
196AD6:  MLA.W           R0, R0, LR, R4
196ADA:  STR             R0, [R1]
196ADC:  SXTH            R0, R6
196ADE:  MULS            R0, R2
196AE0:  ASRS            R0, R0, #0x10
196AE2:  SMLABT.W        R0, R6, LR, R0
196AE6:  ADD.W           R6, R8, R6,ASR#15
196AEA:  ASRS            R6, R6, #1
196AEC:  MLA.W           R0, R6, LR, R0
196AF0:  ADD.W           R6, R8, R5,ASR#15
196AF4:  ASRS            R6, R6, #1
196AF6:  STR             R0, [R1,#4]
196AF8:  SXTH            R0, R5
196AFA:  MULS            R0, R2
196AFC:  ASRS            R0, R0, #0x10
196AFE:  SMLABT.W        R0, R5, LR, R0
196B02:  MLA.W           R0, R6, LR, R0
196B06:  STR             R0, [R1,#8]
196B08:  LDR             R0, [R1,#0x24]
196B0A:  SXTH            R6, R0
196B0C:  MULS            R6, R2
196B0E:  ASRS            R6, R6, #0x10
196B10:  SMLABT.W        R6, R0, LR, R6
196B14:  ADD.W           R0, R8, R0,ASR#15
196B18:  ASRS            R0, R0, #1
196B1A:  MLA.W           R6, R0, LR, R6
196B1E:  LDR             R0, [R1,#0x20]
196B20:  SXTH            R5, R0
196B22:  MULS            R5, R2
196B24:  ASRS            R5, R5, #0x10
196B26:  SMLABT.W        R5, R0, LR, R5
196B2A:  ADD.W           R0, R8, R0,ASR#15
196B2E:  ASRS            R0, R0, #1
196B30:  MLA.W           R5, R0, LR, R5
196B34:  LDR             R0, [R1,#0x1C]
196B36:  SXTH            R4, R0
196B38:  MULS            R4, R2
196B3A:  ASRS            R4, R4, #0x10
196B3C:  SMLABT.W        R4, R0, LR, R4
196B40:  ADD.W           R0, R8, R0,ASR#15
196B44:  ASRS            R0, R0, #1
196B46:  MLA.W           R4, R0, LR, R4
196B4A:  SXTH            R0, R3
196B4C:  MULS            R0, R2
196B4E:  ASRS            R0, R0, #0x10
196B50:  SMLABT.W        R0, R3, LR, R0
196B54:  ADD.W           R3, R8, R3,ASR#15
196B58:  ASRS            R3, R3, #1
196B5A:  MLA.W           R0, R3, LR, R0
196B5E:  STR             R0, [R1,#0xC]
196B60:  LDR             R0, [R1,#0x10]
196B62:  SXTH            R3, R0
196B64:  MULS            R3, R2
196B66:  ASRS            R3, R3, #0x10
196B68:  SMLABT.W        R3, R0, LR, R3
196B6C:  ADD.W           R0, R8, R0,ASR#15
196B70:  ASRS            R0, R0, #1
196B72:  MLA.W           R0, R0, LR, R3
196B76:  STR             R0, [R1,#0x10]
196B78:  LDR             R0, [R1,#0x14]
196B7A:  SXTH            R3, R0
196B7C:  MULS            R3, R2
196B7E:  ASRS            R3, R3, #0x10
196B80:  SMLABT.W        R3, R0, LR, R3
196B84:  ADD.W           R0, R8, R0,ASR#15
196B88:  ASRS            R0, R0, #1
196B8A:  MLA.W           R0, R0, LR, R3
196B8E:  STR             R0, [R1,#0x14]
196B90:  LDR             R0, [R1,#0x18]
196B92:  SXTH            R3, R0
196B94:  MULS            R3, R2
196B96:  ASRS            R3, R3, #0x10
196B98:  SMLABT.W        R3, R0, LR, R3
196B9C:  ADD.W           R0, R8, R0,ASR#15
196BA0:  ASRS            R0, R0, #1
196BA2:  MLA.W           R0, R0, LR, R3
196BA6:  ADD.W           R3, R1, #0x18
196BAA:  STM             R3!, {R0,R4-R6}
196BAC:  LDR             R0, [R1,#0x28]
196BAE:  LDR.W           R6, [R7,#var_60]
196BB2:  LDR.W           R4, [R7,#var_6C]
196BB6:  SXTH            R3, R0
196BB8:  MULS            R3, R2
196BBA:  ASRS            R3, R3, #0x10
196BBC:  SMLABT.W        R3, R0, LR, R3
196BC0:  ADD.W           R0, R8, R0,ASR#15
196BC4:  ASRS            R0, R0, #1
196BC6:  MLA.W           R0, R0, LR, R3
196BCA:  STR             R0, [R1,#0x28]
196BCC:  LDR             R0, [R1,#0x2C]
196BCE:  SXTH            R3, R0
196BD0:  MULS            R3, R2
196BD2:  ASRS            R3, R3, #0x10
196BD4:  SMLABT.W        R3, R0, LR, R3
196BD8:  ADD.W           R0, R8, R0,ASR#15
196BDC:  ASRS            R0, R0, #1
196BDE:  MLA.W           R0, R0, LR, R3
196BE2:  STR             R0, [R1,#0x2C]
196BE4:  LDR             R0, [R1,#0x30]
196BE6:  SXTH            R3, R0
196BE8:  MULS            R3, R2
196BEA:  ASRS            R3, R3, #0x10
196BEC:  SMLABT.W        R3, R0, LR, R3
196BF0:  ADD.W           R0, R8, R0,ASR#15
196BF4:  ASRS            R0, R0, #1
196BF6:  MLA.W           R0, R0, LR, R3
196BFA:  STR             R0, [R1,#0x30]
196BFC:  LDR             R0, [R1,#0x34]
196BFE:  SXTH            R3, R0
196C00:  MULS            R3, R2
196C02:  ASRS            R3, R3, #0x10
196C04:  SMLABT.W        R3, R0, LR, R3
196C08:  ADD.W           R0, R8, R0,ASR#15
196C0C:  ASRS            R0, R0, #1
196C0E:  MLA.W           R0, R0, LR, R3
196C12:  STR             R0, [R1,#0x34]
196C14:  LDR             R0, [R1,#0x38]
196C16:  SXTH            R3, R0
196C18:  MULS            R3, R2
196C1A:  ASRS            R3, R3, #0x10
196C1C:  SMLABT.W        R3, R0, LR, R3
196C20:  ADD.W           R0, R8, R0,ASR#15
196C24:  ASRS            R0, R0, #1
196C26:  MLA.W           R0, R0, LR, R3
196C2A:  STR             R0, [R1,#0x38]
196C2C:  LDR             R0, [R1,#0x3C]
196C2E:  SXTH            R3, R0
196C30:  MULS            R2, R3
196C32:  ASRS            R2, R2, #0x10
196C34:  SMLABT.W        R2, R0, LR, R2
196C38:  ADD.W           R0, R8, R0,ASR#15
196C3C:  ASRS            R0, R0, #1
196C3E:  MLA.W           R0, R0, LR, R2
196C42:  STR             R0, [R1,#0x3C]
196C44:  LDR.W           R0, [R7,#var_4C]
196C48:  LDR             R0, [R0]
196C4A:  STR             R0, [R6]
196C4C:  LDR.W           R0, [R7,#var_88]
196C50:  LDR             R0, [R0]
196C52:  STR.W           R9, [R7,#var_74]
196C56:  CBZ             R0, loc_196CA0
196C58:  LDR.W           R0, [R7,#var_90]
196C5C:  LDR             R0, [R0]
196C5E:  CMP             R0, #2
196C60:  BNE             loc_196CA0
196C62:  CMP.W           R11, #1
196C66:  BGT             loc_196CA0
196C68:  LDRB.W          R0, [R6,#0xACD]
196C6C:  CMP             R0, #2
196C6E:  BEQ             loc_196CA0
196C70:  LDR.W           R1, [R7,#var_5C]
196C74:  MOVS            R0, #0
196C76:  STR             R0, [R1,#4]
196C78:  STRH            R0, [R1,#8]
196C7A:  STR             R0, [R1]
196C7C:  MOV.W           R0, #0x1000
196C80:  STRH            R0, [R1,#4]
196C82:  LDR.W           R9, [R6,#0x904]
196C86:  STR.W           R9, [R10,R11,LSL#2]
196C8A:  CMP.W           R11, #0
196C8E:  BNE             loc_196CB0
196C90:  LDR.W           R0, [R6,#0x920]
196C94:  LDR.W           R1, [R6,#0x924]
196C98:  SUB.W           R2, R0, R9
196C9C:  SUBS            R2, R2, R1
196C9E:  B               loc_196CFE
196CA0:  CMP.W           R12, #2
196CA4:  BNE             loc_196D3E
196CA6:  LDR.W           R9, [R10,R11,LSL#2]
196CAA:  CMP.W           R11, #0
196CAE:  BEQ             loc_196C90
196CB0:  LDR.W           R0, [R7,#var_9C]
196CB4:  CMP             R0, #3
196CB6:  BGT             loc_196D4E
196CB8:  CMP.W           R11, #2
196CBC:  BNE             loc_196D4E
196CBE:  LDR.W           R0, [R7,#var_60]
196CC2:  LDR.W           R1, [R6,#0x91C]
196CC6:  LDR.W           R4, [R6,#0x920]
196CCA:  LDR.W           R6, [R0,#0x924]
196CCE:  LDR.W           R0, [R7,#var_60]
196CD2:  LSLS            R2, R1, #2; n
196CD4:  LDR.W           R1, [R7,#src]; src
196CD8:  ADD.W           R0, R0, R4,LSL#1
196CDC:  ADDW            R0, R0, #0x544; dest
196CE0:  BLX             j_memcpy
196CE4:  LDR.W           R0, [R7,#var_60]
196CE8:  SUB.W           R2, R4, R9
196CEC:  LDR.W           R1, [R7,#var_60]
196CF0:  SUBS            R2, R2, R6
196CF2:  LDR.W           R6, [R7,#var_60]
196CF6:  LDR.W           R0, [R0,#0x920]
196CFA:  LDR.W           R1, [R1,#0x924]
196CFE:  LDR.W           R3, [R6,#0x91C]
196D02:  SUBS            R2, #2
196D04:  MLA.W           R3, R3, R11, R2
196D08:  SUB             SP, SP, #8
196D0A:  STR             R1, [SP,#0xB8+var_B8]
196D0C:  LDR             R1, [R7,#arg_0]
196D0E:  STR             R1, [SP,#0xB8+var_B4]
196D10:  ADD.W           R1, R6, R3,LSL#1
196D14:  SUBS            R3, R0, R2
196D16:  LDR.W           R0, [R7,#var_94]
196D1A:  ADDW            R1, R1, #0x544
196D1E:  ADD.W           R0, R0, R2,LSL#1
196D22:  LDR.W           R2, [R7,#var_50]
196D26:  BLX             j_silk_LPC_analysis_filter
196D2A:  ADD             SP, SP, #8
196D2C:  CMP.W           R11, #0
196D30:  BEQ             loc_196D9A
196D32:  LDR.W           R6, [R7,#var_54]
196D36:  CMP.W           R9, #0xFFFFFFFF
196D3A:  BGE             loc_196DB4
196D3C:  B               loc_196DF0
196D3E:  LDR.W           R5, [R6,#0x91C]
196D42:  STR.W           R9, [R7,#var_68]
196D46:  CMP             R5, #1
196D48:  BGE.W           loc_196EFE
196D4C:  B               loc_197152
196D4E:  CMP.W           LR, #0x10000
196D52:  BEQ             loc_196DF0
196D54:  CMP.W           R9, #0xFFFFFFFF
196D58:  BLT             loc_196DF0
196D5A:  LDR.W           R1, [R7,#var_84]
196D5E:  ADD.W           R2, R9, #2
196D62:  LDR.W           R0, [R7,#var_A0]
196D66:  UXTH.W          R12, LR
196D6A:  MOV.W           R6, LR,ASR#16
196D6E:  ADD.W           R0, R0, R1,LSL#2
196D72:  LDR             R5, [R0]
196D74:  MOVS            R1, #1
196D76:  SUBS            R2, #1
196D78:  SXTH            R4, R5
196D7A:  ADD.W           R5, R1, R5,ASR#15
196D7E:  MUL.W           R3, R4, R12
196D82:  MOV.W           R5, R5,ASR#1
196D86:  SMULBB.W        R4, R4, R6
196D8A:  ADD.W           R3, R4, R3,ASR#16
196D8E:  MLA.W           R3, R5, LR, R3
196D92:  STR.W           R3, [R0],#-4
196D96:  BNE             loc_196D72
196D98:  B               loc_196DF0
196D9A:  LDR.W           R2, [R7,#var_54]
196D9E:  LDRSH.W         R0, [R10,#0x88]
196DA2:  UXTH            R1, R2
196DA4:  MULS            R1, R0
196DA6:  ASRS            R1, R1, #0x10
196DA8:  SMLABT.W        R0, R0, R2, R1
196DAC:  LSLS            R6, R0, #2
196DAE:  CMP.W           R9, #0xFFFFFFFF
196DB2:  BLT             loc_196DF0
196DB4:  LDR.W           R0, [R7,#var_60]
196DB8:  UXTH            R3, R6
196DBA:  LDR.W           R2, [R7,#var_84]
196DBE:  ASRS            R6, R6, #0x10
196DC0:  LDR.W           R1, [R0,#0x920]
196DC4:  LDR.W           R0, [R7,#var_A0]
196DC8:  ADD.W           R0, R0, R2,LSL#2
196DCC:  LDR.W           R2, [R7,#var_A8]
196DD0:  ADD.W           R1, R2, R1,LSL#1
196DD4:  ADD.W           R2, R9, #2
196DD8:  LDRSH.W         R4, [R1],#-2
196DDC:  SUBS            R2, #1
196DDE:  MUL.W           R5, R3, R4
196DE2:  SMULBB.W        R4, R6, R4
196DE6:  ADD.W           R5, R4, R5,ASR#16
196DEA:  STR.W           R5, [R0],#-4
196DEE:  BNE             loc_196DD8
196DF0:  LDR.W           R0, [R7,#var_60]
196DF4:  LDR.W           R5, [R0,#0x91C]
196DF8:  CMP             R5, #1
196DFA:  BLT.W           loc_19714E
196DFE:  LDR.W           R1, [R7,#var_5C]
196E02:  MOVS            R0, #8
196E04:  STR.W           R11, [R7,#var_80]
196E08:  SUB.W           R10, R0, R9,LSL#2
196E0C:  LDR.W           R2, [R7,#var_84]
196E10:  MOV             R3, R1
196E12:  LDRSH.W         R1, [R3]
196E16:  STR.W           R1, [R7,#var_4C]
196E1A:  LDRSH.W         R1, [R3,#2]
196E1E:  STR.W           R1, [R7,#var_50]
196E22:  LDRSH.W         R0, [R3,#4]
196E26:  STR.W           R0, [R7,#var_54]
196E2A:  LDR.W           R1, [R7,#var_98]
196E2E:  LDRSH.W         R0, [R3,#6]
196E32:  STR.W           R0, [R7,#var_58]
196E36:  ADD.W           R11, R1, R2,LSL#2
196E3A:  LDRSH.W         R0, [R3,#8]
196E3E:  MOVS            R2, #0
196E40:  STR.W           R0, [R7,#var_5C]
196E44:  MOV             R8, R5
196E46:  ADD.W           R5, R11, R10
196E4A:  SUB.W           R12, R5, #0x10
196E4E:  LDR.W           R6, [R11,R10]
196E52:  ADD.W           R10, R10, #4
196E56:  LDM.W           R12, {R3,R4,R12}
196E5A:  UXTH.W          LR, R6
196E5E:  LDR.W           R9, [R7,#var_4C]
196E62:  LDR.W           R5, [R5,#-4]
196E66:  LDR.W           R0, [R7,#var_50]
196E6A:  MUL.W           R1, LR, R9
196E6E:  LDR.W           LR, [R7,#var_78]
196E72:  ASRS            R1, R1, #0x10
196E74:  SMLABT.W        R1, R9, R6, R1
196E78:  UXTH            R6, R5
196E7A:  MULS            R6, R0
196E7C:  SMLATB.W        R1, R5, R0, R1
196E80:  LDR.W           R0, [R7,#var_54]
196E84:  UXTH            R5, R3
196E86:  ADD.W           R1, R1, R6,ASR#16
196E8A:  UXTH.W          R6, R12
196E8E:  MULS            R6, R0
196E90:  SMLATB.W        R1, R12, R0, R1
196E94:  LDR.W           R0, [R7,#var_58]
196E98:  ADD.W           R1, R1, R6,ASR#16
196E9C:  UXTH            R6, R4
196E9E:  MULS            R6, R0
196EA0:  SMLATB.W        R1, R4, R0, R1
196EA4:  LDR.W           R0, [R7,#var_5C]
196EA8:  MULS            R5, R0
196EAA:  ADD.W           R1, R1, R6,ASR#16
196EAE:  SMLATB.W        R1, R3, R0, R1
196EB2:  LDR.W           R0, [R7,#var_74]
196EB6:  LDR.W           R3, [R0,R2,LSL#2]
196EBA:  ADD.W           R1, R1, R5,ASR#16
196EBE:  MOV             R5, R8
196EC0:  ADD.W           R1, R3, R1,LSL#1
196EC4:  ADDS            R1, #4
196EC6:  STR.W           R1, [LR,R2,LSL#2]
196ECA:  LSLS            R1, R1, #1
196ECC:  STR.W           R1, [R11,R2,LSL#2]
196ED0:  ADDS            R2, #1
196ED2:  CMP             R2, R5
196ED4:  BLT             loc_196E44
196ED6:  LDR.W           R10, [R7,#var_8C]
196EDA:  LDR.W           R6, [R7,#var_60]
196EDE:  LDR.W           R9, [R7,#var_74]
196EE2:  LDR.W           R11, [R7,#var_80]
196EE6:  LDR.W           R4, [R7,#var_6C]
196EEA:  LDR.W           R0, [R7,#var_84]
196EEE:  STR.W           LR, [R7,#var_68]
196EF2:  ADD             R0, R2
196EF4:  STR.W           R0, [R7,#var_84]
196EF8:  CMP             R5, #1
196EFA:  BLT.W           loc_197152
196EFE:  LDR.W           R12, [R7,#var_7C]
196F02:  MOV             R2, R4
196F04:  MOVS            R0, #1
196F06:  ADD.W           R2, R0, R2,ASR#21
196F0A:  LSRS            R1, R4, #6
196F0C:  STR.W           R11, [R7,#var_80]
196F10:  ASRS            R0, R2, #1
196F12:  LDR.W           R10, [R12,#0x1C]
196F16:  LDR.W           R8, [R12,#0x24]
196F1A:  MOV.W           R11, #0
196F1E:  LDR.W           LR, [R12,#0x2C]
196F22:  LDR.W           R9, [R12,#0x3C]
196F26:  STR.W           R0, [R7,#var_6C]
196F2A:  SXTH            R0, R1
196F2C:  STR.W           R0, [R7,#var_70]
196F30:  MOVS            R0, #0x40 ; '@'
196F32:  STR.W           R0, [R7,#var_4C]
196F36:  LDRSH.W         R1, [R7,#dest]
196F3A:  UXTH.W          R3, R9
196F3E:  LDR.W           R4, [R6,#0x924]
196F42:  LDRSH.W         R2, [R7,#var_46]
196F46:  MULS            R3, R1
196F48:  LDRSH.W         R5, [R7,#var_44]
196F4C:  ASRS            R6, R4, #1
196F4E:  SMLABT.W        R1, R1, R9, R6
196F52:  STR.W           R4, [R7,#var_5C]
196F56:  LDRSH.W         R0, [R7,#var_42]
196F5A:  ADD.W           R3, R1, R3,ASR#16
196F5E:  ADD.W           R1, R12, R11,LSL#2
196F62:  LDR             R6, [R1,#0x38]
196F64:  LDR             R4, [R1,#0x30]
196F66:  STR.W           R4, [R7,#var_50]
196F6A:  SMLATB.W        R3, R6, R2, R3
196F6E:  UXTH            R6, R6
196F70:  MULS            R2, R6
196F72:  LDR.W           R9, [R1,#0x18]
196F76:  ADD.W           R2, R3, R2,ASR#16
196F7A:  LDR             R3, [R1,#0x34]
196F7C:  UXTH            R6, R3
196F7E:  SMLATB.W        R2, R3, R5, R2
196F82:  MULS            R6, R5
196F84:  UXTH            R3, R4
196F86:  LDR             R5, [R1,#0x28]
196F88:  MULS            R3, R0
196F8A:  STR.W           R5, [R7,#var_54]
196F8E:  ADD.W           R6, R2, R6,ASR#16
196F92:  LDR             R2, [R1,#0x20]
196F94:  SMLATB.W        R0, R4, R0, R6
196F98:  LDRSH.W         R6, [R7,#var_40]
196F9C:  LDRSH.W         R4, [R7,#var_3E]
196FA0:  STR.W           R2, [R7,#var_58]
196FA4:  ADD.W           R0, R0, R3,ASR#16
196FA8:  UXTH.W          R3, LR
196FAC:  MULS            R3, R6
196FAE:  SMLATB.W        R0, LR, R6, R0
196FB2:  ADD.W           R0, R0, R3,ASR#16
196FB6:  UXTH            R3, R5
196FB8:  MULS            R3, R4
196FBA:  SMLATB.W        R0, R5, R4, R0
196FBE:  LDRSH.W         R4, [R7,#var_3C]
196FC2:  ADD.W           R0, R0, R3,ASR#16
196FC6:  UXTH.W          R3, R8
196FCA:  MULS            R3, R4
196FCC:  SMLATB.W        R0, R8, R4, R0
196FD0:  LDRSH.W         R4, [R7,#var_3A]
196FD4:  ADD.W           R0, R0, R3,ASR#16
196FD8:  UXTH            R3, R2
196FDA:  MULS            R3, R4
196FDC:  SMLATB.W        R0, R2, R4, R0
196FE0:  LDRSH.W         R4, [R7,#var_38]
196FE4:  LDR.W           R2, [R7,#var_5C]
196FE8:  CMP             R2, #0x10
196FEA:  ADD.W           R0, R0, R3,ASR#16
196FEE:  UXTH.W          R3, R10
196FF2:  MUL.W           R3, R4, R3
196FF6:  SMLATB.W        R0, R10, R4, R0
196FFA:  LDRSH.W         R4, [R7,#var_36]
196FFE:  MOV             R10, R12
197000:  ADD.W           R0, R0, R3,ASR#16
197004:  UXTH.W          R3, R9
197008:  MUL.W           R3, R4, R3
19700C:  SMLATB.W        R0, R9, R4, R0
197010:  ADD.W           R0, R0, R3,ASR#16
197014:  BNE             loc_197092
197016:  LDRSH.W         R2, [R7,#var_34]
19701A:  LDRSH.W         R3, [R7,#var_32]
19701E:  LDRSH.W         R6, [R7,#var_30]
197022:  LDRSH.W         R8, [R7,#var_2E]
197026:  LDRD.W          R12, R9, [R1,#4]
19702A:  LDRD.W          R4, R5, [R1,#0xC]
19702E:  LDR             R1, [R1,#0x14]
197030:  SMLABT.W        R0, R2, R1, R0
197034:  UXTH            R1, R1
197036:  MULS            R1, R2
197038:  UXTH            R2, R4
19703A:  MULS            R2, R6
19703C:  ADD.W           R0, R0, R1,ASR#16
197040:  UXTH            R1, R5
197042:  MULS            R1, R3
197044:  SMLATB.W        R0, R5, R3, R0
197048:  LDRSH.W         R3, [R7,#var_2A]
19704C:  ADD.W           R0, R0, R1,ASR#16
197050:  UXTH.W          R1, R9
197054:  SMLATB.W        R0, R4, R6, R0
197058:  LDR.W           R6, [R7,#var_4C]
19705C:  MUL.W           R1, R1, R8
197060:  UXTH.W          R4, R12
197064:  ADD.W           R5, R10, R6
197068:  ADD.W           R0, R0, R2,ASR#16
19706C:  LDRSH.W         R2, [R7,#var_2C]
197070:  SMLATB.W        R0, R9, R8, R0
197074:  LDR.W           R5, [R5,#-0x40]
197078:  MULS            R4, R2
19707A:  ADD.W           R0, R0, R1,ASR#16
19707E:  UXTH            R1, R5
197080:  SMLATB.W        R0, R12, R2, R0
197084:  MULS            R1, R3
197086:  ADD.W           R0, R0, R4,ASR#16
19708A:  SMLATB.W        R0, R5, R3, R0
19708E:  ADD.W           R0, R0, R1,ASR#16
197092:  LDR.W           R1, [R7,#var_68]
197096:  CMP.W           R0, #0xF8000000
19709A:  MOV             R2, #0x7FFFFFF
19709E:  LDR.W           R1, [R1,R11,LSL#2]
1970A2:  IT LE
1970A4:  MOVLE.W         R0, #0xF8000000
1970A8:  CMP             R0, R2
1970AA:  IT GE
1970AC:  MOVGE           R0, R2
1970AE:  ADD.W           R9, R1, R0,LSL#4
1970B2:  LSLS            R0, R0, #4
1970B4:  CMP.W           R9, #0
1970B8:  BLT             loc_1970C6
1970BA:  ANDS            R0, R1
1970BC:  CMP             R0, #0
1970BE:  IT LT
1970C0:  MOVLT.W         R9, #0x80000000
1970C4:  B               loc_1970D2
1970C6:  ORRS            R0, R1
1970C8:  CMP.W           R0, #0xFFFFFFFF
1970CC:  IT GT
1970CE:  MOVGT           R9, #0x7FFFFFFF
1970D2:  LDR.W           R0, [R7,#var_6C]
1970D6:  UXTH.W          R1, R9
1970DA:  LDR.W           R2, [R7,#var_70]
1970DE:  MOV             R12, R10
1970E0:  LDR.W           R3, [R7,#var_4C]
1970E4:  MUL.W           R0, R9, R0
1970E8:  LDR.W           R6, [R7,#var_60]
1970EC:  MULS            R1, R2
1970EE:  STR.W           R9, [R10,R3]
1970F2:  SMLABT.W        R0, R2, R9, R0
1970F6:  MOV             R2, #0xFFFF8000
1970FE:  ADDS            R3, #4
197100:  ADD.W           R0, R0, R1,ASR#16
197104:  MOVS            R1, #1
197106:  ADD.W           R0, R1, R0,ASR#7
19710A:  ASRS            R1, R0, #1
19710C:  CMP             R1, R2
19710E:  MOV             R1, R2
197110:  IT GT
197112:  ASRGT           R1, R0, #1
197114:  MOVW            R0, #0x7FFF
197118:  CMP             R1, R0
19711A:  IT GE
19711C:  MOVGE           R1, R0
19711E:  LDR.W           R0, [R7,#var_64]
197122:  STRH.W          R1, [R0,R11,LSL#1]
197126:  ADD.W           R11, R11, #1
19712A:  STR.W           R3, [R7,#var_4C]
19712E:  LDR.W           R5, [R6,#0x91C]
197132:  LDRD.W          R10, R8, [R7,#var_58]
197136:  LDR.W           LR, [R7,#var_50]
19713A:  CMP             R11, R5
19713C:  BLT.W           loc_196F36
197140:  LDR.W           R10, [R7,#var_8C]
197144:  LDR.W           R9, [R7,#var_74]
197148:  LDR.W           R11, [R7,#var_80]
19714C:  B               loc_197152
19714E:  LDR.W           R9, [R7,#var_74]
197152:  LDR.W           R0, [R7,#var_7C]
197156:  MOV             R8, R5
197158:  ADD.W           R9, R9, R8,LSL#2
19715C:  ADD.W           R11, R11, #1
197160:  ADD.W           R12, R0, R5,LSL#2
197164:  MOV             R1, R0
197166:  LDM.W           R12!, {R2-R6}
19716A:  STM             R1!, {R2-R6}
19716C:  LDM.W           R12!, {R2-R6}
197170:  STM             R1!, {R2-R6}
197172:  LDM.W           R12, {R0,R2-R6}
197176:  STM             R1!, {R0,R2-R6}
197178:  LDR.W           R0, [R7,#var_64]
19717C:  LDR.W           R6, [R7,#var_60]
197180:  ADD.W           R0, R0, R8,LSL#1
197184:  STR.W           R0, [R7,#var_64]
197188:  LDR.W           R0, [R6,#0x914]
19718C:  CMP             R11, R0
19718E:  BLT.W           loc_19693A
197192:  LDR.W           R4, [R7,#var_7C]
197196:  LDR.W           R12, [R7,#var_AC]
19719A:  LDM             R4!, {R0-R3,R6}
19719C:  STM.W           R12!, {R0-R3,R6}
1971A0:  LDM             R4!, {R0-R3,R6}
1971A2:  STM.W           R12!, {R0-R3,R6}
1971A6:  LDM.W           R4, {R0-R3,R5,R6}
1971AA:  STM.W           R12, {R0-R3,R5,R6}
1971AE:  LDR             R0, =(__stack_chk_guard_ptr - 0x1971B8)
1971B0:  LDR.W           R1, [R7,#var_24]
1971B4:  ADD             R0, PC; __stack_chk_guard_ptr
1971B6:  LDR             R0, [R0]; __stack_chk_guard
1971B8:  LDR             R0, [R0]
1971BA:  SUBS            R0, R0, R1
1971BC:  ITTTT EQ
1971BE:  SUBEQ.W         R4, R7, #-var_1C
1971C2:  MOVEQ           SP, R4
1971C4:  POPEQ.W         {R8-R11}
1971C8:  POPEQ           {R4-R7,PC}
1971CA:  BLX             __stack_chk_fail
