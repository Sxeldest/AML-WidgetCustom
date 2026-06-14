; =========================================================
; Game Engine Function: remove_doubling
; Address            : 0xC28F4 - 0xC2CE6
; =========================================================

C28F4:  PUSH            {R4-R7,LR}
C28F6:  ADD             R7, SP, #0xC
C28F8:  PUSH.W          {R8-R11}
C28FC:  SUB             SP, SP, #0x5C
C28FE:  LDR.W           R6, =(__stack_chk_guard_ptr - 0xC2910)
C2902:  MOV             R9, R1
C2904:  LDR.W           R12, [R7,#arg_0]
C2908:  ADD.W           R4, R9, R9,LSR#31
C290C:  ADD             R6, PC; __stack_chk_guard_ptr
C290E:  MOV.W           R5, #0xFFFFFFFF
C2912:  ADD.W           R10, R5, R4,ASR#1
C2916:  ADD.W           LR, R2, R2,LSR#31
C291A:  LDR             R6, [R6]; __stack_chk_guard
C291C:  LDR             R6, [R6]
C291E:  STR.W           R6, [R7,#var_24]
C2922:  LDR.W           R6, [R12]
C2926:  ADD.W           R5, R6, R6,LSR#31
C292A:  ASRS            R6, R5, #1
C292C:  CMP.W           R6, R4,ASR#1
C2930:  MOV             R6, R10
C2932:  IT LT
C2934:  ASRLT           R6, R5, #1
C2936:  ASRS            R5, R4, #1
C2938:  STR.W           R6, [R7,#var_54]
C293C:  STR.W           R6, [R12]
C2940:  BIC.W           R6, R4, #1
C2944:  ADD.W           R8, R0, R6
C2948:  MOVS            R6, #0xB
C294A:  ADD.W           R6, R6, R5,LSL#2
C294E:  LDR.W           R12, [R7,#arg_4]
C2952:  BIC.W           R6, R6, #7
C2956:  STR.W           R5, [R7,#var_60]
C295A:  SUB.W           R4, SP, R6
C295E:  ADD.W           R6, R3, R3,LSR#31
C2962:  STR.W           R2, [R7,#var_74]
C2966:  ASRS            R1, R6, #1
C2968:  STR.W           R4, [R7,#var_3C]
C296C:  STR.W           R1, [R7,#var_58]
C2970:  MOVS            R1, #0
C2972:  MOV             SP, R4
C2974:  CMP             R3, #2
C2976:  MOV.W           R11, #0
C297A:  STR.W           R3, [R7,#var_44]
C297E:  BLT             loc_C29A8
C2980:  LDR.W           R2, [R7,#var_54]
C2984:  MOV             R5, R8
C2986:  LDR.W           R4, [R7,#var_58]
C298A:  MOV.W           R11, #0
C298E:  SUB.W           R6, R1, R2,LSL#1
C2992:  LDRSH.W         R2, [R5]
C2996:  SUBS            R4, #1
C2998:  LDRSH           R3, [R5,R6]
C299A:  ADD.W           R5, R5, #2
C299E:  SMLABB.W        R1, R2, R2, R1
C29A2:  SMLABB.W        R11, R3, R2, R11
C29A6:  BNE             loc_C2992
C29A8:  MOV.W           R2, LR,ASR#1
C29AC:  ADD.W           R12, R12, R12,LSR#31
C29B0:  STR.W           R2, [R7,#var_40]
C29B4:  CMP.W           R9, #2
C29B8:  LDR.W           R2, [R7,#var_3C]
C29BC:  STR.W           R8, [R7,#var_5C]
C29C0:  STR             R1, [R2]
C29C2:  BLT             loc_C29FA
C29C4:  LDR.W           R2, [R7,#var_58]
C29C8:  MOV             R3, R1
C29CA:  ADD.W           LR, R0, R2,LSL#1
C29CE:  LDR.W           R2, [R7,#var_3C]
C29D2:  ADDS            R2, #4
C29D4:  LDRSH.W         R5, [R0,R10,LSL#1]
C29D8:  LDRSH.W         R4, [LR,R10,LSL#1]
C29DC:  SUB.W           R10, R10, #1
C29E0:  SMLABB.W        R6, R5, R5, R3
C29E4:  MLS.W           R3, R4, R4, R6
C29E8:  CMP             R3, #0
C29EA:  MOV             R6, R3
C29EC:  IT LE
C29EE:  MOVLE           R6, #0
C29F0:  STR.W           R6, [R2],#4
C29F4:  ADDS.W          R6, R10, #1
C29F8:  BNE             loc_C29D4
C29FA:  STR.W           R0, [R7,#var_78]
C29FE:  MOV.W           R0, R12,ASR#1
C2A02:  STR.W           R0, [R7,#var_4C]
C2A06:  LDR.W           R4, [R7,#var_54]
C2A0A:  LDR.W           R0, [R7,#var_3C]
C2A0E:  STR.W           R11, [R7,#var_28]
C2A12:  STR.W           R1, [R7,#var_48]
C2A16:  LDR.W           R5, [R0,R4,LSL#2]
C2A1A:  MOV             R0, R11
C2A1C:  MOV             R2, R5
C2A1E:  BL              sub_C2D30
C2A22:  MOV             R9, R0
C2A24:  MOVW            R0, #0x7333
C2A28:  MOVW            R1, #0x6CCD
C2A2C:  SMULBB.W        R0, R9, R0
C2A30:  MOVW            R2, #0x599A
C2A34:  SMULBB.W        R1, R9, R1
C2A38:  SMULBB.W        R2, R9, R2
C2A3C:  MOV             R10, R4
C2A3E:  ASRS            R0, R0, #0xF
C2A40:  STR.W           R0, [R7,#var_70]
C2A44:  ASRS            R0, R1, #0xF
C2A46:  STR.W           R0, [R7,#var_64]
C2A4A:  ASRS            R0, R2, #0xF
C2A4C:  STR.W           R0, [R7,#var_68]
C2A50:  LDR.W           R0, [R7,#var_40]
C2A54:  LSLS            R1, R0, #1
C2A56:  ADD.W           R0, R0, R0,LSL#1
C2A5A:  STR.W           R0, [R7,#var_50]
C2A5E:  LSLS            R0, R4, #1
C2A60:  STR.W           R0, [R7,#var_38]
C2A64:  MOVS            R0, #2
C2A66:  STR.W           R1, [R7,#var_6C]
C2A6A:  MOV             R11, R0
C2A6C:  LDR.W           R0, [R7,#var_38]
C2A70:  MOV.W           R4, R11,LSL#1
C2A74:  ADD             R0, R11
C2A76:  MOV             R1, R4
C2A78:  BLX             sub_108874
C2A7C:  MOV             R8, R0
C2A7E:  LDR.W           R0, [R7,#var_40]
C2A82:  CMP             R8, R0
C2A84:  BLT.W           loc_C2BCA
C2A88:  CMP.W           R11, #2
C2A8C:  STR.W           R9, [R7,#var_2C]
C2A90:  STRD.W          R5, R10, [R7,#var_34]
C2A94:  BNE             loc_C2AAA
C2A96:  LDR.W           R2, [R7,#var_54]
C2A9A:  LDR.W           R1, [R7,#var_60]
C2A9E:  ADD.W           R0, R8, R2
C2AA2:  CMP             R0, R1
C2AA4:  IT GT
C2AA6:  MOVGT           R0, R2
C2AA8:  B               loc_C2ABE
C2AAA:  ADR             R0, dword_C2CEC
C2AAC:  LDR.W           R1, [R7,#var_38]
C2AB0:  LDR.W           R0, [R0,R11,LSL#2]
C2AB4:  MLA.W           R0, R1, R0, R11
C2AB8:  MOV             R1, R4
C2ABA:  BLX             sub_108874
C2ABE:  LDR.W           R2, [R7,#var_44]
C2AC2:  MOVS            R1, #0
C2AC4:  CMP             R2, #2
C2AC6:  MOV.W           R2, #0
C2ACA:  BLT             loc_C2B02
C2ACC:  LDR.W           R2, [R7,#var_5C]
C2AD0:  SUB.W           LR, R1, R0,LSL#1
C2AD4:  LDR.W           R6, [R7,#var_58]
C2AD8:  MOVS            R3, #0
C2ADA:  SUB.W           R12, R2, R8,LSL#1
C2ADE:  MOV             R5, R2
C2AE0:  MOVS            R2, #0
C2AE2:  LDRSH.W         R10, [R12,R3,LSL#1]
C2AE6:  SUBS            R6, #1
C2AE8:  LDRSH.W         R9, [R5]
C2AEC:  LDRSH.W         R4, [R5,LR]
C2AF0:  ADD.W           R5, R5, #2
C2AF4:  ADD.W           R3, R3, #1
C2AF8:  SMLABB.W        R1, R10, R9, R1
C2AFC:  SMLABB.W        R2, R4, R9, R2
C2B00:  BNE             loc_C2AE2
C2B02:  LDR.W           R6, [R7,#var_3C]
C2B06:  LDR.W           R3, [R6,R8,LSL#2]
C2B0A:  LDR.W           R0, [R6,R0,LSL#2]
C2B0E:  ADD             R0, R3
C2B10:  ASRS            R4, R0, #1
C2B12:  ADDS            R0, R2, R1
C2B14:  LDR.W           R1, [R7,#var_48]
C2B18:  MOV             R2, R4
C2B1A:  MOV.W           R10, R0,ASR#1
C2B1E:  MOV             R0, R10
C2B20:  BL              sub_C2D30
C2B24:  LDR.W           R1, [R7,#var_4C]
C2B28:  SUBS.W          R1, R8, R1
C2B2C:  IT MI
C2B2E:  NEGMI           R1, R1
C2B30:  LDR.W           R9, [R7,#var_2C]
C2B34:  CMP             R1, #2
C2B36:  LDR.W           R5, [R7,#var_34]
C2B3A:  LDR             R1, [R7,#arg_8]
C2B3C:  BLT             loc_C2B5C
C2B3E:  BNE             loc_C2B5A
C2B40:  MUL.W           R1, R11, R11
C2B44:  LDR.W           R2, [R7,#var_54]
C2B48:  ADD.W           R1, R1, R1,LSL#2
C2B4C:  CMP             R1, R2
C2B4E:  LDR             R2, [R7,#arg_8]
C2B50:  MOV.W           R1, #0
C2B54:  IT LT
C2B56:  ASRLT           R1, R2, #1
C2B58:  B               loc_C2B5C
C2B5A:  MOVS            R1, #0
C2B5C:  SXTH            R2, R1
C2B5E:  LDR.W           R1, [R7,#var_50]
C2B62:  CMP             R8, R1
C2B64:  BGE             loc_C2B78
C2B66:  LDR.W           R1, [R7,#var_64]
C2B6A:  SUBS            R1, R1, R2
C2B6C:  MOVW            R2, #0x3333
C2B70:  CMP             R1, R2
C2B72:  IT LE
C2B74:  MOVLE           R1, R2
C2B76:  B               loc_C2BA0
C2B78:  LDR.W           R1, [R7,#var_68]
C2B7C:  MOVW            R3, #0x2666
C2B80:  SUBS            R1, R1, R2
C2B82:  CMP             R1, R3
C2B84:  IT LE
C2B86:  MOVLE           R1, R3
C2B88:  LDR.W           R3, [R7,#var_6C]
C2B8C:  CMP             R8, R3
C2B8E:  BGE             loc_C2BA0
C2B90:  LDR.W           R1, [R7,#var_70]
C2B94:  SUBS            R1, R1, R2
C2B96:  CMP.W           R1, #0x4000
C2B9A:  IT LE
C2B9C:  MOVLE.W         R1, #0x4000
C2BA0:  SXTH            R1, R1
C2BA2:  CMP             R1, R0
C2BA4:  IT LT
C2BA6:  MOVLT           R5, R4
C2BA8:  LDR.W           R1, [R7,#var_28]
C2BAC:  IT LT
C2BAE:  MOVLT           R1, R10
C2BB0:  LDR.W           R10, [R7,#var_30]
C2BB4:  STR.W           R1, [R7,#var_28]
C2BB8:  ITT LT
C2BBA:  MOVLT           R10, R8
C2BBC:  MOVLT           R9, R0
C2BBE:  ADD.W           R0, R11, #1
C2BC2:  CMP.W           R11, #0xF
C2BC6:  BLT.W           loc_C2A6A
C2BCA:  LDR.W           R0, [R7,#var_28]
C2BCE:  CMP             R0, #0
C2BD0:  IT LE
C2BD2:  MOVLE           R0, #0
C2BD4:  CMP             R5, R0
C2BD6:  BLE             loc_C2BE4
C2BD8:  ADDS            R1, R5, #1
C2BDA:  BLX             j_frac_div32
C2BDE:  MOV.W           R12, R0,LSR#16
C2BE2:  B               loc_C2BE8
C2BE4:  MOVW            R12, #0x7FFF
C2BE8:  LDRD.W          R2, R8, [R7,#var_5C]
C2BEC:  MOVS            R1, #0
C2BEE:  LDR.W           R0, [R7,#var_44]
C2BF2:  MOV.W           LR, #0
C2BF6:  LDR.W           R4, [R7,#var_78]
C2BFA:  MOVS            R3, #0
C2BFC:  CMP             R0, #2
C2BFE:  BLT             loc_C2C60
C2C00:  SUB.W           R0, R1, R10,LSL#1
C2C04:  LDR.W           R1, [R7,#var_60]
C2C08:  MOV             R6, R8
C2C0A:  MOV.W           LR, #0
C2C0E:  ADD.W           R1, R4, R1,LSL#1
C2C12:  ADDS            R3, R1, #2
C2C14:  LDRSH           R5, [R3,R0]
C2C16:  SUBS            R6, #1
C2C18:  LDRSH.W         R4, [R3,#-2]
C2C1C:  ADD.W           R3, R3, #2
C2C20:  SMLABB.W        LR, R5, R4, LR
C2C24:  BNE             loc_C2C14
C2C26:  MOVS            R1, #0
C2C28:  SUB.W           R3, R1, R10,LSL#1
C2C2C:  MOV             R6, R2
C2C2E:  MOV             R5, R8
C2C30:  LDRSH           R0, [R6,R3]
C2C32:  SUBS            R5, #1
C2C34:  LDRSH.W         R4, [R6]
C2C38:  ADD.W           R6, R6, #2
C2C3C:  SMLABB.W        R1, R0, R4, R1
C2C40:  BNE             loc_C2C30
C2C42:  MOV             R0, #0xFFFFFFFE
C2C46:  SUB.W           R6, R0, R10,LSL#1
C2C4A:  MOVS            R3, #0
C2C4C:  LDRSH           R0, [R2,R6]
C2C4E:  SUBS.W          R8, R8, #1
C2C52:  LDRSH.W         R5, [R2]
C2C56:  ADD.W           R2, R2, #2
C2C5A:  SMLABB.W        R3, R0, R5, R3
C2C5E:  BNE             loc_C2C4C
C2C60:  SUB.W           R5, R1, LR
C2C64:  MOVW            R6, #0x599A
C2C68:  UXTH            R4, R5
C2C6A:  ASRS            R0, R5, #0x10
C2C6C:  MOVW            R5, #0xB334
C2C70:  MULS            R4, R6
C2C72:  MULS            R0, R5
C2C74:  ADD.W           R0, R0, R4,LSR#15
C2C78:  SUB.W           R4, R3, LR
C2C7C:  CMP             R4, R0
C2C7E:  BLE             loc_C2C84
C2C80:  MOVS            R1, #1
C2C82:  B               loc_C2CA0
C2C84:  SUBS            R0, R1, R3
C2C86:  MOVS            R1, #0
C2C88:  UXTH            R2, R0
C2C8A:  ASRS            R0, R0, #0x10
C2C8C:  MULS            R2, R6
C2C8E:  MULS            R0, R5
C2C90:  ADD.W           R0, R0, R2,LSR#15
C2C94:  SUB.W           R2, LR, R3
C2C98:  CMP             R2, R0
C2C9A:  IT GT
C2C9C:  MOVGT.W         R1, #0xFFFFFFFF
C2CA0:  ADD.W           R0, R1, R10,LSL#1
C2CA4:  LDR.W           R1, [R7,#var_74]
C2CA8:  CMP             R0, R1
C2CAA:  IT LT
C2CAC:  MOVLT           R0, R1
C2CAE:  LDR             R1, [R7,#arg_0]
C2CB0:  STR             R0, [R1]
C2CB2:  SXTH.W          R0, R9
C2CB6:  SXTH.W          R1, R12
C2CBA:  CMP             R1, R0
C2CBC:  LDR             R0, =(__stack_chk_guard_ptr - 0xC2CCA)
C2CBE:  IT GT
C2CC0:  MOVGT           R12, R9
C2CC2:  LDR.W           R1, [R7,#var_24]
C2CC6:  ADD             R0, PC; __stack_chk_guard_ptr
C2CC8:  LDR             R0, [R0]; __stack_chk_guard
C2CCA:  LDR             R0, [R0]
C2CCC:  SUBS            R0, R0, R1
C2CCE:  ITTTT EQ
C2CD0:  SXTHEQ.W        R0, R12
C2CD4:  SUBEQ.W         R4, R7, #-var_1C
C2CD8:  MOVEQ           SP, R4
C2CDA:  POPEQ.W         {R8-R11}
C2CDE:  IT EQ
C2CE0:  POPEQ           {R4-R7,PC}
C2CE2:  BLX             __stack_chk_fail
