; =========================================================
; Game Engine Function: sub_16A980
; Address            : 0x16A980 - 0x16D91E
; =========================================================

16A980:  PUSH            {R4-R7,LR}
16A982:  ADD             R7, SP, #0xC
16A984:  PUSH.W          {R8-R11}
16A988:  SUB             SP, SP, #4
16A98A:  VPUSH           {D8-D15}
16A98E:  SUB             SP, SP, #0x100
16A990:  STR             R1, [SP,#0x160+var_12C]
16A992:  MOV             R9, R2
16A994:  LDR             R1, =(dword_381B58 - 0x16A9A0)
16A996:  MOVS            R2, #0
16A998:  MOVS            R5, #0
16A99A:  STR             R0, [SP,#0x160+s1]
16A99C:  ADD             R1, PC; dword_381B58
16A99E:  STR             R1, [SP,#0x160+var_104]
16A9A0:  LDR             R6, [R1]
16A9A2:  MOVS            R1, #0
16A9A4:  BL              sub_16560C
16A9A8:  MOV             R1, R0
16A9AA:  MOVW            R0, #0x199C
16A9AE:  ADD.W           R8, R6, R0
16A9B2:  MOV             R0, R8
16A9B4:  BL              sub_1658B8
16A9B8:  MOVW            R1, #0x151C
16A9BC:  ADDS            R4, R6, R1
16A9BE:  MOVW            R1, #0x1A28
16A9C2:  ADD.W           R11, R6, R1
16A9C6:  MOVW            R1, #0x1A38
16A9CA:  STR             R6, [SP,#0x160+var_11C]
16A9CC:  ADD             R1, R6
16A9CE:  CMP             R0, #0
16A9D0:  MOV             R6, R0
16A9D2:  STR             R1, [SP,#0x160+var_108]
16A9D4:  STR             R0, [SP,#0x160+var_B4]
16A9D6:  STR             R0, [SP,#0x160+var_134]
16A9D8:  STR             R4, [SP,#0x160+var_10C]
16A9DA:  BNE.W           loc_16ACE2
16A9DE:  LDRB.W          R0, [R4,#0x4F4]
16A9E2:  LSLS            R0, R0, #0x1E
16A9E4:  BMI             loc_16A9F0
16A9E6:  VLDR            S16, =0.0
16A9EA:  VMOV.F32        S18, S16
16A9EE:  B               loc_16A9F8
16A9F0:  VLDR            S16, [R11,#8]
16A9F4:  VLDR            S18, [R11,#0xC]
16A9F8:  LDR             R2, =(off_2390AC - 0x16AA02)
16A9FA:  LDR             R1, =(dword_381B60 - 0x16AA04)
16A9FC:  LDR             R5, [SP,#0x160+var_11C]
16A9FE:  ADD             R2, PC; off_2390AC
16AA00:  ADD             R1, PC; dword_381B60
16AA02:  STR             R2, [SP,#0x160+var_110]
16AA04:  LDR             R2, [R2]; sub_171190
16AA06:  LDR.W           R0, [R5,#0x370]
16AA0A:  MOV             R10, R1
16AA0C:  LDR             R1, [R1]
16AA0E:  ADDS            R0, #1
16AA10:  STR.W           R0, [R5,#0x370]
16AA14:  MOV.W           R0, #0x334
16AA18:  BLX             R2; sub_171190
16AA1A:  LDR             R2, [SP,#0x160+s1]
16AA1C:  MOV             R1, R5
16AA1E:  MOV             R6, R0
16AA20:  BL              sub_1666C8
16AA24:  LDR             R1, [R0,#4]
16AA26:  MOV             R2, R6
16AA28:  STR.W           R9, [R0,#8]
16AA2C:  STR             R0, [SP,#0x160+var_88]
16AA2E:  MOV             R0, R8
16AA30:  BL              sub_1659EC
16AA34:  MOVS            R0, #0x42700000
16AA3A:  STRD.W          R0, R0, [R6,#0xC]
16AA3E:  MOVS.W          R0, R9,LSL#23
16AA42:  BMI             loc_16AB06
16AA44:  LDR             R0, [SP,#0x160+var_104]
16AA46:  MOVW            R1, #0x2D14
16AA4A:  LDR             R0, [R0]
16AA4C:  LDR             R3, [R0,R1]
16AA4E:  CMP             R3, #0
16AA50:  BEQ             loc_16AB06
16AA52:  ADD             R0, R1
16AA54:  LDR             R5, [SP,#0x160+var_11C]
16AA56:  LDR             R4, [R6,#4]
16AA58:  MOVW            R2, #0x2D1C
16AA5C:  LDR             R0, [R0,#8]
16AA5E:  ADD.W           R12, R5, R2
16AA62:  MOVS            R1, #0
16AA64:  ADDS            R2, R0, R1
16AA66:  LDR             R5, [R2,#4]
16AA68:  CMP             R5, R4
16AA6A:  BEQ             loc_16AA78
16AA6C:  SUBS            R3, #1
16AA6E:  ADD.W           R1, R1, #0x1C
16AA72:  BNE             loc_16AA64
16AA74:  LDR             R4, [SP,#0x160+var_10C]
16AA76:  B               loc_16AB06
16AA78:  LDRD.W          R5, R4, [R6,#0xAC]
16AA7C:  LDR.W           R3, [R12]
16AA80:  BIC.W           R5, R5, #4
16AA84:  STR.W           R5, [R6,#0xAC]
16AA88:  BIC.W           R5, R4, #4
16AA8C:  STR.W           R5, [R6,#0xB0]
16AA90:  VLDR            S0, [R2,#8]
16AA94:  SUBS            R0, R0, R3
16AA96:  VLDR            S2, [R2,#0xC]
16AA9A:  ADD             R0, R1
16AA9C:  VCVT.S32.F32    S0, S0
16AAA0:  MOVW            R1, #0x6DB7
16AAA4:  VCVT.S32.F32    S2, S2
16AAA8:  ASRS            R0, R0, #2
16AAAA:  MOVT            R1, #0xB6DB
16AAAE:  VLDR            S6, =0.00001
16AAB2:  MULS            R0, R1
16AAB4:  LDR             R4, [SP,#0x160+var_10C]
16AAB6:  LDR.W           LR, [R6,#0xB4]
16AABA:  VCVT.F32.S32    S0, S0
16AABE:  VCVT.F32.S32    S2, S2
16AAC2:  VSTR            S0, [R6,#0xC]
16AAC6:  VSTR            S2, [R6,#0x10]
16AACA:  VLDR            S2, [R2,#0x14]
16AACE:  VLDR            S0, [R2,#0x10]
16AAD2:  VMUL.F32        S4, S2, S2
16AAD6:  LDRB            R1, [R2,#0x18]
16AAD8:  BIC.W           R2, LR, #4
16AADC:  STR.W           R2, [R6,#0xB4]
16AAE0:  STR.W           R0, [R6,#0x278]
16AAE4:  STRB.W          R1, [R6,#0x7D]
16AAE8:  VMLA.F32        S4, S0, S0
16AAEC:  VCMP.F32        S4, S6
16AAF0:  VMRS            APSR_nzcv, FPSCR
16AAF4:  ITTTT GT
16AAF6:  VCVTGT.S32.F32  S2, S2
16AAFA:  VCVTGT.S32.F32  S0, S0
16AAFE:  VCVTGT.F32.S32  S18, S2
16AB02:  VCVTGT.F32.S32  S16, S0
16AB06:  VCVT.S32.F32    S0, S18
16AB0A:  LDRD.W          R2, R3, [R6,#0xC]
16AB0E:  VCVT.S32.F32    S2, S16
16AB12:  STRD.W          R2, R3, [R6,#0xE0]
16AB16:  MOVS.W          R2, R9,LSL#25
16AB1A:  VMOV            R0, S0
16AB1E:  VMOV            R1, S2
16AB22:  VCVT.F32.S32    S0, S0
16AB26:  VCVT.F32.S32    S2, S2
16AB2A:  VSTR            S0, [R6,#0x18]
16AB2E:  VSTR            S2, [R6,#0x14]
16AB32:  VSTR            S2, [R6,#0x1C]
16AB36:  VSTR            S0, [R6,#0x20]
16AB3A:  VSTR            S2, [R6,#0x24]
16AB3E:  VSTR            S0, [R6,#0x28]
16AB42:  BMI             loc_16AB64
16AB44:  CMP             R1, #0
16AB46:  BGT             loc_16AB4E
16AB48:  MOVS            R1, #2
16AB4A:  STR.W           R1, [R6,#0x90]
16AB4E:  CMP             R0, #0
16AB50:  BGT             loc_16AB58
16AB52:  MOVS            R0, #2
16AB54:  STR.W           R0, [R6,#0x94]
16AB58:  LDR.W           R0, [R6,#0x90]
16AB5C:  CMP             R0, #0
16AB5E:  BLE             loc_16AB72
16AB60:  MOVS            R0, #1
16AB62:  B               loc_16AB7E
16AB64:  MOVS            R0, #0
16AB66:  STRB.W          R0, [R6,#0x98]
16AB6A:  MOVS            R0, #2
16AB6C:  STRD.W          R0, R0, [R6,#0x90]
16AB70:  B               loc_16AB82
16AB72:  LDR.W           R1, [R6,#0x94]
16AB76:  MOVS            R0, #0
16AB78:  CMP             R1, #0
16AB7A:  IT GT
16AB7C:  MOVGT           R0, #1
16AB7E:  STRB.W          R0, [R6,#0x98]
16AB82:  LDR.W           R0, [R4,#0x45C]
16AB86:  LDR.W           R1, [R4,#0x460]
16AB8A:  CMP             R0, R1
16AB8C:  BNE             loc_16AC10
16AB8E:  CMP             R0, #0
16AB90:  ADD.W           R4, R0, #1
16AB94:  ITTE NE
16AB96:  ADDNE.W         R1, R0, R0,LSR#31
16AB9A:  ADDNE.W         R1, R0, R1,ASR#1
16AB9E:  MOVEQ           R1, #8
16ABA0:  CMP             R1, R4
16ABA2:  IT GT
16ABA4:  MOVGT           R4, R1
16ABA6:  CMP             R0, R4
16ABA8:  BGE             loc_16AC10
16ABAA:  LDR             R0, [SP,#0x160+var_104]
16ABAC:  LDR             R1, [R0]
16ABAE:  LSLS            R0, R4, #2
16ABB0:  CBZ             R1, loc_16ABBC
16ABB2:  LDR.W           R2, [R1,#0x370]
16ABB6:  ADDS            R2, #1
16ABB8:  STR.W           R2, [R1,#0x370]
16ABBC:  LDR             R2, [SP,#0x160+var_110]
16ABBE:  LDR.W           R1, [R10]
16ABC2:  LDR             R2, [R2]
16ABC4:  BLX             R2; sub_171190
16ABC6:  LDR.W           R8, [SP,#0x160+var_10C]
16ABCA:  MOV             R5, R0
16ABCC:  LDR.W           R1, [R8,#0x464]; src
16ABD0:  CBZ             R1, loc_16AC04
16ABD2:  LDR.W           R0, [R8,#0x45C]
16ABD6:  LSLS            R2, R0, #2; n
16ABD8:  MOV             R0, R5; dest
16ABDA:  BLX             j_memcpy
16ABDE:  LDR.W           R0, [R8,#0x464]
16ABE2:  CBZ             R0, loc_16ABF4
16ABE4:  LDR             R1, [SP,#0x160+var_104]
16ABE6:  LDR             R1, [R1]
16ABE8:  CBZ             R1, loc_16ABF4
16ABEA:  LDR.W           R2, [R1,#0x370]
16ABEE:  SUBS            R2, #1
16ABF0:  STR.W           R2, [R1,#0x370]
16ABF4:  LDR             R2, =(off_2390B0 - 0x16ABFE)
16ABF6:  LDR.W           R1, [R10]
16ABFA:  ADD             R2, PC; off_2390B0
16ABFC:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16ABFE:  BLX             R2; j_opus_decoder_destroy_0
16AC00:  LDR.W           R8, [SP,#0x160+var_10C]
16AC04:  LDR.W           R0, [R8,#0x45C]
16AC08:  STR.W           R4, [R8,#0x460]
16AC0C:  STR.W           R5, [R8,#0x464]
16AC10:  LDR             R4, [SP,#0x160+var_10C]
16AC12:  LDR             R2, [SP,#0x160+var_88]
16AC14:  LDR.W           R1, [R4,#0x464]
16AC18:  STR.W           R2, [R1,R0,LSL#2]
16AC1C:  LDR.W           R0, [R4,#0x45C]
16AC20:  ADDS            R0, #1
16AC22:  STR.W           R0, [R4,#0x45C]
16AC26:  MOVS.W          R0, R9,LSL#18
16AC2A:  BMI             loc_16ACCE
16AC2C:  LDR.W           R0, [R4,#0x450]
16AC30:  LDR.W           R1, [R4,#0x454]
16AC34:  CMP             R0, R1
16AC36:  BNE             loc_16ACB6
16AC38:  CMP             R0, #0
16AC3A:  ADD.W           R4, R0, #1
16AC3E:  ITTE NE
16AC40:  ADDNE.W         R1, R0, R0,LSR#31
16AC44:  ADDNE.W         R1, R0, R1,ASR#1
16AC48:  MOVEQ           R1, #8
16AC4A:  CMP             R1, R4
16AC4C:  IT GT
16AC4E:  MOVGT           R4, R1
16AC50:  CMP             R0, R4
16AC52:  BGE             loc_16ACB6
16AC54:  LDR             R0, [SP,#0x160+var_104]
16AC56:  LDR             R1, [R0]
16AC58:  LSLS            R0, R4, #2
16AC5A:  CBZ             R1, loc_16AC66
16AC5C:  LDR.W           R2, [R1,#0x370]
16AC60:  ADDS            R2, #1
16AC62:  STR.W           R2, [R1,#0x370]
16AC66:  LDR             R2, [SP,#0x160+var_110]
16AC68:  LDR.W           R1, [R10]
16AC6C:  LDR             R2, [R2]
16AC6E:  BLX             R2; sub_171190
16AC70:  LDR             R5, [SP,#0x160+var_10C]
16AC72:  MOV             R8, R0
16AC74:  LDR.W           R1, [R5,#0x458]; src
16AC78:  CBZ             R1, loc_16ACAA
16AC7A:  LDR.W           R0, [R5,#0x450]
16AC7E:  LSLS            R2, R0, #2; n
16AC80:  MOV             R0, R8; dest
16AC82:  BLX             j_memcpy
16AC86:  LDR.W           R0, [R5,#0x458]
16AC8A:  CBZ             R0, loc_16AC9C
16AC8C:  LDR             R1, [SP,#0x160+var_104]
16AC8E:  LDR             R1, [R1]
16AC90:  CBZ             R1, loc_16AC9C
16AC92:  LDR.W           R2, [R1,#0x370]
16AC96:  SUBS            R2, #1
16AC98:  STR.W           R2, [R1,#0x370]
16AC9C:  LDR             R2, =(off_2390B0 - 0x16ACA6)
16AC9E:  LDR.W           R1, [R10]
16ACA2:  ADD             R2, PC; off_2390B0
16ACA4:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16ACA6:  BLX             R2; j_opus_decoder_destroy_0
16ACA8:  LDR             R5, [SP,#0x160+var_10C]
16ACAA:  LDR.W           R0, [R5,#0x450]
16ACAE:  STR.W           R4, [R5,#0x454]
16ACB2:  STR.W           R8, [R5,#0x458]
16ACB6:  LDR             R4, [SP,#0x160+var_10C]
16ACB8:  LDR             R2, [SP,#0x160+var_88]
16ACBA:  LDR.W           R1, [R4,#0x458]
16ACBE:  STR.W           R2, [R1,R0,LSL#2]
16ACC2:  LDR.W           R0, [R4,#0x450]
16ACC6:  ADDS            R0, #1
16ACC8:  STR.W           R0, [R4,#0x450]
16ACCC:  B               loc_16ACDE
16ACCE:  LDR             R1, [SP,#0x160+var_11C]
16ACD0:  MOVW            R0, #0x196C
16ACD4:  ADD             R0, R1
16ACD6:  ADD             R1, SP, #0x160+var_88
16ACD8:  BL              sub_1717CC
16ACDC:  LDR             R6, [SP,#0x160+var_88]
16ACDE:  MOVS            R5, #0
16ACE0:  STR             R6, [SP,#0x160+var_B4]
16ACE2:  LDR.W           R8, [R4,#0x444]
16ACE6:  LDR.W           R0, [R6,#0xA8]
16ACEA:  LDR.W           R1, [R6,#0x230]
16ACEE:  STR             R0, [SP,#0x160+var_120]
16ACF0:  SUB.W           R0, R8, #1
16ACF4:  STR             R1, [SP,#0x160+var_110]
16ACF6:  CMP             R1, R0
16ACF8:  MOVW            R1, #:lower16:unk_C0200
16ACFC:  IT LT
16ACFE:  MOVLT           R5, #1
16AD00:  MOVT            R1, #:upper16:unk_C0200
16AD04:  AND.W           R2, R9, R1
16AD08:  CMP             R2, R1
16AD0A:  IT EQ
16AD0C:  ORREQ.W         R9, R9, #6
16AD10:  MOVS.W          R1, R9,LSL#5
16AD14:  BMI             loc_16AD38
16AD16:  MOV             R3, R5
16AD18:  B               loc_16AD6E
16AD1A:  ALIGN 4
16AD1C:  DCD dword_381B58 - 0x16A9A0
16AD20:  DCFS 0.0
16AD24:  DCD off_2390AC - 0x16AA02
16AD28:  DCD dword_381B60 - 0x16AA04
16AD2C:  DCFS 0.00001
16AD30:  DCD off_2390B0 - 0x16ABFE
16AD34:  DCD off_2390B0 - 0x16ACA6
16AD38:  LDR             R2, [SP,#0x160+var_108]
16AD3A:  MOVS            R3, #0
16AD3C:  LDR             R5, [SP,#0x160+var_110]
16AD3E:  LDRD.W          R1, R2, [R2,#0x6C]
16AD42:  ADD.W           R2, R2, R2,LSL#3
16AD46:  CMP             R5, R0
16AD48:  LDR.W           R12, [R1,R2,LSL#2]
16AD4C:  IT LT
16AD4E:  MOVLT           R3, #1
16AD50:  LDR.W           R0, [R6,#0x8C]
16AD54:  ADD.W           R1, R1, R2,LSL#2
16AD58:  SUBS.W          R0, R0, R12
16AD5C:  LDR             R1, [R1,#4]
16AD5E:  IT NE
16AD60:  MOVNE           R0, #1
16AD62:  ORRS            R0, R3
16AD64:  SUBS            R1, R6, R1
16AD66:  IT NE
16AD68:  MOVNE           R1, #1
16AD6A:  ORR.W           R3, R0, R1
16AD6E:  LDR             R1, [SP,#0x160+var_120]
16AD70:  MOVS            R0, #0
16AD72:  CMP             R1, #0
16AD74:  IT GT
16AD76:  MOVGT           R0, #1
16AD78:  ORRS            R0, R3
16AD7A:  STRB.W          R0, [R6,#0x80]
16AD7E:  CMP             R0, #1
16AD80:  BNE             loc_16AD9C
16AD82:  ADD.W           R2, R6, #0xAC
16AD86:  ADD.W           R12, R6, #0xAC
16AD8A:  LDM             R2, {R0-R2}
16AD8C:  ORR.W           R2, R2, #8
16AD90:  ORR.W           R0, R0, #8
16AD94:  ORR.W           R1, R1, #8
16AD98:  STM.W           R12, {R0-R2}
16AD9C:  LDR             R0, [SP,#0x160+var_110]
16AD9E:  CMP             R0, R8
16ADA0:  BNE             loc_16ADA8
16ADA2:  LDR.W           R9, [R6,#8]
16ADA6:  B               loc_16ADC4
16ADA8:  STR.W           R8, [R6,#0x230]
16ADAC:  MOVS            R1, #0
16ADAE:  STR.W           R9, [R6,#8]
16ADB2:  LDR.W           R0, [R4,#0x48C]
16ADB6:  STRH.W          R0, [R6,#0x88]
16ADBA:  STRH.W          R1, [R6,#0x86]
16ADBE:  ADDS            R0, #1
16ADC0:  STR.W           R0, [R4,#0x48C]
16ADC4:  LDR.W           R0, [R4,#0x474]
16ADC8:  CBZ             R0, loc_16ADD8
16ADCA:  LDR.W           R1, [R4,#0x47C]
16ADCE:  ADD.W           R1, R1, R0,LSL#2
16ADD2:  LDR.W           R1, [R1,#-4]
16ADD6:  B               loc_16ADDA
16ADD8:  MOVS            R1, #0
16ADDA:  LDR             R2, [SP,#0x160+var_110]
16ADDC:  CMP             R2, R8
16ADDE:  BNE             loc_16ADE8
16ADE0:  LDR.W           R1, [R6,#0x2F8]
16ADE4:  STR             R1, [SP,#0x160+var_118]
16ADE6:  B               loc_16ADF2
16ADE8:  ANDS.W          R2, R9, #0x5000000
16ADEC:  IT NE
16ADEE:  MOVNE           R2, R1
16ADF0:  STR             R2, [SP,#0x160+var_118]
16ADF2:  LDR.W           R1, [R4,#0x478]
16ADF6:  STR             R3, [SP,#0x160+var_128]
16ADF8:  CMP             R0, R1
16ADFA:  BNE             loc_16AE84
16ADFC:  CMP             R0, #0
16ADFE:  ADD.W           R4, R0, #1
16AE02:  ITTE NE
16AE04:  ADDNE.W         R1, R0, R0,LSR#31
16AE08:  ADDNE.W         R1, R0, R1,ASR#1
16AE0C:  MOVEQ           R1, #8
16AE0E:  CMP             R1, R4
16AE10:  IT GT
16AE12:  MOVGT           R4, R1
16AE14:  CMP             R0, R4
16AE16:  BGE             loc_16AE84
16AE18:  LDR             R0, [SP,#0x160+var_104]
16AE1A:  MOV             R10, R11
16AE1C:  MOV             R11, R8
16AE1E:  LDR             R1, [R0]
16AE20:  LSLS            R0, R4, #2
16AE22:  CBZ             R1, loc_16AE2E
16AE24:  LDR.W           R2, [R1,#0x370]
16AE28:  ADDS            R2, #1
16AE2A:  STR.W           R2, [R1,#0x370]
16AE2E:  LDR             R6, =(dword_381B60 - 0x16AE36)
16AE30:  LDR             R2, =(off_2390AC - 0x16AE38)
16AE32:  ADD             R6, PC; dword_381B60
16AE34:  ADD             R2, PC; off_2390AC
16AE36:  LDR             R1, [R6]
16AE38:  LDR             R2, [R2]; sub_171190
16AE3A:  BLX             R2; sub_171190
16AE3C:  LDR             R5, [SP,#0x160+var_10C]
16AE3E:  MOV             R8, R0
16AE40:  LDR.W           R1, [R5,#0x47C]; src
16AE44:  CBZ             R1, loc_16AE74
16AE46:  LDR.W           R0, [R5,#0x474]
16AE4A:  LSLS            R2, R0, #2; n
16AE4C:  MOV             R0, R8; dest
16AE4E:  BLX             j_memcpy
16AE52:  LDR.W           R0, [R5,#0x47C]
16AE56:  CBZ             R0, loc_16AE68
16AE58:  LDR             R1, [SP,#0x160+var_104]
16AE5A:  LDR             R1, [R1]
16AE5C:  CBZ             R1, loc_16AE68
16AE5E:  LDR.W           R2, [R1,#0x370]
16AE62:  SUBS            R2, #1
16AE64:  STR.W           R2, [R1,#0x370]
16AE68:  LDR             R2, =(off_2390B0 - 0x16AE70)
16AE6A:  LDR             R1, [R6]
16AE6C:  ADD             R2, PC; off_2390B0
16AE6E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16AE70:  BLX             R2; j_opus_decoder_destroy_0
16AE72:  LDR             R5, [SP,#0x160+var_10C]
16AE74:  LDR.W           R0, [R5,#0x474]
16AE78:  STR.W           R8, [R5,#0x47C]
16AE7C:  MOV             R8, R11
16AE7E:  MOV             R11, R10
16AE80:  STR.W           R4, [R5,#0x478]
16AE84:  LDR             R3, [SP,#0x160+var_10C]
16AE86:  MOVW            R6, #0x1A78
16AE8A:  LDR             R2, [SP,#0x160+var_B4]
16AE8C:  STR.W           R9, [SP,#0x160+var_124]
16AE90:  LDR.W           R1, [R3,#0x47C]
16AE94:  STR.W           R2, [R1,R0,LSL#2]
16AE98:  MOVS            R0, #0
16AE9A:  STR.W           R0, [R3,#0x490]
16AE9E:  LDR             R0, [SP,#0x160+var_104]
16AEA0:  LDR.W           R2, [R3,#0x474]
16AEA4:  LDR             R1, [R0]
16AEA6:  ADDS            R2, #1
16AEA8:  LDR             R0, [SP,#0x160+var_B4]
16AEAA:  LDR.W           R12, [R1,R6]
16AEAE:  ADD             R1, R6
16AEB0:  LDR.W           R4, [R0,#0x19C]
16AEB4:  LDR.W           LR, [R1,#0xC]
16AEB8:  LDR             R5, [R1,#0x18]
16AEBA:  LDR             R1, [R1,#0x30]
16AEBC:  LDR.W           R6, [R0,#0x1C4]
16AEC0:  STR.W           R2, [R3,#0x474]
16AEC4:  STRH.W          R1, [R0,#0x1AC]
16AEC8:  ANDS.W          R1, R9, #0x4000000
16AECC:  STRH.W          R6, [R0,#0x1A8]
16AED0:  STRH.W          R4, [R0,#0x1AA]
16AED4:  STRH.W          R12, [R0,#0x1AE]
16AED8:  STRH.W          LR, [R0,#0x1B0]
16AEDC:  STRH.W          R5, [R0,#0x1B2]
16AEE0:  STR             R1, [SP,#0x160+var_140]
16AEE2:  BEQ             loc_16AFA2
16AEE4:  LDR             R3, [SP,#0x160+var_108]
16AEE6:  LDRD.W          R2, R1, [R3,#0x6C]
16AEEA:  ADD.W           R6, R1, R1,LSL#3
16AEEE:  LDR             R3, [R3,#0x74]
16AEF0:  ADD.W           R6, R2, R6,LSL#2
16AEF4:  CMP             R1, R3
16AEF6:  STR             R0, [R6,#4]
16AEF8:  BNE             loc_16AF80
16AEFA:  CMP             R1, #0
16AEFC:  ADD.W           R4, R1, #1
16AF00:  ITTE NE
16AF02:  ADDNE.W         R0, R1, R1,LSR#31
16AF06:  ADDNE.W         R0, R1, R0,ASR#1
16AF0A:  MOVEQ           R0, #8
16AF0C:  CMP             R0, R4
16AF0E:  IT GT
16AF10:  MOVGT           R4, R0
16AF12:  CMP             R1, R4
16AF14:  BGE             loc_16AF80
16AF16:  LDR             R1, [SP,#0x160+var_104]
16AF18:  ADD.W           R0, R4, R4,LSL#3
16AF1C:  LSLS            R0, R0, #2
16AF1E:  LDR             R1, [R1]
16AF20:  CBZ             R1, loc_16AF2C
16AF22:  LDR.W           R2, [R1,#0x370]
16AF26:  ADDS            R2, #1
16AF28:  STR.W           R2, [R1,#0x370]
16AF2C:  LDR             R5, =(dword_381B60 - 0x16AF34)
16AF2E:  LDR             R2, =(off_2390AC - 0x16AF36)
16AF30:  ADD             R5, PC; dword_381B60
16AF32:  ADD             R2, PC; off_2390AC
16AF34:  LDR             R1, [R5]
16AF36:  LDR             R2, [R2]; sub_171190
16AF38:  BLX             R2; sub_171190
16AF3A:  MOV             R9, R0
16AF3C:  LDR             R0, [SP,#0x160+var_108]
16AF3E:  LDR             R1, [R0,#0x78]; src
16AF40:  CBZ             R1, loc_16AF74
16AF42:  MOV             R10, R5
16AF44:  LDR             R5, [SP,#0x160+var_108]
16AF46:  LDR             R0, [R5,#0x70]
16AF48:  ADD.W           R0, R0, R0,LSL#3
16AF4C:  LSLS            R2, R0, #2; n
16AF4E:  MOV             R0, R9; dest
16AF50:  BLX             j_memcpy
16AF54:  LDR             R0, [R5,#0x78]
16AF56:  CBZ             R0, loc_16AF68
16AF58:  LDR             R1, [SP,#0x160+var_104]
16AF5A:  LDR             R1, [R1]
16AF5C:  CBZ             R1, loc_16AF68
16AF5E:  LDR.W           R2, [R1,#0x370]
16AF62:  SUBS            R2, #1
16AF64:  STR.W           R2, [R1,#0x370]
16AF68:  LDR             R2, =(off_2390B0 - 0x16AF72)
16AF6A:  LDR.W           R1, [R10]
16AF6E:  ADD             R2, PC; off_2390B0
16AF70:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16AF72:  BLX             R2; j_opus_decoder_destroy_0
16AF74:  LDR             R0, [SP,#0x160+var_108]
16AF76:  STRD.W          R4, R9, [R0,#0x74]
16AF7A:  LDR             R1, [R0,#0x70]
16AF7C:  LDR.W           R9, [SP,#0x160+var_124]
16AF80:  LDR             R4, [SP,#0x160+var_108]
16AF82:  ADD.W           R1, R1, R1,LSL#3
16AF86:  MOVS            R2, #0x24 ; '$'; n
16AF88:  LDR             R0, [R4,#0x78]
16AF8A:  ADD.W           R0, R0, R1,LSL#2; dest
16AF8E:  MOV             R1, R6; src
16AF90:  BLX             j_memcpy
16AF94:  LDR             R0, [SP,#0x160+var_B4]
16AF96:  LDR             R1, [R4,#0x70]
16AF98:  LDR             R2, [R6]
16AF9A:  ADDS            R1, #1
16AF9C:  STR             R1, [R4,#0x70]
16AF9E:  STR.W           R2, [R0,#0x8C]
16AFA2:  AND.W           R1, R9, #0x1000000
16AFA6:  STR             R1, [SP,#0x160+var_114]
16AFA8:  LDR             R1, [SP,#0x160+var_120]
16AFAA:  LDR             R4, [SP,#0x160+var_10C]
16AFAC:  CMP             R1, #1
16AFAE:  BLT             loc_16AFBA
16AFB0:  LDR             R1, [SP,#0x160+var_114]
16AFB2:  CBNZ            R1, loc_16AFBA
16AFB4:  MOVS            R1, #0
16AFB6:  STR.W           R1, [R0,#0x30C]
16AFBA:  LDRB.W          R1, [R4,#0x4F4]
16AFBE:  LSLS            R1, R1, #0x1F
16AFC0:  BNE             loc_16AFC6
16AFC2:  MOVS            R0, #0
16AFC4:  B               loc_16B018
16AFC6:  LDR             R1, [SP,#0x160+var_11C]
16AFC8:  LDR.W           R3, [R0,#0xAC]
16AFCC:  LDR.W           R2, [R4,#0x4F8]
16AFD0:  ADD.W           R1, R1, #0x1A20
16AFD4:  ANDS.W          R6, R2, R3
16AFD8:  IT NE
16AFDA:  MOVNE           R6, #1
16AFDC:  STR             R6, [SP,#0x160+var_130]
16AFDE:  BEQ             loc_16B01C
16AFE0:  VLDR            S2, [R11,#4]
16AFE4:  VLDR            S0, [R11]
16AFE8:  VMUL.F32        S2, S2, S2
16AFEC:  VMLA.F32        S2, S0, S0
16AFF0:  VLDR            S0, =0.00001
16AFF4:  VCMP.F32        S2, S0
16AFF8:  VMRS            APSR_nzcv, FPSCR
16AFFC:  BLE             loc_16B01C
16AFFE:  LDRD.W          R1, R2, [R1]
16B002:  STRD.W          R1, R2, [R0,#0xB8]
16B006:  LDRD.W          R1, R2, [R11]
16B00A:  STRD.W          R1, R2, [R0,#0xC0]
16B00E:  BIC.W           R1, R3, #0xE
16B012:  STR.W           R1, [R0,#0xAC]
16B016:  MOVS            R0, #1
16B018:  STR             R0, [SP,#0x160+var_130]
16B01A:  B               loc_16B020
16B01C:  BL              sub_16820C
16B020:  LDR.W           R0, [R4,#0x4F4]
16B024:  LSLS            R1, R0, #0x1E
16B026:  BMI             loc_16B032
16B028:  MOVS            R1, #0
16B02A:  MOV.W           R10, #0
16B02E:  STR             R1, [SP,#0x160+var_13C]
16B030:  B               loc_16B080
16B032:  LDR             R0, [SP,#0x160+var_B4]
16B034:  MOV.W           R10, #0
16B038:  LDR.W           R2, [R4,#0x4FC]
16B03C:  LDR.W           R1, [R0,#0xB0]
16B040:  TST             R2, R1
16B042:  BEQ             loc_16B06C
16B044:  VLDR            S2, [R11,#0xC]
16B048:  MOVS            R1, #0
16B04A:  VLDR            S0, [R11,#8]
16B04E:  VCMP.F32        S2, #0.0
16B052:  VMRS            APSR_nzcv, FPSCR
16B056:  VCMP.F32        S0, #0.0
16B05A:  IT GT
16B05C:  MOVGT           R1, #1
16B05E:  STR             R1, [SP,#0x160+var_13C]
16B060:  VMRS            APSR_nzcv, FPSCR
16B064:  IT GT
16B066:  MOVGT.W         R10, #1
16B06A:  B               loc_16B070
16B06C:  MOVS            R1, #0
16B06E:  STR             R1, [SP,#0x160+var_13C]
16B070:  LDR             R3, [SP,#0x160+var_11C]
16B072:  MOVW            R1, #0x1A30
16B076:  ADD             R1, R3
16B078:  BL              sub_16F2FA
16B07C:  LDR.W           R0, [R4,#0x4F4]
16B080:  LSLS            R0, R0, #0x1D
16B082:  BMI             loc_16B094
16B084:  LDR             R0, [SP,#0x160+var_110]
16B086:  CMP             R0, R8
16B088:  ITTT NE
16B08A:  LDRNE           R0, [SP,#0x160+var_B4]
16B08C:  MOVNE           R1, #0
16B08E:  STRDNE.W        R1, R1, [R0,#0x34]
16B092:  B               loc_16B110
16B094:  LDR             R1, [SP,#0x160+var_108]
16B096:  LDR             R0, [SP,#0x160+var_B4]
16B098:  LDRD.W          R1, R2, [R1]
16B09C:  VMOV            S0, R2
16B0A0:  STRD.W          R1, R2, [R0,#0x34]
16B0A4:  VCMP.F32        S0, #0.0
16B0A8:  VMRS            APSR_nzcv, FPSCR
16B0AC:  BEQ             loc_16B110
16B0AE:  VLDR            S4, =0.0
16B0B2:  LDR             R1, [R0,#8]
16B0B4:  VMOV.F32        S2, S4
16B0B8:  LSLS            R2, R1, #0x1F
16B0BA:  BNE             loc_16B0DA
16B0BC:  LDR             R2, [SP,#0x160+var_104]
16B0BE:  MOVW            R3, #0x1554
16B0C2:  VLDR            S8, [R0,#0x274]
16B0C6:  LDR             R2, [R2]
16B0C8:  ADD             R2, R3
16B0CA:  VLDR            S2, [R2]
16B0CE:  VLDR            S6, [R2,#0x378]
16B0D2:  VADD.F32        S2, S2, S2
16B0D6:  VMLA.F32        S2, S6, S8
16B0DA:  LSLS            R1, R1, #0x15
16B0DC:  BPL             loc_16B104
16B0DE:  LDR             R1, [SP,#0x160+var_104]
16B0E0:  MOVW            R2, #0x1554
16B0E4:  VLDR            S6, [R0,#0x274]
16B0E8:  VLDR            S4, [R0,#0x148]
16B0EC:  LDR             R1, [R1]
16B0EE:  ADD             R1, R2
16B0F0:  VLDR            S10, [R1,#0x378]
16B0F4:  VLDR            S8, [R1]
16B0F8:  VMLA.F32        S4, S10, S6
16B0FC:  VADD.F32        S6, S8, S8
16B100:  VADD.F32        S4, S6, S4
16B104:  VADD.F32        S2, S2, S4
16B108:  VADD.F32        S0, S2, S0
16B10C:  VSTR            S0, [R0,#0x38]
16B110:  LDR.W           R0, [R4,#0x4F4]
16B114:  LSLS            R1, R0, #0x1C
16B116:  BPL             loc_16B138
16B118:  LDR             R1, [SP,#0x160+var_B4]
16B11A:  LDR.W           R3, [R4,#0x500]
16B11E:  LDR.W           R2, [R1,#0xB4]
16B122:  CBZ             R3, loc_16B128
16B124:  ANDS            R3, R2
16B126:  BEQ             loc_16B138
16B128:  LDR             R3, [SP,#0x160+var_108]
16B12A:  BIC.W           R2, R2, #0xE
16B12E:  LDRB            R3, [R3,#8]
16B130:  STR.W           R2, [R1,#0xB4]
16B134:  STRB.W          R3, [R1,#0x7D]
16B138:  LSLS            R0, R0, #0x1A
16B13A:  ITT MI
16B13C:  LDRMI           R0, [SP,#0x160+var_B4]
16B13E:  BLMI            sub_168010
16B142:  LDR             R0, [SP,#0x160+var_B4]
16B144:  MOVW            R1, #0x1518
16B148:  LDRB.W          R2, [R0,#0x80]
16B14C:  CBZ             R2, loc_16B168
16B14E:  ADD.W           R6, R0, #0xAC
16B152:  ADD.W           R12, R0, #0xAC
16B156:  LDM             R6, {R2,R3,R6}
16B158:  BIC.W           R6, R6, #8
16B15C:  BIC.W           R2, R2, #8
16B160:  BIC.W           R3, R3, #8
16B164:  STM.W           R12, {R2,R3,R6}
16B168:  LDR             R2, [SP,#0x160+var_11C]
16B16A:  ADDS            R5, R2, R1
16B16C:  LDR             R1, [SP,#0x160+var_110]
16B16E:  CMP             R1, R8
16B170:  BNE             loc_16B1D8
16B172:  LDR             R1, [SP,#0x160+var_104]
16B174:  MOVW            R2, #0x18C8
16B178:  VLDR            S0, [R0,#0x274]
16B17C:  LDR             R1, [R1]
16B17E:  ADD             R1, R2
16B180:  ADD.W           R2, R0, #0x200
16B184:  VLDR            S2, [R1,#4]
16B188:  STR.W           R0, [R1,#0xE4]
16B18C:  VMUL.F32        S0, S2, S0
16B190:  VSTR            S0, [R1,#0x14]
16B194:  VSTR            S0, [R1]
16B198:  ADD.W           R1, R0, #0x208
16B19C:  MOV             R0, R2
16B19E:  MOVS            R2, #1
16B1A0:  BL              sub_16DDF0
16B1A4:  LDR             R3, [SP,#0x160+var_118]
16B1A6:  B.W             loc_16D25C
16B1AA:  ALIGN 4
16B1AC:  DCD dword_381B60 - 0x16AE36
16B1B0:  DCD off_2390AC - 0x16AE38
16B1B4:  DCD off_2390B0 - 0x16AE70
16B1B8:  DCD dword_381B60 - 0x16AF34
16B1BC:  DCD off_2390AC - 0x16AF36
16B1C0:  DCD off_2390B0 - 0x16AF72
16B1C4:  ALIGN 8
16B1C9:  DCB 0xFF, 0x7F, 0xFF
16B1CC:  DCD 0xFF7FFFFF, 0x7F7FFFFF
16B1D4:  DCB 0xFF, 0xFF
16B1D6:  LDRB            R7, [R7,#arg_15]
16B1D8:  LDR             R2, [SP,#0x160+var_118]
16B1DA:  MOV             R1, R9
16B1DC:  STR             R5, [SP,#0x160+var_144]
16B1DE:  BL              sub_16F2AC
16B1E2:  ADR.W           R0, unk_16B1C8
16B1E6:  LDR             R4, [SP,#0x160+var_B4]
16B1E8:  VLD1.64         {D16-D17}, [R0]
16B1EC:  MOV.W           R9, #1
16B1F0:  LDR             R0, [SP,#0x160+var_12C]
16B1F2:  CMP             R0, #0
16B1F4:  IT NE
16B1F6:  MOVNE           R0, #1
16B1F8:  LDR.W           R1, [R4,#0x1C8]
16B1FC:  STRB.W          R0, [R4,#0x82]
16B200:  ADD.W           R0, R4, #0x1D0
16B204:  CMP             R1, #0
16B206:  STRB.W          R9, [R4,#0x7A]
16B20A:  VST1.32         {D16-D17}, [R0]
16B20E:  BGT             loc_16B278
16B210:  MOV             R11, R8
16B212:  MOV.W           R8, #1
16B216:  IT EQ
16B218:  MOVEQ.W         R8, #8
16B21C:  LDR             R0, [SP,#0x160+var_104]
16B21E:  LDR             R1, [R0]
16B220:  MOV.W           R0, R8,LSL#2
16B224:  CBZ             R1, loc_16B230
16B226:  LDR.W           R2, [R1,#0x370]
16B22A:  ADDS            R2, #1
16B22C:  STR.W           R2, [R1,#0x370]
16B230:  LDR             R6, =(dword_381B60 - 0x16B238)
16B232:  LDR             R2, =(off_2390AC - 0x16B23A)
16B234:  ADD             R6, PC; dword_381B60
16B236:  ADD             R2, PC; off_2390AC
16B238:  LDR             R1, [R6]
16B23A:  LDR             R2, [R2]; sub_171190
16B23C:  BLX             R2; sub_171190
16B23E:  LDR.W           R1, [R4,#0x1CC]; src
16B242:  MOV             R5, R0
16B244:  CBZ             R1, loc_16B272
16B246:  LDR.W           R0, [R4,#0x1C4]
16B24A:  LSLS            R2, R0, #2; n
16B24C:  MOV             R0, R5; dest
16B24E:  BLX             j_memcpy
16B252:  LDR.W           R0, [R4,#0x1CC]
16B256:  CBZ             R0, loc_16B268
16B258:  LDR             R1, [SP,#0x160+var_104]
16B25A:  LDR             R1, [R1]
16B25C:  CBZ             R1, loc_16B268
16B25E:  LDR.W           R2, [R1,#0x370]
16B262:  SUBS            R2, #1
16B264:  STR.W           R2, [R1,#0x370]
16B268:  LDR             R2, =(off_2390B0 - 0x16B270)
16B26A:  LDR             R1, [R6]
16B26C:  ADD             R2, PC; off_2390B0
16B26E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16B270:  BLX             R2; j_opus_decoder_destroy_0
16B272:  STRD.W          R8, R5, [R4,#0x1C8]
16B276:  MOV             R8, R11
16B278:  LDR             R0, [SP,#0x160+var_108]
16B27A:  LDR             R5, [SP,#0x160+var_B4]
16B27C:  STR.W           R8, [SP,#0x160+var_148]
16B280:  LDR.W           R0, [R0,#0xC4]
16B284:  STR.W           R9, [R4,#0x1C4]
16B288:  CBZ             R0, loc_16B2C8
16B28A:  LDR             R0, [SP,#0x160+var_134]
16B28C:  LDR.W           R9, [SP,#0x160+var_124]
16B290:  LDR.W           R11, [SP,#0x160+var_140]
16B294:  LDR             R4, [SP,#0x160+var_130]
16B296:  CBZ             R0, loc_16B2D2
16B298:  LDR             R0, [R5,#8]
16B29A:  ANDS.W          R0, R0, #0x80000
16B29E:  BNE             loc_16B2D2
16B2A0:  LDR             R6, [R5]
16B2A2:  LDR             R4, [SP,#0x160+s1]
16B2A4:  MOV             R1, R6; s2
16B2A6:  MOV             R0, R4; s1
16B2A8:  BLX             strcmp
16B2AC:  CBZ             R0, loc_16B2D0
16B2AE:  LDR             R0, [R5,#0x4C]
16B2B0:  ADD             R1, SP, #0x160+var_88; int
16B2B2:  STR             R0, [SP,#0x160+var_88]
16B2B4:  MOV             R0, R6; s
16B2B6:  MOV             R2, R4; char *
16B2B8:  BL              sub_1654DC
16B2BC:  LDR             R1, [SP,#0x160+var_B4]
16B2BE:  STR             R0, [R1]
16B2C0:  LDR             R5, [SP,#0x160+var_B4]
16B2C2:  LDR             R0, [SP,#0x160+var_88]
16B2C4:  STR             R0, [R5,#0x4C]
16B2C6:  B               loc_16B2D0
16B2C8:  LDR.W           R9, [SP,#0x160+var_124]
16B2CC:  LDR.W           R11, [SP,#0x160+var_140]
16B2D0:  LDR             R4, [SP,#0x160+var_130]
16B2D2:  ADD             R0, SP, #0x160+var_88
16B2D4:  MOV             R1, R5
16B2D6:  BL              sub_16EEBC
16B2DA:  LDR             R1, [SP,#0x160+var_B4]
16B2DC:  MOV             R5, R10
16B2DE:  LDRD.W          R0, R2, [SP,#0x160+var_88]
16B2E2:  STRD.W          R0, R2, [R1,#0x2C]
16B2E6:  LDR.W           R0, [R1,#0xA4]
16B2EA:  CMP             R0, #1
16B2EC:  ITT GE
16B2EE:  SUBGE           R0, #1
16B2F0:  STRGE.W         R0, [R1,#0xA4]
16B2F4:  LDR.W           R0, [R1,#0xA8]
16B2F8:  LDR             R3, [SP,#0x160+var_128]
16B2FA:  CMP             R0, #1
16B2FC:  ITT GE
16B2FE:  SUBGE           R0, #1
16B300:  STRGE.W         R0, [R1,#0xA8]
16B304:  LDR             R0, [SP,#0x160+var_134]
16B306:  LDR             R6, [SP,#0x160+var_10C]
16B308:  CBNZ            R0, loc_16B316
16B30A:  LDR             R0, [SP,#0x160+var_13C]
16B30C:  TST             R5, R0
16B30E:  ITT EQ
16B310:  MOVEQ           R0, #1
16B312:  STREQ.W         R0, [R1,#0xA8]
16B316:  AND.W           R2, R9, #0x6000000
16B31A:  EORS.W          R0, R3, #1
16B31E:  STR             R0, [SP,#0x160+var_14C]
16B320:  BNE             loc_16B348
16B322:  CBZ             R2, loc_16B348
16B324:  MOVS            R0, #1
16B326:  STR.W           R0, [R1,#0xA8]
16B32A:  MOVS.W          R0, R9,LSL#25
16B32E:  BPL             loc_16B348
16B330:  CBNZ            R5, loc_16B338
16B332:  MOVS            R0, #0
16B334:  STR             R0, [R1,#0x14]
16B336:  STR             R0, [R1,#0x1C]
16B338:  LDR             R0, [SP,#0x160+var_13C]
16B33A:  CBNZ            R0, loc_16B342
16B33C:  MOVS            R0, #0
16B33E:  STR             R0, [R1,#0x18]
16B340:  STR             R0, [R1,#0x20]
16B342:  MOVS            R0, #0
16B344:  STRD.W          R0, R0, [R1,#0x2C]
16B348:  LDR             R0, [SP,#0x160+var_104]
16B34A:  MOVW            R3, #0x18CC
16B34E:  VLDR            S0, [R1,#0x274]
16B352:  LDR             R0, [R0]
16B354:  ADD             R3, R0
16B356:  VLDR            S2, [R3]
16B35A:  MOVW            R3, #0x19AC
16B35E:  STR             R1, [R0,R3]
16B360:  MOVW            R3, #0x18DC
16B364:  VMUL.F32        S2, S2, S0
16B368:  ADD             R3, R0
16B36A:  VSTR            S2, [R3]
16B36E:  MOVW            R3, #0x18C8
16B372:  ADD             R3, R0
16B374:  VSTR            S2, [R3]
16B378:  LDR             R3, [SP,#0x160+var_114]
16B37A:  CBNZ            R3, loc_16B394
16B37C:  ADD.W           R5, R6, #0xC
16B380:  MOVS.W          R3, R9,LSL#4
16B384:  MOV             R3, R5
16B386:  IT PL
16B388:  ADDPL.W         R3, R6, #0x30 ; '0'
16B38C:  CMP             R2, #0
16B38E:  IT EQ
16B390:  MOVEQ           R3, R5
16B392:  B               loc_16B398
16B394:  ADD.W           R3, R6, #0x28 ; '('
16B398:  VLDR            S4, [R3]
16B39C:  LDR.W           R8, [SP,#0x160+var_114]
16B3A0:  VSTR            S4, [R1,#0x48]
16B3A4:  LDRD.W          R2, R3, [R6]
16B3A8:  CMP.W           R8, #0
16B3AC:  STRD.W          R2, R3, [R1,#0x3C]
16B3B0:  IT NE
16B3B2:  MOVNE.W         R8, #1
16B3B6:  VMOV            S2, R2
16B3BA:  BEQ             loc_16B3EE
16B3BC:  MOVS            R2, #0x4010000
16B3C2:  ANDS.W          R2, R2, R9
16B3C6:  ITT EQ
16B3C8:  VCMPEQ.F32      S4, #0.0
16B3CC:  VMRSEQ          APSR_nzcv, FPSCR
16B3D0:  BNE             loc_16B3EE
16B3D2:  VLDR            S2, =0.0
16B3D6:  MOVS.W          R2, R9,LSL#21
16B3DA:  MOV.W           R2, #0
16B3DE:  VMOV.F32        S4, S2
16B3E2:  IT MI
16B3E4:  VLDRMI          S4, [R6,#4]
16B3E8:  VSTR            S4, [R1,#0x40]
16B3EC:  STR             R2, [R1,#0x3C]
16B3EE:  VLDR            S4, [R6,#0x44]
16B3F2:  VCMP.F32        S2, S4
16B3F6:  VMRS            APSR_nzcv, FPSCR
16B3FA:  IT GE
16B3FC:  VMOVGE.F32      S4, S2
16B400:  LDR             R2, [SP,#0x160+var_108]
16B402:  VLDR            S2, [R2,#0x28]
16B406:  VCMP.F32        S4, S2
16B40A:  VMRS            APSR_nzcv, FPSCR
16B40E:  IT GE
16B410:  VMOVGE.F32      S2, S4
16B414:  VSTR            S2, [R1,#0x144]
16B418:  TST.W           R9, #0x21
16B41C:  LDR             R2, [R2,#0x2C]
16B41E:  STR.W           R2, [R1,#0x148]
16B422:  BEQ             loc_16B42C
16B424:  MOVS            R0, #0
16B426:  STRB.W          R0, [R1,#0x7D]
16B42A:  B               loc_16B4C2
16B42C:  LDRB            R2, [R1,#8]
16B42E:  VLDR            S2, [R1,#0xC]
16B432:  VLDR            S6, [R1,#0x10]
16B436:  VLDR            S4, [R1,#0x1C]
16B43A:  LSLS            R2, R2, #0x1F
16B43C:  BNE             loc_16B456
16B43E:  MOVW            R2, #0x1554
16B442:  ADD             R0, R2
16B444:  VLDR            S8, [R0]
16B448:  VLDR            S10, [R0,#0x378]
16B44C:  VADD.F32        S8, S8, S8
16B450:  VMLA.F32        S8, S10, S0
16B454:  B               loc_16B45A
16B456:  VLDR            S8, =0.0
16B45A:  VADD.F32        S0, S6, S8
16B45E:  LDR.W           R3, [R6,#0x494]
16B462:  VADD.F32        S2, S2, S4
16B466:  LDRD.W          R0, R2, [R1,#0xC]
16B46A:  STRD.W          R0, R2, [SP,#0x160+var_88]
16B46E:  CMP             R3, R1
16B470:  VSTR            S0, [SP,#0x160+var_7C]
16B474:  VSTR            S2, [SP,#0x160+var_80]
16B478:  ITT EQ
16B47A:  LDREQ.W         R0, [R6,#0x4A0]
16B47E:  CMPEQ           R0, #0
16B480:  BEQ.W           loc_16D362
16B484:  LDR             R1, [SP,#0x160+var_B4]
16B486:  LDRB.W          R0, [R1,#0x7E]
16B48A:  CBZ             R0, loc_16B4C2
16B48C:  LDRB.W          R0, [R1,#0x7D]
16B490:  LDRB            R2, [R1,#9]
16B492:  EOR.W           R3, R0, #1
16B496:  LDR             R0, [SP,#0x160+var_104]
16B498:  STRB.W          R3, [R1,#0x7D]
16B49C:  LSLS            R2, R2, #0x1F
16B49E:  LDR             R0, [R0]
16B4A0:  BNE             loc_16B4BA
16B4A2:  MOVW            R2, #0x2CF8
16B4A6:  ADD             R2, R0
16B4A8:  VLDR            S0, [R2]
16B4AC:  VCMP.F32        S0, #0.0
16B4B0:  VMRS            APSR_nzcv, FPSCR
16B4B4:  ITT LS
16B4B6:  LDRLS           R0, [R0,#0x1C]
16B4B8:  STRLS           R0, [R2]
16B4BA:  MOV             R0, R1
16B4BC:  BL              sub_168010
16B4C0:  LDR             R1, [SP,#0x160+var_B4]
16B4C2:  MOVS            R0, #0
16B4C4:  ADD.W           R2, R1, #0x2C ; ','
16B4C8:  STRB.W          R0, [R1,#0x7E]
16B4CC:  ADD             R0, SP, #0x160+var_BC
16B4CE:  BL              sub_16F134
16B4D2:  LDR             R1, [SP,#0x160+var_B4]
16B4D4:  ANDS.W          R0, R9, #0x40 ; '@'
16B4D8:  STR             R0, [SP,#0x160+var_150]
16B4DA:  BEQ             loc_16B4E2
16B4DC:  LDRB.W          R0, [R1,#0x7D]
16B4E0:  CBZ             R0, loc_16B526
16B4E2:  LDR.W           R0, [R1,#0x90]
16B4E6:  CMP             R0, #0
16B4E8:  BLE             loc_16B4F6
16B4EA:  CMP.W           R10, #0
16B4EE:  BEQ             loc_16B508
16B4F0:  VLDR            S16, =3.4028e38
16B4F4:  B               loc_16B554
16B4F6:  VLDR            S16, =3.4028e38
16B4FA:  LDR.W           R0, [R1,#0x94]
16B4FE:  VMOV.F32        S18, S16
16B502:  CMP             R0, #0
16B504:  BGT             loc_16B554
16B506:  B               loc_16B5C8
16B508:  LDRB.W          R0, [R1,#0x98]
16B50C:  CBZ             R0, loc_16B54C
16B50E:  VLDR            S16, [SP,#0x160+var_BC]
16B512:  VLDR            S0, [R1,#0x1C]
16B516:  VCMP.F32        S0, S16
16B51A:  VMRS            APSR_nzcv, FPSCR
16B51E:  IT GE
16B520:  VMOVGE.F32      S16, S0
16B524:  B               loc_16B550
16B526:  VLDR            S18, =3.4028e38
16B52A:  CMP.W           R10, #0
16B52E:  VMOV.F32        S16, S18
16B532:  ITT EQ
16B534:  VLDREQ          S16, [SP,#0x160+var_BC]
16B538:  VSTREQ          S16, [R1,#0x1C]
16B53C:  LDR             R0, [SP,#0x160+var_13C]
16B53E:  CMP             R0, #0
16B540:  BNE             loc_16B5C8
16B542:  VLDR            S18, [SP,#0x160+var_B8]
16B546:  VSTR            S18, [R1,#0x20]
16B54A:  B               loc_16B5C8
16B54C:  VLDR            S16, [SP,#0x160+var_BC]
16B550:  VSTR            S16, [R1,#0x1C]
16B554:  LDR             R0, [SP,#0x160+var_13C]
16B556:  VLDR            S18, =3.4028e38
16B55A:  CBNZ            R0, loc_16B5A0
16B55C:  LDR.W           R0, [R1,#0x94]
16B560:  CMP             R0, #1
16B562:  BLT             loc_16B5A0
16B564:  LDRB.W          R0, [R1,#0x98]
16B568:  CBZ             R0, loc_16B598
16B56A:  VLDR            S18, [SP,#0x160+var_B8]
16B56E:  VLDR            S0, [R1,#0x20]
16B572:  VCMP.F32        S0, S18
16B576:  VMRS            APSR_nzcv, FPSCR
16B57A:  IT GE
16B57C:  VMOVGE.F32      S18, S0
16B580:  B               loc_16B59C
16B582:  ALIGN 4
16B584:  DCD dword_381B60 - 0x16B238
16B588:  DCD off_2390AC - 0x16B23A
16B58C:  DCD off_2390B0 - 0x16B270
16B590:  DCFS 0.0
16B594:  DCFS 3.4028e38
16B598:  VLDR            S18, [SP,#0x160+var_B8]
16B59C:  VSTR            S18, [R1,#0x20]
16B5A0:  LDRB.W          R0, [R1,#0x7D]
16B5A4:  CBNZ            R0, loc_16B5C8
16B5A6:  LDRB            R0, [R1,#9]
16B5A8:  LSLS            R0, R0, #0x1F
16B5AA:  BNE             loc_16B5C8
16B5AC:  LDR             R0, [SP,#0x160+var_104]
16B5AE:  MOVW            R2, #0x2CF8
16B5B2:  LDR             R0, [R0]
16B5B4:  ADD             R2, R0
16B5B6:  VLDR            S0, [R2]
16B5BA:  VCMP.F32        S0, #0.0
16B5BE:  VMRS            APSR_nzcv, FPSCR
16B5C2:  ITT LS
16B5C4:  LDRLS           R0, [R0,#0x1C]
16B5C6:  STRLS           R0, [R2]
16B5C8:  LDRD.W          R2, R3, [R1,#0x1C]
16B5CC:  ADD             R0, SP, #0x160+var_88
16B5CE:  BL              sub_16EF60
16B5D2:  LDR             R1, [SP,#0x160+var_B4]
16B5D4:  LDRD.W          R2, R3, [SP,#0x160+var_88]
16B5D8:  LDRB.W          R0, [R1,#0x7D]
16B5DC:  STRD.W          R2, R3, [R1,#0x1C]
16B5E0:  CLZ.W           R6, R0
16B5E4:  LSRS            R6, R6, #5
16B5E6:  ORRS.W          R6, R6, R8
16B5EA:  BEQ             loc_16B5F2
16B5EC:  LDR.W           R12, [SP,#0x160+var_10C]
16B5F0:  B               loc_16B644
16B5F2:  VMOV            S0, R2
16B5F6:  LDRB            R2, [R1,#8]
16B5F8:  LDR.W           R12, [SP,#0x160+var_10C]
16B5FC:  VLDR            S2, [R1,#0xC]
16B600:  VLDR            S4, [R1,#0x10]
16B604:  LSLS            R2, R2, #0x1F
16B606:  BNE             loc_16B628
16B608:  LDR             R2, [SP,#0x160+var_104]
16B60A:  MOVW            R3, #0x1554
16B60E:  VLDR            S10, [R1,#0x274]
16B612:  LDR             R2, [R2]
16B614:  ADD             R2, R3
16B616:  VLDR            S6, [R2]
16B61A:  VLDR            S8, [R2,#0x378]
16B61E:  VADD.F32        S6, S6, S6
16B622:  VMLA.F32        S6, S8, S10
16B626:  B               loc_16B62C
16B628:  VLDR            S6, =0.0
16B62C:  VADD.F32        S6, S4, S6
16B630:  VADD.F32        S0, S2, S0
16B634:  VSUB.F32        S4, S6, S4
16B638:  VSUB.F32        S0, S0, S2
16B63C:  VMOV            R3, S4
16B640:  VMOV            R2, S0
16B644:  CMP             R0, #0
16B646:  STRD.W          R2, R3, [R1,#0x14]
16B64A:  BNE.W           loc_16B750
16B64E:  VLDR            S0, =3.4028e38
16B652:  MOVS            R0, #0x24 ; '$'
16B654:  MOVS            R2, #0x28 ; '('
16B656:  VCMP.F32        S16, S0
16B65A:  VMRS            APSR_nzcv, FPSCR
16B65E:  VCMP.F32        S18, S0
16B662:  IT NE
16B664:  MOVNE           R0, #0x1C
16B666:  VMRS            APSR_nzcv, FPSCR
16B66A:  IT NE
16B66C:  MOVNE           R2, #0x20 ; ' '
16B66E:  ADD             R0, R1
16B670:  ADD             R2, R1
16B672:  VLDR            S2, [R0]
16B676:  MOVS.W          R0, R9,LSL#17
16B67A:  VLDR            S0, [R2]
16B67E:  BMI             loc_16B6B6
16B680:  VLDR            S4, [R1,#0x30]
16B684:  AND.W           R3, R9, #8
16B688:  MOVS            R0, #0
16B68A:  MOVS            R2, #1
16B68C:  VCMP.F32        S4, S0
16B690:  EOR.W           R6, R2, R3,LSR#3
16B694:  VMRS            APSR_nzcv, FPSCR
16B698:  IT GT
16B69A:  MOVGT           R0, #1
16B69C:  ANDS            R0, R6
16B69E:  MOVS.W          R6, R9,LSL#16
16B6A2:  STRB.W          R0, [R1,#0x79]
16B6A6:  BMI             loc_16B6F4
16B6A8:  VLDR            S4, [R1,#0x2C]
16B6AC:  CBNZ            R0, loc_16B6C6
16B6AE:  VLDR            S6, =0.0
16B6B2:  MOVS            R0, #0
16B6B4:  B               loc_16B6CC
16B6B6:  MOVS            R2, #1
16B6B8:  MOVS.W          R0, R9,LSL#16
16B6BC:  STRB.W          R2, [R1,#0x79]
16B6C0:  BMI             loc_16B724
16B6C2:  VLDR            S4, [R1,#0x2C]
16B6C6:  VLDR            S6, [R12,#0x64]
16B6CA:  MOVS            R0, #1
16B6CC:  VSUB.F32        S2, S2, S6
16B6D0:  VCMP.F32        S4, S2
16B6D4:  VMRS            APSR_nzcv, FPSCR
16B6D8:  BLE             loc_16B72A
16B6DA:  ANDS.W          R2, R9, #8
16B6DE:  BNE             loc_16B72A
16B6E0:  UBFX.W          R2, R9, #0xB, #1
16B6E4:  STRB.W          R2, [R1,#0x78]
16B6E8:  EOR.W           R3, R2, #1
16B6EC:  ORRS            R3, R0
16B6EE:  BNE             loc_16B730
16B6F0:  MOVS            R3, #0
16B6F2:  B               loc_16B6FA
16B6F4:  STRB.W          R2, [R1,#0x78]
16B6F8:  CBNZ            R0, loc_16B730
16B6FA:  VLDR            S2, [R12,#0x64]
16B6FE:  CLZ.W           R2, R3
16B702:  MOVS            R0, #0
16B704:  VSUB.F32        S0, S0, S2
16B708:  VLDR            S2, [R1,#0x30]
16B70C:  LSRS            R2, R2, #5
16B70E:  VCMP.F32        S2, S0
16B712:  VMRS            APSR_nzcv, FPSCR
16B716:  IT GT
16B718:  MOVGT           R0, #1
16B71A:  ANDS            R0, R2
16B71C:  MOVS            R2, #1
16B71E:  STRB.W          R0, [R1,#0x79]
16B722:  B               loc_16B730
16B724:  STRB.W          R2, [R1,#0x78]
16B728:  B               loc_16B732
16B72A:  MOVS            R2, #0
16B72C:  STRB.W          R2, [R1,#0x78]
16B730:  CBZ             R0, loc_16B738
16B732:  VLDR            S0, [R12,#0x64]
16B736:  B               loc_16B73C
16B738:  VLDR            S0, =0.0
16B73C:  CMP             R2, #0
16B73E:  ITE NE
16B740:  VLDRNE          S2, [R12,#0x64]
16B744:  VLDREQ          S2, =0.0
16B748:  VSTR            S0, [R1,#0x70]
16B74C:  VSTR            S2, [R1,#0x74]
16B750:  LDR             R0, [SP,#0x160+var_128]
16B752:  CBZ             R0, loc_16B77C
16B754:  MOV.W           R0, #0xFFFFFFFF
16B758:  STR.W           R0, [R1,#0xA0]
16B75C:  CLZ.W           R0, R11
16B760:  LSRS            R0, R0, #5
16B762:  ORRS            R0, R4
16B764:  BNE             loc_16B77C
16B766:  LDR             R2, [SP,#0x160+var_108]
16B768:  LDR             R0, [R2,#0x70]
16B76A:  LDR             R2, [R2,#0x78]
16B76C:  ADD.W           R0, R0, R0,LSL#3
16B770:  ADD.W           R0, R2, R0,LSL#2
16B774:  LDRD.W          R2, R0, [R0,#-0x10]
16B778:  STRD.W          R2, R0, [R1,#0xC]
16B77C:  AND.W           R0, R9, #0x3000000
16B780:  STR             R0, [SP,#0x160+var_134]
16B782:  LDR             R0, [SP,#0x160+var_114]
16B784:  CMP             R0, #0
16B786:  BEQ             loc_16B85E
16B788:  LDR             R2, [SP,#0x160+var_118]
16B78A:  LDRD.W          R0, R2, [R2,#0x14C]
16B78E:  STRH.W          R0, [R1,#0x86]
16B792:  CMP             R0, R2
16B794:  BNE             loc_16B820
16B796:  CMP             R0, #0
16B798:  ADD.W           R6, R0, #1
16B79C:  ITTE NE
16B79E:  ADDNE.W         R1, R0, R0,LSR#31
16B7A2:  ADDNE.W         R1, R0, R1,ASR#1
16B7A6:  MOVEQ           R1, #8
16B7A8:  CMP             R1, R6
16B7AA:  IT GT
16B7AC:  MOVGT           R6, R1
16B7AE:  CMP             R0, R6
16B7B0:  BGE             loc_16B820
16B7B2:  LDR             R0, [SP,#0x160+var_104]
16B7B4:  MOV             R10, R11
16B7B6:  LDR             R1, [R0]
16B7B8:  LSLS            R0, R6, #2
16B7BA:  CBZ             R1, loc_16B7C6
16B7BC:  LDR.W           R2, [R1,#0x370]
16B7C0:  ADDS            R2, #1
16B7C2:  STR.W           R2, [R1,#0x370]
16B7C6:  LDR             R1, =(dword_381B60 - 0x16B7CE)
16B7C8:  LDR             R2, =(off_2390AC - 0x16B7D0)
16B7CA:  ADD             R1, PC; dword_381B60
16B7CC:  ADD             R2, PC; off_2390AC
16B7CE:  MOV             R11, R1
16B7D0:  LDR             R1, [R1]
16B7D2:  LDR             R2, [R2]; sub_171190
16B7D4:  BLX             R2; sub_171190
16B7D6:  LDR             R4, [SP,#0x160+var_118]
16B7D8:  MOV             R5, R0
16B7DA:  LDR.W           R1, [R4,#0x154]; src
16B7DE:  CBZ             R1, loc_16B810
16B7E0:  LDR.W           R0, [R4,#0x14C]
16B7E4:  LSLS            R2, R0, #2; n
16B7E6:  MOV             R0, R5; dest
16B7E8:  BLX             j_memcpy
16B7EC:  LDR.W           R0, [R4,#0x154]
16B7F0:  CBZ             R0, loc_16B802
16B7F2:  LDR             R1, [SP,#0x160+var_104]
16B7F4:  LDR             R1, [R1]
16B7F6:  CBZ             R1, loc_16B802
16B7F8:  LDR.W           R2, [R1,#0x370]
16B7FC:  SUBS            R2, #1
16B7FE:  STR.W           R2, [R1,#0x370]
16B802:  LDR             R2, =(off_2390B0 - 0x16B80C)
16B804:  LDR.W           R1, [R11]
16B808:  ADD             R2, PC; off_2390B0
16B80A:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16B80C:  BLX             R2; j_opus_decoder_destroy_0
16B80E:  LDR             R4, [SP,#0x160+var_118]
16B810:  LDR.W           R0, [R4,#0x14C]
16B814:  MOV             R11, R10
16B816:  STRD.W          R6, R5, [R4,#0x150]
16B81A:  LDR.W           R12, [SP,#0x160+var_10C]
16B81E:  LDR             R4, [SP,#0x160+var_130]
16B820:  LDR             R3, [SP,#0x160+var_118]
16B822:  CMP.W           R11, #0
16B826:  LDR             R2, [SP,#0x160+var_B4]
16B828:  LDR.W           R1, [R3,#0x154]
16B82C:  STR.W           R2, [R1,R0,LSL#2]
16B830:  LDR.W           R0, [R3,#0x14C]
16B834:  ADD.W           R0, R0, #1
16B838:  STR.W           R0, [R3,#0x14C]
16B83C:  MOV             R0, R11
16B83E:  IT NE
16B840:  MOVNE           R0, #1
16B842:  ORRS            R0, R4
16B844:  BNE             loc_16B85C
16B846:  LDR             R0, [SP,#0x160+var_134]
16B848:  CMP.W           R0, #0x3000000
16B84C:  BEQ             loc_16B85C
16B84E:  LDR             R2, [SP,#0x160+var_118]
16B850:  LDR             R1, [SP,#0x160+var_B4]
16B852:  LDRD.W          R0, R2, [R2,#0xC8]
16B856:  STRD.W          R0, R2, [R1,#0xC]
16B85A:  B               loc_16B85E
16B85C:  LDR             R1, [SP,#0x160+var_B4]
16B85E:  VLDR            S24, =3.4028e38
16B862:  AND.W           R5, R9, #0x2000000
16B866:  VLDR            S0, [R1,#0xB8]
16B86A:  VCMP.F32        S0, S24
16B86E:  VMRS            APSR_nzcv, FPSCR
16B872:  BEQ             loc_16B87A
16B874:  LDR.W           R0, [R1,#0xA8]
16B878:  CBZ             R0, loc_16B8B6
16B87A:  MOV             R6, R12
16B87C:  MOVS.W          R0, R9,LSL#3
16B880:  BMI             loc_16B8A4
16B882:  CLZ.W           R0, R11
16B886:  LSRS            R0, R0, #5
16B888:  ORRS            R0, R4
16B88A:  BNE             loc_16B892
16B88C:  LDR             R0, [SP,#0x160+var_120]
16B88E:  CMP             R0, #1
16B890:  BGE             loc_16B8A4
16B892:  CLZ.W           R0, R5
16B896:  LSRS            R0, R0, #5
16B898:  ORRS            R0, R4
16B89A:  BNE             loc_16B90C
16B89C:  LDR             R0, [SP,#0x160+var_134]
16B89E:  CMP.W           R0, #0x3000000
16B8A2:  BEQ             loc_16B90C
16B8A4:  ADD             R0, SP, #0x160+var_88
16B8A6:  BL              sub_16F368
16B8AA:  LDR             R0, [SP,#0x160+var_B4]
16B8AC:  LDRD.W          R1, R2, [SP,#0x160+var_88]
16B8B0:  STR             R1, [R0,#0xC]
16B8B2:  STR             R2, [R0,#0x10]
16B8B4:  B               loc_16B90C
16B8B6:  VLDR            S4, [R1,#0x20]
16B8BA:  ADD             R2, SP, #0x160+var_88
16B8BC:  VLDR            S10, [R1,#0xC4]
16B8C0:  MOV             R0, R1
16B8C2:  VLDR            S6, [R1,#0xBC]
16B8C6:  MOV             R6, R12
16B8C8:  VLDR            S2, [R1,#0x1C]
16B8CC:  VMLS.F32        S6, S4, S10
16B8D0:  VLDR            S8, [R1,#0xC0]
16B8D4:  MOV             R1, R2
16B8D6:  VLDR            S4, [R12,#0x98]
16B8DA:  MOVS            R2, #0
16B8DC:  VMLS.F32        S0, S2, S8
16B8E0:  VLDR            S2, [R12,#0x94]
16B8E4:  VCMP.F32        S4, S6
16B8E8:  VMRS            APSR_nzcv, FPSCR
16B8EC:  IT GE
16B8EE:  VMOVGE.F32      S6, S4
16B8F2:  VCMP.F32        S2, S0
16B8F6:  VMRS            APSR_nzcv, FPSCR
16B8FA:  IT GE
16B8FC:  VMOVGE.F32      S0, S2
16B900:  VSTR            S6, [SP,#0x160+var_84]
16B904:  VSTR            S0, [SP,#0x160+var_88]
16B908:  BL              sub_16820C
16B90C:  LDR             R0, [SP,#0x160+var_104]
16B90E:  MOVS            R2, #0
16B910:  STRD.W          R2, R2, [SP,#0x160+var_CC]
16B914:  LDR             R0, [R0]
16B916:  LDRD.W          R0, R1, [R0,#0x10]
16B91A:  STRD.W          R0, R1, [SP,#0x160+var_C4]
16B91E:  ORRS.W          R0, R4, R8
16B922:  BNE             loc_16B992
16B924:  LDR             R0, [SP,#0x160+var_B4]
16B926:  LDR.W           R1, [R0,#0x90]
16B92A:  CMP             R1, #0
16B92C:  BGT             loc_16B992
16B92E:  LDR.W           R1, [R0,#0x94]
16B932:  CMP             R1, #0
16B934:  BGT             loc_16B992
16B936:  LDR             R1, [SP,#0x160+var_11C]
16B938:  VLDR            S0, [R1,#0x10]
16B93C:  VCMP.F32        S0, #0.0
16B940:  VMRS            APSR_nzcv, FPSCR
16B944:  BLE             loc_16B992
16B946:  LDR             R1, [SP,#0x160+var_11C]
16B948:  VLDR            S0, [R1,#0x14]
16B94C:  VCMP.F32        S0, #0.0
16B950:  VMRS            APSR_nzcv, FPSCR
16B954:  BLE             loc_16B992
16B956:  VLDR            S2, [R6,#0x90]
16B95A:  ADD             R1, SP, #0x160+var_CC
16B95C:  VLDR            S6, [R6,#0x98]
16B960:  ADD             R2, SP, #0x160+var_88
16B962:  VLDR            S0, [R6,#0x8C]
16B966:  VLDR            S4, [R6,#0x94]
16B96A:  VCMP.F32        S2, S6
16B96E:  VMRS            APSR_nzcv, FPSCR
16B972:  IT GE
16B974:  VMOVGE.F32      S6, S2
16B978:  VCMP.F32        S0, S4
16B97C:  VMRS            APSR_nzcv, FPSCR
16B980:  IT GE
16B982:  VMOVGE.F32      S4, S0
16B986:  VSTR            S6, [SP,#0x160+var_84]
16B98A:  VSTR            S4, [SP,#0x160+var_88]
16B98E:  BL              sub_16F5D0
16B992:  LDR             R1, [SP,#0x160+var_B4]
16B994:  LDR             R0, [SP,#0x160+var_114]
16B996:  STR             R5, [SP,#0x160+var_13C]
16B998:  VLDR            S0, [R1,#0xC]
16B99C:  VLDR            S2, [R1,#0x10]
16B9A0:  VCVT.S32.F32    S0, S0
16B9A4:  VCVT.S32.F32    S2, S2
16B9A8:  VCVT.F32.S32    S0, S0
16B9AC:  VCVT.F32.S32    S2, S2
16B9B0:  VSTR            S0, [R1,#0xC]
16B9B4:  VSTR            S2, [R1,#0x10]
16B9B8:  CBNZ            R0, loc_16B9DA
16B9BA:  CMP.W           R11, #0
16B9BE:  IT NE
16B9C0:  MOVNE.W         R11, #1
16B9C4:  BEQ             loc_16B9EC
16B9C6:  ANDS.W          R0, R9, #0x8000000
16B9CA:  BNE             loc_16B9EC
16B9CC:  ADD.W           R0, R6, #0x2C ; ','
16B9D0:  MOV.W           R10, #1
16B9D4:  MOV.W           R11, #1
16B9D8:  B               loc_16B9F4
16B9DA:  CMP.W           R11, #0
16B9DE:  IT NE
16B9E0:  MOVNE.W         R11, #1
16B9E4:  ADD.W           R0, R6, #0x24 ; '$'
16B9E8:  MOV             R10, R11
16B9EA:  B               loc_16B9F4
16B9EC:  ADD.W           R0, R6, #8
16B9F0:  MOV.W           R10, #1
16B9F4:  LDR             R0, [R0]
16B9F6:  MOVS            R2, #1
16B9F8:  STR             R0, [R1,#0x44]
16B9FA:  ADD             R0, SP, #0x160+var_88
16B9FC:  MOV             R5, R6
16B9FE:  BL              sub_16F690
16BA02:  VMOV.F32        S20, #1.0
16BA06:  LDR             R6, [SP,#0x160+var_B4]
16BA08:  MOVW            R1, #0xFFFF
16BA0C:  LDRD.W          R0, R2, [SP,#0x160+var_88]
16BA10:  MOVT            R1, #0x7F7F
16BA14:  VLDR            S18, =1.35
16BA18:  VLDR            S0, [R6,#0x44]
16BA1C:  VMOV.I32        Q8, #0
16BA20:  STRD.W          R0, R2, [R6,#0x58]
16BA24:  ADD             R0, SP, #0x160+var_E0
16BA26:  STRD.W          R1, R1, [R6,#0x60]
16BA2A:  VLDR            S26, =0.2
16BA2E:  VADD.F32        S16, S0, S20
16BA32:  VLDR            S0, [R5,#0x3AC]
16BA36:  VST1.64         {D16-D17}, [R0]
16BA3A:  AND.W           R0, R9, #0x1000
16BA3E:  VMUL.F32        S2, S0, S18
16BA42:  VMOV.F32        S22, S16
16BA46:  VMLA.F32        S22, S0, S26
16BA4A:  VCMP.F32        S2, S22
16BA4E:  VMRS            APSR_nzcv, FPSCR
16BA52:  IT GE
16BA54:  VMOVGE.F32      S22, S2
16BA58:  LDR             R2, [SP,#0x160+var_14C]
16BA5A:  CMP.W           R11, #0
16BA5E:  LDR             R3, [SP,#0x160+var_134]
16BA60:  ORR.W           R0, R2, R0,LSR#12
16BA64:  EOR.W           R2, R0, #1
16BA68:  CLZ.W           R3, R3
16BA6C:  MOV             R5, R2
16BA6E:  IT EQ
16BA70:  LSREQ           R5, R3, #5
16BA72:  CMP             R0, #0
16BA74:  IT NE
16BA76:  MOVNE           R5, R2
16BA78:  LDR             R0, [SP,#0x160+var_11C]
16BA7A:  LDRB.W          R2, [R6,#0x7D]
16BA7E:  MOVS            R3, #2
16BA80:  STR             R5, [SP,#0x160+var_130]
16BA82:  LDRB.W          R0, [R0,#0xAF]
16BA86:  CMP             R0, #0
16BA88:  IT EQ
16BA8A:  MOVEQ           R3, #1
16BA8C:  STR             R3, [SP,#0x160+var_11C]
16BA8E:  CBZ             R2, loc_16BA9C
16BA90:  MOV.W           R4, #0xFFFFFFFF
16BA94:  MOV             R0, R6
16BA96:  LDR.W           R8, [SP,#0x160+var_118]
16BA9A:  B               loc_16BAC0
16BA9C:  LDRB            R0, [R6,#8]
16BA9E:  LDR.W           R8, [SP,#0x160+var_118]
16BAA2:  TST.W           R0, #0x42
16BAA6:  BNE             loc_16BABA
16BAA8:  LDR.W           R0, [R6,#0x90]
16BAAC:  CMP             R0, #0
16BAAE:  BGT             loc_16BABA
16BAB0:  LDR.W           R0, [R6,#0x94]
16BAB4:  CMP             R0, #0
16BAB6:  BLE.W           loc_16D396
16BABA:  MOV.W           R4, #0xFFFFFFFF
16BABE:  MOV             R0, R6
16BAC0:  VLDR            S0, [R0,#0x14]
16BAC4:  STRB.W          R4, [R0,#0x83]
16BAC8:  VCMP.F32        S0, #0.0
16BACC:  VMRS            APSR_nzcv, FPSCR
16BAD0:  BLE             loc_16BB00
16BAD2:  LDR             R1, [SP,#0x160+var_13C]
16BAD4:  CBNZ            R1, loc_16BB00
16BAD6:  LDR             R1, [SP,#0x160+var_150]
16BAD8:  CBNZ            R1, loc_16BB00
16BADA:  VLDR            S2, =0.65
16BADE:  VMUL.F32        S2, S0, S2
16BAE2:  B               loc_16BB0E
16BAE4:  DCD dword_381B60 - 0x16B7CE
16BAE8:  DCD off_2390AC - 0x16B7D0
16BAEC:  DCD off_2390B0 - 0x16B80C
16BAF0:  DCFS 1.35
16BAF4:  DCFS 0.2
16BAF8:  DCFS 0.65
16BAFC:  DCFS 0.0
16BB00:  VMOV.F32        S2, #16.0
16BB04:  LDR             R1, [SP,#0x160+var_10C]
16BB06:  VLDR            S4, [R1,#0x3AC]
16BB0A:  VMUL.F32        S2, S4, S2
16BB0E:  VCVT.S32.F32    S2, S2
16BB12:  LDRD.W          R1, R2, [R0,#0x1C]
16BB16:  STRD.W          R1, R2, [R0,#0x24]
16BB1A:  ADD             R4, SP, #0x160+var_CC
16BB1C:  LDR             R2, [SP,#0x160+var_134]
16BB1E:  ADD             R5, SP, #0x160+var_F0
16BB20:  CMP.W           R2, #0x3000000
16BB24:  MOV             R2, R4
16BB26:  MOV             R3, R5
16BB28:  VCVT.F32.S32    S2, S2
16BB2C:  VSTR            S2, [R0,#0x234]
16BB30:  IT NE
16BB32:  ADDNE.W         R2, R8, #0x1D0
16BB36:  CMP.W           R10, #0
16BB3A:  IT NE
16BB3C:  MOVNE           R2, R4
16BB3E:  VLD1.32         {D16-D17}, [R2]
16BB42:  MOVS            R2, #4
16BB44:  VST1.64         {D16-D17}, [R3],R2
16BB48:  VLDR            S10, [R0,#0x10]
16BB4C:  VLDR            S2, [R0,#0x18]
16BB50:  VLDR            S12, [R0,#0xC]
16BB54:  VADD.F32        S2, S10, S2
16BB58:  VLDR            S6, [SP,#0x160+var_F0]
16BB5C:  VADD.F32        S4, S12, S0
16BB60:  VLDR            S1, [R3]
16BB64:  VCMP.F32        S12, S6
16BB68:  VLDR            S14, [SP,#0x160+var_E4]
16BB6C:  VMRS            APSR_nzcv, FPSCR
16BB70:  VCMP.F32        S10, S1
16BB74:  VLDR            S8, [SP,#0x160+var_E8]
16BB78:  IT GE
16BB7A:  VMOVGE.F32      S6, S12
16BB7E:  VMRS            APSR_nzcv, FPSCR
16BB82:  IT GE
16BB84:  VMOVGE.F32      S1, S10
16BB88:  VCMP.F32        S2, S14
16BB8C:  VMRS            APSR_nzcv, FPSCR
16BB90:  VCMP.F32        S4, S8
16BB94:  IT MI
16BB96:  VMOVMI.F32      S14, S2
16BB9A:  VMRS            APSR_nzcv, FPSCR
16BB9E:  IT MI
16BBA0:  VMOVMI.F32      S8, S4
16BBA4:  VLDR            S4, =0.0
16BBA8:  VSTR            S1, [R0,#0x1E4]
16BBAC:  VMOV.F32        S1, S4
16BBB0:  LDRB            R2, [R0,#8]
16BBB2:  VSTR            S14, [R0,#0x1EC]
16BBB6:  VMOV            S14, R1
16BBBA:  VSTR            S6, [R0,#0x1E0]
16BBBE:  LSLS            R1, R2, #0x1F
16BBC0:  VSTR            S8, [R0,#0x1E8]
16BBC4:  BNE             loc_16BBE4
16BBC6:  LDR             R1, [SP,#0x160+var_104]
16BBC8:  MOVW            R2, #0x1554
16BBCC:  LDR             R1, [R1]
16BBCE:  ADD             R1, R2
16BBD0:  VLDR            S6, [R1]
16BBD4:  VLDR            S8, [R1,#0x378]
16BBD8:  VADD.F32        S1, S6, S6
16BBDC:  VLDR            S6, [R0,#0x274]
16BBE0:  VMLA.F32        S1, S8, S6
16BBE4:  VADD.F32        S12, S12, S14
16BBE8:  LDRD.W          R1, R2, [R0,#0xC]
16BBEC:  VADD.F32        S10, S10, S1
16BBF0:  VLDR            S8, [R0,#0x48]
16BBF4:  STR             R2, [SP,#0x160+var_FC]
16BBF6:  VMOV            S6, R1
16BBFA:  LDR.W           R10, [SP,#0x160+var_108]
16BBFE:  STR             R1, [SP,#0x160+var_100]
16BC00:  VADD.F32        S6, S8, S6
16BC04:  VSTR            S12, [SP,#0x160+var_F8]
16BC08:  VMOV.F32        S12, S4
16BC0C:  VSTR            S10, [SP,#0x160+var_F4]
16BC10:  LDRB            R2, [R0,#9]
16BC12:  LSLS            R1, R2, #0x1D
16BC14:  VSTR            S6, [R0,#0x1F0]
16BC18:  BPL             loc_16BC40
16BC1A:  LDR             R1, [SP,#0x160+var_104]
16BC1C:  MOVW            R2, #0x1554
16BC20:  VLDR            S14, [R0,#0x274]
16BC24:  VLDR            S12, [R0,#0x148]
16BC28:  LDR             R1, [R1]
16BC2A:  ADD             R1, R2
16BC2C:  VLDR            S3, [R1,#0x378]
16BC30:  VLDR            S1, [R1]
16BC34:  VMLA.F32        S12, S3, S14
16BC38:  VADD.F32        S14, S1, S1
16BC3C:  VADD.F32        S12, S14, S12
16BC40:  VMOV.F32        S18, #0.5
16BC44:  VLDR            S1, [R0,#0x3C]
16BC48:  VMOV.F32        S7, S8
16BC4C:  VLDR            S14, [R0,#0xC]
16BC50:  VADD.F32        S10, S10, S12
16BC54:  VLDR            S3, [R0,#0x70]
16BC58:  VADD.F32        S0, S0, S14
16BC5C:  VLDR            S5, [R0,#0x74]
16BC60:  VCMP.F32        S3, S8
16BC64:  MOVW            R1, #0x401
16BC68:  VMOV.F32        S14, S8
16BC6C:  VMRS            APSR_nzcv, FPSCR
16BC70:  IT GE
16BC72:  VMOVGE.F32      S14, S3
16BC76:  VCMP.F32        S5, S8
16BC7A:  VNMLS.F32       S7, S1, S18
16BC7E:  VMRS            APSR_nzcv, FPSCR
16BC82:  IT GE
16BC84:  VMOVGE.F32      S8, S5
16BC88:  LDR             R6, [SP,#0x160+var_10C]
16BC8A:  AND.W           R1, R1, R9
16BC8E:  VSUB.F32        S2, S2, S8
16BC92:  VSUB.F32        S0, S0, S14
16BC96:  ADD.W           R2, R6, #0x40 ; '@'
16BC9A:  CMP             R1, #1
16BC9C:  IT EQ
16BC9E:  ADDEQ.W         R2, R0, #0x48 ; 'H'
16BCA2:  VLDR            S14, [R2]
16BCA6:  ADD.W           R1, R0, #0x210
16BCAA:  VCVT.S32.F32    S12, S7
16BCAE:  VADD.F32        S10, S10, S14
16BCB2:  VADD.F32        S14, S2, S18
16BCB6:  VADD.F32        S8, S0, S18
16BCBA:  VMOV            R3, S12
16BCBE:  VCVT.F32.S32    S12, S12
16BCC2:  CMP             R3, #1
16BCC4:  IT LT
16BCC6:  VMOVLT.F32      S12, S4
16BCCA:  VADD.F32        S4, S6, S18
16BCCE:  VSTR            S10, [R0,#0x1F4]
16BCD2:  VADD.F32        S6, S10, S18
16BCD6:  VSTR            S0, [R0,#0x1F8]
16BCDA:  VSUB.F32        S8, S8, S12
16BCDE:  VSTR            S2, [R0,#0x1FC]
16BCE2:  VADD.F32        S4, S4, S12
16BCE6:  VCVT.S32.F32    S6, S6
16BCEA:  VCVT.S32.F32    S12, S14
16BCEE:  VCVT.S32.F32    S8, S8
16BCF2:  VCVT.S32.F32    S4, S4
16BCF6:  VCVT.F32.S32    S6, S6
16BCFA:  VCVT.F32.S32    S12, S12
16BCFE:  VCVT.F32.S32    S8, S8
16BD02:  VCVT.F32.S32    S4, S4
16BD06:  VSTR            S6, [R0,#0x214]
16BD0A:  VSTR            S12, [R0,#0x21C]
16BD0E:  VSTR            S8, [R0,#0x218]
16BD12:  VSTR            S4, [R0,#0x210]
16BD16:  ADD.W           R0, R0, #0x200
16BD1A:  VLD1.32         {D16-D17}, [R1]
16BD1E:  MOV             R1, R5
16BD20:  VST1.32         {D16-D17}, [R0]
16BD24:  BL              sub_16F848
16BD28:  LDR             R0, [SP,#0x160+var_B4]
16BD2A:  LDR.W           R0, [R0,#0x27C]
16BD2E:  BL              sub_172794
16BD32:  LDR.W           R0, [R6,#0x3A8]
16BD36:  LDR             R1, [SP,#0x160+var_B4]
16BD38:  LDR             R2, [R0,#0x38]
16BD3A:  LDR.W           R0, [R1,#0x27C]
16BD3E:  LDR             R1, [R2,#8]
16BD40:  BL              sub_172D4E
16BD44:  ADD.W           R1, R5, #8
16BD48:  MOV             R0, R5
16BD4A:  MOVS            R2, #0
16BD4C:  MOVS            R6, #0
16BD4E:  BL              sub_16DDF0
16BD52:  MOVS.W          R0, R9,LSL#4
16BD56:  BPL             loc_16BD6E
16BD58:  LDR             R5, [SP,#0x160+var_B4]
16BD5A:  MOVS            R6, #0
16BD5C:  BL              sub_1683BC
16BD60:  CMP             R5, R0
16BD62:  BNE             loc_16BD6E
16BD64:  LDR.W           R0, [R5,#0xA8]
16BD68:  CMP             R0, #1
16BD6A:  IT LT
16BD6C:  MOVLT           R6, #1
16BD6E:  LDR.W           R0, [R10,#0xC0]
16BD72:  CBZ             R0, loc_16BD84
16BD74:  LDR             R1, [SP,#0x160+var_B4]
16BD76:  LDR.W           R0, [R0,#0x2FC]
16BD7A:  SUBS            R0, R1, R0
16BD7C:  CLZ.W           R0, R0
16BD80:  LSRS            R5, R0, #5
16BD82:  B               loc_16BD86
16BD84:  MOVS            R5, #0
16BD86:  ORR.W           R0, R6, R5
16BD8A:  CMP             R0, #1
16BD8C:  BNE             loc_16BDEE
16BD8E:  LDR             R0, [SP,#0x160+var_104]
16BD90:  MOVW            R1, #0x1518
16BD94:  VLDR            S0, [R10,#0x1E8]
16BD98:  CMP             R6, #0
16BD9A:  MOV.W           R2, #0xC
16BD9E:  LDR             R0, [R0]
16BDA0:  ADD             R0, R1
16BDA2:  MOV.W           R1, #0x2E0
16BDA6:  VLDR            S2, [R0]
16BDAA:  IT NE
16BDAC:  MOVNE.W         R1, #0x2F0
16BDB0:  ADD             R0, R1
16BDB2:  ADDS            R0, #0xAC
16BDB4:  VMUL.F32        S0, S0, S2
16BDB8:  VLD1.32         {D16-D17}, [R0]
16BDBC:  ADD             R0, SP, #0x160+var_88
16BDBE:  MOV             R1, R0
16BDC0:  VST1.64         {D16-D17}, [R1],R2
16BDC4:  VLDR            S2, [R1]
16BDC8:  VMUL.F32        S0, S2, S0
16BDCC:  VSTR            S0, [R1]
16BDD0:  BL              sub_165778
16BDD4:  MOV             R3, R0; int
16BDD6:  LDR             R0, [SP,#0x160+var_B4]
16BDD8:  MOVS            R1, #0xF
16BDDA:  MOVS            R2, #0
16BDDC:  LDR.W           R0, [R0,#0x27C]; int
16BDE0:  STRD.W          R2, R1, [SP,#0x160+var_160]; float
16BDE4:  ADD.W           R2, R4, #8; int
16BDE8:  MOV             R1, R4; int
16BDEA:  BL              sub_174194
16BDEE:  LDR             R2, [SP,#0x160+var_10C]
16BDF0:  CMP             R5, #0
16BDF2:  BEQ             loc_16BED0
16BDF4:  LDR             R0, [SP,#0x160+var_B4]
16BDF6:  LDR.W           R1, [R10,#0xC0]
16BDFA:  CMP             R0, R1
16BDFC:  BNE             loc_16BED0
16BDFE:  VLDR            S0, [R0,#0xC]
16BE02:  VLDR            S4, [R0,#0x14]
16BE06:  VLDR            S2, [R0,#0x10]
16BE0A:  VLDR            S6, [R0,#0x18]
16BE0E:  VADD.F32        S4, S0, S4
16BE12:  VLDR            S10, [R2,#0x3AC]
16BE16:  VADD.F32        S8, S2, S6
16BE1A:  VLDR            S14, [SP,#0x160+var_CC]
16BE1E:  VSUB.F32        S12, S0, S10
16BE22:  VSUB.F32        S6, S2, S10
16BE26:  VLDR            S2, [SP,#0x160+var_C0]
16BE2A:  VADD.F32        S4, S4, S10
16BE2E:  VADD.F32        S0, S8, S10
16BE32:  VLDR            S8, [SP,#0x160+var_C4]
16BE36:  VCMP.F32        S14, S12
16BE3A:  VLDR            S10, [SP,#0x160+var_C8]
16BE3E:  VMRS            APSR_nzcv, FPSCR
16BE42:  VSTR            S6, [SP,#0x160+var_94]
16BE46:  VSTR            S12, [SP,#0x160+var_98]
16BE4A:  VSTR            S4, [SP,#0x160+var_90]
16BE4E:  VSTR            S0, [SP,#0x160+var_8C]
16BE52:  ITT GE
16BE54:  VCMPGE.F32      S10, S6
16BE58:  VMRSGE          APSR_nzcv, FPSCR
16BE5C:  BGE             loc_16BEBC
16BE5E:  VMOV.F32        S0, #0.25
16BE62:  LDR             R1, [SP,#0x160+var_104]
16BE64:  VLDR            S2, [R10,#0xCC]
16BE68:  MOVW            R2, #0x1518
16BE6C:  LDR.W           R4, [R0,#0x27C]
16BE70:  LDR             R1, [R1]
16BE72:  ADDS            R0, R1, R2
16BE74:  MOVS            R2, #0xC
16BE76:  VMUL.F32        S0, S2, S0
16BE7A:  VLDR            S2, [R0]
16BE7E:  ADD.W           R0, R0, #0x37C
16BE82:  VLD1.32         {D16-D17}, [R0]
16BE86:  ADD             R0, SP, #0x160+var_88
16BE88:  MOV             R1, R0
16BE8A:  VST1.64         {D16-D17}, [R1],R2
16BE8E:  VMUL.F32        S0, S0, S2
16BE92:  VLDR            S2, [R1]
16BE96:  VMUL.F32        S0, S2, S0
16BE9A:  VSTR            S0, [R1]
16BE9E:  BL              sub_165778
16BEA2:  MOV             R3, R0; int
16BEA4:  LDR             R0, [SP,#0x160+var_10C]
16BEA6:  MOVS            R1, #0xF
16BEA8:  LDR             R0, [R0,#8]
16BEAA:  STRD.W          R0, R1, [SP,#0x160+var_160]; float
16BEAE:  ADD             R1, SP, #0x160+var_98; int
16BEB0:  ADD.W           R2, R1, #8; int
16BEB4:  MOV             R0, R4; int
16BEB6:  BL              sub_174194
16BEBA:  B               loc_16BED0
16BEBC:  VCMP.F32        S8, S4
16BEC0:  VMRS            APSR_nzcv, FPSCR
16BEC4:  ITT LS
16BEC6:  VCMPLS.F32      S2, S0
16BECA:  VMRSLS          APSR_nzcv, FPSCR
16BECE:  BHI             loc_16BE5E
16BED0:  LDR.W           R0, [R10,#0xBC]
16BED4:  CBNZ            R0, loc_16BEDA
16BED6:  LDR.W           R0, [R10,#0x7C]
16BEDA:  LDR             R1, [SP,#0x160+var_130]
16BEDC:  CBZ             R1, loc_16BEE2
16BEDE:  MOVS            R6, #1
16BEE0:  B               loc_16BEFA
16BEE2:  CBZ             R0, loc_16BEF8
16BEE4:  LDR             R1, [SP,#0x160+var_B4]
16BEE6:  LDR.W           R0, [R0,#0x300]
16BEEA:  LDR.W           R1, [R1,#0x300]
16BEEE:  SUBS            R0, R1, R0
16BEF0:  CLZ.W           R0, R0
16BEF4:  LSRS            R6, R0, #5
16BEF6:  B               loc_16BEFA
16BEF8:  MOVS            R6, #0
16BEFA:  LDR             R0, [SP,#0x160+var_104]
16BEFC:  MOVW            R1, #0x1518
16BF00:  LDR.W           R8, [SP,#0x160+var_B4]
16BF04:  LDR             R0, [R0]
16BF06:  LDRB.W          R2, [R8,#0x7D]
16BF0A:  ADDS            R4, R0, R1
16BF0C:  MOVW            R1, #0x1A5C
16BF10:  VLDR            S16, [R8,#0x44]
16BF14:  ADDS            R5, R0, R1
16BF16:  VLDR            S24, [R8,#0x48]
16BF1A:  CBZ             R2, loc_16BF84
16BF1C:  VLDR            S18, [R4,#0x44]
16BF20:  MOVS            R1, #0xC
16BF22:  MOV.W           R2, #0xC
16BF26:  VSTR            S24, [R4,#0x44]
16BF2A:  CBZ             R6, loc_16BF3A
16BF2C:  LDRB.W          R2, [R5,#0xBA]
16BF30:  CMP             R2, #0
16BF32:  MOV.W           R2, #0xC
16BF36:  IT EQ
16BF38:  MOVEQ           R2, #0xB
16BF3A:  ADD.W           R0, R0, R2,LSL#4
16BF3E:  MOVW            R2, #0x15C4
16BF42:  ADD             R0, R2
16BF44:  VLDR            S0, [R4]
16BF48:  VLD1.32         {D16-D17}, [R0]
16BF4C:  ADD             R0, SP, #0x160+var_88
16BF4E:  MOV             R2, R0
16BF50:  VST1.64         {D16-D17}, [R2],R1
16BF54:  VLDR            S2, [R2]
16BF58:  VMUL.F32        S0, S0, S2
16BF5C:  VSTR            S0, [R2]
16BF60:  BL              sub_165778
16BF64:  LDRD.W          R6, R1, [SP,#0x160+var_100]; int
16BF68:  MOVS            R5, #1
16BF6A:  LDRD.W          R2, R3, [SP,#0x160+var_F8]; int
16BF6E:  STRD.W          R0, R5, [SP,#0x160+var_160]; int
16BF72:  MOV             R0, R6; int
16BF74:  VSTR            S16, [SP,#0x160+var_158]
16BF78:  BL              sub_1661EC
16BF7C:  VSTR            S18, [R4,#0x44]
16BF80:  B.W             loc_16C784
16BF84:  LDR.W           R9, [R8,#8]
16BF88:  MOVS.W          R1, R9,LSL#24
16BF8C:  BMI             loc_16C04A
16BF8E:  MOVS.W          R1, R9,LSL#7
16BF92:  MOV.W           R2, #0xC
16BF96:  MOV.W           R1, #3
16BF9A:  IT PL
16BF9C:  MOVPL           R1, #2
16BF9E:  TST.W           R9, #0x6000000
16BFA2:  IT NE
16BFA4:  MOVNE           R1, #4
16BFA6:  ADD.W           R0, R0, R1,LSL#4
16BFAA:  MOVW            R1, #0x15C4
16BFAE:  ADD             R0, R1
16BFB0:  VLD1.32         {D16-D17}, [R0]
16BFB4:  ADD             R0, SP, #0x160+var_88
16BFB6:  MOV             R1, R0
16BFB8:  VLDR            S0, [R4]
16BFBC:  VST1.64         {D16-D17}, [R1],R2
16BFC0:  VLDR            S2, [R1]
16BFC4:  VMUL.F32        S0, S0, S2
16BFC8:  VSTR            S0, [R1]
16BFCC:  BL              sub_165778
16BFD0:  MOV             R3, R0
16BFD2:  LDRB.W          R0, [R4,#0x4F8]
16BFD6:  LSLS            R0, R0, #0x19
16BFD8:  BPL             loc_16C024
16BFDA:  VLDR            S0, [R5]
16BFDE:  VCMP.F32        S0, S20
16BFE2:  VMRS            APSR_nzcv, FPSCR
16BFE6:  BEQ             loc_16C024
16BFE8:  VMOV.F32        S4, S18
16BFEC:  VLDR            S2, =0.0
16BFF0:  VCMP.F32        S0, S20
16BFF4:  BIC.W           R1, R3, #0xFF000000
16BFF8:  VMRS            APSR_nzcv, FPSCR
16BFFC:  VCMP.F32        S0, #0.0
16C000:  IT GT
16C002:  VMOVGT.F32      S0, S20
16C006:  VMRS            APSR_nzcv, FPSCR
16C00A:  IT MI
16C00C:  VMOVMI.F32      S0, S2
16C010:  VLDR            S2, =255.0
16C014:  VMLA.F32        S4, S0, S2
16C018:  VCVT.S32.F32    S0, S4
16C01C:  VMOV            R0, S0
16C020:  ORR.W           R3, R1, R0,LSL#24; int
16C024:  LDR.W           R0, [R8,#0x27C]; int
16C028:  ANDS.W          R11, R9, #1
16C02C:  VLDR            S0, =0.0
16C030:  BNE             loc_16C058
16C032:  VLDR            S2, [R4,#0x3C]
16C036:  MOVS            R1, #0xC
16C038:  VLDR            S4, [R4,#0x3B4]
16C03C:  VADD.F32        S2, S2, S2
16C040:  VLDR            S6, [R8,#0x274]
16C044:  VMLA.F32        S2, S4, S6
16C048:  B               loc_16C05E
16C04A:  AND.W           R11, R9, #1
16C04E:  B               loc_16C09C
16C050:  DCFS 0.0
16C054:  DCFS 255.0
16C058:  MOVS            R1, #0xF
16C05A:  VMOV.F32        S2, S0
16C05E:  VLDR            S4, [R8,#0xC]
16C062:  ADD             R2, SP, #0x160+var_98; int
16C064:  VLDR            S6, [R8,#0x10]
16C068:  VADD.F32        S0, S4, S0
16C06C:  VLDR            S8, [R8,#0x14]
16C070:  VADD.F32        S2, S2, S6
16C074:  VLDR            S10, [R8,#0x18]
16C078:  STR             R1, [SP,#0x160+var_15C]; int
16C07A:  ADD             R1, SP, #0x160+var_88; int
16C07C:  VSTR            S16, [SP,#0x160+var_160]
16C080:  VSTR            S0, [SP,#0x160+var_88]
16C084:  VADD.F32        S0, S6, S10
16C088:  VSTR            S2, [SP,#0x160+var_84]
16C08C:  VADD.F32        S2, S4, S8
16C090:  VSTR            S0, [SP,#0x160+var_94]
16C094:  VSTR            S2, [SP,#0x160+var_98]
16C098:  BL              sub_174194
16C09C:  CMP.W           R11, #0
16C0A0:  BNE             loc_16C0F6
16C0A2:  LDR             R1, [SP,#0x160+var_104]
16C0A4:  ADD             R0, SP, #0x160+var_100
16C0A6:  ADD.W           R5, R0, #8
16C0AA:  MOVS            R0, #0xA0
16C0AC:  CMP             R6, #0
16C0AE:  MOVW            R2, #0x1518
16C0B2:  LDR             R1, [R1]
16C0B4:  IT NE
16C0B6:  MOVNE           R0, #0xB0
16C0B8:  ADD             R1, R2
16C0BA:  MOVS            R2, #0xC
16C0BC:  ADD             R0, R1
16C0BE:  ADDS            R0, #0xAC
16C0C0:  VLDR            S0, [R1]
16C0C4:  VLD1.32         {D16-D17}, [R0]
16C0C8:  ADD             R0, SP, #0x160+var_88
16C0CA:  MOV             R1, R0
16C0CC:  VST1.64         {D16-D17}, [R1],R2
16C0D0:  VLDR            S2, [R1]
16C0D4:  VMUL.F32        S0, S0, S2
16C0D8:  VSTR            S0, [R1]
16C0DC:  BL              sub_165778
16C0E0:  MOV             R3, R0; int
16C0E2:  LDR.W           R0, [R8,#0x27C]; int
16C0E6:  MOVS            R1, #3
16C0E8:  MOV             R2, R5; int
16C0EA:  STR             R1, [SP,#0x160+var_15C]; int
16C0EC:  ADD             R1, SP, #0x160+var_100; int
16C0EE:  VSTR            S16, [SP,#0x160+var_160]
16C0F2:  BL              sub_174194
16C0F6:  MOVS.W          R0, R9,LSL#21
16C0FA:  BPL.W           loc_16C26A
16C0FE:  ADD             R0, SP, #0x160+var_98
16C100:  MOV             R1, R8
16C102:  BL              sub_171AD0
16C106:  VLDR            S0, [R8,#0xC]
16C10A:  MOVW            R1, #0x1518
16C10E:  VLDR            S4, [R8,#0x14]
16C112:  VMOV.F32        S26, S16
16C116:  VLDR            S2, [R8,#0x10]
16C11A:  VLDR            S6, [R8,#0x18]
16C11E:  VADD.F32        S4, S0, S4
16C122:  VLDR            S10, [SP,#0x160+var_94]
16C126:  VADD.F32        S6, S2, S6
16C12A:  VLDR            S8, [SP,#0x160+var_98]
16C12E:  VCMP.F32        S10, S2
16C132:  VLDR            S12, [SP,#0x160+var_90]
16C136:  VMRS            APSR_nzcv, FPSCR
16C13A:  VCMP.F32        S8, S0
16C13E:  VLDR            S14, [SP,#0x160+var_8C]
16C142:  IT GE
16C144:  VMOVGE.F32      S2, S10
16C148:  VMRS            APSR_nzcv, FPSCR
16C14C:  IT GE
16C14E:  VMOVGE.F32      S0, S8
16C152:  VCMP.F32        S12, S4
16C156:  VLDR            S8, =0.0
16C15A:  VMRS            APSR_nzcv, FPSCR
16C15E:  IT MI
16C160:  VMOVMI.F32      S4, S12
16C164:  VCMP.F32        S14, S6
16C168:  VMRS            APSR_nzcv, FPSCR
16C16C:  IT MI
16C16E:  VMOVMI.F32      S6, S14
16C172:  LDR             R0, [SP,#0x160+var_104]
16C174:  VADD.F32        S12, S24, S0
16C178:  VSTR            S0, [SP,#0x160+var_98]
16C17C:  VSUB.F32        S0, S4, S24
16C180:  VADD.F32        S10, S2, S8
16C184:  VSTR            S2, [SP,#0x160+var_94]
16C188:  LDR             R0, [R0]
16C18A:  CMP.W           R11, #0
16C18E:  LDR.W           R5, [R8,#0x27C]
16C192:  ADD             R0, R1
16C194:  VSTR            S4, [SP,#0x160+var_90]
16C198:  ADD.W           R1, R0, #0x17C
16C19C:  VSTR            S6, [SP,#0x160+var_8C]
16C1A0:  VLD1.32         {D16-D17}, [R1]
16C1A4:  MOV.W           R1, #0xC
16C1A8:  VSTR            S0, [SP,#0x160+var_70]
16C1AC:  VLDR            S0, [R0]
16C1B0:  ADD             R0, SP, #0x160+var_88
16C1B2:  VSTR            S10, [SP,#0x160+var_64]
16C1B6:  MOV             R2, R0
16C1B8:  VSTR            S12, [SP,#0x160+var_68]
16C1BC:  VST1.64         {D16-D17}, [R2],R1
16C1C0:  VLDR            S2, [R2]
16C1C4:  VSTR            S6, [SP,#0x160+var_6C]
16C1C8:  IT EQ
16C1CA:  VMOVEQ.F32      S26, S8
16C1CE:  VMUL.F32        S0, S0, S2
16C1D2:  VSTR            S0, [R2]
16C1D6:  BL              sub_165778
16C1DA:  MOV             R3, R0; int
16C1DC:  MOVS            R0, #3
16C1DE:  ADD             R1, SP, #0x160+var_68; int
16C1E0:  ADD             R2, SP, #0x160+var_70; int
16C1E2:  STR             R0, [SP,#0x160+var_15C]; int
16C1E4:  MOV             R0, R5; int
16C1E6:  VSTR            S26, [SP,#0x160+var_160]
16C1EA:  BL              sub_174194
16C1EE:  VLDR            S26, [R4,#0x44]
16C1F2:  VCMP.F32        S26, #0.0
16C1F6:  VMRS            APSR_nzcv, FPSCR
16C1FA:  BLE             loc_16C26A
16C1FC:  VLDR            S0, [R8,#0x10]
16C200:  VLDR            S2, [R8,#0x18]
16C204:  VADD.F32        S2, S0, S2
16C208:  VLDR            S0, [SP,#0x160+var_8C]
16C20C:  VCMP.F32        S0, S2
16C210:  VMRS            APSR_nzcv, FPSCR
16C214:  BPL             loc_16C26A
16C216:  LDR             R0, [SP,#0x160+var_98]
16C218:  STR             R0, [SP,#0x160+var_68]
16C21A:  LDR             R0, [SP,#0x160+var_104]
16C21C:  LDRD.W          R1, R2, [SP,#0x160+var_90]
16C220:  STRD.W          R1, R2, [SP,#0x160+var_70]
16C224:  MOVW            R1, #0x1518
16C228:  LDR             R0, [R0]
16C22A:  VSTR            S0, [SP,#0x160+var_64]
16C22E:  ADD             R0, R1
16C230:  LDR.W           R4, [R8,#0x27C]
16C234:  ADD.W           R1, R0, #0xFC
16C238:  VLDR            S0, [R0]
16C23C:  ADD             R0, SP, #0x160+var_88
16C23E:  VLD1.32         {D16-D17}, [R1]
16C242:  MOVS            R1, #0xC
16C244:  MOV             R2, R0
16C246:  VST1.64         {D16-D17}, [R2],R1
16C24A:  VLDR            S2, [R2]
16C24E:  VMUL.F32        S0, S0, S2
16C252:  VSTR            S0, [R2]
16C256:  BL              sub_165778
16C25A:  ADD             R1, SP, #0x160+var_68; int
16C25C:  ADD             R2, SP, #0x160+var_70; int
16C25E:  MOV             R3, R0; int
16C260:  MOV             R0, R4; int
16C262:  VSTR            S26, [SP,#0x160+var_160]
16C266:  BL              sub_173FCC
16C26A:  LDRB.W          R0, [R8,#0x78]
16C26E:  CBZ             R0, loc_16C276
16C270:  MOVS            R0, #0
16C272:  BL              sub_17B908
16C276:  LDRB.W          R0, [R8,#0x79]
16C27A:  CBZ             R0, loc_16C282
16C27C:  MOVS            R0, #1
16C27E:  BL              sub_17B908
16C282:  MOVS.W          R0, R9,LSL#30
16C286:  BMI.W           loc_16C4D6
16C28A:  VCVT.S32.F32    S0, S22
16C28E:  LDR             R0, =(unk_BB358 - 0x16C29C)
16C290:  VADD.F32        S26, S16, S24
16C294:  MOV.W           R11, #0
16C298:  ADD             R0, PC; unk_BB358
16C29A:  ADD.W           R4, R0, #0xC
16C29E:  LDR             R0, =(dword_381B60 - 0x16C2A4)
16C2A0:  ADD             R0, PC; dword_381B60
16C2A2:  STR             R0, [SP,#0x160+var_120]
16C2A4:  VCVT.F32.S32    S22, S0
16C2A8:  B               loc_16C2B4
16C2AA:  ALIGN 4
16C2AC:  DCD unk_BB358 - 0x16C29C
16C2B0:  DCD dword_381B60 - 0x16C2A4
16C2B4:  VLDR            S28, [R8,#0xC]
16C2B8:  VMOV.F32        S23, S22
16C2BC:  VLDR            S0, [R8,#0x14]
16C2C0:  VMOV.F32        S21, S24
16C2C4:  VLDR            S30, [R8,#0x10]
16C2C8:  ANDS.W          R0, R11, #1
16C2CC:  VLDR            S2, [R8,#0x18]
16C2D0:  VADD.F32        S0, S28, S0
16C2D4:  VLDR            S4, [R4,#-0xC]
16C2D8:  VADD.F32        S2, S30, S2
16C2DC:  VLDR            S6, [R4,#-8]
16C2E0:  VLDR            S17, [R4,#-4]
16C2E4:  VLDR            S19, [R4]
16C2E8:  IT EQ
16C2EA:  VMOVEQ.F32      S23, S24
16C2EE:  IT EQ
16C2F0:  VMOVEQ.F32      S21, S22
16C2F4:  LDR.W           R10, [R8,#0x27C]
16C2F8:  VSUB.F32        S0, S0, S28
16C2FC:  LDRD.W          R0, R1, [R10,#0x58]
16C300:  VSUB.F32        S2, S2, S30
16C304:  CMP             R0, R1
16C306:  VMLA.F32        S28, S0, S4
16C30A:  VMLA.F32        S30, S2, S6
16C30E:  VMOV.F32        S2, S28
16C312:  VMOV.F32        S0, S30
16C316:  VMLA.F32        S2, S21, S17
16C31A:  VMLA.F32        S0, S23, S19
16C31E:  VSTR            S2, [SP,#0x160+var_88]
16C322:  VSTR            S0, [SP,#0x160+var_84]
16C326:  BNE             loc_16C3B0
16C328:  CMP             R0, #0
16C32A:  ADD.W           R9, R0, #1
16C32E:  ITTE NE
16C330:  ADDNE.W         R1, R0, R0,LSR#31
16C334:  ADDNE.W         R1, R0, R1,ASR#1
16C338:  MOVEQ           R1, #8
16C33A:  CMP             R1, R9
16C33C:  IT GT
16C33E:  MOVGT           R9, R1
16C340:  CMP             R0, R9
16C342:  BGE             loc_16C3B0
16C344:  LDR             R0, [SP,#0x160+var_104]
16C346:  LDR             R0, [R0]
16C348:  CBZ             R0, loc_16C354
16C34A:  LDR.W           R1, [R0,#0x370]
16C34E:  ADDS            R1, #1
16C350:  STR.W           R1, [R0,#0x370]
16C354:  LDR             R2, =(off_2390AC - 0x16C360)
16C356:  MOV.W           R0, R9,LSL#3
16C35A:  LDR             R1, [SP,#0x160+var_120]
16C35C:  ADD             R2, PC; off_2390AC
16C35E:  LDR             R1, [R1]
16C360:  LDR             R2, [R2]; sub_171190
16C362:  BLX             R2; sub_171190
16C364:  LDR.W           R1, [R10,#0x60]; src
16C368:  MOV             R6, R0
16C36A:  CBZ             R1, loc_16C3A8
16C36C:  B               loc_16C374
16C36E:  ALIGN 0x10
16C370:  DCD off_2390AC - 0x16C360
16C374:  LDR.W           R0, [R10,#0x58]
16C378:  LSLS            R2, R0, #3; n
16C37A:  MOV             R0, R6; dest
16C37C:  BLX             j_memcpy
16C380:  LDR.W           R0, [R10,#0x60]
16C384:  CBZ             R0, loc_16C396
16C386:  LDR             R1, [SP,#0x160+var_104]
16C388:  LDR             R1, [R1]
16C38A:  CBZ             R1, loc_16C396
16C38C:  LDR.W           R2, [R1,#0x370]
16C390:  SUBS            R2, #1
16C392:  STR.W           R2, [R1,#0x370]
16C396:  LDR             R2, =(off_2390B0 - 0x16C39E)
16C398:  LDR             R1, [SP,#0x160+var_120]
16C39A:  ADD             R2, PC; off_2390B0
16C39C:  LDR             R1, [R1]
16C39E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16C3A0:  BLX             R2; j_opus_decoder_destroy_0
16C3A2:  B               loc_16C3A8
16C3A4:  DCD off_2390B0 - 0x16C39E
16C3A8:  LDR.W           R0, [R10,#0x58]
16C3AC:  STRD.W          R9, R6, [R10,#0x5C]
16C3B0:  LDR.W           R1, [R10,#0x60]
16C3B4:  VMOV.F32        S0, S28
16C3B8:  VMOV.F32        S2, S30
16C3BC:  LDRD.W          R2, R3, [SP,#0x160+var_88]
16C3C0:  STR.W           R2, [R1,R0,LSL#3]
16C3C4:  ADD.W           R0, R1, R0,LSL#3
16C3C8:  STR             R3, [R0,#4]
16C3CA:  LDR.W           R0, [R10,#0x58]
16C3CE:  VMLA.F32        S0, S23, S17
16C3D2:  VMLA.F32        S2, S21, S19
16C3D6:  ADDS            R0, #1
16C3D8:  STR.W           R0, [R10,#0x58]
16C3DC:  LDR.W           R6, [R8,#0x27C]
16C3E0:  LDRD.W          R0, R1, [R6,#0x58]
16C3E4:  CMP             R0, R1
16C3E6:  VSTR            S0, [SP,#0x160+var_88]
16C3EA:  VSTR            S2, [SP,#0x160+var_84]
16C3EE:  BNE             loc_16C472
16C3F0:  CMP             R0, #0
16C3F2:  LDR.W           R10, [SP,#0x160+var_108]
16C3F6:  ADD.W           R5, R0, #1
16C3FA:  ITTE NE
16C3FC:  ADDNE.W         R1, R0, R0,LSR#31
16C400:  ADDNE.W         R1, R0, R1,ASR#1
16C404:  MOVEQ           R1, #8
16C406:  CMP             R1, R5
16C408:  IT GT
16C40A:  MOVGT           R5, R1
16C40C:  CMP             R0, R5
16C40E:  BGE             loc_16C476
16C410:  LDR             R0, [SP,#0x160+var_104]
16C412:  LDR             R0, [R0]
16C414:  CBZ             R0, loc_16C420
16C416:  LDR.W           R1, [R0,#0x370]
16C41A:  ADDS            R1, #1
16C41C:  STR.W           R1, [R0,#0x370]
16C420:  LDR             R2, =(off_2390AC - 0x16C42A)
16C422:  LSLS            R0, R5, #3
16C424:  LDR             R1, [SP,#0x160+var_120]
16C426:  ADD             R2, PC; off_2390AC
16C428:  LDR             R1, [R1]
16C42A:  LDR             R2, [R2]; sub_171190
16C42C:  BLX             R2; sub_171190
16C42E:  LDR             R1, [R6,#0x60]; src
16C430:  MOV             R10, R0
16C432:  CBZ             R1, loc_16C46C
16C434:  B               loc_16C43C
16C436:  ALIGN 4
16C438:  DCD off_2390AC - 0x16C42A
16C43C:  LDR             R0, [R6,#0x58]
16C43E:  LSLS            R2, R0, #3; n
16C440:  MOV             R0, R10; dest
16C442:  BLX             j_memcpy
16C446:  LDR             R0, [R6,#0x60]
16C448:  CBZ             R0, loc_16C45A
16C44A:  LDR             R1, [SP,#0x160+var_104]
16C44C:  LDR             R1, [R1]
16C44E:  CBZ             R1, loc_16C45A
16C450:  LDR.W           R2, [R1,#0x370]
16C454:  SUBS            R2, #1
16C456:  STR.W           R2, [R1,#0x370]
16C45A:  LDR             R2, =(off_2390B0 - 0x16C462)
16C45C:  LDR             R1, [SP,#0x160+var_120]
16C45E:  ADD             R2, PC; off_2390B0
16C460:  LDR             R1, [R1]
16C462:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16C464:  BLX             R2; j_opus_decoder_destroy_0
16C466:  B               loc_16C46C
16C468:  DCD off_2390B0 - 0x16C462
16C46C:  LDR             R0, [R6,#0x58]
16C46E:  STRD.W          R5, R10, [R6,#0x5C]
16C472:  LDR.W           R10, [SP,#0x160+var_108]
16C476:  VMOV            R2, S16
16C47A:  LDR             R1, [R6,#0x60]
16C47C:  LDRD.W          R3, R5, [SP,#0x160+var_88]
16C480:  VMLA.F32        S30, S19, S26
16C484:  VMLA.F32        S28, S17, S26
16C488:  STR.W           R3, [R1,R0,LSL#3]
16C48C:  ADD.W           R0, R1, R0,LSL#3
16C490:  STR             R5, [R0,#4]
16C492:  LDR             R0, [R6,#0x58]
16C494:  ADDS            R0, #1
16C496:  STR             R0, [R6,#0x58]
16C498:  LDRD.W          R3, R1, [R4,#4]
16C49C:  LDR.W           R0, [R8,#0x27C]
16C4A0:  STR             R1, [SP,#0x160+var_160]; float
16C4A2:  ADD             R1, SP, #0x160+var_88
16C4A4:  VSTR            S30, [SP,#0x160+var_84]
16C4A8:  VSTR            S28, [SP,#0x160+var_88]
16C4AC:  BL              sub_1739BC
16C4B0:  LDR.W           R6, [R8,#0x27C]
16C4B4:  ADD             R0, SP, #0x160+var_E0
16C4B6:  LDR.W           R3, [R0,R11,LSL#2]
16C4BA:  LDR             R2, [R6,#0x58]
16C4BC:  LDR             R1, [R6,#0x60]
16C4BE:  MOV             R0, R6
16C4C0:  BL              sub_173720
16C4C4:  MOVS            R0, #0
16C4C6:  ADDS            R4, #0x18
16C4C8:  STR             R0, [R6,#0x58]
16C4CA:  ADD.W           R11, R11, #1
16C4CE:  LDR             R0, [SP,#0x160+var_11C]
16C4D0:  CMP             R0, R11
16C4D2:  BNE.W           loc_16C2B4
16C4D6:  LDR             R0, [SP,#0x160+var_104]
16C4D8:  MOVW            R1, #0x1518
16C4DC:  VLDR            S22, [R8,#0x48]
16C4E0:  VLDR            S16, [R8,#0x44]
16C4E4:  LDR             R0, [R0]
16C4E6:  VCMP.F32        S22, #0.0
16C4EA:  VMRS            APSR_nzcv, FPSCR
16C4EE:  ADD.W           R9, R0, R1
16C4F2:  BLE             loc_16C562
16C4F4:  LDRB.W          R1, [R8,#8]
16C4F8:  LSLS            R1, R1, #0x18
16C4FA:  BMI             loc_16C562
16C4FC:  VLDR            S0, [R8,#0xC]
16C500:  MOVW            R1, #0x1614
16C504:  VLDR            S4, [R8,#0x14]
16C508:  ADD             R0, R1
16C50A:  VLDR            S2, [R8,#0x10]
16C50E:  MOVS            R2, #0xC
16C510:  VLDR            S6, [R8,#0x18]
16C514:  VADD.F32        S0, S0, S4
16C518:  VLD1.32         {D16-D17}, [R0]
16C51C:  ADD             R0, SP, #0x160+var_88
16C51E:  VADD.F32        S2, S2, S6
16C522:  MOV             R1, R0
16C524:  LDR.W           R4, [R8,#0x27C]
16C528:  VSTR            S0, [SP,#0x160+var_98]
16C52C:  VSTR            S2, [SP,#0x160+var_94]
16C530:  VLDR            S0, [R9]
16C534:  VST1.64         {D16-D17}, [R1],R2
16C538:  VLDR            S2, [R1]
16C53C:  VMUL.F32        S0, S0, S2
16C540:  VSTR            S0, [R1]
16C544:  BL              sub_165778
16C548:  MOV             R3, R0
16C54A:  MOVS            R0, #0xF
16C54C:  ADD.W           R1, R8, #0xC
16C550:  ADD             R2, SP, #0x160+var_98
16C552:  STR             R0, [SP,#0x160+var_15C]
16C554:  MOV             R0, R4
16C556:  VSTR            S22, [SP,#0x160+var_158]
16C55A:  VSTR            S16, [SP,#0x160+var_160]
16C55E:  BL              sub_1740F8
16C562:  LDRSB.W         R4, [R8,#0x83]
16C566:  ADDS            R0, R4, #1
16C568:  BEQ.W           loc_16C6DE
16C56C:  LDR             R0, =(byte_381BE0 - 0x16C572)
16C56E:  ADD             R0, PC; byte_381BE0
16C570:  LDRB            R0, [R0]
16C572:  DMB.W           ISH
16C576:  LDR             R6, =(unk_381B70 - 0x16C57C)
16C578:  ADD             R6, PC; unk_381B70
16C57A:  LSLS            R0, R0, #0x1F
16C57C:  BEQ.W           loc_16D8BC
16C580:  B               loc_16C598
16C582:  ALIGN 4
16C584:  DCD byte_381BE0 - 0x16C572
16C588:  DCD unk_381B70 - 0x16C57C
16C58C:  DCFS 0.0
16C590:  DCFS -0.7854
16C594:  DCFS 0.7854
16C598:  VMOV.F32        S0, S16
16C59C:  VLDR            S1, =0.0
16C5A0:  ADD             R0, SP, #0x160+var_98
16C5A2:  MOV             R1, R8
16C5A4:  MOV             R2, R4
16C5A6:  BL              sub_171A1C
16C5AA:  VLDR            S26, [SP,#0x160+var_94]
16C5AE:  RSB.W           R1, R4, R4,LSL#3
16C5B2:  VLDR            S2, [SP,#0x160+var_8C]
16C5B6:  VMOV            R4, S16
16C5BA:  VMOV.F32        S12, S26
16C5BE:  ADD.W           R6, R6, R1,LSL#2
16C5C2:  VSUB.F32        S28, S2, S26
16C5C6:  VLDR            S24, [SP,#0x160+var_98]
16C5CA:  VLDR            S0, [SP,#0x160+var_90]
16C5CE:  ADD             R1, SP, #0x160+var_88; int
16C5D0:  VLDR            S6, [R6,#0xC]
16C5D4:  MOVS            R5, #0xA
16C5D6:  VLDR            S8, =-0.7854
16C5DA:  VSUB.F32        S30, S0, S24
16C5DE:  VLDR            S10, [R6,#0x18]
16C5E2:  VLDR            S4, [R6,#8]
16C5E6:  VLDR            S0, [R6]
16C5EA:  VMLA.F32        S12, S28, S6
16C5EE:  VLDR            S2, [R6,#4]
16C5F2:  VADD.F32        S6, S10, S8
16C5F6:  LDR.W           R0, [R8,#0x27C]; int
16C5FA:  VMOV.F32        S8, S24
16C5FE:  STR             R5, [SP,#0x160+var_15C]; int
16C600:  VSTR            S10, [SP,#0x160+var_160]
16C604:  VMLA.F32        S8, S30, S4
16C608:  VMOV            R3, S6; int
16C60C:  VADD.F32        S4, S12, S18
16C610:  MOV             R2, R4; int
16C612:  VADD.F32        S6, S8, S18
16C616:  VMLA.F32        S4, S16, S2
16C61A:  VMLA.F32        S6, S16, S0
16C61E:  VSTR            S4, [SP,#0x160+var_84]
16C622:  VSTR            S6, [SP,#0x160+var_88]
16C626:  BL              sub_173B2C
16C62A:  VLDR            S4, [R6,#0x10]
16C62E:  MOV             R2, R4; int
16C630:  VLDR            S6, [R6,#0x14]
16C634:  VLDR            S8, [R6,#0x18]
16C638:  VMLA.F32        S24, S30, S4
16C63C:  VMLA.F32        S26, S28, S6
16C640:  VLDR            S0, [R6]
16C644:  VMOV            R3, S8; int
16C648:  VLDR            S2, [R6,#4]
16C64C:  LDR.W           R0, [R8,#0x27C]; int
16C650:  ADD             R6, SP, #0x160+var_88
16C652:  STR             R5, [SP,#0x160+var_15C]; float
16C654:  MOV             R1, R6; int
16C656:  VADD.F32        S6, S24, S18
16C65A:  VADD.F32        S4, S26, S18
16C65E:  VMLA.F32        S6, S16, S0
16C662:  VLDR            S0, =0.7854
16C666:  VMLA.F32        S4, S16, S2
16C66A:  VADD.F32        S0, S8, S0
16C66E:  VSTR            S6, [SP,#0x160+var_88]
16C672:  VSTR            S4, [SP,#0x160+var_84]
16C676:  VSTR            S0, [SP,#0x160+var_160]
16C67A:  BL              sub_173B2C
16C67E:  LDR             R0, [SP,#0x160+var_104]
16C680:  MOVW            R1, #0x1518
16C684:  VMOV.F32        S4, #2.0
16C688:  LDR.W           R4, [R8,#0x27C]
16C68C:  VMOV.F32        S16, S22
16C690:  LDR             R0, [R0]
16C692:  ADD             R0, R1
16C694:  ADD.W           R1, R0, #0x27C
16C698:  VLD1.32         {D16-D17}, [R1]
16C69C:  MOVS            R1, #0xC
16C69E:  VCMP.F32        S22, S4
16C6A2:  VLDR            S0, [R0]
16C6A6:  MOV             R0, R6
16C6A8:  VST1.64         {D16-D17}, [R0],R1
16C6AC:  VLDR            S2, [R0]
16C6B0:  VMRS            APSR_nzcv, FPSCR
16C6B4:  IT LS
16C6B6:  VMOVLS.F32      S16, S4
16C6BA:  VMUL.F32        S0, S0, S2
16C6BE:  VSTR            S0, [R0]
16C6C2:  MOV             R0, R6
16C6C4:  BL              sub_165778
16C6C8:  LDR             R2, [R4,#0x58]; int
16C6CA:  MOV             R3, R0; int
16C6CC:  LDR             R1, [R4,#0x60]; int
16C6CE:  MOVS            R5, #0
16C6D0:  MOV             R0, R4; int
16C6D2:  VSTR            S16, [SP,#0x160+var_15C]
16C6D6:  STR             R5, [SP,#0x160+var_160]; int
16C6D8:  BL              sub_172FDA
16C6DC:  STR             R5, [R4,#0x58]
16C6DE:  VLDR            S16, [R9,#0x44]
16C6E2:  LDR.W           R9, [SP,#0x160+var_124]
16C6E6:  VCMP.F32        S16, #0.0
16C6EA:  VMRS            APSR_nzcv, FPSCR
16C6EE:  BLE             loc_16C784
16C6F0:  LDRB.W          R0, [R8,#8]
16C6F4:  LSLS            R0, R0, #0x1F
16C6F6:  BNE             loc_16C784
16C6F8:  LDR             R0, [SP,#0x160+var_104]
16C6FA:  MOVW            R1, #0x1518
16C6FE:  VLDR            S10, [R8,#0x274]
16C702:  VLDR            S6, [R8,#0x10]
16C706:  LDR             R0, [R0]
16C708:  VLDR            S4, [R8,#0xC]
16C70C:  ADD             R0, R1
16C70E:  VLDR            S8, [R8,#0x14]
16C712:  ADD.W           R1, R0, #0xFC
16C716:  LDR.W           R4, [R8,#0x27C]
16C71A:  VLDR            S0, [R0,#0x3C]
16C71E:  VLDR            S2, [R0,#0x3B4]
16C722:  VADD.F32        S0, S0, S0
16C726:  VLD1.32         {D16-D17}, [R1]
16C72A:  MOVS            R1, #0xC
16C72C:  VMLA.F32        S0, S2, S10
16C730:  VMOV.F32        S2, #-1.0
16C734:  VADD.F32        S0, S6, S0
16C738:  VADD.F32        S6, S22, S4
16C73C:  VADD.F32        S0, S0, S2
16C740:  VADD.F32        S2, S4, S8
16C744:  VSTR            S6, [SP,#0x160+var_98]
16C748:  VSTR            S0, [SP,#0x160+var_94]
16C74C:  VSUB.F32        S2, S2, S22
16C750:  VSTR            S0, [SP,#0x160+var_64]
16C754:  VSTR            S2, [SP,#0x160+var_68]
16C758:  VLDR            S0, [R0]
16C75C:  ADD             R0, SP, #0x160+var_88
16C75E:  MOV             R2, R0
16C760:  VST1.64         {D16-D17}, [R2],R1
16C764:  VLDR            S2, [R2]
16C768:  VMUL.F32        S0, S0, S2
16C76C:  VSTR            S0, [R2]
16C770:  BL              sub_165778
16C774:  ADD             R1, SP, #0x160+var_98; int
16C776:  ADD             R2, SP, #0x160+var_68; int
16C778:  MOV             R3, R0; int
16C77A:  MOV             R0, R4; int
16C77C:  VSTR            S16, [SP,#0x160+var_160]
16C780:  BL              sub_173FCC
16C784:  LDR             R5, [SP,#0x160+var_B4]
16C786:  LDR.W           R0, [R10,#0xC0]
16C78A:  LDR.W           R8, [SP,#0x160+var_118]
16C78E:  CMP             R0, R5
16C790:  BNE.W           loc_16C8AA
16C794:  VLDR            S2, [R0,#0xC]
16C798:  VLDR            S6, [R0,#0x14]
16C79C:  VLDR            S4, [R0,#0x10]
16C7A0:  VLDR            S8, [R0,#0x18]
16C7A4:  VADD.F32        S12, S2, S6
16C7A8:  LDR             R1, [SP,#0x160+var_10C]
16C7AA:  VADD.F32        S8, S4, S8
16C7AE:  VLDR            S0, [R0,#0x44]
16C7B2:  VLDR            S6, [R1,#0x3AC]
16C7B6:  VLDR            S16, [R1,#8]
16C7BA:  VSUB.F32        S2, S2, S6
16C7BE:  VSUB.F32        S4, S4, S6
16C7C2:  VCMP.F32        S0, S16
16C7C6:  VADD.F32        S10, S8, S6
16C7CA:  VMRS            APSR_nzcv, FPSCR
16C7CE:  VADD.F32        S8, S12, S6
16C7D2:  IT GE
16C7D4:  VMOVGE.F32      S16, S0
16C7D8:  VLDR            S3, [SP,#0x160+var_CC]
16C7DC:  VLDR            S14, [SP,#0x160+var_C4]
16C7E0:  VCMP.F32        S3, S2
16C7E4:  VLDR            S12, [SP,#0x160+var_C0]
16C7E8:  VMRS            APSR_nzcv, FPSCR
16C7EC:  VLDR            S1, [SP,#0x160+var_C8]
16C7F0:  VSTR            S4, [SP,#0x160+var_94]
16C7F4:  VSTR            S2, [SP,#0x160+var_98]
16C7F8:  VSTR            S10, [SP,#0x160+var_8C]
16C7FC:  VSTR            S8, [SP,#0x160+var_90]
16C800:  ITT GE
16C802:  VCMPGE.F32      S1, S4
16C806:  VMRSGE          APSR_nzcv, FPSCR
16C80A:  BLT             loc_16C84C
16C80C:  VCMP.F32        S14, S8
16C810:  VMRS            APSR_nzcv, FPSCR
16C814:  ITT LS
16C816:  VCMPLS.F32      S12, S10
16C81A:  VMRSLS          APSR_nzcv, FPSCR
16C81E:  BHI             loc_16C84C
16C820:  VMOV.F32        S12, #-1.0
16C824:  VMOV.F32        S16, S0
16C828:  VSUB.F32        S6, S12, S6
16C82C:  VADD.F32        S10, S10, S6
16C830:  VADD.F32        S8, S8, S6
16C834:  VSUB.F32        S4, S4, S6
16C838:  VSUB.F32        S2, S2, S6
16C83C:  VSTR            S10, [SP,#0x160+var_8C]
16C840:  VSTR            S8, [SP,#0x160+var_90]
16C844:  VSTR            S4, [SP,#0x160+var_94]
16C848:  VSTR            S2, [SP,#0x160+var_98]
16C84C:  LDR             R2, [SP,#0x160+var_104]
16C84E:  MOVW            R1, #0x1518
16C852:  LDR.W           R4, [R0,#0x27C]
16C856:  VLDR            S0, [R10,#0xCC]
16C85A:  LDR             R2, [R2]
16C85C:  ADDS            R0, R2, R1
16C85E:  MOVS            R2, #0xC
16C860:  VLDR            S2, [R0]
16C864:  ADD.W           R0, R0, #0x37C
16C868:  VLD1.32         {D16-D17}, [R0]
16C86C:  ADD             R0, SP, #0x160+var_88
16C86E:  VMUL.F32        S0, S0, S2
16C872:  MOV             R1, R0
16C874:  VST1.64         {D16-D17}, [R1],R2
16C878:  VLDR            S2, [R1]
16C87C:  VMUL.F32        S0, S2, S0
16C880:  VSTR            S0, [R1]
16C884:  BL              sub_165778
16C888:  MOV             R3, R0
16C88A:  MOVS            R0, #0x40400000
16C890:  MOV.W           R1, #0xFFFFFFFF
16C894:  STRD.W          R1, R0, [SP,#0x160+var_15C]; int
16C898:  ADD             R1, SP, #0x160+var_98
16C89A:  ADD.W           R2, R1, #8
16C89E:  MOV             R0, R4
16C8A0:  VSTR            S16, [SP,#0x160+var_160]
16C8A4:  BL              sub_1740F8
16C8A8:  LDR             R5, [SP,#0x160+var_B4]
16C8AA:  VLDR            S2, [R5,#0xC]
16C8AE:  VLDR            S8, [R5,#0x58]
16C8B2:  VLDR            S0, [R5,#0x10]
16C8B6:  VSUB.F32        S14, S2, S8
16C8BA:  VLDR            S4, [R5,#0x5C]
16C8BE:  VLDR            S10, [R5,#0x3C]
16C8C2:  VSUB.F32        S12, S0, S4
16C8C6:  VLDR            S6, [R5,#0x40]
16C8CA:  VLDR            S1, =0.0
16C8CE:  LDR             R1, [R5,#8]
16C8D0:  ANDS.W          R0, R1, #1
16C8D4:  VADD.F32        S5, S14, S10
16C8D8:  VADD.F32        S3, S12, S6
16C8DC:  VSTR            S5, [R5,#0x220]
16C8E0:  VMOV.F32        S5, S1
16C8E4:  BNE             loc_16C904
16C8E6:  LDR             R2, [SP,#0x160+var_104]
16C8E8:  MOVW            R3, #0x1554
16C8EC:  VLDR            S9, [R5,#0x274]
16C8F0:  LDR             R2, [R2]
16C8F2:  ADD             R2, R3
16C8F4:  VLDR            S5, [R2]
16C8F8:  VLDR            S7, [R2,#0x378]
16C8FC:  VADD.F32        S5, S5, S5
16C900:  VMLA.F32        S5, S7, S9
16C904:  VADD.F32        S3, S3, S5
16C908:  ANDS.W          R1, R1, #0x400
16C90C:  BEQ             loc_16C934
16C90E:  LDR             R2, [SP,#0x160+var_104]
16C910:  MOVW            R3, #0x1554
16C914:  VLDR            S5, [R5,#0x274]
16C918:  VLDR            S1, [R5,#0x148]
16C91C:  LDR             R2, [R2]
16C91E:  ADD             R2, R3
16C920:  VLDR            S9, [R2,#0x378]
16C924:  VLDR            S7, [R2]
16C928:  VMLA.F32        S1, S9, S5
16C92C:  VADD.F32        S5, S7, S7
16C930:  VADD.F32        S1, S5, S1
16C934:  VADD.F32        S3, S3, S1
16C938:  VLDR            S1, [R5,#0x34]
16C93C:  VSUB.F32        S14, S14, S10
16C940:  VCMP.F32        S1, #0.0
16C944:  VMRS            APSR_nzcv, FPSCR
16C948:  VSTR            S3, [R5,#0x224]
16C94C:  BNE             loc_16C970
16C94E:  VLDR            S1, [R5,#0x14]
16C952:  VLDR            S5, [R5,#0x70]
16C956:  VLDR            S3, [R5,#0x48]
16C95A:  VSUB.F32        S1, S1, S5
16C95E:  VCMP.F32        S5, S3
16C962:  VMRS            APSR_nzcv, FPSCR
16C966:  IT MI
16C968:  VMOVMI.F32      S3, S5
16C96C:  VADD.F32        S1, S1, S3
16C970:  VADD.F32        S3, S14, S1
16C974:  VLDR            S1, [R5,#0x38]
16C978:  VSUB.F32        S14, S12, S6
16C97C:  VCMP.F32        S1, #0.0
16C980:  VMRS            APSR_nzcv, FPSCR
16C984:  VSTR            S3, [R5,#0x228]
16C988:  BNE             loc_16C9AC
16C98A:  VLDR            S12, [R5,#0x18]
16C98E:  VLDR            S3, [R5,#0x74]
16C992:  VLDR            S1, [R5,#0x48]
16C996:  VSUB.F32        S12, S12, S3
16C99A:  VCMP.F32        S3, S1
16C99E:  VMRS            APSR_nzcv, FPSCR
16C9A2:  IT MI
16C9A4:  VMOVMI.F32      S1, S3
16C9A8:  VADD.F32        S1, S12, S1
16C9AC:  VLDR            S12, =0.0
16C9B0:  MOVS            R2, #0
16C9B2:  STRD.W          R2, R2, [R5,#0x1B8]
16C9B6:  VADD.F32        S10, S10, S12
16C9BA:  VSUB.F32        S10, S10, S8
16C9BE:  VADD.F32        S8, S14, S1
16C9C2:  VSTR            S10, [R5,#0x1B4]
16C9C6:  VSTR            S8, [R5,#0x22C]
16C9CA:  VMOV.F32        S8, S12
16C9CE:  CBNZ            R0, loc_16C9F6
16C9D0:  B               loc_16C9D8
16C9D2:  ALIGN 4
16C9D4:  DCFS 0.0
16C9D8:  LDR             R0, [SP,#0x160+var_104]
16C9DA:  MOVW            R2, #0x1554
16C9DE:  VLDR            S1, [R5,#0x274]
16C9E2:  LDR             R0, [R0]
16C9E4:  ADD             R0, R2
16C9E6:  VLDR            S8, [R0]
16C9EA:  VLDR            S14, [R0,#0x378]
16C9EE:  VADD.F32        S8, S8, S8
16C9F2:  VMLA.F32        S8, S14, S1
16C9F6:  VADD.F32        S10, S10, S12
16C9FA:  VMOV.F32        S14, S12
16C9FE:  CBZ             R1, loc_16CA26
16CA00:  LDR             R0, [SP,#0x160+var_104]
16CA02:  MOVW            R1, #0x1554
16CA06:  VLDR            S1, [R5,#0x274]
16CA0A:  VLDR            S14, [R5,#0x148]
16CA0E:  LDR             R0, [R0]
16CA10:  ADD             R0, R1
16CA12:  VLDR            S5, [R0,#0x378]
16CA16:  VLDR            S3, [R0]
16CA1A:  VMLA.F32        S14, S5, S1
16CA1E:  VADD.F32        S1, S3, S3
16CA22:  VADD.F32        S14, S1, S14
16CA26:  VADD.F32        S8, S8, S14
16CA2A:  VLDR            S1, [R5,#0x74]
16CA2E:  VLDR            S14, [R5,#0x30]
16CA32:  VADD.F32        S2, S10, S2
16CA36:  MOVS            R6, #0
16CA38:  VMOV.I32        Q8, #0
16CA3C:  LDR.W           R0, [R5,#0x150]
16CA40:  ADD.W           R2, R5, #0xE8
16CA44:  LDR.W           R1, [R5,#0x13C]
16CA48:  MOVS            R4, #0x58 ; 'X'
16CA4A:  STRD.W          R6, R6, [R5,#0xF8]
16CA4E:  STRB.W          R6, [R5,#0x142]
16CA52:  VADD.F32        S6, S6, S8
16CA56:  VLDR            S8, [R5,#0x20]
16CA5A:  VSTR            S2, [R5,#0xD8]
16CA5E:  VSUB.F32        S8, S8, S1
16CA62:  VSUB.F32        S4, S6, S4
16CA66:  VSUB.F32        S6, S14, S8
16CA6A:  VADD.F32        S0, S0, S4
16CA6E:  VCMP.F32        S6, #0.0
16CA72:  VMRS            APSR_nzcv, FPSCR
16CA76:  IT LS
16CA78:  VMOVLS.F32      S6, S12
16CA7C:  VST1.32         {D16-D17}, [R2],R4
16CA80:  VCMP.F32        S6, #0.0
16CA84:  MOVS            R4, #0x18
16CA86:  STRD.W          R1, R6, [R5,#0x138]
16CA8A:  VMRS            APSR_nzcv, FPSCR
16CA8E:  VSTR            S0, [R5,#0xDC]
16CA92:  LDR.W           R1, [R5,#0xD8]
16CA96:  LDR.W           R3, [R5,#0xDC]
16CA9A:  STRB            R6, [R2]
16CA9C:  MOV.W           R2, #0
16CAA0:  IT GT
16CAA2:  MOVGT           R2, #1
16CAA4:  STRB.W          R2, [R5,#0x141]
16CAA8:  VMOV            D16, R1, R3
16CAAC:  ADD.W           R2, R5, #0xC8
16CAB0:  VMOV            D17, D16
16CAB4:  CMP.W           R0, #0xFFFFFFFF
16CAB8:  VST1.32         {D16-D17}, [R2],R4
16CABC:  MOV             R4, R5
16CABE:  STRD.W          R1, R3, [R2]
16CAC2:  BGT             loc_16CB3E
16CAC4:  LDR             R0, [SP,#0x160+var_104]
16CAC6:  LDR             R0, [R0]
16CAC8:  CBZ             R0, loc_16CAD4
16CACA:  LDR.W           R1, [R0,#0x370]
16CACE:  ADDS            R1, #1
16CAD0:  STR.W           R1, [R0,#0x370]
16CAD4:  LDR             R4, =(dword_381B60 - 0x16CAE0)
16CAD6:  MOV.W           R9, #0
16CADA:  LDR             R0, =(off_2390AC - 0x16CAE2)
16CADC:  ADD             R4, PC; dword_381B60
16CADE:  ADD             R0, PC; off_2390AC
16CAE0:  LDR             R1, [R4]
16CAE2:  LDR             R2, [R0]; sub_171190
16CAE4:  MOVS            R0, #0
16CAE6:  BLX             R2; sub_171190
16CAE8:  LDR.W           R1, [R5,#0x154]; src
16CAEC:  MOV             R8, R0
16CAEE:  CBZ             R1, loc_16CB30
16CAF0:  B               loc_16CAFC
16CAF2:  ALIGN 4
16CAF4:  DCD dword_381B60 - 0x16CAE0
16CAF8:  DCD off_2390AC - 0x16CAE2
16CAFC:  LDR.W           R0, [R5,#0x14C]
16CB00:  LSLS            R2, R0, #2; n
16CB02:  MOV             R0, R8; dest
16CB04:  BLX             j_memcpy
16CB08:  LDR.W           R0, [R5,#0x154]
16CB0C:  CBZ             R0, loc_16CB1E
16CB0E:  LDR             R1, [SP,#0x160+var_104]
16CB10:  LDR             R1, [R1]
16CB12:  CBZ             R1, loc_16CB1E
16CB14:  LDR.W           R2, [R1,#0x370]
16CB18:  SUBS            R2, #1
16CB1A:  STR.W           R2, [R1,#0x370]
16CB1E:  LDR             R2, =(off_2390B0 - 0x16CB26)
16CB20:  LDR             R1, [R4]
16CB22:  ADD             R2, PC; off_2390B0
16CB24:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16CB26:  BLX             R2; j_opus_decoder_destroy_0
16CB28:  B               loc_16CB30
16CB2A:  ALIGN 4
16CB2C:  DCD off_2390B0 - 0x16CB26
16CB30:  STRD.W          R9, R8, [R5,#0x150]
16CB34:  LDR             R4, [SP,#0x160+var_B4]
16CB36:  LDR.W           R9, [SP,#0x160+var_124]
16CB3A:  LDR.W           R8, [SP,#0x160+var_118]
16CB3E:  MOVS            R0, #1
16CB40:  CMP.W           R8, #0
16CB44:  STR.W           R0, [R4,#0x15C]
16CB48:  MOV.W           R3, #0xFFFFFFFF
16CB4C:  STR.W           R6, [R5,#0x14C]
16CB50:  ITT NE
16CB52:  LDRNE.W         R0, [R8,#0x15C]
16CB56:  LDRNE.W         R6, [R8,#0x16C]
16CB5A:  LDR.W           R1, [R4,#0x17C]
16CB5E:  MOVW            R8, #0
16CB62:  STRD.W          R3, R6, [R4,#0x168]
16CB66:  LDR.W           R2, [R4,#0x234]
16CB6A:  MOVT            R8, #0xBF80
16CB6E:  CMP.W           R1, #0xFFFFFFFF
16CB72:  MOV             R6, R4
16CB74:  STRD.W          R0, R3, [R4,#0x160]
16CB78:  STRD.W          R2, R8, [R4,#0x170]
16CB7C:  BGT             loc_16CBE0
16CB7E:  LDR             R0, [SP,#0x160+var_104]
16CB80:  LDR             R0, [R0]
16CB82:  CBZ             R0, loc_16CB8E
16CB84:  LDR.W           R1, [R0,#0x370]
16CB88:  ADDS            R1, #1
16CB8A:  STR.W           R1, [R0,#0x370]
16CB8E:  LDR             R6, =(dword_381B60 - 0x16CB9A)
16CB90:  MOV.W           R9, #0
16CB94:  LDR             R0, =(off_2390AC - 0x16CB9C)
16CB96:  ADD             R6, PC; dword_381B60
16CB98:  ADD             R0, PC; off_2390AC
16CB9A:  LDR             R1, [R6]
16CB9C:  LDR             R2, [R0]; sub_171190
16CB9E:  MOVS            R0, #0
16CBA0:  BLX             R2; sub_171190
16CBA2:  LDR.W           R1, [R4,#0x180]; src
16CBA6:  MOV             R5, R0
16CBA8:  CBZ             R1, loc_16CBD6
16CBAA:  LDR.W           R0, [R4,#0x178]
16CBAE:  LSLS            R2, R0, #2; n
16CBB0:  MOV             R0, R5; dest
16CBB2:  BLX             j_memcpy
16CBB6:  LDR.W           R0, [R4,#0x180]
16CBBA:  CBZ             R0, loc_16CBCC
16CBBC:  LDR             R1, [SP,#0x160+var_104]
16CBBE:  LDR             R1, [R1]
16CBC0:  CBZ             R1, loc_16CBCC
16CBC2:  LDR.W           R2, [R1,#0x370]
16CBC6:  SUBS            R2, #1
16CBC8:  STR.W           R2, [R1,#0x370]
16CBCC:  LDR             R2, =(off_2390B0 - 0x16CBD4)
16CBCE:  LDR             R1, [R6]
16CBD0:  ADD             R2, PC; off_2390B0
16CBD2:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16CBD4:  BLX             R2; j_opus_decoder_destroy_0
16CBD6:  STRD.W          R9, R5, [R4,#0x17C]
16CBDA:  LDR             R6, [SP,#0x160+var_B4]
16CBDC:  LDR.W           R9, [SP,#0x160+var_124]
16CBE0:  LDR.W           R0, [R6,#0x188]
16CBE4:  MOVS            R5, #0
16CBE6:  STR.W           R5, [R4,#0x178]
16CBEA:  MOV             R4, R6
16CBEC:  CMP.W           R0, #0xFFFFFFFF
16CBF0:  BGT             loc_16CC54
16CBF2:  LDR             R0, [SP,#0x160+var_104]
16CBF4:  LDR             R0, [R0]
16CBF6:  CBZ             R0, loc_16CC02
16CBF8:  LDR.W           R1, [R0,#0x370]
16CBFC:  ADDS            R1, #1
16CBFE:  STR.W           R1, [R0,#0x370]
16CC02:  LDR             R4, =(dword_381B60 - 0x16CC0E)
16CC04:  MOV.W           R10, #0
16CC08:  LDR             R0, =(off_2390AC - 0x16CC10)
16CC0A:  ADD             R4, PC; dword_381B60
16CC0C:  ADD             R0, PC; off_2390AC
16CC0E:  LDR             R1, [R4]
16CC10:  LDR             R2, [R0]; sub_171190
16CC12:  MOVS            R0, #0
16CC14:  BLX             R2; sub_171190
16CC16:  LDR.W           R1, [R6,#0x18C]; src
16CC1A:  MOV             R9, R0
16CC1C:  CBZ             R1, loc_16CC4A
16CC1E:  LDR.W           R0, [R6,#0x184]
16CC22:  LSLS            R2, R0, #2; n
16CC24:  MOV             R0, R9; dest
16CC26:  BLX             j_memcpy
16CC2A:  LDR.W           R0, [R6,#0x18C]
16CC2E:  CBZ             R0, loc_16CC40
16CC30:  LDR             R1, [SP,#0x160+var_104]
16CC32:  LDR             R1, [R1]
16CC34:  CBZ             R1, loc_16CC40
16CC36:  LDR.W           R2, [R1,#0x370]
16CC3A:  SUBS            R2, #1
16CC3C:  STR.W           R2, [R1,#0x370]
16CC40:  LDR             R2, =(off_2390B0 - 0x16CC48)
16CC42:  LDR             R1, [R4]
16CC44:  ADD             R2, PC; off_2390B0
16CC46:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16CC48:  BLX             R2; j_opus_decoder_destroy_0
16CC4A:  STRD.W          R10, R9, [R6,#0x188]
16CC4E:  LDR             R4, [SP,#0x160+var_B4]
16CC50:  LDR.W           R9, [SP,#0x160+var_124]
16CC54:  LDR.W           R0, [R4,#0x194]
16CC58:  STR.W           R5, [R6,#0x184]
16CC5C:  MOV             R5, R4
16CC5E:  CMP.W           R0, #0xFFFFFFFF
16CC62:  BGT             loc_16CCC6
16CC64:  LDR             R0, [SP,#0x160+var_104]
16CC66:  LDR             R0, [R0]
16CC68:  CBZ             R0, loc_16CC74
16CC6A:  LDR.W           R1, [R0,#0x370]
16CC6E:  ADDS            R1, #1
16CC70:  STR.W           R1, [R0,#0x370]
16CC74:  LDR             R5, =(dword_381B60 - 0x16CC80)
16CC76:  MOV.W           R9, #0
16CC7A:  LDR             R0, =(off_2390AC - 0x16CC82)
16CC7C:  ADD             R5, PC; dword_381B60
16CC7E:  ADD             R0, PC; off_2390AC
16CC80:  LDR             R1, [R5]
16CC82:  LDR             R2, [R0]; sub_171190
16CC84:  MOVS            R0, #0
16CC86:  BLX             R2; sub_171190
16CC88:  LDR.W           R1, [R4,#0x198]; src
16CC8C:  MOV             R6, R0
16CC8E:  CBZ             R1, loc_16CCBC
16CC90:  LDR.W           R0, [R4,#0x190]
16CC94:  LSLS            R2, R0, #2; n
16CC96:  MOV             R0, R6; dest
16CC98:  BLX             j_memcpy
16CC9C:  LDR.W           R0, [R4,#0x198]
16CCA0:  CBZ             R0, loc_16CCB2
16CCA2:  LDR             R1, [SP,#0x160+var_104]
16CCA4:  LDR             R1, [R1]
16CCA6:  CBZ             R1, loc_16CCB2
16CCA8:  LDR.W           R2, [R1,#0x370]
16CCAC:  SUBS            R2, #1
16CCAE:  STR.W           R2, [R1,#0x370]
16CCB2:  LDR             R2, =(off_2390B0 - 0x16CCBA)
16CCB4:  LDR             R1, [R5]
16CCB6:  ADD             R2, PC; off_2390B0
16CCB8:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16CCBA:  BLX             R2; j_opus_decoder_destroy_0
16CCBC:  STRD.W          R9, R6, [R4,#0x194]
16CCC0:  LDR             R5, [SP,#0x160+var_B4]
16CCC2:  LDR.W           R9, [SP,#0x160+var_124]
16CCC6:  MOVS            R6, #0
16CCC8:  ADD.W           R1, R5, #0x25C
16CCCC:  STR.W           R6, [R5,#0x1C0]
16CCD0:  STR.W           R6, [R4,#0x190]
16CCD4:  LDR.W           R0, [R5,#0x1A0]
16CCD8:  STR.W           R1, [R5,#0x158]
16CCDC:  CMP.W           R0, #0xFFFFFFFF
16CCE0:  MOV             R0, R5
16CCE2:  STRD.W          R6, R6, [R5,#0x100]
16CCE6:  BGT             loc_16CD50
16CCE8:  LDR             R0, [SP,#0x160+var_104]
16CCEA:  LDR             R0, [R0]
16CCEC:  CBZ             R0, loc_16CCF8
16CCEE:  LDR.W           R1, [R0,#0x370]
16CCF2:  ADDS            R1, #1
16CCF4:  STR.W           R1, [R0,#0x370]
16CCF8:  LDR             R1, =(dword_381B60 - 0x16CD04)
16CCFA:  MOV.W           R9, #0
16CCFE:  LDR             R0, =(off_2390AC - 0x16CD06)
16CD00:  ADD             R1, PC; dword_381B60
16CD02:  ADD             R0, PC; off_2390AC
16CD04:  MOV             R10, R1
16CD06:  LDR             R1, [R1]
16CD08:  LDR             R2, [R0]; sub_171190
16CD0A:  MOVS            R0, #0
16CD0C:  BLX             R2; sub_171190
16CD0E:  LDR.W           R1, [R5,#0x1A4]; src
16CD12:  MOV             R4, R0
16CD14:  CBZ             R1, loc_16CD46
16CD16:  LDR.W           R0, [R5,#0x19C]
16CD1A:  MOVS            R2, #0x2C ; ','
16CD1C:  MULS            R2, R0; n
16CD1E:  MOV             R0, R4; dest
16CD20:  BLX             j_memcpy
16CD24:  LDR.W           R0, [R5,#0x1A4]
16CD28:  CBZ             R0, loc_16CD3A
16CD2A:  LDR             R1, [SP,#0x160+var_104]
16CD2C:  LDR             R1, [R1]
16CD2E:  CBZ             R1, loc_16CD3A
16CD30:  LDR.W           R2, [R1,#0x370]
16CD34:  SUBS            R2, #1
16CD36:  STR.W           R2, [R1,#0x370]
16CD3A:  LDR             R2, =(off_2390B0 - 0x16CD44)
16CD3C:  LDR.W           R1, [R10]
16CD40:  ADD             R2, PC; off_2390B0
16CD42:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16CD44:  BLX             R2; j_opus_decoder_destroy_0
16CD46:  STRD.W          R9, R4, [R5,#0x1A0]
16CD4A:  LDR             R0, [SP,#0x160+var_B4]
16CD4C:  LDR.W           R9, [SP,#0x160+var_124]
16CD50:  LDR             R1, [SP,#0x160+var_10C]
16CD52:  ADD.W           R0, R0, #0x238
16CD56:  LDR             R3, [SP,#0x160+var_128]
16CD58:  LDR             R2, [R1,#0x44]
16CD5A:  MOVS            R1, #3
16CD5C:  STR.W           R6, [R5,#0x19C]
16CD60:  BL              sub_17BDB8
16CD64:  LDR             R0, [SP,#0x160+var_114]
16CD66:  CMP             R0, #0
16CD68:  BEQ             loc_16CE18
16CD6A:  LDR             R0, [SP,#0x160+var_118]
16CD6C:  LDR             R5, [SP,#0x160+var_B4]
16CD6E:  LDR.W           R1, [R0,#0x16C]
16CD72:  LDR.W           R0, [R5,#0x16C]
16CD76:  CMP             R0, R1
16CD78:  BEQ             loc_16CE18
16CD7A:  LDRD.W          R0, R2, [R5,#0x178]
16CD7E:  STR.W           R1, [R5,#0x16C]
16CD82:  CMP             R0, R2
16CD84:  BNE             loc_16CE02
16CD86:  CMP             R0, #0
16CD88:  ADD.W           R6, R0, #1
16CD8C:  ITTE NE
16CD8E:  ADDNE.W         R1, R0, R0,LSR#31
16CD92:  ADDNE.W         R1, R0, R1,ASR#1
16CD96:  MOVEQ           R1, #8
16CD98:  CMP             R1, R6
16CD9A:  IT GT
16CD9C:  MOVGT           R6, R1
16CD9E:  CMP             R0, R6
16CDA0:  BGE             loc_16CE02
16CDA2:  LDR             R0, [SP,#0x160+var_104]
16CDA4:  LDR             R1, [R0]
16CDA6:  LSLS            R0, R6, #2
16CDA8:  CBZ             R1, loc_16CDB4
16CDAA:  LDR.W           R2, [R1,#0x370]
16CDAE:  ADDS            R2, #1
16CDB0:  STR.W           R2, [R1,#0x370]
16CDB4:  LDR             R4, =(dword_381B60 - 0x16CDBC)
16CDB6:  LDR             R2, =(off_2390AC - 0x16CDBE)
16CDB8:  ADD             R4, PC; dword_381B60
16CDBA:  ADD             R2, PC; off_2390AC
16CDBC:  LDR             R1, [R4]
16CDBE:  LDR             R2, [R2]; sub_171190
16CDC0:  BLX             R2; sub_171190
16CDC2:  LDR.W           R1, [R5,#0x180]; src
16CDC6:  MOV             R9, R0
16CDC8:  CBZ             R1, loc_16CDF6
16CDCA:  LDR.W           R0, [R5,#0x178]
16CDCE:  LSLS            R2, R0, #2; n
16CDD0:  MOV             R0, R9; dest
16CDD2:  BLX             j_memcpy
16CDD6:  LDR.W           R0, [R5,#0x180]
16CDDA:  CBZ             R0, loc_16CDEC
16CDDC:  LDR             R1, [SP,#0x160+var_104]
16CDDE:  LDR             R1, [R1]
16CDE0:  CBZ             R1, loc_16CDEC
16CDE2:  LDR.W           R2, [R1,#0x370]
16CDE6:  SUBS            R2, #1
16CDE8:  STR.W           R2, [R1,#0x370]
16CDEC:  LDR             R2, =(off_2390B0 - 0x16CDF4)
16CDEE:  LDR             R1, [R4]
16CDF0:  ADD             R2, PC; off_2390B0
16CDF2:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16CDF4:  BLX             R2; j_opus_decoder_destroy_0
16CDF6:  STRD.W          R6, R9, [R5,#0x17C]
16CDFA:  LDR.W           R0, [R5,#0x178]
16CDFE:  LDR.W           R9, [SP,#0x160+var_124]
16CE02:  LDR.W           R2, [R5,#0x180]
16CE06:  LDR.W           R1, [R5,#0x16C]
16CE0A:  STR.W           R1, [R2,R0,LSL#2]
16CE0E:  LDR.W           R0, [R5,#0x178]
16CE12:  ADDS            R0, #1
16CE14:  STR.W           R0, [R5,#0x178]
16CE18:  LDR             R0, [SP,#0x160+var_B4]
16CE1A:  AND.W           R4, R9, #1
16CE1E:  LDR.W           R1, [R0,#0x90]
16CE22:  CMP             R1, #1
16CE24:  ITT GE
16CE26:  SUBGE           R1, #1
16CE28:  STRGE.W         R1, [R0,#0x90]
16CE2C:  LDR.W           R1, [R0,#0x94]
16CE30:  LDR             R5, [SP,#0x160+var_144]
16CE32:  CMP             R1, #1
16CE34:  ITT GE
16CE36:  SUBGE           R1, #1
16CE38:  STRGE.W         R1, [R0,#0x94]
16CE3C:  LDR             R1, [SP,#0x160+var_130]
16CE3E:  CBZ             R1, loc_16CE4C
16CE40:  BL              sub_168010
16CE44:  LDR             R0, [SP,#0x160+var_B4]
16CE46:  MOVS            R1, #0
16CE48:  BL              sub_16F910
16CE4C:  CMP             R4, #0
16CE4E:  BNE.W           loc_16D1B6
16CE52:  LDR             R2, [SP,#0x160+var_104]
16CE54:  MOVS            R1, #2
16CE56:  LDR             R4, [SP,#0x160+var_B4]
16CE58:  MOVS            R3, #1
16CE5A:  MOVW            R0, #0x18C8
16CE5E:  LDR             R2, [R2]
16CE60:  STRD.W          R3, R1, [R4,#0x130]
16CE64:  MOVW            R1, #0x1550
16CE68:  ADD             R1, R2
16CE6A:  ADD             R0, R2
16CE6C:  LDR.W           R5, [R4,#0x16C]
16CE70:  VLDR            S16, [R1]
16CE74:  VLDR            S0, [R0]
16CE78:  ORR.W           R0, R5, #0x10
16CE7C:  VMOV.F32        S18, S16
16CE80:  STR.W           R0, [R4,#0x16C]
16CE84:  MOVS            R0, #0
16CE86:  LDR.W           R9, [R4,#8]
16CE8A:  LDR             R1, [SP,#0x160+var_12C]
16CE8C:  STRD.W          R0, R0, [SP,#0x160+var_68]
16CE90:  STRD.W          R0, R0, [SP,#0x160+var_70]
16CE94:  MOVW            R0, #0x1534
16CE98:  ADDS            R6, R2, R0
16CE9A:  AND.W           R0, R9, #0x20 ; ' '
16CE9E:  CBZ             R1, loc_16CEB8
16CEA0:  VADD.F32        S18, S16, S0
16CEA4:  VLDR            S2, [SP,#0x160+var_F8]
16CEA8:  LDR             R1, [SP,#0x160+var_FC]
16CEAA:  STR             R1, [SP,#0x160+var_64]
16CEAC:  VSUB.F32        S2, S2, S18
16CEB0:  VSUB.F32        S2, S2, S16
16CEB4:  VSTR            S2, [SP,#0x160+var_68]
16CEB8:  CMP             R0, #0
16CEBA:  BNE             loc_16CF4E
16CEBC:  LDR             R0, [R6,#8]
16CEBE:  CBZ             R0, loc_16CF1C
16CEC0:  CMP             R0, #1
16CEC2:  BNE             loc_16CF34
16CEC4:  VADD.F32        S18, S0, S18
16CEC8:  VLDR            S0, [SP,#0x160+var_F8]
16CECC:  LDR             R0, [SP,#0x160+var_FC]
16CECE:  STR             R0, [SP,#0x160+var_6C]
16CED0:  VSUB.F32        S0, S0, S18
16CED4:  VSUB.F32        S0, S0, S16
16CED8:  VSTR            S0, [SP,#0x160+var_70]
16CEDC:  B               loc_16CF34
16CEDE:  ALIGN 0x10
16CEE0:  DCD dword_381B60 - 0x16CB9A
16CEE4:  DCD off_2390AC - 0x16CB9C
16CEE8:  DCD off_2390B0 - 0x16CBD4
16CEEC:  DCD dword_381B60 - 0x16CC0E
16CEF0:  DCD off_2390AC - 0x16CC10
16CEF4:  DCD off_2390B0 - 0x16CC48
16CEF8:  DCD dword_381B60 - 0x16CC80
16CEFC:  DCD off_2390AC - 0x16CC82
16CF00:  DCD off_2390B0 - 0x16CCBA
16CF04:  DCD dword_381B60 - 0x16CD04
16CF08:  DCD off_2390AC - 0x16CD06
16CF0C:  DCD off_2390B0 - 0x16CD44
16CF10:  DCD dword_381B60 - 0x16CDBC
16CF14:  DCD off_2390AC - 0x16CDBE
16CF18:  DCD off_2390B0 - 0x16CDF4
16CF1C:  VLDR            S2, [SP,#0x160+var_100]
16CF20:  LDR             R0, [SP,#0x160+var_FC]
16CF22:  VADD.F32        S2, S16, S2
16CF26:  STR             R0, [SP,#0x160+var_6C]
16CF28:  VSUB.F32        S2, S2, S16
16CF2C:  VADD.F32        S16, S16, S0
16CF30:  VSTR            S2, [SP,#0x160+var_70]
16CF34:  LDR             R1, =(aCollapse - 0x16CF3E); "#COLLAPSE" ...
16CF36:  MOV             R0, R4
16CF38:  MOVS            R2, #0
16CF3A:  ADD             R1, PC; "#COLLAPSE"
16CF3C:  BL              sub_166AD4
16CF40:  ADD             R1, SP, #0x160+var_70
16CF42:  BL              sub_17B36C
16CF46:  CBZ             R0, loc_16CF4E
16CF48:  MOVS            R0, #1
16CF4A:  STRB.W          R0, [R4,#0x7E]
16CF4E:  LDR             R0, [SP,#0x160+var_12C]
16CF50:  CBZ             R0, loc_16CF70
16CF52:  LDR             R1, =(aClose_1 - 0x16CF60); "#CLOSE" ...
16CF54:  MOV             R0, R4
16CF56:  MOVS            R2, #0
16CF58:  MOV.W           R10, #0
16CF5C:  ADD             R1, PC; "#CLOSE"
16CF5E:  BL              sub_166AD4
16CF62:  ADD             R1, SP, #0x160+var_68
16CF64:  BL              sub_17B1A4
16CF68:  CBZ             R0, loc_16CF70
16CF6A:  LDR             R0, [SP,#0x160+var_12C]
16CF6C:  STRB.W          R10, [R0]
16CF70:  VLDR            S24, =0.0
16CF74:  ANDS.W          R9, R9, #0x100000
16CF78:  MOV.W           R0, #1
16CF7C:  MOV.W           R1, #0
16CF80:  VMOV.F32        S22, S24
16CF84:  STR.W           R5, [R4,#0x16C]
16CF88:  STRD.W          R1, R0, [R4,#0x130]
16CF8C:  BEQ             loc_16CFA4
16CF8E:  LDR             R1, =(asc_879DB - 0x16CF9A); "*" ...
16CF90:  ADD             R0, SP, #0x160+var_88; int
16CF92:  MOVS            R2, #0; int
16CF94:  MOVS            R3, #0; int
16CF96:  ADD             R1, PC; "*"
16CF98:  STR.W           R8, [SP,#0x160+var_160]; float
16CF9C:  BL              sub_1660A4
16CFA0:  VLDR            S22, [SP,#0x160+var_88]
16CFA4:  LDR             R4, [SP,#0x160+s1]
16CFA6:  ADD.W           R10, SP, #0x160+var_88
16CFAA:  MOVS            R2, #0; int
16CFAC:  MOVS            R3, #1; int
16CFAE:  MOV             R0, R10; int
16CFB0:  STR.W           R8, [SP,#0x160+var_160]; float
16CFB4:  MOV             R1, R4; int
16CFB6:  BL              sub_1660A4
16CFBA:  VLDR            S0, [SP,#0x160+var_88]
16CFBE:  VLDR            S2, [SP,#0x160+var_84]
16CFC2:  VADD.F32        S0, S22, S0
16CFC6:  VADD.F32        S2, S2, S24
16CFCA:  VSTR            S0, [SP,#0x160+var_78]
16CFCE:  VSTR            S2, [SP,#0x160+var_74]
16CFD2:  VLDR            S2, [R6,#0x1C]
16CFD6:  VCMP.F32        S16, S2
16CFDA:  VMRS            APSR_nzcv, FPSCR
16CFDE:  VCMP.F32        S18, S2
16CFE2:  ITT GT
16CFE4:  VLDRGT          S4, [R6,#0x34]
16CFE8:  VADDGT.F32      S16, S16, S4
16CFEC:  VMRS            APSR_nzcv, FPSCR
16CFF0:  ITT GT
16CFF2:  VLDRGT          S2, [R6,#0x34]
16CFF6:  VADDGT.F32      S18, S18, S2
16CFFA:  VLDR            S2, [R6]
16CFFE:  VCMP.F32        S2, #0.0
16D002:  VMRS            APSR_nzcv, FPSCR
16D006:  BLE             loc_16D0B0
16D008:  VCMP.F32        S2, S20
16D00C:  VMRS            APSR_nzcv, FPSCR
16D010:  BPL             loc_16D0B0
16D012:  VMOV.F32        S4, #-0.5
16D016:  VLDR            S12, =0.0
16D01A:  VCMP.F32        S16, S18
16D01E:  VMRS            APSR_nzcv, FPSCR
16D022:  VMOV.F32        S10, S18
16D026:  VADD.F32        S6, S2, S4
16D02A:  VLDR            S2, [SP,#0x160+var_100]
16D02E:  VLDR            S4, [SP,#0x160+var_F8]
16D032:  IT GE
16D034:  VMOVGE.F32      S10, S16
16D038:  VSUB.F32        S8, S4, S2
16D03C:  VABS.F32        S6, S6
16D040:  VSUB.F32        S8, S8, S16
16D044:  VADD.F32        S6, S6, S6
16D048:  VSUB.F32        S8, S8, S18
16D04C:  VSUB.F32        S6, S20, S6
16D050:  VSUB.F32        S0, S8, S0
16D054:  VCMP.F32        S6, S20
16D058:  VMRS            APSR_nzcv, FPSCR
16D05C:  VMOV.F32        S8, S6
16D060:  IT GT
16D062:  VMOVGT.F32      S8, S20
16D066:  VCMP.F32        S10, S0
16D06A:  VMRS            APSR_nzcv, FPSCR
16D06E:  IT MI
16D070:  VMOVMI.F32      S0, S10
16D074:  VCMP.F32        S6, #0.0
16D078:  VMRS            APSR_nzcv, FPSCR
16D07C:  IT MI
16D07E:  VMOVMI.F32      S8, S12
16D082:  VMUL.F32        S0, S8, S0
16D086:  VCMP.F32        S18, S0
16D08A:  VMRS            APSR_nzcv, FPSCR
16D08E:  VMOV.F32        S6, S0
16D092:  VCMP.F32        S16, S0
16D096:  IT GE
16D098:  VMOVGE.F32      S6, S18
16D09C:  VMRS            APSR_nzcv, FPSCR
16D0A0:  IT GE
16D0A2:  VMOVGE.F32      S0, S16
16D0A6:  VMOV.F32        S18, S6
16D0AA:  VMOV.F32        S16, S0
16D0AE:  B               loc_16D0B8
16D0B0:  VLDR            S2, [SP,#0x160+var_100]
16D0B4:  VLDR            S4, [SP,#0x160+var_F8]
16D0B8:  VSUB.F32        S0, S4, S18
16D0BC:  VLDR            S4, [SP,#0x160+var_FC]
16D0C0:  VADD.F32        S2, S2, S16
16D0C4:  VLDR            S6, [SP,#0x160+var_F4]
16D0C8:  VSTR            S4, [SP,#0x160+var_84]
16D0CC:  ADD             R0, SP, #0x160+var_78
16D0CE:  VSTR            S6, [SP,#0x160+var_7C]
16D0D2:  ADD.W           R1, R10, #8; int
16D0D6:  MOV             R2, R4; int
16D0D8:  MOVS            R3, #0; int
16D0DA:  ADD             R5, SP, #0x160+var_98
16D0DC:  MOV.W           R8, #0
16D0E0:  VSTR            S0, [SP,#0x160+var_80]
16D0E4:  VSTR            S2, [SP,#0x160+var_88]
16D0E8:  VLDR            S8, [R6,#0x34]
16D0EC:  STRD.W          R0, R6, [SP,#0x160+var_160]; int
16D0F0:  MOV             R0, R10; int
16D0F2:  VADD.F32        S0, S0, S8
16D0F6:  VSTR            S6, [SP,#0x160+var_8C]
16D0FA:  VSTR            S4, [SP,#0x160+var_94]
16D0FE:  VSTR            S2, [SP,#0x160+var_98]
16D102:  STR             R5, [SP,#0x160+var_158]; int
16D104:  VSTR            S0, [SP,#0x160+var_90]
16D108:  BL              sub_166154
16D10C:  CMP.W           R9, #0
16D110:  BEQ             loc_16D1B0
16D112:  VLDR            S0, [SP,#0x160+var_88]
16D116:  ADD             R1, SP, #0x160+var_A8; int
16D118:  VLDR            S4, [SP,#0x160+var_80]
16D11C:  MOVS            R3, #0; int
16D11E:  VLDR            S10, [SP,#0x160+var_78]
16D122:  VMOV.F32        S1, S0
16D126:  VSUB.F32        S8, S4, S0
16D12A:  VLDR            S12, [R6]
16D12E:  VLDR            S14, [R6,#0x394]
16D132:  VLDR            S2, [SP,#0x160+var_84]
16D136:  VLDR            S6, [SP,#0x160+var_7C]
16D13A:  VSUB.F32        S8, S8, S10
16D13E:  VMLA.F32        S1, S8, S12
16D142:  VMOV.F32        S8, #-0.25
16D146:  VMOV.F32        S12, #2.0
16D14A:  VCMP.F32        S0, S1
16D14E:  VMRS            APSR_nzcv, FPSCR
16D152:  IT GE
16D154:  VMOVGE.F32      S1, S0
16D158:  VMUL.F32        S0, S14, S8
16D15C:  LDR             R2, =(asc_879DB - 0x16D16E); "*" ...
16D15E:  VSUB.F32        S8, S12, S22
16D162:  VLDR            S12, =0.0
16D166:  VADD.F32        S10, S10, S1
16D16A:  ADD             R2, PC; "*"
16D16C:  VADD.F32        S2, S2, S12
16D170:  VADD.F32        S4, S4, S12
16D174:  VCVT.S32.F32    S0, S0
16D178:  VADD.F32        S8, S8, S10
16D17C:  VSTR            S4, [SP,#0x160+var_A8]
16D180:  VCVT.F32.S32    S0, S0
16D184:  VADD.F32        S8, S8, S12
16D188:  VADD.F32        S2, S2, S0
16D18C:  VADD.F32        S0, S6, S0
16D190:  VSTR            S8, [SP,#0x160+var_A0]
16D194:  VSTR            S2, [SP,#0x160+var_9C]
16D198:  LDR             R0, [R6,#4]
16D19A:  VSTR            S0, [SP,#0x160+var_A4]
16D19E:  STR             R5, [SP,#0x160+var_158]; int
16D1A0:  STRD.W          R8, R0, [SP,#0x160+var_B0]
16D1A4:  ADD             R0, SP, #0x160+var_B0
16D1A6:  STRD.W          R8, R0, [SP,#0x160+var_160]; int
16D1AA:  ADD             R0, SP, #0x160+var_A0; int
16D1AC:  BL              sub_166154
16D1B0:  LDR.W           R9, [SP,#0x160+var_124]
16D1B4:  LDR             R5, [SP,#0x160+var_144]
16D1B6:  LDR             R0, [SP,#0x160+var_104]
16D1B8:  VLDR            S4, [SP,#0x160+var_100]
16D1BC:  LDR             R1, [SP,#0x160+var_B4]
16D1BE:  LDR             R2, [R0]
16D1C0:  MOVW            R0, #0x1570
16D1C4:  ADD             R0, R2
16D1C6:  VLDR            S2, [R0]
16D1CA:  VLDR            S0, [R0,#4]
16D1CE:  VSUB.F32        S6, S4, S2
16D1D2:  LDR             R0, [R1,#0x50]
16D1D4:  STR.W           R0, [R1,#0x108]
16D1D8:  MOVS            R0, #0
16D1DA:  VLDR            S4, [R2,#0xE0]
16D1DE:  VCMP.F32        S4, S6
16D1E2:  VMRS            APSR_nzcv, FPSCR
16D1E6:  BLT             loc_16D232
16D1E8:  VLDR            S8, [SP,#0x160+var_F8]
16D1EC:  MOVS            R3, #0
16D1EE:  VLDR            S6, [SP,#0x160+var_FC]
16D1F2:  VADD.F32        S2, S2, S8
16D1F6:  VLDR            S10, [SP,#0x160+var_F4]
16D1FA:  VSUB.F32        S6, S6, S0
16D1FE:  VLDR            S8, [R2,#0xE4]
16D202:  VADD.F32        S0, S0, S10
16D206:  MOVS            R2, #0
16D208:  VCMP.F32        S4, S2
16D20C:  VMRS            APSR_nzcv, FPSCR
16D210:  VCMP.F32        S8, S6
16D214:  IT MI
16D216:  MOVMI           R2, #1
16D218:  VMRS            APSR_nzcv, FPSCR
16D21C:  VCMP.F32        S8, S0
16D220:  IT GE
16D222:  MOVGE           R3, #1
16D224:  VMRS            APSR_nzcv, FPSCR
16D228:  AND.W           R2, R2, R3
16D22C:  IT MI
16D22E:  MOVMI           R0, #1
16D230:  ANDS            R0, R2
16D232:  ADD             R2, SP, #0x160+var_100
16D234:  STR.W           R0, [R1,#0x10C]
16D238:  VLD1.64         {D16-D17}, [R2]
16D23C:  ADD.W           R0, R1, #0x110
16D240:  MOVS            R2, #0xF0
16D242:  ADD.W           R1, R1, #0x208
16D246:  VST1.32         {D16-D17}, [R0],R2
16D24A:  MOVS            R2, #1
16D24C:  BL              sub_16DDF0
16D250:  LDR             R0, [SP,#0x160+var_148]
16D252:  LDR             R1, [SP,#0x160+var_110]
16D254:  LDR             R4, [SP,#0x160+var_10C]
16D256:  LDR             R3, [SP,#0x160+var_118]
16D258:  CMP             R1, R0
16D25A:  BNE             loc_16D260
16D25C:  LDR             R0, [SP,#0x160+var_B4]
16D25E:  B               loc_16D268
16D260:  LDR             R0, [SP,#0x160+var_B4]
16D262:  MOVS            R1, #0
16D264:  STRB.W          R1, [R0,#0x7C]
16D268:  LDRH.W          R2, [R0,#0x84]
16D26C:  MOVS            R1, #0
16D26E:  STR.W           R1, [R4,#0x4F4]
16D272:  ADDS            R1, R2, #1
16D274:  STRH.W          R1, [R0,#0x84]
16D278:  LDR             R1, [SP,#0x160+var_114]
16D27A:  CBZ             R1, loc_16D2D0
16D27C:  MOVS.W          R1, R9,LSL#25
16D280:  BMI             loc_16D2BC
16D282:  LDR.W           R1, [R0,#0x90]
16D286:  CMP             R1, #0
16D288:  BGT             loc_16D2BC
16D28A:  LDR.W           R1, [R0,#0x94]
16D28E:  CMP             R1, #0
16D290:  BGT             loc_16D2BC
16D292:  VLDR            S0, [R0,#0x1E0]
16D296:  VLDR            S2, [R0,#0x1E8]
16D29A:  VCMP.F32        S0, S2
16D29E:  VMRS            APSR_nzcv, FPSCR
16D2A2:  BGE             loc_16D2B6
16D2A4:  VLDR            S0, [R0,#0x1E4]
16D2A8:  VLDR            S2, [R0,#0x1EC]
16D2AC:  VCMP.F32        S0, S2
16D2B0:  VMRS            APSR_nzcv, FPSCR
16D2B4:  BLT             loc_16D2BC
16D2B6:  MOVS            R1, #1
16D2B8:  STR.W           R1, [R0,#0xA4]
16D2BC:  CBZ             R3, loc_16D2D0
16D2BE:  LDRB.W          R1, [R3,#0x7D]
16D2C2:  CBNZ            R1, loc_16D2CA
16D2C4:  LDRB.W          R1, [R3,#0x81]
16D2C8:  CBZ             R1, loc_16D2D0
16D2CA:  MOVS            R1, #1
16D2CC:  STR.W           R1, [R0,#0xA4]
16D2D0:  VLDR            S0, [R5]
16D2D4:  VCMP.F32        S0, #0.0
16D2D8:  VMRS            APSR_nzcv, FPSCR
16D2DC:  BLS             loc_16D300
16D2DE:  LDR.W           R1, [R0,#0xA4]
16D2E2:  CMP             R1, #0
16D2E4:  BLE             loc_16D308
16D2E6:  MOVS            R1, #1
16D2E8:  B               loc_16D314
16D2EA:  ALIGN 4
16D2EC:  DCD aCollapse - 0x16CF3E
16D2F0:  DCD aClose_1 - 0x16CF60
16D2F4:  DCFS 0.0
16D2F8:  DCD asc_879DB - 0x16CF9A
16D2FC:  DCD asc_879DB - 0x16D16E
16D300:  MOVS            R1, #1
16D302:  STR.W           R1, [R0,#0xA4]
16D306:  B               loc_16D314
16D308:  LDR.W           R2, [R0,#0xA8]
16D30C:  MOVS            R1, #0
16D30E:  CMP             R2, #0
16D310:  IT GT
16D312:  MOVGT           R1, #1
16D314:  LDRB.W          R2, [R0,#0x7D]
16D318:  STRB.W          R1, [R0,#0x81]
16D31C:  CBZ             R2, loc_16D33C
16D31E:  LDR.W           R1, [R0,#0x90]
16D322:  CMP             R1, #0
16D324:  BGT             loc_16D34A
16D326:  LDR.W           R2, [R0,#0x94]
16D32A:  MOVS            R1, #0
16D32C:  CMP             R2, #0
16D32E:  BGT             loc_16D34C
16D330:  LDR.W           R2, [R0,#0xA8]
16D334:  CMP             R2, #1
16D336:  IT LT
16D338:  MOVLT           R1, #1
16D33A:  B               loc_16D34C
16D33C:  LDRB.W          R2, [R0,#0x7A]
16D340:  CMP             R2, #0
16D342:  BEQ             loc_16D31E
16D344:  EORS.W          R1, R1, #1
16D348:  BEQ             loc_16D31E
16D34A:  MOVS            R1, #0
16D34C:  STRB.W          R1, [R0,#0x7F]
16D350:  EOR.W           R0, R1, #1
16D354:  ADD             SP, SP, #0x100
16D356:  VPOP            {D8-D15}
16D35A:  ADD             SP, SP, #4
16D35C:  POP.W           {R8-R11}
16D360:  POP             {R4-R7,PC}
16D362:  LDR.W           R0, [R6,#0x4A8]
16D366:  CMP             R0, #0
16D368:  BNE.W           loc_16B484
16D36C:  ADD             R0, SP, #0x160+var_88
16D36E:  MOVS            R2, #1
16D370:  ADD.W           R1, R0, #8
16D374:  BL              sub_1674C8
16D378:  CMP             R0, #0
16D37A:  BEQ.W           loc_16B484
16D37E:  LDR             R0, [SP,#0x160+var_11C]
16D380:  LDRB.W          R0, [R0,#0x3DD]
16D384:  CMP             R0, #0
16D386:  BEQ.W           loc_16B484
16D38A:  LDR             R0, [SP,#0x160+var_B4]
16D38C:  MOVS            R1, #1
16D38E:  STRB.W          R1, [R0,#0x7E]
16D392:  B.W             loc_16B484
16D396:  LDRB.W          R0, [R6,#0x7B]
16D39A:  CMP             R0, #0
16D39C:  BEQ.W           loc_16BABA
16D3A0:  LDR             R2, [SP,#0x160+var_104]
16D3A2:  MOVW            R0, #0x18C8
16D3A6:  MOVS            R3, #1
16D3A8:  LDR.W           R11, [R2]
16D3AC:  MOVS            R2, #2
16D3AE:  ADD.W           R9, R11, R0
16D3B2:  LDRB.W          R4, [R11,#0xAF]
16D3B6:  VLDR            S28, [R9]
16D3BA:  LDR             R0, =(aResize - 0x16D3C4); "#RESIZE" ...
16D3BC:  STRD.W          R1, R1, [SP,#0x160+var_F0]
16D3C0:  ADD             R0, PC; "#RESIZE"
16D3C2:  STRD.W          R3, R2, [R6,#0x130]
16D3C6:  STRD.W          R1, R1, [SP,#0x160+var_100]
16D3CA:  BL              sub_16FF3C
16D3CE:  VMLA.F32        S16, S28, S26
16D3D2:  VLDR            S26, =0.0
16D3D6:  VMUL.F32        S0, S28, S18
16D3DA:  MOV.W           R8, #0
16D3DE:  VMOV.F32        S2, #0.75
16D3E2:  VCMP.F32        S0, S16
16D3E6:  VMRS            APSR_nzcv, FPSCR
16D3EA:  IT GE
16D3EC:  VMOVGE.F32      S16, S0
16D3F0:  VCVT.S32.F32    S0, S16
16D3F4:  STR             R4, [SP,#0x160+var_14C]
16D3F6:  VMOV.F32        S16, #4.0
16D3FA:  CMP             R4, #0
16D3FC:  MOV.W           R4, #0
16D400:  VCVT.F32.S32    S0, S0
16D404:  VMOV.F32        S28, S16
16D408:  IT EQ
16D40A:  VMOVEQ.F32      S28, S26
16D40E:  LDR             R5, =(unk_BB358 - 0x16D416)
16D410:  LDR             R0, [SP,#0x160+var_BC]
16D412:  ADD             R5, PC; unk_BB358
16D414:  STR             R0, [SP,#0x160+var_120]
16D416:  LDR             R0, [SP,#0x160+var_B8]
16D418:  STR             R0, [SP,#0x160+var_140]
16D41A:  VMUL.F32        S0, S0, S2
16D41E:  VCVT.S32.F32    S0, S0
16D422:  VCVT.F32.S32    S18, S0
16D426:  VNEG.F32        S30, S18
16D42A:  VLDR            S2, [R6,#0xC]
16D42E:  MOV             R0, R6
16D430:  VLDR            S4, [R6,#0x14]
16D434:  MOV             R1, R4
16D436:  VLDR            S0, [R6,#0x10]
16D43A:  VLDR            S6, [R6,#0x18]
16D43E:  VADD.F32        S4, S2, S4
16D442:  VLDR            S25, [R5,#8]
16D446:  VADD.F32        S6, S0, S6
16D44A:  VLDR            S17, [R5]
16D44E:  VLDR            S27, [R5,#0xC]
16D452:  VMUL.F32        S23, S28, S25
16D456:  VLDR            S19, [R5,#4]
16D45A:  VMUL.F32        S21, S28, S27
16D45E:  VSUB.F32        S4, S4, S2
16D462:  VSUB.F32        S6, S6, S0
16D466:  VMLA.F32        S2, S4, S17
16D46A:  VMLA.F32        S0, S6, S19
16D46E:  VSUB.F32        S6, S2, S23
16D472:  VMLA.F32        S2, S25, S18
16D476:  VSUB.F32        S4, S0, S21
16D47A:  VMLA.F32        S0, S27, S18
16D47E:  VSTR            S6, [SP,#0x160+var_98]
16D482:  VCMP.F32        S6, S2
16D486:  VSTR            S2, [SP,#0x160+var_90]
16D48A:  VMRS            APSR_nzcv, FPSCR
16D48E:  VSTR            S4, [SP,#0x160+var_94]
16D492:  VCMP.F32        S4, S0
16D496:  VSTR            S0, [SP,#0x160+var_8C]
16D49A:  ITT GT
16D49C:  VSTRGT          S6, [SP,#0x160+var_90]
16D4A0:  VSTRGT          S2, [SP,#0x160+var_98]
16D4A4:  VMRS            APSR_nzcv, FPSCR
16D4A8:  ITT GT
16D4AA:  VSTRGT          S4, [SP,#0x160+var_8C]
16D4AE:  VSTRGT          S0, [SP,#0x160+var_94]
16D4B2:  BL              sub_166E14
16D4B6:  MOV             R1, R0
16D4B8:  MOVW            R0, #0x2020
16D4BC:  STR             R0, [SP,#0x160+var_160]
16D4BE:  ADD             R0, SP, #0x160+var_98
16D4C0:  ADD             R2, SP, #0x160+var_68
16D4C2:  ADD             R3, SP, #0x160+var_70
16D4C4:  BL              sub_17AD64
16D4C8:  LDRB.W          R0, [SP,#0x160+var_70]
16D4CC:  LDRB.W          R1, [SP,#0x160+var_68]
16D4D0:  ORRS            R1, R0
16D4D2:  LSLS            R1, R1, #0x18
16D4D4:  BEQ             loc_16D4E4
16D4D6:  LSLS            R1, R4, #0x1F
16D4D8:  MOV.W           R1, #5
16D4DC:  IT EQ
16D4DE:  MOVEQ           R1, #6
16D4E0:  STR.W           R1, [R9,#0x44C]
16D4E4:  CMP             R0, #0
16D4E6:  BEQ             loc_16D580
16D4E8:  LDRB.W          R0, [R11,#0x3DD]
16D4EC:  CBZ             R0, loc_16D530
16D4EE:  CBNZ            R4, loc_16D530
16D4F0:  LDR             R2, [SP,#0x160+var_120]
16D4F2:  ADD             R0, SP, #0x160+var_100
16D4F4:  LDR             R3, [SP,#0x160+var_140]
16D4F6:  MOV             R1, R6
16D4F8:  BL              sub_16EF60
16D4FC:  LDR             R0, [SP,#0x160+var_104]
16D4FE:  MOVW            R2, #0x19D0
16D502:  LDR             R0, [R0]
16D504:  LDR             R1, [R0,R2]
16D506:  ADD             R0, R2
16D508:  CMP             R1, #0
16D50A:  IT NE
16D50C:  MOVNE           R1, #1
16D50E:  STRB            R1, [R0,#0xC]
16D510:  ITT NE
16D512:  STRHNE.W        R8, [R0,#0xE]
16D516:  STRNE.W         R8, [R0,#8]
16D51A:  STRD.W          R8, R8, [R0,#0x14]
16D51E:  STR.W           R8, [R0]
16D522:  STR.W           R8, [R0,#0x24]
16D526:  STRB.W          R8, [R0,#0xD]
16D52A:  STRB.W          R8, [R0,#0x10]
16D52E:  B               loc_16D580
16D530:  VMOV.F32        S0, S21
16D534:  VLDR            S4, [R9,#0x124]
16D538:  VMOV.F32        S2, S23
16D53C:  VLDR            S6, [R9,#0x128]
16D540:  VLDR            S10, [R11,#0xE4]
16D544:  ADD             R0, SP, #0x160+var_100
16D546:  VLDR            S8, [R11,#0xE0]
16D54A:  ADD             R1, SP, #0x160+var_88
16D54C:  VSUB.F32        S6, S10, S6
16D550:  ADD             R3, SP, #0x160+var_F0
16D552:  STR             R0, [SP,#0x160+var_160]
16D554:  MOV             R0, R6
16D556:  VNMLS.F32       S0, S27, S30
16D55A:  MOV             R2, R5
16D55C:  VNMLS.F32       S2, S25, S30
16D560:  VMLA.F32        S21, S0, S19
16D564:  VMLA.F32        S23, S2, S17
16D568:  VSUB.F32        S0, S8, S4
16D56C:  VADD.F32        S2, S21, S6
16D570:  VADD.F32        S0, S23, S0
16D574:  VSTR            S2, [SP,#0x160+var_84]
16D578:  VSTR            S0, [SP,#0x160+var_88]
16D57C:  BL              sub_17194C
16D580:  LDRB.W          R1, [SP,#0x160+var_68]
16D584:  LDRB.W          R0, [SP,#0x160+var_70]
16D588:  CBZ             R4, loc_16D58E
16D58A:  CBNZ            R0, loc_16D58E
16D58C:  CBZ             R1, loc_16D5D6
16D58E:  CMP             R1, #0
16D590:  MOV.W           R1, #0x1F
16D594:  IT EQ
16D596:  MOVEQ           R1, #0x1E
16D598:  LDR             R2, [SP,#0x160+var_104]
16D59A:  CMP             R0, #0
16D59C:  MOVW            R0, #0x1518
16D5A0:  LDR             R2, [R2]
16D5A2:  IT NE
16D5A4:  MOVNE           R1, #0x20 ; ' '
16D5A6:  ADD             R0, R2
16D5A8:  MOVS            R2, #0xC
16D5AA:  ADD.W           R1, R0, R1,LSL#4
16D5AE:  ADDS            R1, #0xAC
16D5B0:  VLDR            S0, [R0]
16D5B4:  ADD             R0, SP, #0x160+var_88
16D5B6:  VLD1.32         {D16-D17}, [R1]
16D5BA:  MOV             R1, R0
16D5BC:  VST1.64         {D16-D17}, [R1],R2
16D5C0:  VLDR            S2, [R1]
16D5C4:  VMUL.F32        S0, S0, S2
16D5C8:  VSTR            S0, [R1]
16D5CC:  BL              sub_165778
16D5D0:  ADD             R1, SP, #0x160+var_E0
16D5D2:  STR.W           R0, [R1,R4,LSL#2]
16D5D6:  LDR             R0, [SP,#0x160+var_11C]
16D5D8:  ADDS            R4, #1
16D5DA:  ADDS            R5, #0x18
16D5DC:  CMP             R0, R4
16D5DE:  BNE.W           loc_16D42A
16D5E2:  LDR             R0, [SP,#0x160+var_14C]
16D5E4:  MOV.W           R4, #0xFFFFFFFF
16D5E8:  CMP             R0, #0
16D5EA:  BEQ.W           loc_16D700
16D5EE:  VLDR            S28, =0.04
16D5F2:  MOVS            R5, #0
16D5F4:  VMOV.F32        S0, S18
16D5F8:  ADD.W           R8, SP, #0x160+var_88
16D5FC:  VMOV.F32        S1, S16
16D600:  MOV             R1, R6
16D602:  MOV             R0, R8
16D604:  MOV             R2, R5
16D606:  BL              sub_171A1C
16D60A:  ADDS            R1, R5, #4
16D60C:  MOV             R0, R6
16D60E:  BL              sub_166E14
16D612:  MOV             R1, R0
16D614:  MOVS            R0, #0x20 ; ' '
16D616:  ADD             R2, SP, #0x160+var_70
16D618:  ADD             R3, SP, #0x160+var_78
16D61A:  STR             R0, [SP,#0x160+var_160]
16D61C:  MOV             R0, R8
16D61E:  BL              sub_17AD64
16D622:  LDRB.W          R0, [SP,#0x160+var_70]
16D626:  CBZ             R0, loc_16D650
16D628:  VLDR            S0, [R9,#0x100]
16D62C:  LDRB.W          R0, [SP,#0x160+var_78]
16D630:  VCMP.F32        S0, S28
16D634:  VMRS            APSR_nzcv, FPSCR
16D638:  BGT             loc_16D63E
16D63A:  CMP             R0, #0
16D63C:  BEQ             loc_16D6F8
16D63E:  LSLS            R1, R5, #0x1F
16D640:  MOV.W           R1, #4
16D644:  IT EQ
16D646:  MOVEQ           R1, #3
16D648:  STR.W           R1, [R9,#0x44C]
16D64C:  CBNZ            R0, loc_16D666
16D64E:  B               loc_16D6F8
16D650:  LDRB.W          R0, [SP,#0x160+var_78]
16D654:  CMP             R0, #0
16D656:  BEQ             loc_16D6F8
16D658:  LSLS            R0, R5, #0x1F
16D65A:  MOV.W           R0, #4
16D65E:  IT EQ
16D660:  MOVEQ           R0, #3
16D662:  STR.W           R0, [R9,#0x44C]
16D666:  LDRD.W          R0, R1, [R6,#0xC]
16D66A:  CMP             R5, #3; switch 4 cases
16D66C:  STRD.W          R0, R1, [SP,#0x160+var_98]
16D670:  MOV.W           R0, #0
16D674:  MOV.W           R1, #0
16D678:  STR             R0, [SP,#0x160+var_68]
16D67A:  STR             R0, [SP,#0x160+var_64]
16D67C:  BHI             def_16D67E; jumptable 0016D67E default case
16D67E:  TBB.W           [PC,R5]; switch jump
16D682:  DCB 2; jump table for switch statement
16D683:  DCB 0xA
16D684:  DCB 0x12
16D685:  DCB 0x25
16D686:  VLDR            S0, [R9,#0x128]; jumptable 0016D67E case 0
16D68A:  MOVS            R0, #0
16D68C:  VLDR            S2, [R11,#0xE4]
16D690:  STRD.W          R0, R0, [SP,#0x160+var_68]
16D694:  B               loc_16D6B6
16D696:  VLDR            S0, [R9,#0x124]; jumptable 0016D67E case 1
16D69A:  MOV.W           R0, #0x3F800000
16D69E:  VLDR            S2, [R11,#0xE0]
16D6A2:  STR             R1, [SP,#0x160+var_64]
16D6A4:  B               loc_16D6D8
16D6A6:  VLDR            S0, [R9,#0x128]; jumptable 0016D67E case 2
16D6AA:  MOV.W           R0, #0x3F800000
16D6AE:  VLDR            S2, [R11,#0xE4]
16D6B2:  STRD.W          R1, R0, [SP,#0x160+var_68]
16D6B6:  VSUB.F32        S0, S2, S0
16D6BA:  VADD.F32        S0, S0, S16
16D6BE:  VSTR            S0, [SP,#0x160+var_94]
16D6C2:  B               def_16D67E; jumptable 0016D67E default case
16D6C4:  DCD aResize - 0x16D3C4
16D6C8:  DCD unk_BB358 - 0x16D416
16D6CC:  VLDR            S0, [R9,#0x124]; jumptable 0016D67E case 3
16D6D0:  MOVS            R0, #0
16D6D2:  VLDR            S2, [R11,#0xE0]
16D6D6:  STR             R0, [SP,#0x160+var_64]
16D6D8:  VSUB.F32        S0, S2, S0
16D6DC:  VADD.F32        S0, S0, S16
16D6E0:  STR             R0, [SP,#0x160+var_68]
16D6E2:  VSTR            S0, [SP,#0x160+var_98]
16D6E6:  ADD             R0, SP, #0x160+var_100; jumptable 0016D67E default case
16D6E8:  ADD             R1, SP, #0x160+var_98
16D6EA:  ADD             R2, SP, #0x160+var_68
16D6EC:  ADD             R3, SP, #0x160+var_F0
16D6EE:  STR             R0, [SP,#0x160+var_160]
16D6F0:  MOV             R0, R6
16D6F2:  BL              sub_17194C
16D6F6:  MOV             R4, R5
16D6F8:  ADDS            R5, #1
16D6FA:  CMP             R5, #4
16D6FC:  BNE.W           loc_16D5F4
16D700:  LDR             R0, [SP,#0x160+var_104]
16D702:  MOVW            R1, #0x19AC
16D706:  LDR.W           R8, [SP,#0x160+var_118]
16D70A:  LDR             R0, [R0]
16D70C:  LDR             R1, [R0,R1]
16D70E:  LDR.W           R0, [R9,#0x22C]
16D712:  CMP             R0, #0
16D714:  LDR.W           R2, [R1,#0x1C4]
16D718:  SUB.W           R2, R2, #1
16D71C:  STR.W           R2, [R1,#0x1C4]
16D720:  BEQ             loc_16D81E
16D722:  LDR.W           R0, [R0,#0x2FC]
16D726:  CMP             R0, R6
16D728:  BNE             loc_16D81E
16D72A:  VMOV.F32        S16, S26
16D72E:  LDR.W           R0, [R9,#0x214]
16D732:  CMP             R0, #3
16D734:  BNE             loc_16D758
16D736:  LDRB.W          R0, [R11,#0xF9]
16D73A:  CBZ             R0, loc_16D776
16D73C:  MOVS            R0, #0
16D73E:  MOVS            R1, #1; int
16D740:  STR             R0, [SP,#0x160+var_160]; float
16D742:  ADD             R0, SP, #0x160+var_88; int
16D744:  MOVS            R2, #0; int
16D746:  MOVS            R3, #0; int
16D748:  BL              sub_170850
16D74C:  LDR.W           R0, [R9,#0x214]
16D750:  VLDR            S26, [SP,#0x160+var_88]
16D754:  VLDR            S16, [SP,#0x160+var_84]
16D758:  CMP             R0, #4
16D75A:  BNE             loc_16D77E
16D75C:  MOVS            R0, #0
16D75E:  MOVS            R1, #2; int
16D760:  STR             R0, [SP,#0x160+var_160]; float
16D762:  ADD             R0, SP, #0x160+var_88; int
16D764:  MOVS            R2, #0; int
16D766:  MOVS            R3, #0; int
16D768:  BL              sub_170850
16D76C:  VLDR            S26, [SP,#0x160+var_88]
16D770:  VLDR            S16, [SP,#0x160+var_84]
16D774:  B               loc_16D77E
16D776:  VLDR            S26, =0.0
16D77A:  VMOV.F32        S16, S26
16D77E:  VCMP.F32        S26, #0.0
16D782:  VMRS            APSR_nzcv, FPSCR
16D786:  ITT EQ
16D788:  VCMPEQ.F32      S16, #0.0
16D78C:  VMRSEQ          APSR_nzcv, FPSCR
16D790:  BEQ             loc_16D81E
16D792:  VLDR            S4, [R11,#0xA4]
16D796:  MOVS            R0, #1
16D798:  VLDR            S6, [R11,#0xA8]
16D79C:  MOVS            R1, #0
16D79E:  VLDR            S0, =600.0
16D7A2:  VLDR            S2, [R11,#0x18]
16D7A6:  VCMP.F32        S4, S6
16D7AA:  STRB.W          R0, [R9,#0x24F]
16D7AE:  VMRS            APSR_nzcv, FPSCR
16D7B2:  IT MI
16D7B4:  VMOVMI.F32      S6, S4
16D7B8:  VMUL.F32        S0, S2, S0
16D7BC:  LDR             R0, [SP,#0x160+var_104]
16D7BE:  LDR             R0, [R0]
16D7C0:  STRB.W          R1, [R9,#0x240]
16D7C4:  MOVW            R1, #0x1518
16D7C8:  ADD             R0, R1
16D7CA:  VMUL.F32        S0, S0, S6
16D7CE:  ADD.W           R1, R0, #0x2AC
16D7D2:  VLDR            S2, [R0]
16D7D6:  ADD             R0, SP, #0x160+var_88
16D7D8:  VLD1.32         {D16-D17}, [R1]
16D7DC:  MOVS            R1, #0xC
16D7DE:  MOV             R2, R0
16D7E0:  VST1.64         {D16-D17}, [R2],R1
16D7E4:  VLDR            S4, [R2]
16D7E8:  VCVT.S32.F32    S0, S0
16D7EC:  VMUL.F32        S2, S2, S4
16D7F0:  VCVT.F32.S32    S18, S0
16D7F4:  VSTR            S2, [R2]
16D7F8:  BL              sub_165778
16D7FC:  VLDR            S0, [R6,#0x1C]
16D800:  MOV             R1, R6
16D802:  VLDR            S2, [R6,#0x20]
16D806:  VMLA.F32        S0, S26, S18
16D80A:  VMLA.F32        S2, S16, S18
16D80E:  STR             R0, [SP,#0x160+var_E0]
16D810:  ADD             R0, SP, #0x160+var_100
16D812:  VMOV            R2, S0
16D816:  VMOV            R3, S2
16D81A:  BL              sub_16EF60
16D81E:  VLDR            S0, [SP,#0x160+var_100]
16D822:  VCMP.F32        S0, S24
16D826:  VMRS            APSR_nzcv, FPSCR
16D82A:  BEQ             loc_16D856
16D82C:  LDR             R0, [SP,#0x160+var_104]
16D82E:  LDRB            R3, [R6,#9]
16D830:  LDRD.W          R1, R2, [SP,#0x160+var_100]
16D834:  LDR             R0, [R0]
16D836:  STRD.W          R1, R2, [R6,#0x1C]
16D83A:  LSLS            R1, R3, #0x1F
16D83C:  BNE             loc_16D856
16D83E:  MOVW            R1, #0x2CF8
16D842:  ADD             R1, R0
16D844:  VLDR            S0, [R1]
16D848:  VCMP.F32        S0, #0.0
16D84C:  VMRS            APSR_nzcv, FPSCR
16D850:  ITT LS
16D852:  LDRLS           R0, [R0,#0x1C]
16D854:  STRLS           R0, [R1]
16D856:  VLDR            S0, [SP,#0x160+var_F0]
16D85A:  LDR.W           R9, [SP,#0x160+var_124]
16D85E:  VCMP.F32        S0, S24
16D862:  VMRS            APSR_nzcv, FPSCR
16D866:  BEQ             loc_16D8A6
16D868:  VLDR            S2, [SP,#0x160+var_EC]
16D86C:  VCVT.S32.F32    S0, S0
16D870:  LDR             R0, [SP,#0x160+var_104]
16D872:  VCVT.S32.F32    S2, S2
16D876:  LDRB            R1, [R6,#9]
16D878:  LDR             R0, [R0]
16D87A:  LSLS            R1, R1, #0x1F
16D87C:  VCVT.F32.S32    S0, S0
16D880:  VCVT.F32.S32    S2, S2
16D884:  VSTR            S0, [R6,#0xC]
16D888:  VSTR            S2, [R6,#0x10]
16D88C:  BNE             loc_16D8A6
16D88E:  MOVW            R1, #0x2CF8
16D892:  ADD             R1, R0
16D894:  VLDR            S0, [R1]
16D898:  VCMP.F32        S0, #0.0
16D89C:  VMRS            APSR_nzcv, FPSCR
16D8A0:  ITT LS
16D8A2:  LDRLS           R0, [R0,#0x1C]
16D8A4:  STRLS           R0, [R1]
16D8A6:  LDR             R0, [SP,#0x160+var_B4]
16D8A8:  MOVS            R1, #1
16D8AA:  LDRD.W          R2, R3, [R6,#0x1C]
16D8AE:  MOVS            R5, #0
16D8B0:  STRD.W          R5, R1, [R6,#0x130]
16D8B4:  STRD.W          R2, R3, [R6,#0x14]
16D8B8:  B.W             loc_16BAC0
16D8BC:  LDR             R0, =(byte_381BE0 - 0x16D8C2)
16D8BE:  ADD             R0, PC; byte_381BE0 ; __guard *
16D8C0:  BLX             j___cxa_guard_acquire
16D8C4:  CMP             R0, #0
16D8C6:  BEQ.W           loc_16C598
16D8CA:  ADR             R0, dword_16D928
16D8CC:  MOV             R1, R6
16D8CE:  VLD1.64         {D16-D17}, [R0]
16D8D2:  ADR             R0, dword_16D938
16D8D4:  VLD1.64         {D18-D19}, [R0]
16D8D8:  ADR             R0, dword_16D948
16D8DA:  VLD1.64         {D20-D21}, [R0]
16D8DE:  ADR             R0, dword_16D958
16D8E0:  VLD1.64         {D22-D23}, [R0]
16D8E4:  ADR             R0, dword_16D968
16D8E6:  VLD1.64         {D24-D25}, [R0]
16D8EA:  ADR             R0, dword_16D978
16D8EC:  VLD1.64         {D26-D27}, [R0]
16D8F0:  ADR             R0, dword_16D988
16D8F2:  VLD1.64         {D28-D29}, [R0]
16D8F6:  LDR             R0, =(byte_381BE0 - 0x16D900)
16D8F8:  VST1.32         {D16-D17}, [R1@128]!
16D8FC:  ADD             R0, PC; byte_381BE0 ; __guard *
16D8FE:  VST1.32         {D18-D19}, [R1@128]!
16D902:  VST1.32         {D20-D21}, [R1@128]!
16D906:  VST1.32         {D22-D23}, [R1@128]!
16D90A:  VST1.32         {D24-D25}, [R1@128]!
16D90E:  VST1.32         {D26-D27}, [R1@128]!
16D912:  VST1.64         {D28-D29}, [R1@128]
16D916:  BLX             j___cxa_guard_release
16D91A:  B.W             loc_16C598
