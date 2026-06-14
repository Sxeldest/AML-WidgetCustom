; =========================================================
; Game Engine Function: sub_17A9F4
; Address            : 0x17A9F4 - 0x17AD10
; =========================================================

17A9F4:  PUSH            {R4-R7,LR}
17A9F6:  ADD             R7, SP, #0xC
17A9F8:  PUSH.W          {R8-R11}
17A9FC:  SUB             SP, SP, #4
17A9FE:  VPUSH           {D8-D13}
17AA02:  SUB             SP, SP, #0x28; float
17AA04:  MOV             R5, R0
17AA06:  LDR             R0, =(off_234E80 - 0x17AA0C)
17AA08:  ADD             R0, PC; off_234E80
17AA0A:  LDR             R0, [R0]; dword_381B58
17AA0C:  LDR             R6, [R0]
17AA0E:  MOVW            R0, #0x19AC
17AA12:  LDR             R4, [R6,R0]
17AA14:  MOVS            R0, #1
17AA16:  STRB.W          R0, [R4,#0x7C]
17AA1A:  LDRB.W          R0, [R4,#0x7F]
17AA1E:  CMP             R0, #0
17AA20:  BNE.W           loc_17AD02
17AA24:  MOV             R10, R2
17AA26:  MOV             R9, R1
17AA28:  CBNZ            R1, loc_17AA34
17AA2A:  MOV             R0, R5; s
17AA2C:  BLX             strlen
17AA30:  ADD.W           R9, R5, R0
17AA34:  VLDR            S2, [R4,#0xCC]
17AA38:  SUB.W           R0, R9, R5
17AA3C:  VLDR            S4, [R4,#0xF8]
17AA40:  CMP.W           R0, #0x7D0
17AA44:  VLDR            S16, [R4,#0xC8]
17AA48:  VADD.F32        S18, S2, S4
17AA4C:  VLDR            S0, [R4,#0x174]
17AA50:  BLE             loc_17AA7E
17AA52:  VCMP.F32        S0, #0.0
17AA56:  VMRS            APSR_nzcv, FPSCR
17AA5A:  BGE             loc_17AA7E
17AA5C:  MOVW            R0, #0x2D20
17AA60:  ADD             R6, R0
17AA62:  BL              sub_16FF28
17AA66:  VMOV            S20, R0
17AA6A:  LDRB            R0, [R6]
17AA6C:  VLDR            S24, =0.0
17AA70:  MOVS            R1, #0
17AA72:  CMP             R0, #0
17AA74:  STR             R1, [SP,#0x78+var_58]
17AA76:  BEQ             loc_17AAFA
17AA78:  VMOV.F32        S22, S18
17AA7C:  B               loc_17AB9C
17AA7E:  VCMP.F32        S0, #0.0
17AA82:  VMRS            APSR_nzcv, FPSCR
17AA86:  BLT             loc_17AA9A
17AA88:  VMOV            R1, S0
17AA8C:  ADD.W           R0, R4, #0xC8
17AA90:  BL              sub_167718
17AA94:  VMOV            S20, R0
17AA98:  B               loc_17AA9E
17AA9A:  VLDR            S20, =0.0
17AA9E:  ADD             R6, SP, #0x78+var_58
17AAA0:  MOV             R1, R5; int
17AAA2:  MOV             R2, R9; int
17AAA4:  MOVS            R3, #0; int
17AAA6:  MOV             R0, R6; int
17AAA8:  VSTR            S20, [SP,#0x78+var_78]
17AAAC:  BL              sub_1660A4
17AAB0:  VLDR            S0, [SP,#0x78+var_58]
17AAB4:  MOV             R0, R6
17AAB6:  VLDR            S2, [SP,#0x78+var_54]
17AABA:  MOVS            R1, #0
17AABC:  VADD.F32        S0, S16, S0
17AAC0:  VSTR            S18, [SP,#0x78+var_64]
17AAC4:  VADD.F32        S2, S18, S2
17AAC8:  VSTR            S16, [SP,#0x78+var_68]
17AACC:  VSTR            S0, [SP,#0x78+var_60]
17AAD0:  VSTR            S2, [SP,#0x78+var_5C]
17AAD4:  BL              sub_167054
17AAD8:  ADD             R0, SP, #0x78+var_68
17AADA:  MOVS            R1, #0
17AADC:  MOVS            R2, #0
17AADE:  BL              sub_167164
17AAE2:  CMP             R0, #0
17AAE4:  BEQ.W           loc_17AD02
17AAE8:  LDRD.W          R0, R1, [SP,#0x78+var_68]; int
17AAEC:  MOV             R2, R5; s
17AAEE:  MOV             R3, R9; int
17AAF0:  VSTR            S20, [SP,#0x78+var_78]
17AAF4:  BL              sub_165E10
17AAF8:  B               loc_17AD02
17AAFA:  VLDR            S0, [R4,#0x1D4]
17AAFE:  VSUB.F32        S0, S0, S18
17AB02:  VDIV.F32        S0, S0, S20
17AB06:  VCVT.S32.F32    S0, S0
17AB0A:  VMOV            R8, S0
17AB0E:  CMP.W           R8, #1
17AB12:  BLT             loc_17AA78
17AB14:  CMP             R9, R5
17AB16:  BLS             loc_17AB8C
17AB18:  STR.W           R10, [SP,#0x78+var_74]
17AB1C:  AND.W           R10, R10, #1
17AB20:  VLDR            S24, =0.0
17AB24:  ADD.W           R11, SP, #0x78+var_68
17AB28:  MOVS            R4, #0
17AB2A:  SUB.W           R2, R9, R5; n
17AB2E:  MOV             R0, R5; s
17AB30:  MOVS            R1, #0xA; c
17AB32:  BLX             memchr
17AB36:  MOV             R6, R0
17AB38:  CMP             R0, #0
17AB3A:  IT EQ
17AB3C:  MOVEQ           R6, R9
17AB3E:  CMP.W           R10, #0
17AB42:  BNE             loc_17AB72
17AB44:  MOVS            R0, #0
17AB46:  MOV             R1, R5; int
17AB48:  MOVT            R0, #0xBF80
17AB4C:  MOV             R2, R6; int
17AB4E:  STR             R0, [SP,#0x78+var_78]; float
17AB50:  MOV             R0, R11; int
17AB52:  MOVS            R3, #0; int
17AB54:  BL              sub_1660A4
17AB58:  VLDR            S0, [SP,#0x78+var_68]
17AB5C:  VCMP.F32        S24, S0
17AB60:  VMRS            APSR_nzcv, FPSCR
17AB64:  IT GE
17AB66:  VMOVGE.F32      S0, S24
17AB6A:  VMOV.F32        S24, S0
17AB6E:  VSTR            S0, [SP,#0x78+var_58]
17AB72:  ADDS            R5, R6, #1
17AB74:  ADDS            R4, #1
17AB76:  CMP             R5, R9
17AB78:  BCS             loc_17AB7E
17AB7A:  CMP             R4, R8
17AB7C:  BLT             loc_17AB2A
17AB7E:  VMOV            S0, R4
17AB82:  LDR.W           R10, [SP,#0x78+var_74]
17AB86:  VCVT.F32.S32    S0, S0
17AB8A:  B               loc_17AB94
17AB8C:  VLDR            S24, =0.0
17AB90:  VMOV.F32        S0, S24
17AB94:  VMOV.F32        S22, S18
17AB98:  VMLA.F32        S22, S0, S20
17AB9C:  CMP             R5, R9
17AB9E:  BCS             loc_17AC54
17ABA0:  VMOV            R11, S16
17ABA4:  VLDR            S0, =3.4028e38
17ABA8:  VADD.F32        S2, S20, S22
17ABAC:  STR.W           R10, [SP,#0x78+var_74]
17ABB0:  VADD.F32        S0, S16, S0
17ABB4:  ADD             R4, SP, #0x78+var_68
17ABB6:  ADD.W           R10, SP, #0x78+var_70
17ABBA:  MOV.W           R8, #0
17ABBE:  VSTR            S22, [SP,#0x78+var_64]
17ABC2:  VSTR            S16, [SP,#0x78+var_68]
17ABC6:  VSTR            S2, [SP,#0x78+var_5C]
17ABCA:  VSTR            S0, [SP,#0x78+var_60]
17ABCE:  MOV             R0, R4
17ABD0:  MOVS            R1, #0
17ABD2:  MOVS            R2, #0
17ABD4:  BL              sub_167448
17ABD8:  CMP             R0, #0
17ABDA:  BNE             loc_17AC5A
17ABDC:  SUB.W           R2, R9, R5; n
17ABE0:  MOV             R0, R5; s
17ABE2:  MOVS            R1, #0xA; c
17ABE4:  BLX             memchr
17ABE8:  MOV             R6, R0
17ABEA:  MOVS            R0, #0xBF800000
17ABF0:  CMP             R6, #0
17ABF2:  STR             R0, [SP,#0x78+var_78]; float
17ABF4:  IT EQ
17ABF6:  MOVEQ           R6, R9
17ABF8:  MOV             R0, R10; int
17ABFA:  MOV             R1, R5; int
17ABFC:  MOV             R2, R6; int
17ABFE:  MOVS            R3, #0; int
17AC00:  BL              sub_1660A4
17AC04:  VMOV            R1, S22; int
17AC08:  VLDR            S26, [SP,#0x78+var_70]
17AC0C:  MOV             R0, R11; int
17AC0E:  MOV             R2, R5; s
17AC10:  VCMP.F32        S24, S26
17AC14:  MOV             R3, R6; int
17AC16:  VMRS            APSR_nzcv, FPSCR
17AC1A:  IT GE
17AC1C:  VMOVGE.F32      S26, S24
17AC20:  VSTR            S26, [SP,#0x78+var_58]
17AC24:  STR.W           R8, [SP,#0x78+var_78]; int
17AC28:  BL              sub_165BF0
17AC2C:  VLDR            S0, [SP,#0x78+var_64]
17AC30:  VADD.F32        S22, S20, S22
17AC34:  VLDR            S2, [SP,#0x78+var_5C]
17AC38:  VMOV.F32        S24, S26
17AC3C:  VADD.F32        S0, S20, S0
17AC40:  ADDS            R5, R6, #1
17AC42:  VADD.F32        S2, S20, S2
17AC46:  CMP             R5, R9
17AC48:  VSTR            S0, [SP,#0x78+var_64]
17AC4C:  VSTR            S2, [SP,#0x78+var_5C]
17AC50:  BCC             loc_17ABCE
17AC52:  B               loc_17AC5E
17AC54:  VMOV.F32        S26, S24
17AC58:  B               loc_17ACD0
17AC5A:  VMOV.F32        S26, S24
17AC5E:  CMP             R5, R9
17AC60:  BCS             loc_17ACC8
17AC62:  LDR             R0, [SP,#0x78+var_74]
17AC64:  ADD.W           R8, SP, #0x78+var_70
17AC68:  MOVS            R4, #0
17AC6A:  AND.W           R10, R0, #1
17AC6E:  SUB.W           R2, R9, R5; n
17AC72:  MOV             R0, R5; s
17AC74:  MOVS            R1, #0xA; c
17AC76:  BLX             memchr
17AC7A:  MOV             R6, R0
17AC7C:  CMP             R0, #0
17AC7E:  IT EQ
17AC80:  MOVEQ           R6, R9
17AC82:  CMP.W           R10, #0
17AC86:  BNE             loc_17ACB6
17AC88:  MOVS            R0, #0
17AC8A:  MOV             R1, R5; int
17AC8C:  MOVT            R0, #0xBF80
17AC90:  MOV             R2, R6; int
17AC92:  STR             R0, [SP,#0x78+var_78]; float
17AC94:  MOV             R0, R8; int
17AC96:  MOVS            R3, #0; int
17AC98:  BL              sub_1660A4
17AC9C:  VLDR            S0, [SP,#0x78+var_70]
17ACA0:  VCMP.F32        S26, S0
17ACA4:  VMRS            APSR_nzcv, FPSCR
17ACA8:  IT GE
17ACAA:  VMOVGE.F32      S0, S26
17ACAE:  VMOV.F32        S26, S0
17ACB2:  VSTR            S0, [SP,#0x78+var_58]
17ACB6:  ADDS            R5, R6, #1
17ACB8:  ADDS            R4, #1
17ACBA:  CMP             R5, R9
17ACBC:  BCC             loc_17AC6E
17ACBE:  VMOV            S0, R4
17ACC2:  VCVT.F32.S32    S0, S0
17ACC6:  B               loc_17ACCC
17ACC8:  VLDR            S0, =0.0
17ACCC:  VMLA.F32        S22, S0, S20
17ACD0:  VSUB.F32        S0, S22, S18
17ACD4:  ADD             R0, SP, #0x78+var_58
17ACD6:  VADD.F32        S2, S16, S26
17ACDA:  MOVS            R1, #0
17ACDC:  VSTR            S18, [SP,#0x78+var_64]
17ACE0:  VSTR            S16, [SP,#0x78+var_68]
17ACE4:  VADD.F32        S4, S18, S0
17ACE8:  VSTR            S0, [SP,#0x78+var_54]
17ACEC:  VSTR            S2, [SP,#0x78+var_60]
17ACF0:  VSTR            S4, [SP,#0x78+var_5C]
17ACF4:  BL              sub_167054
17ACF8:  ADD             R0, SP, #0x78+var_68
17ACFA:  MOVS            R1, #0
17ACFC:  MOVS            R2, #0
17ACFE:  BL              sub_167164
17AD02:  ADD             SP, SP, #0x28 ; '('
17AD04:  VPOP            {D8-D13}
17AD08:  ADD             SP, SP, #4
17AD0A:  POP.W           {R8-R11}
17AD0E:  POP             {R4-R7,PC}
