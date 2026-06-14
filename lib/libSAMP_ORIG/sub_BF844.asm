; =========================================================
; Game Engine Function: sub_BF844
; Address            : 0xBF844 - 0xBFDCA
; =========================================================

BF844:  PUSH            {R4-R7,LR}
BF846:  ADD             R7, SP, #0xC
BF848:  PUSH.W          {R8-R11}
BF84C:  SUB             SP, SP, #0x5C
BF84E:  MOV             R11, R0
BF850:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xBF85C)
BF854:  MOV             R4, R1
BF856:  MOV             R10, R3
BF858:  ADD             R0, PC; __stack_chk_guard_ptr
BF85A:  MOV             R8, R2
BF85C:  CMP.W           R10, #1
BF860:  LDR             R0, [R0]; __stack_chk_guard
BF862:  LDR             R0, [R0]
BF864:  LDR             R1, [R7,#arg_18]
BF866:  STR             R0, [SP,#0x78+var_20]
BF868:  LDR.W           R0, [R11]
BF86C:  LDR.W           R9, [R11,#0x1C]
BF870:  BNE             loc_BF8AC
BF872:  LDR.W           R1, [R11,#0x20]
BF876:  MOV.W           R10, #1
BF87A:  CMP.W           R8, #0
BF87E:  IT NE
BF880:  MOVNE.W         R10, #2
BF884:  CMP             R0, #0
BF886:  BEQ.W           loc_BFA10
BF88A:  CMP             R1, #8
BF88C:  BLT.W           loc_BFA2A
BF890:  LDRH            R0, [R4]
BF892:  MOVS            R2, #1
BF894:  LSRS            R6, R0, #0xF
BF896:  MOV             R0, R9
BF898:  MOV             R1, R6
BF89A:  BLX             j_ec_enc_bits
BF89E:  LDR.W           R0, [R11,#0x20]
BF8A2:  SUB.W           R1, R0, #8
BF8A6:  STR.W           R1, [R11,#0x20]
BF8AA:  B               loc_BFA2C
BF8AC:  LDR             R3, [R7,#arg_4]
BF8AE:  ADD.W           R2, R7, #8
BF8B2:  STRD.W          R0, R1, [SP,#0x78+var_44]
BF8B6:  MOVS            R1, #1
BF8B8:  LDR             R6, [R7,#arg_C]
BF8BA:  ADD.W           R0, R7, #0x20 ; ' '
BF8BE:  STRD.W          R10, R2, [SP,#0x78+var_78]
BF8C2:  MOV             R2, R4
BF8C4:  STRD.W          R3, R3, [SP,#0x78+var_70]
BF8C8:  MOV             R3, R8
BF8CA:  STRD.W          R6, R1, [SP,#0x78+var_68]; int
BF8CE:  ADD             R1, SP, #0x78+var_38
BF8D0:  STR             R0, [SP,#0x78+var_60]; int
BF8D2:  MOV             R0, R11
BF8D4:  BL              sub_C040C
BF8D8:  LDR             R0, [SP,#0x78+var_38]
BF8DA:  CMP.W           R10, #2
BF8DE:  STR             R0, [SP,#0x78+var_50]
BF8E0:  LDR             R0, [SP,#0x78+var_34]
BF8E2:  STR             R0, [SP,#0x78+var_3C]
BF8E4:  LDR             R6, [SP,#0x78+var_30]
BF8E6:  LDR             R5, [SP,#0x78+var_28]
BF8E8:  LDR             R0, [R7,#arg_0]
BF8EA:  LDR             R1, [SP,#0x78+var_24]
BF8EC:  STR             R4, [SP,#0x78+src]
BF8EE:  BNE             loc_BF96A
BF8F0:  CMP.W           R5, #0x4000
BF8F4:  MOV.W           R2, #0
BF8F8:  STR             R6, [SP,#0x78+var_48]
BF8FA:  IT NE
BF8FC:  MOVNE           R2, #8
BF8FE:  CMP             R5, #0
BF900:  LDR.W           R3, [R11,#0x20]
BF904:  IT EQ
BF906:  MOVEQ           R2, R5
BF908:  CMP.W           R5, #0x2000
BF90C:  ADD             R1, R2
BF90E:  MOV.W           R6, #0
BF912:  SUB.W           R1, R3, R1
BF916:  STR.W           R1, [R11,#0x20]
BF91A:  MOV             R1, R8
BF91C:  SUB.W           R3, R0, R2
BF920:  ITT GT
BF922:  MOVGT           R1, R4
BF924:  MOVGT           R4, R8
BF926:  ORR.W           R0, R5, #0x4000
BF92A:  CMP.W           R0, #0x4000
BF92E:  MOV             R5, R1
BF930:  BEQ.W           loc_BFCE4
BF934:  LDR             R0, [SP,#0x78+var_44]
BF936:  STR             R3, [SP,#0x78+var_54]
BF938:  CMP             R0, #0
BF93A:  BEQ.W           loc_BFCD8
BF93E:  LDRSH.W         R0, [R4]
BF942:  LDRSH.W         R3, [R5,#2]
BF946:  LDRSH.W         R1, [R4,#2]
BF94A:  LDRSH.W         R2, [R5]
BF94E:  SMULBB.W        R0, R3, R0
BF952:  SMULBB.W        R2, R2, R1
BF956:  MOVS            R1, #0
BF958:  CMP             R0, R2
BF95A:  MOV             R0, R9
BF95C:  IT LT
BF95E:  MOVLT           R1, #1
BF960:  MOVS            R2, #1
BF962:  MOV             R6, R1
BF964:  BLX             j_ec_enc_bits
BF968:  B               loc_BFCE2
BF96A:  LDR.W           R2, [R11,#0x20]
BF96E:  MOV             R9, R0
BF970:  LDR             R3, [SP,#0x78+var_2C]
BF972:  MOV.W           R12, #0
BF976:  SUBS            R2, R2, R1
BF978:  MOV             R1, R2
BF97A:  STR             R1, [SP,#0x78+var_40]
BF97C:  SUBS            R1, R0, R3
BF97E:  STR.W           R2, [R11,#0x20]
BF982:  ADD.W           R1, R1, R1,LSR#31
BF986:  LDR             R3, [R7,#arg_18]
BF988:  CMP.W           R0, R1,ASR#1
BF98C:  IT GE
BF98E:  MOVGE.W         R9, R1,ASR#1
BF992:  CMP.W           R9, #0
BF996:  IT LE
BF998:  MOVLE           R9, R12
BF99A:  SUB.W           R4, R0, R9
BF99E:  CMP             R9, R4
BF9A0:  BGE             loc_BFA94
BF9A2:  LDR             R0, [R7,#arg_4]
BF9A4:  SXTH            R1, R6
BF9A6:  MOV             R6, R3
BF9A8:  MOV             R2, R0
BF9AA:  ASR.W           R0, R3, R2
BF9AE:  STRD.W          R2, R12, [SP,#0x78+var_78]; int
BF9B2:  LDR             R2, [R7,#arg_C]
BF9B4:  MOV             R3, R4; int
BF9B6:  STRD.W          R2, R12, [SP,#0x78+var_70]; int
BF9BA:  MOV             R2, R10; int
BF9BC:  STRD.W          R1, R12, [SP,#0x78+var_68]; int
BF9C0:  MOV             R1, R8; int
BF9C2:  STR             R0, [SP,#0x78+var_60]; int
BF9C4:  MOV             R0, R11; int
BF9C6:  BL              sub_BF198
BF9CA:  STR             R0, [SP,#0x78+var_44]
BF9CC:  MOVW            R1, #0x7FFF
BF9D0:  LDR             R2, [R7,#arg_4]
BF9D2:  MOV             R3, R9
BF9D4:  LDR.W           R0, [R11,#0x20]
BF9D8:  STR             R2, [SP,#0x78+var_78]
BF9DA:  LDR             R2, [R7,#arg_8]
BF9DC:  STR             R2, [SP,#0x78+var_74]
BF9DE:  LDR             R2, [R7,#arg_C]
BF9E0:  STR             R2, [SP,#0x78+var_70]
BF9E2:  LDR             R2, [R7,#arg_10]
BF9E4:  STRD.W          R2, R1, [SP,#0x78+var_6C]
BF9E8:  LDR             R1, [R7,#arg_14]
BF9EA:  STRD.W          R1, R6, [SP,#0x78+dest]
BF9EE:  LDR             R1, [SP,#0x78+var_40]
BF9F0:  SUBS            R0, R0, R1
BF9F2:  ADD             R0, R4
BF9F4:  ADD.W           R1, R9, R0
BF9F8:  CMP             R0, #0x18
BF9FA:  IT GT
BF9FC:  SUBGT.W         R3, R1, #0x18
BFA00:  CMP.W           R5, #0x4000
BFA04:  IT EQ
BFA06:  MOVEQ           R3, R9
BFA08:  LDR             R4, [SP,#0x78+src]
BFA0A:  MOV             R0, R11
BFA0C:  MOV             R1, R4
BFA0E:  B               loc_BFAFE
BFA10:  CMP             R1, #8
BFA12:  BLT.W           loc_BFB42
BFA16:  MOV             R0, R9
BFA18:  MOVS            R1, #1
BFA1A:  BLX             j_ec_dec_bits
BFA1E:  LDR.W           R1, [R11,#0x20]
BFA22:  SUBS            R1, #8
BFA24:  STR.W           R1, [R11,#0x20]
BFA28:  B               loc_BFB44
BFA2A:  MOVS            R6, #0
BFA2C:  LDR.W           R0, [R11,#4]
BFA30:  CBZ             R0, loc_BFA44
BFA32:  MOV.W           R2, #0x4000
BFA36:  CMP             R6, #0
BFA38:  ITT NE
BFA3A:  MOVWNE          R2, #0xC000
BFA3E:  MOVTNE          R2, #0xFFFF
BFA42:  STRH            R2, [R4]
BFA44:  CMP.W           R8, #0
BFA48:  BEQ.W           loc_BFBA0
BFA4C:  MOVS            R5, #1
BFA4E:  CMP             R1, #8
BFA50:  BLT             loc_BFA74
BFA52:  LDRH.W          R0, [R8]
BFA56:  MOVS            R2, #1
BFA58:  LSRS            R6, R0, #0xF
BFA5A:  MOV             R0, R9
BFA5C:  MOV             R1, R6
BFA5E:  BLX             j_ec_enc_bits
BFA62:  LDR.W           R1, [R11,#0x20]
BFA66:  LDR.W           R0, [R11,#4]
BFA6A:  SUBS            R1, #8
BFA6C:  STR.W           R1, [R11,#0x20]
BFA70:  CBNZ            R0, loc_BFA78
BFA72:  B               loc_BFA8C
BFA74:  MOVS            R6, #0
BFA76:  CBZ             R0, loc_BFA8C
BFA78:  CMP             R6, #0
BFA7A:  MOV.W           R2, #0x4000
BFA7E:  ITT NE
BFA80:  MOVWNE          R2, #0xC000
BFA84:  MOVTNE          R2, #0xFFFF
BFA88:  STRH.W          R2, [R8]
BFA8C:  ADDS            R5, #1
BFA8E:  CMP             R5, R10
BFA90:  BLT             loc_BFA4E
BFA92:  B               loc_BFBA0
BFA94:  LDR             R1, [R7,#arg_4]
BFA96:  MOVW            R0, #0x7FFF
BFA9A:  STR             R1, [SP,#0x78+var_78]; int
BFA9C:  MOV             R2, R10; int
BFA9E:  LDR             R1, [R7,#arg_8]
BFAA0:  STR             R1, [SP,#0x78+var_74]; src
BFAA2:  LDR             R1, [R7,#arg_C]
BFAA4:  STR             R1, [SP,#0x78+var_70]; int
BFAA6:  LDR             R1, [R7,#arg_10]
BFAA8:  STRD.W          R1, R0, [SP,#0x78+var_6C]; int
BFAAC:  LDR             R0, [R7,#arg_14]
BFAAE:  STRD.W          R0, R3, [SP,#0x78+dest]; dest
BFAB2:  MOV             R0, R11; int
BFAB4:  LDR             R1, [SP,#0x78+src]; int
BFAB6:  STR             R3, [SP,#0x78+var_48]
BFAB8:  MOV             R3, R9; int
BFABA:  BL              sub_BF198
BFABE:  STR             R0, [SP,#0x78+var_44]
BFAC0:  SXTH            R2, R6
BFAC2:  LDR             R3, [R7,#arg_4]
BFAC4:  MOVS            R6, #0
BFAC6:  LDR             R0, [SP,#0x78+var_48]
BFAC8:  LDR.W           R1, [R11,#0x20]
BFACC:  STR             R3, [SP,#0x78+var_78]; int
BFACE:  ASRS            R0, R3
BFAD0:  LDR             R3, [R7,#arg_C]
BFAD2:  STR             R6, [SP,#0x78+var_74]; src
BFAD4:  STRD.W          R3, R6, [SP,#0x78+var_70]; int
BFAD8:  MOVS            R3, #0
BFADA:  STRD.W          R2, R3, [SP,#0x78+var_68]; int
BFADE:  MOV             R3, R4
BFAE0:  STR             R0, [SP,#0x78+var_60]; int
BFAE2:  LDR             R0, [SP,#0x78+var_40]
BFAE4:  SUBS            R0, R1, R0
BFAE6:  ADD             R0, R9
BFAE8:  ADDS            R1, R4, R0
BFAEA:  CMP             R0, #0x18
BFAEC:  IT GT
BFAEE:  SUBGT.W         R3, R1, #0x18
BFAF2:  CMP             R5, #0
BFAF4:  IT EQ
BFAF6:  MOVEQ           R3, R4; int
BFAF8:  LDR             R4, [SP,#0x78+src]
BFAFA:  MOV             R0, R11; int
BFAFC:  MOV             R1, R8; int
BFAFE:  MOV             R2, R10; int
BFB00:  BL              sub_BF198
BFB04:  LDR             R2, [SP,#0x78+var_44]
BFB06:  LDR.W           R1, [R11,#4]
BFB0A:  ORR.W           R9, R2, R0
BFB0E:  CMP             R1, #0
BFB10:  BEQ.W           loc_BFDAE
BFB14:  MOVW            R12, #:lower16:(aZtinst6Ndk114c_0+8); "__ndk114collate_bynameIwEE"
BFB18:  CMP.W           R10, #1
BFB1C:  MOVT            R12, #:upper16:(aZtinst6Ndk114c_0+8); "__ndk114collate_bynameIwEE"
BFB20:  BLT             loc_BFBB4
BFB22:  MOVS            R1, #0
BFB24:  MOV             R3, R8
BFB26:  MOV             R5, R4
BFB28:  MOV             R6, R10
BFB2A:  MOVS            R2, #0
BFB2C:  LDRSH.W         R4, [R3],#2
BFB30:  SUBS            R6, #1
BFB32:  LDRSH.W         R0, [R5],#2
BFB36:  SMLABB.W        R1, R4, R4, R1
BFB3A:  SMLABB.W        R2, R0, R4, R2
BFB3E:  BNE             loc_BFB2C
BFB40:  B               loc_BFBB8
BFB42:  MOVS            R0, #0
BFB44:  LDR.W           R2, [R11,#4]
BFB48:  CBZ             R2, loc_BFB5C
BFB4A:  MOV.W           R3, #0x4000
BFB4E:  CMP             R0, #0
BFB50:  ITT NE
BFB52:  MOVWNE          R3, #0xC000
BFB56:  MOVTNE          R3, #0xFFFF
BFB5A:  STRH            R3, [R4]
BFB5C:  CMP.W           R8, #0
BFB60:  BEQ             loc_BFBA0
BFB62:  MOVS            R5, #1
BFB64:  CMP             R1, #8
BFB66:  BLT             loc_BFB82
BFB68:  MOV             R0, R9
BFB6A:  MOVS            R1, #1
BFB6C:  BLX             j_ec_dec_bits
BFB70:  LDR.W           R1, [R11,#0x20]
BFB74:  LDR.W           R2, [R11,#4]
BFB78:  SUBS            R1, #8
BFB7A:  STR.W           R1, [R11,#0x20]
BFB7E:  CBNZ            R2, loc_BFB86
BFB80:  B               loc_BFB9A
BFB82:  MOVS            R0, #0
BFB84:  CBZ             R2, loc_BFB9A
BFB86:  CMP             R0, #0
BFB88:  MOV.W           R0, #0x4000
BFB8C:  ITT NE
BFB8E:  MOVWNE          R0, #0xC000
BFB92:  MOVTNE          R0, #0xFFFF
BFB96:  STRH.W          R0, [R8]
BFB9A:  ADDS            R5, #1
BFB9C:  CMP             R5, R10
BFB9E:  BLT             loc_BFB64
BFBA0:  LDR             R1, [R7,#arg_10]
BFBA2:  MOV.W           R9, #1
BFBA6:  CMP             R1, #0
BFBA8:  ITTT NE
BFBAA:  LDRSHNE.W       R0, [R4]
BFBAE:  LSRNE           R0, R0, #4
BFBB0:  STRHNE          R0, [R1]
BFBB2:  B               loc_BFDAE
BFBB4:  MOVS            R2, #0
BFBB6:  MOVS            R1, #0
BFBB8:  LDR             R6, [SP,#0x78+var_3C]
BFBBA:  ASRS            R0, R2, #0x10
BFBBC:  UXTH            R2, R2
BFBBE:  SXTH            R3, R6
BFBC0:  MULS            R2, R3
BFBC2:  LSLS            R3, R6, #0x10
BFBC4:  ASRS            R5, R3, #0xF
BFBC6:  MULS            R0, R5
BFBC8:  SBFX.W          R3, R6, #1, #0xF
BFBCC:  SMLABB.W        R1, R3, R3, R1
BFBD0:  ADD.W           R2, R0, R2,ASR#15
BFBD4:  ADD.W           R4, R1, R2,LSL#1
BFBD8:  CMP             R4, R12
BFBDA:  ITT GE
BFBDC:  SUBGE.W         R1, R1, R2,LSL#1
BFBE0:  CMPGE           R1, R12
BFBE2:  BGE             loc_BFBF2
BFBE4:  LDR             R1, [SP,#0x78+src]; src
BFBE6:  MOV.W           R2, R10,LSL#1; n
BFBEA:  MOV             R0, R8; dest
BFBEC:  BLX             j_memcpy
BFBF0:  B               loc_BFD92
BFBF2:  CLZ.W           R0, R1
BFBF6:  RSB.W           R3, R0, #0x1F
BFBFA:  STR             R3, [SP,#0x78+var_3C]
BFBFC:  BIC.W           R0, R3, #1
BFC00:  SUB.W           R2, R0, #0xE
BFC04:  RSB.W           R0, R0, #0xE
BFC08:  ASRS            R3, R3, #1
BFC0A:  CMP             R3, #7
BFC0C:  LSL.W           R0, R1, R0
BFC10:  STR             R3, [SP,#0x78+var_40]
BFC12:  IT GT
BFC14:  ASRGT.W         R0, R1, R2
BFC18:  BLX             j_celt_rsqrt_norm
BFC1C:  STR             R0, [SP,#0x78+var_54]
BFC1E:  CLZ.W           R0, R4
BFC22:  RSB.W           R11, R0, #0x1F
BFC26:  BIC.W           R0, R11, #1
BFC2A:  SUB.W           R1, R0, #0xE
BFC2E:  RSB.W           R0, R0, #0xE
BFC32:  MOV.W           R2, R11,ASR#1
BFC36:  CMP             R2, #7
BFC38:  LSL.W           R0, R4, R0
BFC3C:  STR             R2, [SP,#0x78+var_44]
BFC3E:  IT GT
BFC40:  ASRGT.W         R0, R4, R1
BFC44:  BLX             j_celt_rsqrt_norm
BFC48:  LDR             R1, [SP,#0x78+var_44]
BFC4A:  MOVS            R3, #7
BFC4C:  MOVS            R6, #7
BFC4E:  CMP             R1, #7
BFC50:  IT GT
BFC52:  MOVGT.W         R3, R11,ASR#1
BFC56:  LDR             R1, [SP,#0x78+var_40]
BFC58:  CMP             R1, #7
BFC5A:  LDR             R1, [SP,#0x78+var_3C]
BFC5C:  IT GT
BFC5E:  ASRGT           R6, R1, #1
BFC60:  CMP.W           R10, #1
BFC64:  BLT.W           loc_BFDAE
BFC68:  MOVS            R2, #2
BFC6A:  LDR.W           R12, [SP,#0x78+src]
BFC6E:  LSL.W           R1, R2, R3
BFC72:  LSLS            R2, R6
BFC74:  ASRS            R1, R1, #1
BFC76:  LDR.W           LR, [SP,#0x78+var_54]
BFC7A:  STR             R1, [SP,#0x78+var_3C]
BFC7C:  ASRS            R1, R2, #1
BFC7E:  STR             R1, [SP,#0x78+var_40]
BFC80:  ADDS            R1, R3, #1
BFC82:  STR             R1, [SP,#0x78+var_44]
BFC84:  ADDS            R1, R6, #1
BFC86:  MOV             R4, R8
BFC88:  MOV             R6, R10
BFC8A:  STR.W           R9, [SP,#0x78+var_58]
BFC8E:  STR             R1, [SP,#0x78+var_48]
BFC90:  LDRSH.W         R1, [R12]
BFC94:  SUBS            R6, #1
BFC96:  LDRSH.W         R9, [R4]
BFC9A:  LDR             R2, [SP,#0x78+var_40]
BFC9C:  MUL.W           R1, R5, R1
BFCA0:  ADD.W           R1, R1, #0x8000
BFCA4:  RSB.W           R11, R9, R1,ASR#16
BFCA8:  ADD.W           R1, R9, R1,ASR#16
BFCAC:  SXTH.W          R3, R11
BFCB0:  SMLABB.W        R3, R3, LR, R2
BFCB4:  LDR             R2, [SP,#0x78+var_3C]
BFCB6:  SXTH            R1, R1
BFCB8:  SMLABB.W        R1, R1, R0, R2
BFCBC:  LDR             R2, [SP,#0x78+var_48]
BFCBE:  ASR.W           R2, R3, R2
BFCC2:  STRH.W          R2, [R12],#2
BFCC6:  LDR             R2, [SP,#0x78+var_44]
BFCC8:  ASR.W           R1, R1, R2
BFCCC:  STRH.W          R1, [R4],#2
BFCD0:  BNE             loc_BFC90
BFCD2:  LDR.W           R9, [SP,#0x78+var_58]
BFCD6:  B               loc_BFD92
BFCD8:  MOV             R0, R9
BFCDA:  MOVS            R1, #1
BFCDC:  BLX             j_ec_dec_bits
BFCE0:  MOV             R6, R0
BFCE2:  LDR             R3, [SP,#0x78+var_54]; int
BFCE4:  LDR             R1, [R7,#arg_4]
BFCE6:  MOVW            R0, #0x7FFF
BFCEA:  STR             R1, [SP,#0x78+var_78]; int
BFCEC:  MOVS            R2, #2; int
BFCEE:  LDR             R1, [R7,#arg_8]
BFCF0:  STR             R1, [SP,#0x78+var_74]; src
BFCF2:  LDR             R1, [R7,#arg_C]
BFCF4:  STR             R1, [SP,#0x78+var_70]; int
BFCF6:  LDR             R1, [R7,#arg_10]
BFCF8:  STRD.W          R1, R0, [SP,#0x78+var_6C]; int
BFCFC:  MOV             R1, R4; int
BFCFE:  LDR             R0, [R7,#arg_14]
BFD00:  STR             R0, [SP,#0x78+dest]; dest
BFD02:  LDR             R0, [SP,#0x78+var_40]
BFD04:  STR             R0, [SP,#0x78+var_60]; int
BFD06:  MOV             R0, R11; int
BFD08:  BL              sub_BF198
BFD0C:  MOV             R9, R0
BFD0E:  MOVS            R0, #1
BFD10:  SUB.W           R0, R0, R6,LSL#1
BFD14:  LDRH            R1, [R4,#2]
BFD16:  NEGS            R2, R0
BFD18:  MULS            R1, R2
BFD1A:  STRH            R1, [R5]
BFD1C:  LDRH            R1, [R4]
BFD1E:  MULS            R0, R1
BFD20:  STRH            R0, [R5,#2]
BFD22:  LDR.W           R0, [R11,#4]
BFD26:  CMP             R0, #0
BFD28:  BEQ             loc_BFDAE
BFD2A:  LDR             R6, [SP,#0x78+src]
BFD2C:  LDR             R2, [SP,#0x78+var_3C]
BFD2E:  LDRSH.W         R0, [R6]
BFD32:  LDRSH.W         R1, [R6,#2]
BFD36:  SXTH            R2, R2
BFD38:  SMULBB.W        R0, R2, R0
BFD3C:  SMULBB.W        R1, R2, R1
BFD40:  LSRS            R0, R0, #0xF
BFD42:  STRH            R0, [R6]
BFD44:  LSRS            R0, R1, #0xF
BFD46:  STRH            R0, [R6,#2]
BFD48:  LDR             R2, [SP,#0x78+var_48]
BFD4A:  LDRSH.W         R0, [R8]
BFD4E:  LDRSH.W         R1, [R8,#2]
BFD52:  SXTH            R2, R2
BFD54:  SMULBB.W        R0, R2, R0
BFD58:  SMULBB.W        R1, R2, R1
BFD5C:  LSRS            R2, R0, #0xF
BFD5E:  LSRS            R1, R1, #0xF
BFD60:  STRH.W          R2, [R8]
BFD64:  STRH.W          R1, [R8,#2]
BFD68:  LDRSH.W         R1, [R6]
BFD6C:  SUB.W           R0, R1, R0,LSR#15
BFD70:  STRH            R0, [R6]
BFD72:  LDRH.W          R0, [R8]
BFD76:  LDRH.W          R2, [R8,#2]
BFD7A:  ADD             R0, R1
BFD7C:  STRH.W          R0, [R8]
BFD80:  LDRSH.W         R0, [R6,#2]
BFD84:  SUBS            R1, R0, R2
BFD86:  STRH            R1, [R6,#2]
BFD88:  LDRH.W          R1, [R8,#2]
BFD8C:  ADD             R0, R1
BFD8E:  STRH.W          R0, [R8,#2]
BFD92:  LDR             R0, [SP,#0x78+var_50]
BFD94:  CBZ             R0, loc_BFDAE
BFD96:  CMP.W           R10, #1
BFD9A:  BLT             loc_BFDAE
BFD9C:  LDRH.W          R0, [R8]
BFDA0:  SUBS.W          R10, R10, #1
BFDA4:  RSB.W           R0, R0, #0
BFDA8:  STRH.W          R0, [R8],#2
BFDAC:  BNE             loc_BFD9C
BFDAE:  LDR             R0, =(__stack_chk_guard_ptr - 0xBFDB6)
BFDB0:  LDR             R1, [SP,#0x78+var_20]
BFDB2:  ADD             R0, PC; __stack_chk_guard_ptr
BFDB4:  LDR             R0, [R0]; __stack_chk_guard
BFDB6:  LDR             R0, [R0]
BFDB8:  SUBS            R0, R0, R1
BFDBA:  ITTTT EQ
BFDBC:  MOVEQ           R0, R9
BFDBE:  ADDEQ           SP, SP, #0x5C ; '\'
BFDC0:  POPEQ.W         {R8-R11}
BFDC4:  POPEQ           {R4-R7,PC}
BFDC6:  BLX             __stack_chk_fail
