; =========================================================
; Game Engine Function: clt_compute_allocation
; Address            : 0x19A9E0 - 0x19B7D6
; =========================================================

19A9E0:  PUSH            {R4-R7,LR}
19A9E2:  ADD             R7, SP, #0xC
19A9E4:  PUSH.W          {R8-R11}
19A9E8:  SUB             SP, SP, #0x54
19A9EA:  LDR.W           R6, =(__stack_chk_guard_ptr - 0x19A9F4)
19A9EE:  MOVS            R4, #0
19A9F0:  ADD             R6, PC; __stack_chk_guard_ptr
19A9F2:  LDR             R5, [R6]; __stack_chk_guard
19A9F4:  LDR             R6, [R7,#arg_10]
19A9F6:  LDR             R5, [R5]
19A9F8:  CMP             R6, #0
19A9FA:  STR.W           R5, [R7,#var_24]
19A9FE:  MOV.W           R5, #0
19AA02:  IT LE
19AA04:  MOVLE           R6, R5
19AA06:  CMP             R6, #7
19AA08:  IT GT
19AA0A:  MOVGT           R4, #8
19AA0C:  STR.W           R0, [R7,#var_58]
19AA10:  LDR.W           LR, [R0,#8]
19AA14:  SUB.W           R9, R6, R4
19AA18:  LDR             R0, [R7,#arg_24]
19AA1A:  STR.W           R4, [R7,#var_70]
19AA1E:  CMP             R0, #2
19AA20:  STR.W           R1, [R7,#var_28]
19AA24:  STR.W           R2, [R7,#var_38]
19AA28:  BNE             loc_19AA4E
19AA2A:  SUBS            R0, R2, R1
19AA2C:  ADR.W           R1, dword_19B7DC
19AA30:  MOVS            R5, #0
19AA32:  MOV.W           R12, #0
19AA36:  LDRB            R0, [R1,R0]
19AA38:  CMP             R9, R0
19AA3A:  BLT             loc_19AA52
19AA3C:  SUB.W           R1, R9, R0
19AA40:  MOV             R12, R0
19AA42:  CMP             R1, #7
19AA44:  IT GT
19AA46:  MOVGT           R5, #8
19AA48:  SUB.W           R9, R1, R5
19AA4C:  B               loc_19AA52
19AA4E:  MOV.W           R12, #0
19AA52:  MOVS            R0, #7
19AA54:  LDR.W           R11, [R7,#arg_28]
19AA58:  ADD.W           R0, R0, LR,LSL#2
19AA5C:  STR.W           R5, [R7,#var_6C]
19AA60:  BIC.W           R0, R0, #7
19AA64:  STR.W           LR, [R7,#var_5C]
19AA68:  SUB.W           R8, SP, R0
19AA6C:  MOV             SP, R8
19AA6E:  SUB.W           R1, SP, R0
19AA72:  STR.W           R1, [R7,#var_34]
19AA76:  MOV             SP, R1
19AA78:  SUB.W           LR, SP, R0
19AA7C:  MOV             SP, LR
19AA7E:  SUB.W           R10, SP, R0
19AA82:  MOV             SP, R10
19AA84:  LDR.W           R2, [R7,#var_28]
19AA88:  MOV             R0, R9
19AA8A:  LDR.W           R6, [R7,#var_38]
19AA8E:  STR.W           LR, [R7,#var_30]
19AA92:  CMP             R6, R2
19AA94:  STR.W           R12, [R7,#var_44]
19AA98:  STRD.W          R8, R0, [R7,#var_4C]
19AA9C:  BLE.W           loc_19AC7C
19AAA0:  LDR             R5, [R7,#arg_24]
19AAA2:  SUBS            R1, R6, #1
19AAA4:  SUBS            R1, R1, R2
19AAA6:  LDR             R0, [R7,#arg_4]
19AAA8:  LDR.W           LR, [R7,#var_30]
19AAAC:  MOV             R12, R11
19AAAE:  MOV             R9, R5
19AAB0:  SUBS            R0, #5
19AAB2:  MUL.W           R4, R9, R1
19AAB6:  MOV             R1, R2
19AAB8:  LDR.W           R2, [R7,#var_58]
19AABC:  SUB.W           R0, R0, R11
19AAC0:  LDR.W           R5, [R2,#0x18]!
19AAC4:  STR.W           R2, [R7,#var_54]
19AAC8:  MUL.W           R2, R9, R0
19AACC:  MULS            R4, R0
19AACE:  ADD.W           R0, R11, #3
19AAD2:  STR.W           R0, [R7,#var_3C]
19AAD6:  STR.W           R2, [R7,#var_2C]
19AADA:  MOV             R8, R5
19AADC:  LDRH.W          R5, [R5,R1,LSL#1]
19AAE0:  MOV.W           R11, R9,LSL#3
19AAE4:  MOV             R0, R1
19AAE6:  MOV             R2, R6
19AAE8:  ADD.W           R1, R8, R0,LSL#1
19AAEC:  SXTH            R5, R5
19AAEE:  LDRSH.W         R9, [R1,#2]
19AAF2:  SUB.W           R5, R9, R5
19AAF6:  ADD.W           R1, R5, R5,LSL#1
19AAFA:  LSL.W           R1, R1, R12
19AAFE:  SBFX.W          R6, R1, #1, #0x1C
19AB02:  LSLS            R1, R1, #3
19AB04:  CMP.W           R11, R1,ASR#4
19AB08:  MUL.W           R1, R4, R5
19AB0C:  IT GT
19AB0E:  MOVGT           R6, R11
19AB10:  LSL.W           R5, R5, R12
19AB14:  STR.W           R6, [LR,R0,LSL#2]
19AB18:  CMP             R5, #1
19AB1A:  UXTH.W          R5, R9
19AB1E:  LDR.W           R6, [R7,#var_3C]
19AB22:  LSL.W           R1, R1, R6
19AB26:  MOV.W           R6, R1,ASR#6
19AB2A:  IT EQ
19AB2C:  RSBEQ.W         R6, R11, R1,ASR#6
19AB30:  LDR.W           R1, [R7,#var_2C]
19AB34:  STR.W           R6, [R10,R0,LSL#2]
19AB38:  ADDS            R0, #1
19AB3A:  SUBS            R4, R4, R1
19AB3C:  CMP             R2, R0
19AB3E:  BNE             loc_19AAE8
19AB40:  LDR.W           R0, [R7,#var_58]
19AB44:  STR.W           R11, [R7,#var_2C]
19AB48:  ADD.W           R11, R0, #0x2C ; ','
19AB4C:  LDR             R1, [R0,#0x28]
19AB4E:  MOV             R0, R1
19AB50:  SUBS            R1, #1
19AB52:  STR.W           R0, [R7,#var_60]
19AB56:  LDR.W           R0, [R7,#var_28]
19AB5A:  CMP             R2, R0
19AB5C:  LDR.W           R2, [R7,#var_48]
19AB60:  MOV             R9, R2
19AB62:  BLE.W           loc_19AC9E
19AB66:  STR.W           R11, [R7,#var_64]
19AB6A:  MOVS            R4, #1
19AB6C:  LDR.W           R0, [R11]
19AB70:  MOV.W           R12, #0
19AB74:  STR.W           R0, [R7,#var_3C]
19AB78:  LDR.W           R0, [R7,#var_54]
19AB7C:  LDR.W           R9, [R7,#var_38]
19AB80:  LDR.W           R11, [R0]
19AB84:  ADDS            R0, R4, R1
19AB86:  LDR.W           R6, [R7,#var_3C]
19AB8A:  MOV.W           LR, #0
19AB8E:  ASRS            R5, R0, #1
19AB90:  LDR.W           R0, [R7,#var_5C]
19AB94:  STR.W           R5, [R7,#var_50]
19AB98:  MLA.W           R8, R5, R0, R6
19AB9C:  MULS            R0, R5
19AB9E:  STR.W           R0, [R7,#var_40]
19ABA2:  MOVS            R0, #0
19ABA4:  LDRSH.W         R2, [R11,R9,LSL#1]
19ABA8:  SUB.W           R9, R9, #1
19ABAC:  LSLS            R0, R0, #0x1F
19ABAE:  BEQ             loc_19ABE6
19ABB0:  LDRSH.W         R0, [R11,R9,LSL#1]
19ABB4:  LDR.W           R5, [R7,#var_3C]
19ABB8:  SUBS            R0, R2, R0
19ABBA:  LDR             R2, [R7,#arg_24]
19ABBC:  MULS            R0, R2
19ABBE:  LDR.W           R2, [R7,#var_40]
19ABC2:  ADD             R2, R9
19ABC4:  LDRB            R2, [R5,R2]
19ABC6:  MULS            R0, R2
19ABC8:  LDR             R2, [R7,#arg_28]
19ABCA:  LSLS            R0, R2
19ABCC:  ASRS            R0, R0, #2
19ABCE:  CMP             R0, #0
19ABD0:  BLE             loc_19ABDE
19ABD2:  LDR.W           R2, [R10,R9,LSL#2]
19ABD6:  ADD             R0, R2
19ABD8:  CMP             R0, #0
19ABDA:  IT LE
19ABDC:  MOVLE           R0, R12
19ABDE:  LDR.W           R2, [R3,R9,LSL#2]
19ABE2:  ADD             R2, R0
19ABE4:  B               loc_19AC3E
19ABE6:  UXTH            R5, R2
19ABE8:  LDRSH.W         R0, [R11,R9,LSL#1]
19ABEC:  SXTH            R2, R5
19ABEE:  LDR             R5, [R7,#arg_24]
19ABF0:  SUBS            R2, R2, R0
19ABF2:  MULS            R2, R5
19ABF4:  LDRB.W          R5, [R8,R9]
19ABF8:  MULS            R2, R5
19ABFA:  LDR             R5, [R7,#arg_28]
19ABFC:  LSLS            R2, R5
19ABFE:  ASRS            R2, R2, #2
19AC00:  CMP             R2, #1
19AC02:  BLT             loc_19AC10
19AC04:  LDR.W           R5, [R10,R9,LSL#2]
19AC08:  ADD             R2, R5
19AC0A:  CMP             R2, #0
19AC0C:  IT LE
19AC0E:  MOVLE           R2, R12
19AC10:  LDR.W           R6, [R7,#var_30]
19AC14:  LDR.W           R5, [R3,R9,LSL#2]
19AC18:  LDR.W           R6, [R6,R9,LSL#2]
19AC1C:  ADD             R2, R5
19AC1E:  CMP             R2, R6
19AC20:  BGE             loc_19AC3E
19AC22:  UXTH            R5, R0
19AC24:  LDR.W           R0, [R7,#var_2C]
19AC28:  CMP             R2, R0
19AC2A:  IT GE
19AC2C:  ADDGE           LR, R0
19AC2E:  LDR.W           R2, [R7,#var_28]
19AC32:  SUB.W           R0, R9, #1
19AC36:  CMP             R9, R2
19AC38:  MOV             R9, R0
19AC3A:  BGT             loc_19ABE8
19AC3C:  B               loc_19AC56
19AC3E:  LDR             R0, [R7,#arg_0]
19AC40:  LDR.W           R0, [R0,R9,LSL#2]
19AC44:  CMP             R2, R0
19AC46:  IT LT
19AC48:  MOVLT           R0, R2
19AC4A:  LDR.W           R2, [R7,#var_28]
19AC4E:  ADD             LR, R0
19AC50:  MOVS            R0, #1
19AC52:  CMP             R9, R2
19AC54:  BGT             loc_19ABA4
19AC56:  LDR.W           R0, [R7,#var_48]
19AC5A:  CMP             LR, R0
19AC5C:  LDR.W           R0, [R7,#var_50]
19AC60:  ITE GT
19AC62:  SUBGT           R1, R0, #1
19AC64:  ADDLE           R4, R0, #1
19AC66:  LDR.W           R9, [R7,#var_38]
19AC6A:  CMP             R4, R1
19AC6C:  BLE             loc_19AB84
19AC6E:  LDR.W           R12, [R7,#var_44]
19AC72:  LDR.W           LR, [R7,#var_30]
19AC76:  LDR.W           R11, [R7,#var_64]
19AC7A:  B               loc_19ACC2
19AC7C:  LDR.W           R0, [R7,#var_58]
19AC80:  LDR             R1, [R7,#arg_24]
19AC82:  ADD.W           R11, R0, #0x2C ; ','
19AC86:  LDR             R2, [R0,#0x28]
19AC88:  ADDS            R0, #0x18
19AC8A:  LSLS            R1, R1, #3
19AC8C:  STR.W           R0, [R7,#var_54]
19AC90:  STR.W           R1, [R7,#var_2C]
19AC94:  SUBS            R1, R2, #1
19AC96:  MOV             R0, R2
19AC98:  STR.W           R0, [R7,#var_60]
19AC9C:  B               loc_19ACA6
19AC9E:  LDR.W           R12, [R7,#var_44]
19ACA2:  LDR.W           LR, [R7,#var_30]
19ACA6:  MOVS            R0, #1
19ACA8:  MOV.W           R5, #0xFFFFFFFF
19ACAC:  MOVS            R4, #1
19ACAE:  ADDS            R6, R4, R1
19ACB0:  CMP.W           R9, #0
19ACB4:  ITE LT
19ACB6:  ADDLT.W         R1, R5, R6,ASR#1
19ACBA:  ADDGE.W         R4, R0, R6,ASR#1
19ACBE:  CMP             R4, R1
19ACC0:  BLE             loc_19ACAE
19ACC2:  LDR             R2, [R7,#arg_18]
19ACC4:  LDR.W           R5, [R7,#var_28]
19ACC8:  LDR.W           R0, [R7,#var_38]
19ACCC:  CMP             R0, R5
19ACCE:  BLE             loc_19ADA4
19ACD0:  LDR.W           R0, [R7,#var_54]
19ACD4:  LDR.W           R2, [R7,#var_5C]
19ACD8:  LDR             R6, [R0]
19ACDA:  SUBS            R0, R4, #1
19ACDC:  MUL.W           R1, R0, R2
19ACE0:  LDR.W           R0, [R11]
19ACE4:  STR.W           R6, [R7,#var_3C]
19ACE8:  LDRH.W          R11, [R6,R5,LSL#1]
19ACEC:  LDR.W           R6, [R7,#var_60]
19ACF0:  CMP             R4, R6
19ACF2:  BGE             loc_19ADC8
19ACF4:  MULS            R2, R4
19ACF6:  ADD.W           R8, R0, R1
19ACFA:  MOV.W           R9, #0
19ACFE:  MOV             R1, R5
19AD00:  MOV             R6, R5
19AD02:  ADD             R0, R2
19AD04:  STR.W           R0, [R7,#var_40]
19AD08:  LDR.W           R0, [R7,#var_3C]
19AD0C:  MOV             LR, R6
19AD0E:  SXTH.W          R2, R11
19AD12:  LDR             R6, [R7,#arg_24]
19AD14:  ADD.W           R0, R0, R1,LSL#1
19AD18:  LDRB.W          R5, [R8,R1]
19AD1C:  LDRSH.W         R0, [R0,#2]
19AD20:  SUBS            R2, R0, R2
19AD22:  MULS            R2, R6
19AD24:  LDR.W           R6, [R7,#var_40]
19AD28:  LDRB            R6, [R6,R1]
19AD2A:  MULS            R6, R2
19AD2C:  MULS            R5, R2
19AD2E:  LDR             R2, [R7,#arg_28]
19AD30:  MOV             R12, R2
19AD32:  LSL.W           R2, R6, R12
19AD36:  ASRS            R2, R2, #2
19AD38:  LSL.W           R6, R5, R12
19AD3C:  MOV.W           R12, R6,ASR#2
19AD40:  CMP.W           R12, #1
19AD44:  BLT             loc_19AD54
19AD46:  LDR.W           R5, [R10,R1,LSL#2]
19AD4A:  ADD             R12, R5
19AD4C:  CMP.W           R12, #0
19AD50:  IT LE
19AD52:  MOVLE           R12, R9
19AD54:  UXTH.W          R11, R0
19AD58:  ADDS            R0, R1, #1
19AD5A:  CMP             R2, #1
19AD5C:  BLT             loc_19AD6A
19AD5E:  LDR.W           R5, [R10,R1,LSL#2]
19AD62:  ADD             R2, R5
19AD64:  CMP             R2, #0
19AD66:  IT LE
19AD68:  MOVLE           R2, R9
19AD6A:  LDR.W           R5, [R3,R1,LSL#2]
19AD6E:  CMP             R4, #1
19AD70:  IT GT
19AD72:  ADDGT           R12, R5
19AD74:  LDR.W           R6, [R7,#var_4C]
19AD78:  SUB.W           R2, R2, R12
19AD7C:  ADD             R2, R5
19AD7E:  CMP             R2, #0
19AD80:  STR.W           R12, [R6,R1,LSL#2]
19AD84:  IT LE
19AD86:  MOVLE           R2, R9
19AD88:  CMP             R5, #0
19AD8A:  LDR.W           R6, [R7,#var_34]
19AD8E:  STR.W           R2, [R6,R1,LSL#2]
19AD92:  MOV             R6, LR
19AD94:  IT GT
19AD96:  MOVGT           R6, R1
19AD98:  LDR.W           R1, [R7,#var_38]
19AD9C:  CMP             R1, R0
19AD9E:  MOV             R1, R0
19ADA0:  BNE             loc_19AD08
19ADA2:  B               loc_19AE5E
19ADA4:  LDR             R0, [R7,#arg_24]
19ADA6:  MOVS            R4, #0
19ADA8:  MOV             R6, R5
19ADAA:  MOV             R10, R5
19ADAC:  CMP             R0, #1
19ADAE:  MOV.W           R0, #0
19ADB2:  IT GT
19ADB4:  MOVGT           R0, #1
19ADB6:  LDR.W           R1, [R7,#var_2C]
19ADBA:  STR.W           R0, [R7,#var_5C]
19ADBE:  LDR             R0, [R7,#arg_28]
19ADC0:  LSLS            R0, R0, #3
19ADC2:  STR.W           R0, [R7,#var_50]
19ADC6:  B               loc_19B1EE
19ADC8:  LDR.W           R12, [R7,#var_4C]
19ADCC:  ADD             R0, R1
19ADCE:  MOV.W           LR, #0
19ADD2:  MOV             R1, R5
19ADD4:  MOV             R6, R5
19ADD6:  STR.W           R0, [R7,#var_40]
19ADDA:  LDR.W           R0, [R7,#var_3C]
19ADDE:  MOV             R8, R6
19ADE0:  LDR             R2, [R7,#arg_24]
19ADE2:  ADD.W           R0, R0, R1,LSL#1
19ADE6:  LDR             R6, [R7,#arg_28]
19ADE8:  LDRSH.W         R5, [R0,#2]
19ADEC:  SXTH.W          R0, R11
19ADF0:  SUBS            R0, R5, R0
19ADF2:  MULS            R0, R2
19ADF4:  LDR.W           R2, [R7,#var_40]
19ADF8:  LDRB            R2, [R2,R1]
19ADFA:  MULS            R0, R2
19ADFC:  LDR             R2, [R7,#arg_0]
19ADFE:  LDR.W           R2, [R2,R1,LSL#2]
19AE02:  LSLS            R0, R6
19AE04:  ASRS            R0, R0, #2
19AE06:  CMP             R0, #1
19AE08:  BLT             loc_19AE16
19AE0A:  LDR.W           R6, [R10,R1,LSL#2]
19AE0E:  ADD             R0, R6
19AE10:  CMP             R0, #0
19AE12:  IT LE
19AE14:  MOVLE           R0, LR
19AE16:  LDR.W           R9, [R7,#var_38]
19AE1A:  UXTH.W          R11, R5
19AE1E:  ADDS            R5, R1, #1
19AE20:  CMP             R2, #1
19AE22:  BLT             loc_19AE30
19AE24:  LDR.W           R6, [R10,R1,LSL#2]
19AE28:  ADD             R2, R6
19AE2A:  CMP             R2, #0
19AE2C:  IT LE
19AE2E:  MOVLE           R2, LR
19AE30:  LDR.W           R6, [R3,R1,LSL#2]
19AE34:  CMP             R4, #1
19AE36:  IT GT
19AE38:  ADDGT           R0, R0, R6
19AE3A:  STR.W           R0, [R12,R1,LSL#2]
19AE3E:  SUBS            R0, R2, R0
19AE40:  ADD             R0, R6
19AE42:  CMP             R0, #0
19AE44:  IT LE
19AE46:  MOVLE           R0, LR
19AE48:  LDR.W           R2, [R7,#var_34]
19AE4C:  CMP             R6, #0
19AE4E:  MOV             R6, R8
19AE50:  STR.W           R0, [R2,R1,LSL#2]
19AE54:  IT GT
19AE56:  MOVGT           R6, R1
19AE58:  CMP             R9, R5
19AE5A:  MOV             R1, R5
19AE5C:  BNE             loc_19ADDA
19AE5E:  LDR             R0, [R7,#arg_24]
19AE60:  MOV.W           R12, #0
19AE64:  CMP             R0, #1
19AE66:  LDR             R0, [R7,#arg_28]
19AE68:  IT GT
19AE6A:  MOVGT.W         R12, #1
19AE6E:  LDR.W           R1, [R7,#var_38]
19AE72:  LDR.W           R10, [R7,#var_28]
19AE76:  LSLS            R0, R0, #3
19AE78:  STR.W           R12, [R7,#var_5C]
19AE7C:  CMP             R1, R10
19AE7E:  STR.W           R0, [R7,#var_50]
19AE82:  BLE.W           loc_19B1DE
19AE86:  STR.W           R6, [R7,#var_40]
19AE8A:  MOVS            R5, #0
19AE8C:  LDRD.W          R9, R11, [R7,#var_30]
19AE90:  MOVS            R0, #0
19AE92:  LDRD.W          R2, R8, [R7,#var_4C]
19AE96:  SUBS            R1, #1
19AE98:  LSLS            R0, R0, #0x1F
19AE9A:  BEQ             loc_19AEAE
19AE9C:  LDR.W           R0, [R7,#var_34]
19AEA0:  LDR.W           R3, [R2,R1,LSL#2]
19AEA4:  LDR.W           R0, [R0,R1,LSL#2]
19AEA8:  ADD.W           R0, R3, R0,ASR#1
19AEAC:  B               loc_19AED8
19AEAE:  LDR.W           R0, [R7,#var_34]
19AEB2:  LDR.W           R3, [R2,R1,LSL#2]
19AEB6:  LDR.W           R6, [R9,R1,LSL#2]
19AEBA:  LDR.W           R0, [R0,R1,LSL#2]
19AEBE:  ADD.W           R0, R3, R0,ASR#1
19AEC2:  CMP             R0, R6
19AEC4:  BGE             loc_19AED8
19AEC6:  CMP             R0, R11
19AEC8:  SUB.W           R0, R1, #1
19AECC:  IT GE
19AECE:  ADDGE           R5, R11
19AED0:  CMP             R1, R10
19AED2:  MOV             R1, R0
19AED4:  BGT             loc_19AEAE
19AED6:  B               loc_19AEEC
19AED8:  LDR             R3, [R7,#arg_0]
19AEDA:  LDR.W           R3, [R3,R1,LSL#2]
19AEDE:  CMP             R0, R3
19AEE0:  IT LT
19AEE2:  MOVLT           R3, R0
19AEE4:  MOVS            R0, #1
19AEE6:  ADD             R5, R3
19AEE8:  CMP             R1, R10
19AEEA:  BGT             loc_19AE96
19AEEC:  MOVS            R1, #0x30 ; '0'
19AEEE:  CMP             R5, R8
19AEF0:  MOV.W           R12, #0x20 ; ' '
19AEF4:  MOV.W           LR, #0x40 ; '@'
19AEF8:  IT GT
19AEFA:  MOVGT           R1, #0x10
19AEFC:  IT GT
19AEFE:  MOVGT.W         R12, #0
19AF02:  IT GT
19AF04:  MOVGT.W         LR, #0x20 ; ' '
19AF08:  LDR.W           R4, [R7,#var_38]
19AF0C:  MOVS            R6, #0
19AF0E:  MOVS            R0, #0
19AF10:  SUBS            R4, #1
19AF12:  LSLS            R0, R0, #0x1F
19AF14:  BEQ             loc_19AF2A
19AF16:  LDR.W           R0, [R7,#var_34]
19AF1A:  LDR.W           R3, [R2,R4,LSL#2]
19AF1E:  LDR.W           R0, [R0,R4,LSL#2]
19AF22:  MULS            R0, R1
19AF24:  ADD.W           R0, R3, R0,ASR#6
19AF28:  B               loc_19AF56
19AF2A:  LDR.W           R0, [R7,#var_34]
19AF2E:  LDR.W           R5, [R2,R4,LSL#2]
19AF32:  LDR.W           R3, [R9,R4,LSL#2]
19AF36:  LDR.W           R0, [R0,R4,LSL#2]
19AF3A:  MULS            R0, R1
19AF3C:  ADD.W           R0, R5, R0,ASR#6
19AF40:  CMP             R0, R3
19AF42:  BGE             loc_19AF56
19AF44:  CMP             R0, R11
19AF46:  SUB.W           R0, R4, #1
19AF4A:  IT GE
19AF4C:  ADDGE           R6, R11
19AF4E:  CMP             R4, R10
19AF50:  MOV             R4, R0
19AF52:  BGT             loc_19AF2A
19AF54:  B               loc_19AF6A
19AF56:  LDR             R3, [R7,#arg_0]
19AF58:  LDR.W           R3, [R3,R4,LSL#2]
19AF5C:  CMP             R0, R3
19AF5E:  IT LT
19AF60:  MOVLT           R3, R0
19AF62:  MOVS            R0, #1
19AF64:  ADD             R6, R3
19AF66:  CMP             R4, R10
19AF68:  BGT             loc_19AF10
19AF6A:  CMP             R6, R8
19AF6C:  MOV.W           R6, #0
19AF70:  ITE GT
19AF72:  MOVGT           LR, R1
19AF74:  MOVLE           R12, R1
19AF76:  LDR.W           R4, [R7,#var_38]
19AF7A:  ADD.W           R0, R12, LR
19AF7E:  LSRS            R1, R0, #1
19AF80:  MOVS            R0, #0
19AF82:  SUBS            R4, #1
19AF84:  LSLS            R0, R0, #0x1F
19AF86:  BEQ             loc_19AF9C
19AF88:  LDR.W           R0, [R7,#var_34]
19AF8C:  LDR.W           R3, [R2,R4,LSL#2]
19AF90:  LDR.W           R0, [R0,R4,LSL#2]
19AF94:  MULS            R0, R1
19AF96:  ADD.W           R0, R3, R0,ASR#6
19AF9A:  B               loc_19AFC8
19AF9C:  LDR.W           R0, [R7,#var_34]
19AFA0:  LDR.W           R3, [R2,R4,LSL#2]
19AFA4:  LDR.W           R5, [R9,R4,LSL#2]
19AFA8:  LDR.W           R0, [R0,R4,LSL#2]
19AFAC:  MULS            R0, R1
19AFAE:  ADD.W           R0, R3, R0,ASR#6
19AFB2:  CMP             R0, R5
19AFB4:  BGE             loc_19AFC8
19AFB6:  CMP             R0, R11
19AFB8:  SUB.W           R0, R4, #1
19AFBC:  IT GE
19AFBE:  ADDGE           R6, R11
19AFC0:  CMP             R4, R10
19AFC2:  MOV             R4, R0
19AFC4:  BGT             loc_19AF9C
19AFC6:  B               loc_19AFDC
19AFC8:  LDR             R3, [R7,#arg_0]
19AFCA:  LDR.W           R3, [R3,R4,LSL#2]
19AFCE:  CMP             R0, R3
19AFD0:  IT LT
19AFD2:  MOVLT           R3, R0
19AFD4:  MOVS            R0, #1
19AFD6:  ADD             R6, R3
19AFD8:  CMP             R4, R10
19AFDA:  BGT             loc_19AF82
19AFDC:  CMP             R6, R8
19AFDE:  MOV.W           R6, #0
19AFE2:  ITE GT
19AFE4:  MOVGT           LR, R1
19AFE6:  MOVLE           R12, R1
19AFE8:  LDR.W           R4, [R7,#var_38]
19AFEC:  ADD.W           R0, R12, LR
19AFF0:  LSRS            R1, R0, #1
19AFF2:  MOVS            R0, #0
19AFF4:  SUBS            R4, #1
19AFF6:  LSLS            R0, R0, #0x1F
19AFF8:  BEQ             loc_19B00E
19AFFA:  LDR.W           R0, [R7,#var_34]
19AFFE:  LDR.W           R3, [R2,R4,LSL#2]
19B002:  LDR.W           R0, [R0,R4,LSL#2]
19B006:  MULS            R0, R1
19B008:  ADD.W           R0, R3, R0,ASR#6
19B00C:  B               loc_19B03A
19B00E:  LDR.W           R0, [R7,#var_34]
19B012:  LDR.W           R3, [R2,R4,LSL#2]
19B016:  LDR.W           R5, [R9,R4,LSL#2]
19B01A:  LDR.W           R0, [R0,R4,LSL#2]
19B01E:  MULS            R0, R1
19B020:  ADD.W           R0, R3, R0,ASR#6
19B024:  CMP             R0, R5
19B026:  BGE             loc_19B03A
19B028:  CMP             R0, R11
19B02A:  SUB.W           R0, R4, #1
19B02E:  IT GE
19B030:  ADDGE           R6, R11
19B032:  CMP             R4, R10
19B034:  MOV             R4, R0
19B036:  BGT             loc_19B00E
19B038:  B               loc_19B04E
19B03A:  LDR             R3, [R7,#arg_0]
19B03C:  LDR.W           R3, [R3,R4,LSL#2]
19B040:  CMP             R0, R3
19B042:  IT LT
19B044:  MOVLT           R3, R0
19B046:  MOVS            R0, #1
19B048:  ADD             R6, R3
19B04A:  CMP             R4, R10
19B04C:  BGT             loc_19AFF4
19B04E:  CMP             R6, R8
19B050:  MOV.W           R6, #0
19B054:  ITE GT
19B056:  MOVGT           LR, R1
19B058:  MOVLE           R12, R1
19B05A:  LDR.W           R4, [R7,#var_38]
19B05E:  ADD.W           R0, R12, LR
19B062:  LSRS            R1, R0, #1
19B064:  MOVS            R0, #0
19B066:  SUBS            R4, #1
19B068:  LSLS            R0, R0, #0x1F
19B06A:  BEQ             loc_19B080
19B06C:  LDR.W           R0, [R7,#var_34]
19B070:  LDR.W           R3, [R2,R4,LSL#2]
19B074:  LDR.W           R0, [R0,R4,LSL#2]
19B078:  MULS            R0, R1
19B07A:  ADD.W           R0, R3, R0,ASR#6
19B07E:  B               loc_19B0AC
19B080:  LDR.W           R0, [R7,#var_34]
19B084:  LDR.W           R3, [R2,R4,LSL#2]
19B088:  LDR.W           R5, [R9,R4,LSL#2]
19B08C:  LDR.W           R0, [R0,R4,LSL#2]
19B090:  MULS            R0, R1
19B092:  ADD.W           R0, R3, R0,ASR#6
19B096:  CMP             R0, R5
19B098:  BGE             loc_19B0AC
19B09A:  CMP             R0, R11
19B09C:  SUB.W           R0, R4, #1
19B0A0:  IT GE
19B0A2:  ADDGE           R6, R11
19B0A4:  CMP             R4, R10
19B0A6:  MOV             R4, R0
19B0A8:  BGT             loc_19B080
19B0AA:  B               loc_19B0C0
19B0AC:  LDR             R3, [R7,#arg_0]
19B0AE:  LDR.W           R3, [R3,R4,LSL#2]
19B0B2:  CMP             R0, R3
19B0B4:  IT LT
19B0B6:  MOVLT           R3, R0
19B0B8:  MOVS            R0, #1
19B0BA:  ADD             R6, R3
19B0BC:  CMP             R4, R10
19B0BE:  BGT             loc_19B066
19B0C0:  CMP             R6, R8
19B0C2:  MOV.W           R5, #0
19B0C6:  ITE GT
19B0C8:  MOVGT           LR, R1
19B0CA:  MOVLE           R12, R1
19B0CC:  LDR.W           R6, [R7,#var_38]
19B0D0:  ADD.W           R0, R12, LR
19B0D4:  MOV.W           R8, R0,LSR#1
19B0D8:  MOVS            R0, #0
19B0DA:  SUBS            R6, #1
19B0DC:  LSLS            R0, R0, #0x1F
19B0DE:  BEQ             loc_19B0F6
19B0E0:  LDR.W           R0, [R7,#var_34]
19B0E4:  LDR.W           R1, [R2,R6,LSL#2]
19B0E8:  LDR.W           R0, [R0,R6,LSL#2]
19B0EC:  MUL.W           R0, R0, R8
19B0F0:  ADD.W           R0, R1, R0,ASR#6
19B0F4:  B               loc_19B124
19B0F6:  LDR.W           R0, [R7,#var_34]
19B0FA:  LDR.W           R1, [R2,R6,LSL#2]
19B0FE:  LDR.W           R3, [R9,R6,LSL#2]
19B102:  LDR.W           R0, [R0,R6,LSL#2]
19B106:  MUL.W           R0, R0, R8
19B10A:  ADD.W           R0, R1, R0,ASR#6
19B10E:  CMP             R0, R3
19B110:  BGE             loc_19B124
19B112:  CMP             R0, R11
19B114:  SUB.W           R0, R6, #1
19B118:  IT GE
19B11A:  ADDGE           R5, R11
19B11C:  CMP             R6, R10
19B11E:  MOV             R6, R0
19B120:  BGT             loc_19B0F6
19B122:  B               loc_19B138
19B124:  LDR             R1, [R7,#arg_0]
19B126:  LDR.W           R1, [R1,R6,LSL#2]
19B12A:  CMP             R0, R1
19B12C:  IT LT
19B12E:  MOVLT           R1, R0
19B130:  MOVS            R0, #1
19B132:  ADD             R5, R1
19B134:  CMP             R6, R10
19B136:  BGT             loc_19B0DA
19B138:  LDR.W           R0, [R7,#var_48]
19B13C:  MOVS            R4, #0
19B13E:  CMP             R5, R0
19B140:  SUB.W           R0, R2, #4
19B144:  IT GT
19B146:  MOVGT           R8, R12
19B148:  STR.W           R0, [R7,#var_3C]
19B14C:  LDR.W           R0, [R7,#var_34]
19B150:  MOV             R2, R9
19B152:  LDR.W           R3, [R7,#var_38]
19B156:  SUB.W           R9, R2, #4
19B15A:  SUBS            R0, #4
19B15C:  STR.W           R0, [R7,#var_34]
19B160:  LDR             R0, [R7,#arg_0]
19B162:  MOV             R12, R11
19B164:  MOVS            R2, #0
19B166:  SUB.W           R10, R0, #4
19B16A:  LDR             R0, [R7,#arg_18]
19B16C:  SUB.W           R11, R0, #4
19B170:  LDR.W           R0, [R7,#var_34]
19B174:  LDR.W           R1, [R9,R3,LSL#2]
19B178:  LDR.W           LR, [R10,R3,LSL#2]
19B17C:  LDR.W           R5, [R0,R3,LSL#2]
19B180:  LDR.W           R0, [R7,#var_3C]
19B184:  MUL.W           R5, R5, R8
19B188:  LDR.W           R6, [R0,R3,LSL#2]
19B18C:  MOV             R0, R2
19B18E:  ADD.W           R5, R6, R5,ASR#6
19B192:  MOV             R6, R12
19B194:  CMP             R5, R12
19B196:  IT LT
19B198:  MOVLT           R6, #0
19B19A:  CMP             R5, R1
19B19C:  MOV.W           R1, #0
19B1A0:  IT GE
19B1A2:  MOVGE           R1, #1
19B1A4:  CMP             R2, #0
19B1A6:  IT NE
19B1A8:  MOVNE           R0, #1
19B1AA:  ORRS            R0, R1
19B1AC:  IT NE
19B1AE:  MOVNE           R6, R5
19B1B0:  CMP             R6, LR
19B1B2:  IT GE
19B1B4:  MOVGE           R6, LR
19B1B6:  CMP             R0, #0
19B1B8:  STR.W           R6, [R11,R3,LSL#2]
19B1BC:  IT NE
19B1BE:  MOVNE           R2, #1
19B1C0:  ADD             R4, R6
19B1C2:  LDR.W           R0, [R7,#var_28]
19B1C6:  SUBS            R3, #1
19B1C8:  CMP             R3, R0
19B1CA:  BGT             loc_19B170
19B1CC:  LDR.W           R10, [R7,#var_28]
19B1D0:  MOV             R1, R12
19B1D2:  LDR.W           LR, [R7,#var_30]
19B1D6:  LDR             R2, [R7,#arg_18]
19B1D8:  LDRD.W          R12, R6, [R7,#var_44]
19B1DC:  B               loc_19B1EE
19B1DE:  MOVS            R4, #0
19B1E0:  LDR.W           R1, [R7,#var_2C]
19B1E4:  LDR             R2, [R7,#arg_18]
19B1E6:  LDR.W           R12, [R7,#var_44]
19B1EA:  LDR.W           LR, [R7,#var_30]
19B1EE:  LDR.W           R3, [R7,#var_38]
19B1F2:  LDR             R5, [R7,#arg_30]
19B1F4:  SUBS            R0, R3, #1
19B1F6:  CMP             R0, R6
19B1F8:  BLE.W           loc_19B354
19B1FC:  CMP             R5, #0
19B1FE:  ADD.W           R0, R1, #8
19B202:  STR.W           R0, [R7,#var_4C]
19B206:  STR.W           R6, [R7,#var_40]
19B20A:  BEQ.W           loc_19B366
19B20E:  LDR.W           R9, [R7,#var_38]
19B212:  ADD.W           R0, R10, #2
19B216:  STR.W           R0, [R7,#var_68]
19B21A:  ADR.W           R0, dword_19B7DC
19B21E:  SUBS            R3, R2, #4
19B220:  SUB.W           R0, R0, R10
19B224:  MOV.W           R6, R9,LSL#1
19B228:  MOV             R2, R4
19B22A:  STR.W           R0, [R7,#var_64]
19B22E:  SUB.W           R0, LR, #4
19B232:  STR.W           R0, [R7,#var_60]
19B236:  LDR.W           R0, [R7,#var_54]
19B23A:  STR.W           R12, [R7,#var_44]
19B23E:  LDR             R5, [R0]
19B240:  LDRSH.W         R0, [R5,R10,LSL#1]
19B244:  MOV             R10, R3
19B246:  STR.W           R0, [R7,#var_34]
19B24A:  LDRSH.W         R11, [R5,R6]
19B24E:  STR.W           R2, [R7,#var_30]
19B252:  SUB.W           R4, R11, R0
19B256:  LDR.W           R0, [R7,#var_48]
19B25A:  SUB.W           R8, R0, R2
19B25E:  MOV             R1, R4
19B260:  MOV             R0, R8
19B262:  BLX             sub_220A6C
19B266:  ADDS            R2, R5, R6
19B268:  LDR.W           R1, [R10,R9,LSL#2]
19B26C:  STR.W           R6, [R7,#var_3C]
19B270:  LDRSH.W         R3, [R2,#-2]
19B274:  MLS.W           R6, R4, R0, R8
19B278:  LDR.W           R5, [R7,#var_34]
19B27C:  SUB.W           R2, R11, R3
19B280:  SUB.W           LR, R9, #1
19B284:  SUBS            R3, R5, R3
19B286:  MLA.W           R4, R2, R0, R1
19B28A:  LDR.W           R0, [R7,#var_60]
19B28E:  ADD             R3, R6
19B290:  CMP             R3, #0
19B292:  LDR.W           R0, [R0,R9,LSL#2]
19B296:  IT GT
19B298:  ADDGT           R4, R4, R3
19B29A:  LDR.W           R3, [R7,#var_4C]
19B29E:  CMP             R0, R3
19B2A0:  IT LE
19B2A2:  MOVLE           R0, R3
19B2A4:  MOV             R3, R10
19B2A6:  CMP             R4, R0
19B2A8:  BGE             loc_19B2B4
19B2AA:  LDRD.W          R2, R10, [R7,#var_2C]
19B2AE:  LDR.W           R5, [R7,#var_44]
19B2B2:  B               loc_19B314
19B2B4:  LDR.W           R0, [R7,#var_68]
19B2B8:  LDR             R1, [R7,#arg_28]
19B2BA:  LDR.W           R5, [R7,#var_44]
19B2BE:  CMP             R9, R0
19B2C0:  BLE.W           loc_19B470
19B2C4:  LDR             R0, [R7,#arg_34]
19B2C6:  MOVS            R6, #0
19B2C8:  CMP             R9, R0
19B2CA:  MOV.W           R0, #9
19B2CE:  IT LE
19B2D0:  MOVLE           R0, #7
19B2D2:  CMP.W           R9, #0x11
19B2D6:  IT LE
19B2D8:  MOVLE           R0, R6
19B2DA:  MULS            R0, R2
19B2DC:  LSLS            R0, R1
19B2DE:  LDR             R1, [R7,#arg_38]
19B2E0:  SBFX.W          R0, R0, #1, #0x1C
19B2E4:  CMP             LR, R1
19B2E6:  BGT             loc_19B2EE
19B2E8:  CMP             R4, R0
19B2EA:  BGT.W           loc_19B470
19B2EE:  LDR             R0, [R7,#arg_2C]
19B2F0:  MOVS            R1, #0
19B2F2:  MOVS            R2, #1
19B2F4:  MOV             R8, LR
19B2F6:  MOV             R6, R3
19B2F8:  BLX             j_ec_enc_bit_logp
19B2FC:  LDR.W           R0, [R7,#var_30]
19B300:  MOV             R3, R6
19B302:  LDR.W           R1, [R3,R9,LSL#2]
19B306:  SUBS            R4, #8
19B308:  ADDS            R0, #8
19B30A:  STR.W           R0, [R7,#var_30]
19B30E:  MOV             LR, R8
19B310:  LDRD.W          R2, R10, [R7,#var_2C]
19B314:  CMP             R5, #1
19B316:  MOV             R0, R5
19B318:  LDR.W           R12, [R7,#var_40]
19B31C:  ITTT GE
19B31E:  LDRGE.W         R0, [R7,#var_64]
19B322:  ADDGE           R0, R9
19B324:  LDRBGE.W        R0, [R0,#-1]
19B328:  CMP             R4, R2
19B32A:  ADD             R1, R5
19B32C:  IT LT
19B32E:  MOVLT           R2, #0
19B330:  STR.W           R2, [R3,R9,LSL#2]
19B334:  LDR.W           R6, [R7,#var_30]
19B338:  SUBS            R1, R6, R1
19B33A:  LDR.W           R6, [R7,#var_3C]
19B33E:  ADD             R1, R2
19B340:  ADDS            R2, R1, R0
19B342:  SUB.W           R1, R9, #2
19B346:  SUBS            R6, #2
19B348:  CMP             R1, R12
19B34A:  MOV             R9, LR
19B34C:  MOV             R12, R0
19B34E:  BGT.W           loc_19B236
19B352:  B               loc_19B35A
19B354:  MOV             LR, R3
19B356:  MOV             R0, R12
19B358:  MOV             R2, R4
19B35A:  LDR.W           R5, [R7,#var_48]
19B35E:  LDR.W           R1, [R7,#var_70]
19B362:  ADD             R5, R1
19B364:  B               loc_19B490
19B366:  LDR.W           R9, [R7,#var_38]
19B36A:  ADR.W           R0, dword_19B7DC
19B36E:  SUB.W           R8, R2, #4
19B372:  SUB.W           R0, R0, R10
19B376:  MOV             R2, R4
19B378:  STR.W           R0, [R7,#var_64]
19B37C:  MOV.W           R3, R9,LSL#1
19B380:  SUB.W           R0, LR, #4
19B384:  STR.W           R0, [R7,#var_3C]
19B388:  STR.W           R8, [R7,#var_60]
19B38C:  LDR.W           R0, [R7,#var_54]
19B390:  STR.W           R12, [R7,#var_44]
19B394:  LDR             R5, [R0]
19B396:  LDR.W           R0, [R7,#var_48]
19B39A:  LDRSH.W         R8, [R5,R10,LSL#1]
19B39E:  SUBS            R6, R0, R2
19B3A0:  LDRSH.W         R11, [R5,R3]
19B3A4:  MOV             R0, R6
19B3A6:  SUB.W           R4, R11, R8
19B3AA:  STR.W           R2, [R7,#var_30]
19B3AE:  MOV             R10, R3
19B3B0:  MOV             R1, R4
19B3B2:  BLX             sub_220A6C
19B3B6:  LDR.W           R1, [R7,#var_60]
19B3BA:  ADD.W           R2, R5, R10
19B3BE:  MLS.W           R3, R4, R0, R6
19B3C2:  LDR.W           R12, [R1,R9,LSL#2]
19B3C6:  STR.W           R10, [R7,#var_34]
19B3CA:  LDRSH.W         R2, [R2,#-2]
19B3CE:  SUB.W           R6, R11, R2
19B3D2:  SUB.W           R2, R8, R2
19B3D6:  ADD             R2, R3
19B3D8:  MOV             R8, R1
19B3DA:  MLA.W           R4, R6, R0, R12
19B3DE:  LDR.W           R0, [R7,#var_3C]
19B3E2:  CMP             R2, #0
19B3E4:  LDR.W           R0, [R0,R9,LSL#2]
19B3E8:  IT GT
19B3EA:  ADDGT           R4, R4, R2
19B3EC:  LDR.W           R2, [R7,#var_4C]
19B3F0:  CMP             R0, R2
19B3F2:  IT LE
19B3F4:  MOVLE           R0, R2
19B3F6:  CMP             R4, R0
19B3F8:  BGE             loc_19B404
19B3FA:  LDRD.W          R2, R10, [R7,#var_2C]
19B3FE:  LDR.W           R3, [R7,#var_44]
19B402:  B               loc_19B42C
19B404:  LDR             R0, [R7,#arg_2C]
19B406:  MOVS            R1, #1
19B408:  BLX             j_ec_dec_bit_logp
19B40C:  LDR.W           R10, [R7,#var_28]
19B410:  CMP             R0, #0
19B412:  LDR.W           R3, [R7,#var_44]
19B416:  BNE             loc_19B484
19B418:  LDR.W           R12, [R8,R9,LSL#2]
19B41C:  SUBS            R4, #8
19B41E:  LDR.W           R2, [R7,#var_2C]
19B422:  LDR.W           R0, [R7,#var_30]
19B426:  ADDS            R0, #8
19B428:  STR.W           R0, [R7,#var_30]
19B42C:  CMP             R3, #1
19B42E:  MOV             R0, R3
19B430:  LDR.W           R6, [R7,#var_40]
19B434:  ITTT GE
19B436:  LDRGE.W         R0, [R7,#var_64]
19B43A:  ADDGE           R0, R9
19B43C:  LDRBGE.W        R0, [R0,#-1]
19B440:  CMP             R4, R2
19B442:  ADD.W           R1, R12, R3
19B446:  IT LT
19B448:  MOVLT           R2, #0
19B44A:  SUB.W           LR, R9, #1
19B44E:  STR.W           R2, [R8,R9,LSL#2]
19B452:  MOV             R12, R0
19B454:  LDR.W           R3, [R7,#var_30]
19B458:  SUBS            R1, R3, R1
19B45A:  LDR.W           R3, [R7,#var_34]
19B45E:  ADD             R1, R2
19B460:  ADDS            R2, R1, R0
19B462:  SUB.W           R1, R9, #2
19B466:  SUBS            R3, #2
19B468:  CMP             R1, R6
19B46A:  MOV             R9, LR
19B46C:  BGT             loc_19B38C
19B46E:  B               loc_19B35A
19B470:  LDR             R0, [R7,#arg_2C]
19B472:  MOVS            R1, #1
19B474:  MOVS            R2, #1
19B476:  BLX             j_ec_enc_bit_logp
19B47A:  MOV             LR, R9
19B47C:  MOV             R0, R5
19B47E:  LDR.W           R10, [R7,#var_28]
19B482:  B               loc_19B488
19B484:  MOV             LR, R9
19B486:  MOV             R0, R3
19B488:  LDR.W           R5, [R7,#var_48]
19B48C:  LDR.W           R2, [R7,#var_30]
19B490:  LDR             R6, [R7,#arg_8]
19B492:  CMP             R0, #1
19B494:  LDR.W           R9, [R7,#var_38]
19B498:  STR.W           LR, [R7,#var_3C]
19B49C:  BLT             loc_19B4C4
19B49E:  LDR             R0, [R7,#arg_30]
19B4A0:  MOV             R4, R2
19B4A2:  CBZ             R0, loc_19B4CA
19B4A4:  LDR             R0, [R6]
19B4A6:  RSB.W           R1, R10, #1
19B4AA:  ADD.W           R2, R1, LR
19B4AE:  CMP             R0, LR
19B4B0:  IT GE
19B4B2:  MOVGE           R0, LR
19B4B4:  STR             R0, [R6]
19B4B6:  SUB.W           R1, R0, R10
19B4BA:  LDR             R0, [R7,#arg_2C]
19B4BC:  BLX             j_ec_enc_uint
19B4C0:  LDR             R0, [R6]
19B4C2:  B               loc_19B4DC
19B4C4:  MOVS            R0, #0
19B4C6:  STR             R0, [R6]
19B4C8:  B               loc_19B4DE
19B4CA:  RSB.W           R0, R10, #1
19B4CE:  ADD.W           R1, R0, LR
19B4D2:  LDR             R0, [R7,#arg_2C]
19B4D4:  BLX             j_ec_dec_uint
19B4D8:  ADD             R0, R10
19B4DA:  STR             R0, [R6]
19B4DC:  MOV             R2, R4
19B4DE:  LDR.W           R1, [R7,#var_6C]
19B4E2:  CMP             R0, R10
19B4E4:  MOV             R4, R1
19B4E6:  IT GT
19B4E8:  MOVGT           R4, #0
19B4EA:  CBZ             R1, loc_19B506
19B4EC:  CMP             R0, R10
19B4EE:  BLE             loc_19B506
19B4F0:  LDR             R0, [R7,#arg_30]
19B4F2:  MOV             R6, R2
19B4F4:  CBZ             R0, loc_19B50C
19B4F6:  LDR             R0, [R7,#arg_C]
19B4F8:  MOVS            R2, #1
19B4FA:  LDR             R1, [R0]
19B4FC:  LDR             R0, [R7,#arg_2C]
19B4FE:  BLX             j_ec_enc_bit_logp
19B502:  MOV             R2, R6
19B504:  B               loc_19B51A
19B506:  LDR             R1, [R7,#arg_C]
19B508:  MOVS            R0, #0
19B50A:  B               loc_19B518
19B50C:  LDR             R0, [R7,#arg_2C]
19B50E:  MOVS            R1, #1
19B510:  BLX             j_ec_dec_bit_logp
19B514:  LDR             R1, [R7,#arg_C]
19B516:  MOV             R2, R6
19B518:  STR             R0, [R1]
19B51A:  LDR.W           R0, [R7,#var_54]
19B51E:  LDR.W           R6, [R7,#var_3C]
19B522:  LDR.W           R11, [R0]
19B526:  LDRSH.W         R8, [R11,R10,LSL#1]
19B52A:  LDRSH.W         R0, [R11,R6,LSL#1]
19B52E:  SUB.W           R1, R0, R8
19B532:  SUBS            R0, R5, R2
19B534:  ADD             R4, R0
19B536:  MOV             R5, R1
19B538:  MOV             R0, R4
19B53A:  BLX             sub_220A6C
19B53E:  MOV             LR, R6
19B540:  CMP             LR, R10
19B542:  BLE.W           loc_19B766
19B546:  MLS.W           R2, R5, R0, R4
19B54A:  LDR             R5, [R7,#arg_18]
19B54C:  UXTH.W          R12, R8
19B550:  MOV             R1, R12
19B552:  MOV             R3, R10
19B554:  ADD.W           R6, R11, R3,LSL#1
19B558:  SXTH            R1, R1
19B55A:  LDR.W           R4, [R5,R3,LSL#2]
19B55E:  LDRSH.W         R6, [R6,#2]
19B562:  SUBS            R1, R6, R1
19B564:  MLA.W           R1, R1, R0, R4
19B568:  STR.W           R1, [R5,R3,LSL#2]
19B56C:  ADDS            R3, #1
19B56E:  UXTH            R1, R6
19B570:  CMP             LR, R3
19B572:  BNE             loc_19B554
19B574:  MOV             R3, R12
19B576:  MOV             R0, R10
19B578:  ADD.W           R1, R11, R0,LSL#1
19B57C:  SXTH            R3, R3
19B57E:  LDR.W           R6, [R5,R0,LSL#2]
19B582:  LDRSH.W         R1, [R1,#2]
19B586:  SUBS            R3, R1, R3
19B588:  CMP             R2, R3
19B58A:  IT LT
19B58C:  MOVLT           R3, R2
19B58E:  ADD             R6, R3
19B590:  STR.W           R6, [R5,R0,LSL#2]
19B594:  SUBS            R2, R2, R3
19B596:  ADDS            R0, #1
19B598:  UXTH            R3, R1
19B59A:  CMP             LR, R0
19B59C:  BNE             loc_19B578
19B59E:  LDR.W           R0, [R7,#var_5C]
19B5A2:  MOVS            R1, #3
19B5A4:  STR.W           R11, [R7,#var_30]
19B5A8:  MOV.W           R11, #0
19B5AC:  CMP             R0, #0
19B5AE:  IT NE
19B5B0:  MOVNE           R1, #4
19B5B2:  STR.W           R1, [R7,#var_34]
19B5B6:  LDRD.W          R3, R4, [R7,#arg_1C]
19B5BA:  LDR.W           R1, [R7,#var_30]
19B5BE:  LDR.W           R0, [R5,R10,LSL#2]
19B5C2:  ADD.W           R1, R1, R10,LSL#1
19B5C6:  LDR             R2, [R7,#arg_28]
19B5C8:  ADD             R0, R11
19B5CA:  LDRSH.W         R6, [R1,#2]
19B5CE:  SXTH.W          R1, R12
19B5D2:  SUBS            R1, R6, R1
19B5D4:  LSLS            R1, R2
19B5D6:  CMP             R1, #2
19B5D8:  BLT             loc_19B610
19B5DA:  LDR             R2, [R7,#arg_0]
19B5DC:  LDR.W           R3, [R2,R10,LSL#2]
19B5E0:  LDR             R2, [R7,#arg_24]
19B5E2:  SUB.W           R8, R0, R3
19B5E6:  MOVS            R3, #0
19B5E8:  CMP.W           R8, #0
19B5EC:  MOV             R4, R2
19B5EE:  IT LE
19B5F0:  MOVLE           R8, R3
19B5F2:  MUL.W           R2, R1, R4
19B5F6:  SUB.W           R0, R0, R8
19B5FA:  CMP             R4, #2
19B5FC:  STR.W           R0, [R5,R10,LSL#2]
19B600:  BNE             loc_19B644
19B602:  CMP             R1, #2
19B604:  BEQ             loc_19B644
19B606:  LDR             R3, [R7,#arg_C]
19B608:  LDR             R3, [R3]
19B60A:  CBZ             R3, loc_19B636
19B60C:  MOVS            R3, #0
19B60E:  B               loc_19B644
19B610:  LDR.W           R1, [R7,#var_2C]
19B614:  SUB.W           R8, R0, R1
19B618:  MOVS            R1, #0
19B61A:  CMP.W           R8, #0
19B61E:  IT LE
19B620:  MOVLE           R8, R1
19B622:  SUB.W           R0, R0, R8
19B626:  STR.W           R0, [R5,R10,LSL#2]
19B62A:  MOVS            R0, #1
19B62C:  STR.W           R1, [R3,R10,LSL#2]
19B630:  STR.W           R0, [R4,R10,LSL#2]
19B634:  B               loc_19B706
19B636:  LDR             R3, [R7,#arg_8]
19B638:  LDR             R3, [R3]
19B63A:  CMP             R10, R3
19B63C:  MOV.W           R3, #0
19B640:  IT LT
19B642:  MOVLT           R3, #1
19B644:  LDR.W           R5, [R7,#var_58]
19B648:  ADDS            R4, R2, R3
19B64A:  LDR.W           R2, [R7,#var_50]
19B64E:  MOV             R3, #0xFFFFFFEB
19B652:  MULS            R3, R4
19B654:  CMP             R1, #2
19B656:  LDR             R5, [R5,#0x30]
19B658:  LDRSH.W         R5, [R5,R10,LSL#1]
19B65C:  ADD             R2, R5
19B65E:  MUL.W           R2, R4, R2
19B662:  ADD.W           R9, R3, R2,ASR#1
19B666:  ITT EQ
19B668:  LSLEQ           R1, R4, #3
19B66A:  ADDEQ.W         R9, R9, R1,ASR#2
19B66E:  ADD.W           R1, R9, R0
19B672:  CMP.W           R1, R4,LSL#4
19B676:  BGE             loc_19B67E
19B678:  ADD.W           R9, R9, R2,ASR#2
19B67C:  B               loc_19B68C
19B67E:  ADD.W           R3, R4, R4,LSL#1
19B682:  CMP.W           R1, R3,LSL#3
19B686:  IT LT
19B688:  ADDLT.W         R9, R9, R2,ASR#3
19B68C:  ADD.W           R0, R0, R4,LSL#2
19B690:  MOVS            R1, #0
19B692:  ADD             R0, R9
19B694:  CMP             R0, #0
19B696:  IT LE
19B698:  MOVLE           R0, R1
19B69A:  MOV             R1, R4
19B69C:  BLX             sub_220A6C
19B6A0:  LDR             R1, [R7,#arg_24]
19B6A2:  LSRS            R0, R0, #3
19B6A4:  LDR             R3, [R7,#arg_1C]
19B6A6:  LDR             R5, [R7,#arg_18]
19B6A8:  MUL.W           R2, R0, R1
19B6AC:  STR.W           R0, [R3,R10,LSL#2]
19B6B0:  LDR.W           R1, [R5,R10,LSL#2]
19B6B4:  CMP.W           R2, R1,ASR#3
19B6B8:  BLE             loc_19B6C8
19B6BA:  LDR.W           R0, [R7,#var_5C]
19B6BE:  ASR.W           R0, R1, R0
19B6C2:  ASRS            R0, R0, #3
19B6C4:  STR.W           R0, [R3,R10,LSL#2]
19B6C8:  CMP             R0, #8
19B6CA:  IT GE
19B6CC:  MOVGE           R0, #8
19B6CE:  MUL.W           R1, R4, R0
19B6D2:  STR.W           R0, [R3,R10,LSL#2]
19B6D6:  LDR.W           R0, [R5,R10,LSL#2]
19B6DA:  LDR             R4, [R7,#arg_20]
19B6DC:  ADD             R0, R9
19B6DE:  LSLS            R1, R1, #3
19B6E0:  CMP             R1, R0
19B6E2:  MOV.W           R0, #0
19B6E6:  IT GE
19B6E8:  MOVGE           R0, #1
19B6EA:  STR.W           R0, [R4,R10,LSL#2]
19B6EE:  LDR.W           R0, [R3,R10,LSL#2]
19B6F2:  LDR.W           R2, [R7,#var_2C]
19B6F6:  LDR.W           R1, [R5,R10,LSL#2]
19B6FA:  MLS.W           R0, R0, R2, R1
19B6FE:  STR.W           R0, [R5,R10,LSL#2]
19B702:  LDRD.W          LR, R9, [R7,#var_3C]
19B706:  ADD.W           R0, R10, #1
19B70A:  UXTH.W          R12, R6
19B70E:  CMP.W           R8, #0
19B712:  BEQ             loc_19B756
19B714:  LDR.W           R1, [R3,R10,LSL#2]
19B718:  LDR.W           R2, [R7,#var_34]
19B71C:  RSB.W           R3, R1, #8
19B720:  LSR.W           R2, R8, R2
19B724:  CMP             R2, R3
19B726:  IT LT
19B728:  MOVLT           R3, R2
19B72A:  LDR.W           R6, [R7,#var_2C]
19B72E:  ADD             R1, R3
19B730:  MUL.W           R2, R3, R6
19B734:  MLS.W           R3, R3, R6, R8
19B738:  LDR             R6, [R7,#arg_1C]
19B73A:  STR.W           R1, [R6,R10,LSL#2]
19B73E:  SUB.W           R1, R8, R11
19B742:  CMP             R2, R1
19B744:  MOV.W           R1, #0
19B748:  MOV             R11, R3
19B74A:  LDR             R3, [R7,#arg_1C]
19B74C:  IT GE
19B74E:  MOVGE           R1, #1
19B750:  STR.W           R1, [R4,R10,LSL#2]
19B754:  B               loc_19B75A
19B756:  MOV.W           R11, #0
19B75A:  CMP             LR, R0
19B75C:  MOV             R10, R0
19B75E:  BNE.W           loc_19B5BA
19B762:  MOV             R10, LR
19B764:  B               loc_19B76E
19B766:  MOV.W           R11, #0
19B76A:  LDRD.W          R5, R3, [R7,#arg_18]
19B76E:  LDR             R0, [R7,#arg_14]
19B770:  CMP             R10, R9
19B772:  STR.W           R11, [R0]
19B776:  LDR.W           R4, [R7,#var_5C]
19B77A:  BGE             loc_19B7B2
19B77C:  LDR             R2, [R7,#arg_20]
19B77E:  ADD.W           R1, R3, R10,LSL#2
19B782:  ADD.W           R0, R5, R10,LSL#2
19B786:  SUB.W           R3, R9, R10
19B78A:  ADD.W           R2, R2, R10,LSL#2
19B78E:  MOVS            R6, #0
19B790:  LDR             R5, [R0]
19B792:  ASRS            R5, R4
19B794:  ASRS            R5, R5, #3
19B796:  STR             R5, [R1]
19B798:  STR.W           R6, [R0],#4
19B79C:  LDR.W           R5, [R1],#4
19B7A0:  CMP             R5, #1
19B7A2:  MOV.W           R5, #0
19B7A6:  IT LT
19B7A8:  MOVLT           R5, #1
19B7AA:  SUBS            R3, #1
19B7AC:  STR.W           R5, [R2],#4
19B7B0:  BNE             loc_19B790
19B7B2:  LDR             R0, =(__stack_chk_guard_ptr - 0x19B7BC)
19B7B4:  LDR.W           R1, [R7,#var_24]
19B7B8:  ADD             R0, PC; __stack_chk_guard_ptr
19B7BA:  LDR             R0, [R0]; __stack_chk_guard
19B7BC:  LDR             R0, [R0]
19B7BE:  SUBS            R0, R0, R1
19B7C0:  ITTTT EQ
19B7C2:  MOVEQ           R0, LR
19B7C4:  SUBEQ.W         R4, R7, #-var_1C
19B7C8:  MOVEQ           SP, R4
19B7CA:  POPEQ.W         {R8-R11}
19B7CE:  IT EQ
19B7D0:  POPEQ           {R4-R7,PC}
19B7D2:  BLX             __stack_chk_fail
