; =========================================================
; Game Engine Function: anti_collapse
; Address            : 0x19BD14 - 0x19C012
; =========================================================

19BD14:  PUSH            {R4-R7,LR}
19BD16:  ADD             R7, SP, #0xC
19BD18:  PUSH.W          {R8-R11}
19BD1C:  SUB             SP, SP, #0x34
19BD1E:  STR             R1, [SP,#0x50+var_40]
19BD20:  MOV             LR, R2
19BD22:  LDRD.W          R2, R1, [R7,#arg_8]
19BD26:  MOV             R10, R3
19BD28:  CMP             R2, R1
19BD2A:  BGE.W           loc_19C00A
19BD2E:  MOVS            R1, #1
19BD30:  MOVW            R9, #0xF35F
19BD34:  MOVW            R11, #:lower16:(loc_19660C+1)
19BD38:  LSL.W           R1, R1, R10
19BD3C:  STR             R1, [SP,#0x50+var_20]
19BD3E:  MOVT            R9, #0x3C6E
19BD42:  LDR.W           R8, [R7,#arg_20]
19BD46:  MOVT            R11, #:upper16:(loc_19660C+1)
19BD4A:  LDR             R4, [R7,#arg_0]
19BD4C:  STRD.W          LR, R0, [SP,#0x50+var_2C]
19BD50:  LDR             R0, [R0,#0x18]
19BD52:  ADDS            R5, R2, #1
19BD54:  LDR             R3, [R7,#arg_1C]
19BD56:  LDRSH.W         R1, [R0,R2,LSL#1]
19BD5A:  LDRSH.W         R0, [R0,R5,LSL#1]
19BD5E:  STR             R2, [SP,#0x50+var_30]
19BD60:  LDR.W           R2, [R3,R2,LSL#2]
19BD64:  SUBS            R6, R0, R1
19BD66:  ADDS            R0, R2, #1
19BD68:  MOV             R1, R6
19BD6A:  BLX             sub_220A6C
19BD6E:  LSR.W           R0, R0, R10
19BD72:  MOVS            R1, #0
19BD74:  SUB.W           R1, R1, R0,LSL#7
19BD78:  SBFX.W          R0, R1, #0xA, #6
19BD7C:  STR             R5, [SP,#0x50+var_50]
19BD7E:  CMP             R0, #0xE
19BD80:  BLE             loc_19BD88
19BD82:  MOV.W           R0, #0x7F000000
19BD86:  B               loc_19BDE8
19BD88:  CMN.W           R0, #0xF
19BD8C:  BGE             loc_19BD92
19BD8E:  MOVS            R0, #0
19BD90:  B               loc_19BDE8
19BD92:  MOV.W           R2, #0x3800
19BD96:  AND.W           R1, R2, R1,LSL#4
19BD9A:  MOVS            R2, #0
19BD9C:  MOVW            R3, #0x4FB8
19BDA0:  MOVT            R2, #0x39E3
19BDA4:  SMLABB.W        R2, R1, R3, R2
19BDA8:  MOVS            R3, #0x7FFF0000
19BDAE:  LSRS            R2, R2, #0x10
19BDB0:  MULS            R2, R1
19BDB2:  AND.W           R2, R3, R2,LSL#1
19BDB6:  MOVS            R3, #0x59140000
19BDBC:  ADD             R2, R3
19BDBE:  SMULTB.W        R1, R2, R1
19BDC2:  MOVW            R2, #0xFFFF
19BDC6:  LSLS            R1, R1, #1
19BDC8:  BICS            R1, R2
19BDCA:  MOVS            R2, #0x3FFF0000
19BDD0:  ADD             R1, R2
19BDD2:  MOV             R2, #0xFFFFFFFE
19BDD6:  SUBS            R2, R2, R0
19BDD8:  ASRS            R1, R1, #0x10
19BDDA:  NEGS            R0, R2
19BDDC:  CMP             R2, #0
19BDDE:  LSL.W           R0, R1, R0
19BDE2:  IT GT
19BDE4:  ASRGT.W         R0, R1, R2
19BDE8:  LDR             R1, [SP,#0x50+var_30]
19BDEA:  MOVW            R2, #0x7FFF
19BDEE:  MULS            R1, R4
19BDF0:  STR             R1, [SP,#0x50+var_34]
19BDF2:  ASRS            R1, R0, #1
19BDF4:  CMP             R1, R2
19BDF6:  MOVW            R1, #0x7FFF
19BDFA:  IT LT
19BDFC:  ASRLT           R1, R0, #1
19BDFE:  ASRS            R0, R1, #0x10
19BE00:  UBFX.W          R1, R1, #1, #0xF
19BE04:  ORR.W           R0, R1, R0,LSL#15
19BE08:  STR             R0, [SP,#0x50+var_38]
19BE0A:  LSL.W           R1, R6, R10
19BE0E:  SXTH            R0, R0
19BE10:  STR             R1, [SP,#0x50+var_44]
19BE12:  STR             R0, [SP,#0x50+var_3C]
19BE14:  CLZ.W           R0, R1
19BE18:  RSB.W           R5, R0, #0x1F
19BE1C:  MOVS            R0, #7
19BE1E:  SUB.W           R0, R0, R5,ASR#1
19BE22:  LSLS            R0, R0, #1
19BE24:  LSL.W           R0, R1, R0
19BE28:  BLX             j_celt_rsqrt_norm
19BE2C:  STR             R0, [SP,#0x50+var_48]
19BE2E:  ASRS            R0, R5, #1
19BE30:  STR             R0, [SP,#0x50+var_4C]
19BE32:  MOVS            R2, #0
19BE34:  LDR.W           R12, [SP,#0x50+var_30]
19BE38:  LDR             R0, [SP,#0x50+var_28]
19BE3A:  LDR             R5, [R7,#arg_18]
19BE3C:  LDR             R3, [R0,#8]
19BE3E:  MOV             LR, R12
19BE40:  STR             R2, [SP,#0x50+var_24]
19BE42:  MOV             R0, R4
19BE44:  CMP             R0, #1
19BE46:  MLA.W           R2, R3, R2, R12
19BE4A:  LDR.W           R12, [R7,#arg_14]
19BE4E:  LDRSH.W         R4, [R5,R2,LSL#1]
19BE52:  LDRSH.W         R1, [R12,R2,LSL#1]
19BE56:  BNE             loc_19BE6E
19BE58:  ADD             R3, LR
19BE5A:  LDRSH.W         R5, [R5,R3,LSL#1]
19BE5E:  LDRSH.W         R3, [R12,R3,LSL#1]
19BE62:  CMP             R4, R5
19BE64:  IT LE
19BE66:  MOVLE           R4, R5
19BE68:  CMP             R1, R3
19BE6A:  IT LE
19BE6C:  MOVLE           R1, R3
19BE6E:  LDR             R3, [R7,#arg_10]
19BE70:  SXTH            R5, R1
19BE72:  MOV             R12, LR
19BE74:  LDR.W           LR, [SP,#0x50+var_2C]
19BE78:  LDRSH.W         R2, [R3,R2,LSL#1]
19BE7C:  SXTH            R3, R4
19BE7E:  CMP             R5, R3
19BE80:  IT LT
19BE82:  MOVLT           R4, R1
19BE84:  LDR             R5, [R7,#arg_18]
19BE86:  SXTH            R1, R4
19BE88:  SUBS            R1, R2, R1
19BE8A:  MOVS            R2, #0
19BE8C:  CMP             R1, #0
19BE8E:  IT LE
19BE90:  MOVLE           R1, R2
19BE92:  CMP.W           R1, #0x4000
19BE96:  BGE             loc_19BF1A
19BE98:  NEGS            R1, R1
19BE9A:  SBFX.W          R3, R1, #0xA, #6
19BE9E:  CMP             R3, #0xE
19BEA0:  BLE             loc_19BEA8
19BEA2:  MOV.W           R3, #0x7F000000
19BEA6:  B               loc_19BF08
19BEA8:  CMN.W           R3, #0xF
19BEAC:  BGE             loc_19BEB2
19BEAE:  MOVS            R3, #0
19BEB0:  B               loc_19BF08
19BEB2:  MOVW            R2, #0x3FF0
19BEB6:  AND.W           R1, R2, R1,LSL#4
19BEBA:  MOVS            R2, #0
19BEBC:  MOVW            R4, #0x4FB8
19BEC0:  MOVT            R2, #0x39E3
19BEC4:  SMLABB.W        R2, R1, R4, R2
19BEC8:  MOVS            R4, #0x7FFF0000
19BECE:  LSRS            R2, R2, #0x10
19BED0:  MULS            R2, R1
19BED2:  AND.W           R2, R4, R2,LSL#1
19BED6:  MOVS            R4, #0x59140000
19BEDC:  ADD             R2, R4
19BEDE:  SMULTB.W        R1, R2, R1
19BEE2:  MOVW            R2, #0xFFFF
19BEE6:  LSLS            R1, R1, #1
19BEE8:  BICS            R1, R2
19BEEA:  MOVS            R2, #0x3FFF0000
19BEF0:  ADD             R1, R2
19BEF2:  MOV             R2, #0xFFFFFFFE
19BEF6:  SUBS            R2, R2, R3
19BEF8:  ASRS            R1, R1, #0x10
19BEFA:  NEGS            R3, R2
19BEFC:  CMP             R2, #0
19BEFE:  LSL.W           R3, R1, R3
19BF02:  IT GT
19BF04:  ASRGT.W         R3, R1, R2
19BF08:  ASRS            R1, R3, #1
19BF0A:  MOVW            R2, #0x3FFF
19BF0E:  CMP             R1, R2
19BF10:  MOVW            R1, #0x3FFF
19BF14:  IT LT
19BF16:  ASRLT           R1, R3, #1
19BF18:  LSLS            R2, R1, #1
19BF1A:  CMP.W           R10, #3
19BF1E:  BNE             loc_19BF34
19BF20:  SXTH            R1, R2
19BF22:  CMP.W           R1, #0x5A80
19BF26:  IT GT
19BF28:  MOVWGT          R1, #0x5A81
19BF2C:  MOVW            R2, #0x5A82
19BF30:  MULS            R1, R2
19BF32:  LSRS            R2, R1, #0xE
19BF34:  LDR             R0, [SP,#0x50+var_28]
19BF36:  CMP.W           R10, #0x1F
19BF3A:  BEQ             loc_19BFF2
19BF3C:  LDR             R1, [R7,#arg_4]
19BF3E:  LDR             R4, [SP,#0x50+var_24]
19BF40:  LDR             R3, [SP,#0x50+var_40]
19BF42:  MUL.W           R5, R4, R1
19BF46:  LDR             R1, [R0,#0x18]
19BF48:  LDRSH.W         R1, [R1,R12,LSL#1]
19BF4C:  ADD.W           R0, R3, R5,LSL#1
19BF50:  LDR             R3, [SP,#0x50+var_3C]
19BF52:  LSL.W           R1, R1, R10
19BF56:  ADD.W           R0, R0, R1,LSL#1
19BF5A:  SXTH            R1, R2
19BF5C:  CMP             R3, R1
19BF5E:  LDR             R1, [SP,#0x50+var_38]
19BF60:  IT LT
19BF62:  MOVLT           R2, R1
19BF64:  LDR             R1, [SP,#0x50+var_34]
19BF66:  CMP             R6, #1
19BF68:  ADD.W           R12, R4, R1
19BF6C:  BLT             loc_19BFBC
19BF6E:  LDR             R1, [SP,#0x50+var_48]
19BF70:  SXTH            R2, R2
19BF72:  ASRS            R2, R2, #1
19BF74:  MOVS            R3, #0
19BF76:  MOVS            R5, #0
19BF78:  SMULBB.W        R2, R2, R1
19BF7C:  LDR             R1, [SP,#0x50+var_4C]
19BF7E:  ASRS            R2, R2, #0xF
19BF80:  ASRS            R2, R1
19BF82:  SXTH            R2, R2
19BF84:  LDRB.W          R1, [LR,R12]
19BF88:  MOVS            R4, #1
19BF8A:  LSLS            R4, R5
19BF8C:  TST             R4, R1
19BF8E:  BNE             loc_19BFB2
19BF90:  MOVS            R3, #0
19BF92:  MLA.W           R8, R8, R11, R9
19BF96:  LSL.W           R4, R3, R10
19BF9A:  MOV             R1, R2
19BF9C:  ADD             R4, R5
19BF9E:  ADDS            R3, #1
19BFA0:  TST.W           R8, #0x8000
19BFA4:  IT EQ
19BFA6:  NEGEQ           R1, R1
19BFA8:  CMP             R6, R3
19BFAA:  STRH.W          R1, [R0,R4,LSL#1]
19BFAE:  BNE             loc_19BF92
19BFB0:  MOVS            R3, #1
19BFB2:  LDR             R1, [SP,#0x50+var_20]
19BFB4:  ADDS            R5, #1
19BFB6:  CMP             R5, R1
19BFB8:  BLT             loc_19BF84
19BFBA:  B               loc_19BFDC
19BFBC:  LDRB.W          R1, [LR,R12]
19BFC0:  MOVS            R3, #0
19BFC2:  LDR             R4, [SP,#0x50+var_20]
19BFC4:  MOVS            R2, #0
19BFC6:  MOV.W           R12, #1
19BFCA:  LSL.W           R5, R12, R2
19BFCE:  TST             R5, R1
19BFD0:  ADD.W           R2, R2, #1
19BFD4:  IT EQ
19BFD6:  MOVEQ           R3, #1
19BFD8:  CMP             R2, R4
19BFDA:  BLT             loc_19BFCA
19BFDC:  CBZ             R3, loc_19BFEA
19BFDE:  LDR             R1, [SP,#0x50+var_44]
19BFE0:  MOVW            R2, #0x7FFF
19BFE4:  LDR             R3, [R7,#arg_24]
19BFE6:  BLX             j_renormalise_vector
19BFEA:  LDR             R0, [SP,#0x50+var_28]
19BFEC:  LDR.W           R12, [SP,#0x50+var_30]
19BFF0:  LDR             R5, [R7,#arg_18]
19BFF2:  LDR             R2, [SP,#0x50+var_24]
19BFF4:  LDR             R1, [R7,#arg_0]
19BFF6:  ADDS            R2, #1
19BFF8:  MOV             R4, R1
19BFFA:  CMP             R2, R4
19BFFC:  BLT.W           loc_19BE3C
19C000:  LDR             R1, [R7,#arg_C]
19C002:  LDR             R2, [SP,#0x50+var_50]
19C004:  CMP             R2, R1
19C006:  BNE.W           loc_19BD50
19C00A:  ADD             SP, SP, #0x34 ; '4'
19C00C:  POP.W           {R8-R11}
19C010:  POP             {R4-R7,PC}
