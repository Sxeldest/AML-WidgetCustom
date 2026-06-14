; =========================================================
; Game Engine Function: silk_noise_shape_analysis_FIX
; Address            : 0xCF810 - 0xD084A
; =========================================================

CF810:  PUSH            {R4-R7,LR}
CF812:  ADD             R7, SP, #0xC
CF814:  PUSH.W          {R8-R11}
CF818:  SUB             SP, SP, #0x1B4
CF81A:  MOV             R4, R0
CF81C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xCF82A)
CF820:  MOV             R6, SP
CF822:  ADD.W           R12, R6, #0x80
CF826:  ADD             R0, PC; __stack_chk_guard_ptr
CF828:  STR             R3, [R6,#0x1D0+var_160]
CF82A:  MOV.W           R10, #0
CF82E:  MOV             R9, R1
CF830:  LDR             R0, [R0]; __stack_chk_guard
CF832:  MOVW            R1, #0x125C
CF836:  MOV             R5, R2
CF838:  MOVW            R2, #0x11F8
CF83C:  MOVW            R8, #0x126C
CF840:  LDR             R0, [R0]
CF842:  STR             R0, [R6,#0x1D0+var_154]
CF844:  MOVW            R0, #0x1258
CF848:  STR.W           R10, [R12,#4]
CF84C:  LDR             R0, [R4,R0]
CF84E:  LDR             R1, [R4,R1]
CF850:  LDR             R2, [R4,R2]
CF852:  ADD             R0, R1
CF854:  STR             R2, [R6,#0x1D0+var_164]
CF856:  MOVS            R1, #1
CF858:  LDR.W           R11, [R4,R8]
CF85C:  ASRS            R0, R0, #2
CF85E:  STR.W           R0, [R9,#0x180]
CF862:  SUB.W           R0, R11, #0xA00
CF866:  ADD.W           R0, R1, R0,ASR#3
CF86A:  ASRS            R0, R0, #1
CF86C:  BLX             j_silk_sigm_Q15
CF870:  ASRS            R0, R0, #1
CF872:  MOVW            R1, #0x1244
CF876:  STR.W           R0, [R9,#0x184]
CF87A:  LDR             R1, [R4,R1]
CF87C:  CBZ             R1, loc_CF884
CF87E:  STR.W           R11, [R6,#0x1D0+var_15C]
CF882:  B               loc_CF8B6
CF884:  MOVW            R1, #0x11B4
CF888:  LDR.W           R2, [R9,#0x180]
CF88C:  LDR             R1, [R4,R1]
CF88E:  SXTH            R0, R0
CF890:  ADD.W           R2, R2, #0x4000
CF894:  RSB.W           R1, R1, #0x100
CF898:  MULS            R0, R2
CF89A:  SXTH            R3, R1
CF89C:  MULS            R1, R3
CF89E:  ASRS            R3, R0, #0x10
CF8A0:  SBFX.W          R1, R1, #8, #0x10
CF8A4:  SUB.W           R1, R10, R1,LSL#3
CF8A8:  UXTH            R2, R1
CF8AA:  SMLATT.W        R0, R1, R0, R11
CF8AE:  MULS            R2, R3
CF8B0:  ADD.W           R0, R0, R2,ASR#16
CF8B4:  STR             R0, [R6,#0x74]
CF8B6:  MOVW            R10, #0x129D
CF8BA:  LDRB.W          R0, [R4,R10]
CF8BE:  STR.W           R9, [R6,#0x3C]
CF8C2:  CMP             R0, #2
CF8C4:  STR             R4, [R6,#0x10]
CF8C6:  BNE             loc_CF8DE
CF8C8:  MOVW            R0, #0x21B0
CF8CC:  MOVW            R1, #0x129E
CF8D0:  LDR             R0, [R4,R0]
CF8D2:  MOVS            R2, #0
CF8D4:  STRB            R2, [R4,R1]
CF8D6:  MOV             R8, R4
CF8D8:  SBFX.W          R11, R0, #7, #9
CF8DC:  B               loc_CF9B4
CF8DE:  ADD.W           R0, R4, R8
CF8E2:  MOVW            R2, #0x6666
CF8E6:  MOV.W           R10, #0
CF8EA:  LDR             R0, [R0]
CF8EC:  SXTH            R1, R0
CF8EE:  LSLS            R0, R0, #0x10
CF8F0:  SMULBB.W        R1, R1, R2
CF8F4:  LDR.W           R2, [R9,#0x180]
CF8F8:  RSB.W           R2, R2, #0x4000
CF8FC:  SXTH            R3, R2
CF8FE:  ASRS            R1, R1, #0x10
CF900:  SUB.W           R0, R1, R0,ASR#15
CF904:  ADD.W           R0, R0, #0xC00
CF908:  UXTH            R1, R0
CF90A:  MULS            R1, R3
CF90C:  MOVW            R3, #0x11E4
CF910:  LDRSH           R3, [R4,R3]
CF912:  ADD.W           R3, R3, R3,LSL#2
CF916:  CMP             R3, #2
CF918:  MOV.W           R1, R1,ASR#16
CF91C:  ADD.W           R4, R3, R3,LSR#31
CF920:  SMLATB.W        R0, R0, R2, R1
CF924:  STR             R0, [R6,#0x68]
CF926:  MOV.W           R0, R4,ASR#1
CF92A:  STR             R0, [R6,#0x78]
CF92C:  BLT             loc_CF98C
CF92E:  LDR             R1, [R6,#0x10]
CF930:  MOV.W           R0, #0x11E0
CF934:  MOV.W           R8, #0
CF938:  MOV.W           R10, #0
CF93C:  MOV.W           R11, #0
CF940:  LDR             R0, [R1,R0]
CF942:  LSLS            R4, R0, #1
CF944:  MOV.W           R9, R0,LSL#2
CF948:  ADD.W           R0, R6, #0x80
CF94C:  ADD.W           R1, R6, #0x84
CF950:  MOV             R2, R5
CF952:  MOV             R3, R4
CF954:  BLX             j_silk_sum_sqr_shift
CF958:  ADD.W           R0, R6, #0x80
CF95C:  MOV             R2, R0
CF95E:  LDRD.W          R0, R1, [R2]
CF962:  ASR.W           R1, R4, R1
CF966:  ADD             R0, R1
CF968:  STR             R0, [R2]
CF96A:  BLX             j_silk_lin2log
CF96E:  CMP.W           R8, #1
CF972:  BLT             loc_CF97E
CF974:  SUBS.W          R1, R0, R11
CF978:  IT MI
CF97A:  NEGMI           R1, R1
CF97C:  ADD             R10, R1
CF97E:  LDR             R1, [R6,#0x78]
CF980:  ADD.W           R8, R8, #1
CF984:  ADD             R5, R9
CF986:  MOV             R11, R0
CF988:  CMP             R1, R8
CF98A:  BNE             loc_CF948
CF98C:  LDR             R1, [R6,#0x78]
CF98E:  MOVS            R0, #0x4D ; 'M'
CF990:  MULS            R0, R1
CF992:  MOVS            R1, #0
CF994:  SUBS            R0, #0x4D ; 'M'
CF996:  CMP             R10, R0
CF998:  MOVW            R0, #0x129E
CF99C:  IT LE
CF99E:  MOVLE           R1, #1
CF9A0:  LDR.W           R8, [R6,#0x10]
CF9A4:  MOVW            R10, #0x129D
CF9A8:  STRB.W          R1, [R8,R0]
CF9AC:  LDR.W           R9, [R6,#0x3C]
CF9B0:  LDR.W           R11, [R6,#0x68]
CF9B4:  LDR.W           R0, [R9,#0x188]
CF9B8:  UXTH            R1, R0
CF9BA:  LSLS            R1, R1, #5
CF9BC:  UXTAH.W         R1, R1, R0
CF9C0:  ASRS            R0, R0, #0x10
CF9C2:  ADD.W           R0, R0, R0,LSL#5
CF9C6:  UBFX.W          R1, R1, #0xF, #0x10
CF9CA:  ADD.W           R0, R1, R0,LSL#1
CF9CE:  UXTH            R1, R0
CF9D0:  SXTH            R2, R0
CF9D2:  MULS            R1, R2
CF9D4:  MOVS            R2, #1
CF9D6:  ADD.W           R2, R2, R0,ASR#15
CF9DA:  ASRS            R2, R2, #1
CF9DC:  ASRS            R1, R1, #0x10
CF9DE:  SMLABT.W        R1, R0, R0, R1
CF9E2:  MLA.W           R0, R2, R0, R1
CF9E6:  ADDS.W          R0, R0, #0x10000
CF9EA:  MOV             R1, R0
CF9EC:  IT MI
CF9EE:  NEGMI           R1, R0
CF9F0:  CLZ.W           R4, R1
CF9F4:  SUBS            R1, R4, #1
CF9F6:  LSL.W           R5, R0, R1
CF9FA:  MOV             R0, #0x1FFFFFFF
CF9FE:  ASRS            R1, R5, #0x10
CFA00:  BLX             sub_108848
CFA04:  SXTH            R1, R0
CFA06:  MOVW            R2, #0x7852
CFA0A:  SMULBB.W        R2, R1, R2
CFA0E:  SMMUL.W         R3, R5, R2
CFA12:  MOVS            R5, #0x78520000
CFA18:  SUB.W           R3, R5, R3,LSL#3
CFA1C:  UXTH            R5, R3
CFA1E:  SMLABT.W        R0, R0, R3, R2
CFA22:  MULS            R1, R5
CFA24:  ADD.W           R0, R0, R1,ASR#16
CFA28:  RSB.W           R1, R4, #1
CFA2C:  CMN.W           R1, #0x1D
CFA30:  BGT             loc_CFA58
CFA32:  MOV             R2, #0xFFFFFFE4
CFA36:  SUBS            R1, R2, R1
CFA38:  LDR             R4, [R6,#0x74]
CFA3A:  MOV             R2, #0x7FFFFFFF
CFA3E:  MOV.W           R3, #0x80000000
CFA42:  LSRS            R2, R1
CFA44:  ASRS            R3, R1
CFA46:  CMP             R3, R2
CFA48:  BLE             loc_CFA6C
CFA4A:  CMP             R0, R3
CFA4C:  MOV             R5, R3
CFA4E:  BGT             loc_CFA7A
CFA50:  CMP             R0, R2
CFA52:  IT LT
CFA54:  MOVLT           R0, R2
CFA56:  B               loc_CFA78
CFA58:  ADD.W           R2, R1, #0x1C
CFA5C:  MOVS            R3, #0
CFA5E:  CMP             R1, #4
CFA60:  IT LT
CFA62:  ASRLT.W         R3, R0, R2
CFA66:  LDR             R4, [R6,#0x74]
CFA68:  STR             R3, [R6,#0x2C]
CFA6A:  B               loc_CFA80
CFA6C:  CMP             R0, R2
CFA6E:  MOV             R5, R2
CFA70:  BGT             loc_CFA7A
CFA72:  CMP             R0, R3
CFA74:  IT LT
CFA76:  MOVLT           R0, R3
CFA78:  MOV             R5, R0
CFA7A:  LSL.W           R0, R5, R1
CFA7E:  STR             R0, [R6,#0x2C]
CFA80:  MOV.W           R0, #0x1240
CFA84:  LDR.W           R0, [R8,R0]
CFA88:  CMP             R0, #1
CFA8A:  BLT             loc_CFAA4
CFA8C:  LDR             R1, [R6,#0x3C]
CFA8E:  MOVW            R3, #0xA3D
CFA92:  LDR.W           R1, [R1,#0x184]
CFA96:  UXTH            R2, R1
CFA98:  SMLABT.W        R0, R3, R1, R0
CFA9C:  MULS            R2, R3
CFA9E:  ADD.W           R0, R0, R2,LSR#16
CFAA2:  B               loc_CFAA6
CFAA4:  MOVS            R0, #0
CFAA6:  STR             R0, [R6,#0x14]
CFAA8:  MOVW            R0, #0x1258
CFAAC:  ADD             R0, R8
CFAAE:  STR             R0, [R6,#8]
CFAB0:  ADD.W           R0, R8, R10
CFAB4:  STR             R0, [R6,#0xC]
CFAB6:  ADD.W           R0, R11, R4
CFABA:  STR             R0, [R6,#4]
CFABC:  MOVW            R4, #0x11FC
CFAC0:  MOVS            R2, #7
CFAC2:  LDR.W           R0, [R8,R4]
CFAC6:  MOV             LR, #0xFFFFC000
CFACE:  ADD.W           R2, R2, R0,LSL#1
CFAD2:  BIC.W           R2, R2, #7
CFAD6:  SUB.W           R5, SP, R2
CFADA:  MOVW            R2, #0x11E4
CFADE:  ADD.W           R10, R8, R2
CFAE2:  STR             R5, [R6,#0x28]
CFAE4:  MOV             SP, R5
CFAE6:  LDR.W           R2, [R8,R2]
CFAEA:  STR.W           R10, [R6,#0x30]
CFAEE:  CMP             R2, #1
CFAF0:  BLT.W           loc_D0410
CFAF4:  LDRD.W          R1, R2, [R6,#0x6C]
CFAF8:  LDR             R5, [R6,#0x10]
CFAFA:  ADD.W           R11, R5, R4
CFAFE:  LDR             R4, [R6,#0x14]
CFB00:  SUB.W           R1, R2, R1,LSL#1
CFB04:  ADD.W           R2, R5, #0x1240
CFB08:  RSB.W           R12, R4, #0
CFB0C:  STR             R2, [R6,#0x24]
CFB0E:  SXTH            R3, R4
CFB10:  UXTH.W          R2, R12
CFB14:  STR             R3, [R6,#0x74]
CFB16:  MULS            R2, R3
CFB18:  SUB.W           R3, LR, #0xC000
CFB1C:  ASRS            R2, R2, #0x10
CFB1E:  SMLABT.W        R2, R4, R12, R2
CFB22:  SUBS            R3, R3, R2
CFB24:  ADD.W           R2, R2, #0x10000
CFB28:  IT LT
CFB2A:  MOVLT           R3, R2
CFB2C:  CLZ.W           R3, R3
CFB30:  ADDS            R4, R3, #4
CFB32:  SUBS            R3, #1
CFB34:  STR             R4, [R6,#0x60]
CFB36:  LSL.W           R3, R2, R3
CFB3A:  MOVW            R2, #0x121C
CFB3E:  ADD             R2, R5
CFB40:  STR             R2, [R6,#0x48]
CFB42:  MOVW            R2, #0x11EC
CFB46:  ADD             R2, R5
CFB48:  STR             R2, [R6,#0x20]
CFB4A:  LDR             R2, [R6,#0x3C]
CFB4C:  ADDS            R2, #0x8C
CFB4E:  STR             R2, [R6,#0x44]
CFB50:  ADD.W           R2, R6, #0x88
CFB54:  ADDS            R4, R2, #4
CFB56:  SUBS            R2, #8
CFB58:  STR             R2, [R6,#0x68]
CFB5A:  ADD.W           R2, R5, #0x11E0
CFB5E:  STR             R2, [R6,#0x1C]
CFB60:  SXTH.W          R2, R12
CFB64:  STR             R2, [R6,#0x64]
CFB66:  MOVS            R2, #0
CFB68:  STR             R2, [R6,#0x40]
CFB6A:  UXTH            R2, R3
CFB6C:  STR             R4, [R6,#0x4C]
CFB6E:  STRD.W          R2, R3, [R6,#0x58]
CFB72:  ASRS            R2, R3, #0x10
CFB74:  STR             R2, [R6,#0x54]
CFB76:  STR.W           R11, [R6,#0x18]
CFB7A:  B               loc_CFB98
CFB7C:  STR.W           R11, [R6,#0x40]
CFB80:  ADD.W           R9, R9, #0x30 ; '0'
CFB84:  LDRD.W          R0, R1, [R6,#0x34]
CFB88:  LDR.W           R11, [R6,#0x18]
CFB8C:  ADD.W           R1, R1, R0,LSL#1
CFB90:  LDR.W           R0, [R11]
CFB94:  STR.W           R9, [R6,#0x44]
CFB98:  LDR             R2, [R6,#0x1C]
CFB9A:  MOV             R9, R1
CFB9C:  LDR.W           R10, [R6,#0x28]
CFBA0:  LDR             R2, [R2]
CFBA2:  ADD.W           R4, R2, R2,LSL#1
CFBA6:  MOVS            R2, #1
CFBA8:  SUBS            R5, R0, R4
CFBAA:  MOV             R0, R10
CFBAC:  MOV.W           R8, R5,ASR#1
CFBB0:  MOV             R3, R8
CFBB2:  BLX             j_silk_apply_sine_window
CFBB6:  BIC.W           R1, R5, #1
CFBBA:  LSLS            R2, R4, #1; n
CFBBC:  ADD.W           R0, R10, R1; dest
CFBC0:  ADD             R1, R9; src
CFBC2:  BLX             j_memcpy
CFBC6:  ADD.W           R1, R4, R5,ASR#1
CFBCA:  MOVS            R2, #2
CFBCC:  MOV             R3, R8
CFBCE:  STR.W           R9, [R6,#0x38]
CFBD2:  ADD.W           R0, R10, R1,LSL#1
CFBD6:  ADD.W           R1, R9, R1,LSL#1
CFBDA:  BLX             j_silk_apply_sine_window
CFBDE:  LDR             R0, [R6,#0x20]
CFBE0:  LDR.W           R9, [R6,#0x24]
CFBE4:  LDR             R0, [R0]
CFBE6:  STR             R0, [R6,#0x34]
CFBE8:  LDR             R0, [R6,#0x48]
CFBEA:  LDR.W           R1, [R9]
CFBEE:  LDR.W           R3, [R11]; int
CFBF2:  LDR             R0, [R0]
CFBF4:  CMP             R1, #1
CFBF6:  BLT             loc_CFC10
CFBF8:  STRD.W          R3, R0, [SP,#0x1D0+var_1D8]!
CFBFC:  SUB.W           R5, R7, #-var_88
CFC00:  LDR             R3, [R6,#0x14]
CFC02:  ADD.W           R1, R6, #0x84
CFC06:  MOV             R2, R10
CFC08:  MOV             R0, R5
CFC0A:  BLX             j_silk_warped_autocorrelation_FIX_c
CFC0E:  B               loc_CFC2A
CFC10:  SUB             SP, SP, #8
CFC12:  ADDS            R0, #1
CFC14:  SUB.W           R5, R7, #-var_88
CFC18:  STR             R0, [SP,#0x1D8+var_1D8]; int
CFC1A:  ADD.W           R1, R6, #0x84; int
CFC1E:  LDR             R0, [R7,#arg_0]
CFC20:  MOV             R2, R10; src
CFC22:  STR             R0, [SP,#0x1D8+var_1D4]; int
CFC24:  MOV             R0, R5; int
CFC26:  BLX             j_silk_autocorr
CFC2A:  ADD             SP, SP, #8
CFC2C:  LDR.W           R0, [R7,#var_88]
CFC30:  SUB.W           R4, R7, #-var_E8
CFC34:  LDR.W           R11, [R6,#0x40]
CFC38:  UBFX.W          R2, R0, #4, #0x10
CFC3C:  ASRS            R1, R0, #0x14
CFC3E:  LSLS            R1, R1, #5
CFC40:  RSB.W           R2, R2, R2,LSL#5
CFC44:  SUB.W           R1, R1, R0,ASR#20
CFC48:  ADD.W           R1, R1, R2,LSR#16
CFC4C:  MOVS            R2, #1
CFC4E:  CMP             R1, #1
CFC50:  IT LE
CFC52:  MOVLE           R1, R2
CFC54:  LDR.W           R10, [R6,#0x48]
CFC58:  ADD             R0, R1
CFC5A:  STR.W           R0, [R7,#var_88]
CFC5E:  MOV             R0, R4
CFC60:  MOV             R1, R5
CFC62:  LDR.W           R2, [R10]
CFC66:  BLX             j_silk_schur64
CFC6A:  ADD.W           R5, R6, #0x80
CFC6E:  MOV             R1, R4
CFC70:  STR             R0, [R5]
CFC72:  ADD.W           R0, R6, #0x88
CFC76:  LDR.W           R2, [R10]
CFC7A:  BLX             j_silk_k2a_Q16
CFC7E:  LDR             R0, [R5,#4]
CFC80:  TST.W           R0, #1
CFC84:  BNE             loc_CFCA2
CFC86:  LDR             R1, [R5]
CFC88:  NEGS            R0, R0
CFC8A:  CMP             R1, #1
CFC8C:  BLT             loc_CFCAE
CFC8E:  CLZ.W           R2, R1
CFC92:  RSBS.W          R3, R2, #0x18
CFC96:  BEQ             loc_CFCBE
CFC98:  CMP.W           R3, #0xFFFFFFFF
CFC9C:  BLE             loc_CFCB2
CFC9E:  RORS            R1, R3
CFCA0:  B               loc_CFCBE
CFCA2:  LDR             R1, [R5]
CFCA4:  MVNS            R0, R0
CFCA6:  ASRS            R1, R1, #1
CFCA8:  STR             R1, [R5]
CFCAA:  CMP             R1, #1
CFCAC:  BGE             loc_CFC8E
CFCAE:  MOVS            R1, #0
CFCB0:  B               loc_CFCEE
CFCB2:  NEGS            R5, R3
CFCB4:  ADDS            R3, #0x20 ; ' '
CFCB6:  LSL.W           R5, R1, R5
CFCBA:  LSRS            R1, R3
CFCBC:  ORRS            R1, R5
CFCBE:  AND.W           R1, R1, #0x7F
CFCC2:  MOV.W           R3, #0xD50000
CFCC6:  TST.W           R2, #1
CFCCA:  MOV.W           R2, R2,LSR#1
CFCCE:  MUL.W           R1, R3, R1
CFCD2:  MOV.W           R3, #0x8000
CFCD6:  IT EQ
CFCD8:  MOVWEQ          R3, #0xB486
CFCDC:  LSR.W           R2, R3, R2
CFCE0:  UXTH            R3, R2
CFCE2:  LSRS            R1, R1, #0x10
CFCE4:  MULS            R3, R1
CFCE6:  SMLABT.W        R1, R1, R2, R2
CFCEA:  ADD.W           R1, R1, R3,LSR#16
CFCEE:  MOVS            R2, #0x10
CFCF0:  SUB.W           R0, R2, R0,ASR#1
CFCF4:  MOV             R2, #0x7FFFFFFF
CFCF8:  MOV.W           R3, #0x80000000
CFCFC:  LSRS            R2, R0
CFCFE:  ASRS            R3, R0
CFD00:  CMP             R3, R2
CFD02:  BLE             loc_CFD12
CFD04:  CMP             R1, R3
CFD06:  MOV             R5, R3
CFD08:  BGT             loc_CFD20
CFD0A:  CMP             R1, R2
CFD0C:  IT LT
CFD0E:  MOVLT           R1, R2
CFD10:  B               loc_CFD1E
CFD12:  CMP             R1, R2
CFD14:  MOV             R5, R2
CFD16:  BGT             loc_CFD20
CFD18:  CMP             R1, R3
CFD1A:  IT LT
CFD1C:  MOVLT           R1, R3
CFD1E:  MOV             R5, R1
CFD20:  LSL.W           R8, R5, R0
CFD24:  LDR             R0, [R6,#0x3C]
CFD26:  STR.W           R8, [R0,R11,LSL#2]
CFD2A:  LDR.W           R0, [R9]
CFD2E:  CMP             R0, #1
CFD30:  BLT.W           loc_CFE78
CFD34:  LDR.W           R1, [R10]
CFD38:  ADD.W           R0, R6, #0x88
CFD3C:  LDR.W           R12, [R6,#0x74]
CFD40:  CMP             R1, #2
CFD42:  ADD.W           R0, R0, R1,LSL#2
CFD46:  LDR.W           R0, [R0,#-4]
CFD4A:  LDRD.W          R5, R4, [R6,#0x64]
CFD4E:  BLT             loc_CFD68
CFD50:  UXTH            R3, R0
CFD52:  LDR.W           R2, [R4,R1,LSL#2]
CFD56:  MULS            R3, R5
CFD58:  SMLATB.W        R0, R0, R5, R2
CFD5C:  SUBS            R2, R1, #2
CFD5E:  SUBS            R1, #1
CFD60:  CMP             R2, #0
CFD62:  ADD.W           R0, R0, R3,ASR#16
CFD66:  BGT             loc_CFD50
CFD68:  UXTH            R1, R0
CFD6A:  MUL.W           R1, R1, R12
CFD6E:  ASRS            R1, R1, #0x10
CFD70:  SMLATB.W        R0, R0, R12, R1
CFD74:  ADD.W           R1, R0, #0x1000000
CFD78:  CMP.W           R0, #0xFF000000
CFD7C:  MOV             R2, R1
CFD7E:  IT LE
CFD80:  RSBLE.W         R2, R0, #0xFF000000
CFD84:  CLZ.W           R4, R2
CFD88:  SUBS            R0, R4, #1
CFD8A:  LSL.W           R5, R1, R0
CFD8E:  MOV             R0, #0x1FFFFFFF
CFD92:  ASRS            R1, R5, #0x10
CFD94:  BLX             sub_108848
CFD98:  UXTH            R1, R5
CFD9A:  SXTH            R2, R0
CFD9C:  MULS            R1, R2
CFD9E:  MOVS            R3, #1
CFDA0:  ADD.W           R3, R3, R0,ASR#15
CFDA4:  ASRS            R3, R3, #1
CFDA6:  ASRS            R1, R1, #0x10
CFDA8:  SMLABT.W        R1, R0, R5, R1
CFDAC:  NEGS            R1, R1
CFDAE:  LSLS            R1, R1, #3
CFDB0:  MULS            R3, R1
CFDB2:  UXTH            R5, R1
CFDB4:  MULS            R2, R5
CFDB6:  ADD.W           R3, R3, R0,LSL#16
CFDBA:  SMLATB.W        R0, R1, R0, R3
CFDBE:  RSB.W           R1, R4, #0x3E ; '>'
CFDC2:  CMP             R1, #0x28 ; '('
CFDC4:  ADD.W           R0, R0, R2,ASR#16
CFDC8:  BGT             loc_CFDEC
CFDCA:  RSB.W           R1, R1, #0x28 ; '('
CFDCE:  MOV             R2, #0x7FFFFFFF
CFDD2:  MOV.W           R3, #0x80000000
CFDD6:  LSRS            R2, R1
CFDD8:  ASRS            R3, R1
CFDDA:  CMP             R3, R2
CFDDC:  BLE             loc_CFE40
CFDDE:  CMP             R0, R3
CFDE0:  MOV             R4, R3
CFDE2:  BGT             loc_CFE4E
CFDE4:  CMP             R0, R2
CFDE6:  IT LT
CFDE8:  MOVLT           R0, R2
CFDEA:  B               loc_CFE4C
CFDEC:  SUB.W           R2, R1, #0x28 ; '('
CFDF0:  CMP             R1, #0x48 ; 'H'
CFDF2:  MOV.W           R1, #0
CFDF6:  IT LT
CFDF8:  ASRLT.W         R1, R0, R2
CFDFC:  CMP.W           R8, #0x4000
CFE00:  BLT             loc_CFE58
CFE02:  MOVS            R2, #1
CFE04:  AND.W           R0, R8, #1
CFE08:  ADD.W           R2, R2, R1,ASR#15
CFE0C:  ADD.W           R0, R0, R8,LSR#1
CFE10:  SXTH            R1, R1
CFE12:  ASRS            R2, R2, #1
CFE14:  UXTH            R3, R0
CFE16:  MULS            R2, R0
CFE18:  LSRS            R0, R0, #0x10
CFE1A:  MULS            R3, R1
CFE1C:  MLA.W           R0, R0, R1, R2
CFE20:  MOV             R2, #0x3FFFFFFE
CFE28:  ADD.W           R1, R0, R3,ASR#16
CFE2C:  LDR             R3, [R6,#0x3C]
CFE2E:  CMP             R1, R2
CFE30:  MOV.W           R0, R1,LSL#1
CFE34:  STR.W           R1, [R3,R11,LSL#2]
CFE38:  IT GT
CFE3A:  MOVGT           R0, #0x7FFFFFFF
CFE3E:  B               loc_CFE74
CFE40:  CMP             R0, R2
CFE42:  MOV             R4, R2
CFE44:  BGT             loc_CFE4E
CFE46:  CMP             R0, R3
CFE48:  IT LT
CFE4A:  MOVLT           R0, R3
CFE4C:  MOV             R4, R0
CFE4E:  LSL.W           R1, R4, R1
CFE52:  CMP.W           R8, #0x4000
CFE56:  BGE             loc_CFE02
CFE58:  SXTH            R0, R1
CFE5A:  UXTH.W          R2, R8
CFE5E:  MULS            R0, R2
CFE60:  MOVS            R2, #1
CFE62:  LDR             R3, [R6,#0x3C]
CFE64:  ASRS            R0, R0, #0x10
CFE66:  SMLATB.W        R0, R8, R1, R0
CFE6A:  ADD.W           R1, R2, R1,ASR#15
CFE6E:  ASRS            R1, R1, #1
CFE70:  MLA.W           R0, R1, R8, R0
CFE74:  STR.W           R0, [R3,R11,LSL#2]
CFE78:  ADD.W           R4, R6, #0x88
CFE7C:  LDR.W           R1, [R10]
CFE80:  LDR             R2, [R6,#0x2C]
CFE82:  MOV             R0, R4
CFE84:  BLX             j_silk_bwexpander_32
CFE88:  LDR.W           R0, [R9]
CFE8C:  CMP             R0, #1
CFE8E:  BLT             loc_CFF50
CFE90:  LDR.W           R8, [R10]
CFE94:  LDR.W           R9, [R6,#0x44]
CFE98:  SUB.W           R0, R8, #1
CFE9C:  STR             R0, [R6,#0x6C]
CFE9E:  LDRD.W          R4, R5, [R6,#0x64]
CFEA2:  CMP.W           R8, #2
CFEA6:  BLT             loc_CFECE
CFEA8:  LDR             R1, [R6,#0x6C]
CFEAA:  ADD.W           R0, R6, #0x88
CFEAE:  LDR.W           R1, [R0,R1,LSL#2]
CFEB2:  MOV             R0, R8
CFEB4:  UXTH            R3, R1
CFEB6:  LDR.W           R2, [R5,R0,LSL#2]
CFEBA:  MULS            R3, R4
CFEBC:  SMLABT.W        R1, R4, R1, R2
CFEC0:  ADD.W           R1, R1, R3,ASR#16
CFEC4:  STR.W           R1, [R5,R0,LSL#2]
CFEC8:  SUBS            R0, #1
CFECA:  CMP             R0, #1
CFECC:  BGT             loc_CFEB4
CFECE:  ADD.W           R0, R6, #0x80
CFED2:  LDR             R1, [R6,#0x74]
CFED4:  LDR.W           R10, [R0,#8]
CFED8:  UXTH.W          R0, R10
CFEDC:  MULS            R0, R1
CFEDE:  ASRS            R0, R0, #0x10
CFEE0:  SMLATB.W        R0, R10, R1, R0
CFEE4:  ADD.W           R1, R0, #0x1000000
CFEE8:  CMP.W           R0, #0xFF000000
CFEEC:  MOV             R2, R1
CFEEE:  IT LE
CFEF0:  RSBLE.W         R2, R0, #0xFF000000
CFEF4:  CLZ.W           R4, R2
CFEF8:  SUBS            R0, R4, #1
CFEFA:  LSL.W           R5, R1, R0
CFEFE:  MOV             R0, #0x1FFFFFFF
CFF02:  ASRS            R1, R5, #0x10
CFF04:  BLX             sub_108848
CFF08:  LDR             R2, [R6,#0x58]
CFF0A:  SXTH            R1, R0
CFF0C:  LDR             R3, [R6,#0x54]
CFF0E:  MULS            R2, R1
CFF10:  SMULBB.W        R3, R1, R3
CFF14:  ADD.W           R2, R3, R2,ASR#16
CFF18:  SMMUL.W         R3, R5, R2
CFF1C:  LDR             R5, [R6,#0x5C]
CFF1E:  SUB.W           R3, R5, R3,LSL#3
CFF22:  UXTH            R5, R3
CFF24:  SMLABT.W        R0, R0, R3, R2
CFF28:  MULS            R1, R5
CFF2A:  LDR             R2, [R6,#0x60]
CFF2C:  ADD.W           R1, R0, R1,ASR#16
CFF30:  RSB.W           R0, R4, #1
CFF34:  ADD             R2, R0
CFF36:  CMP.W           R2, #0xFFFFFFFF
CFF3A:  BLE             loc_CFF76
CFF3C:  CMP             R2, #0x20 ; ' '
CFF3E:  MOV.W           LR, #0
CFF42:  IT LT
CFF44:  ASRLT.W         LR, R1, R2
CFF48:  CMP.W           R8, #1
CFF4C:  BGE             loc_CFFB0
CFF4E:  B               loc_D03FE
CFF50:  LDR.W           R0, [R10]
CFF54:  SUB             SP, SP, #8
CFF56:  STR             R0, [SP,#0x1D8+var_1D8]
CFF58:  ADD.W           R0, R11, R11,LSL#1
CFF5C:  LDR             R1, [R6,#0x3C]
CFF5E:  MOVS            R2, #0xD
CFF60:  MOVS            R3, #0x18
CFF62:  ADD.W           R0, R1, R0,LSL#4
CFF66:  MOV             R1, R4
CFF68:  ADDS            R0, #0x8C
CFF6A:  BLX             j_silk_LPC_fit
CFF6E:  ADD             SP, SP, #8
CFF70:  LDR.W           R9, [R6,#0x44]
CFF74:  B               loc_D03FE
CFF76:  NEGS            R0, R2
CFF78:  MOV             R2, #0x7FFFFFFF
CFF7C:  MOV.W           R3, #0x80000000
CFF80:  LSRS            R2, R0
CFF82:  ASRS            R3, R0
CFF84:  CMP             R3, R2
CFF86:  BLE             loc_CFF96
CFF88:  CMP             R1, R3
CFF8A:  MOV             R4, R3
CFF8C:  BGT             loc_CFFA4
CFF8E:  CMP             R1, R2
CFF90:  IT LT
CFF92:  MOVLT           R1, R2
CFF94:  B               loc_CFFA2
CFF96:  CMP             R1, R2
CFF98:  MOV             R4, R2
CFF9A:  BGT             loc_CFFA4
CFF9C:  CMP             R1, R3
CFF9E:  IT LT
CFFA0:  MOVLT           R1, R3
CFFA2:  MOV             R4, R1
CFFA4:  LSL.W           LR, R4, R0
CFFA8:  CMP.W           R8, #1
CFFAC:  BLT.W           loc_D03FE
CFFB0:  UXTH.W          R12, LR
CFFB4:  SXTH.W          R2, R10
CFFB8:  MUL.W           R2, R2, R12
CFFBC:  MOVS            R1, #1
CFFBE:  ADD.W           R3, R1, R10,ASR#15
CFFC2:  MOVS            R0, #1
CFFC4:  CMP.W           R8, #1
CFFC8:  MOV.W           R3, R3,ASR#1
CFFCC:  STR             R0, [R6,#0x50]
CFFCE:  ADD.W           R0, R6, #0x80
CFFD2:  MOV.W           R2, R2,ASR#16
CFFD6:  SMLABT.W        R2, R10, LR, R2
CFFDA:  MLA.W           R2, R3, LR, R2
CFFDE:  STR             R2, [R0,#8]
CFFE0:  BEQ             loc_D0026
CFFE2:  ADD.W           R0, R6, #0x88
CFFE6:  MOV.W           R2, LR,ASR#16
CFFEA:  MOVS            R3, #1
CFFEC:  MOV.W           R10, #1
CFFF0:  LDR.W           R5, [R0,R3,LSL#2]
CFFF4:  SXTH            R4, R5
CFFF6:  ADD.W           R5, R10, R5,ASR#15
CFFFA:  MUL.W           R1, R4, R12
CFFFE:  ASRS            R5, R5, #1
D0000:  SMULBB.W        R4, R4, R2
D0004:  ADD.W           R1, R4, R1,ASR#16
D0008:  MLA.W           R1, R5, LR, R1
D000C:  STR.W           R1, [R0,R3,LSL#2]
D0010:  ADDS            R3, #1
D0012:  CMP             R8, R3
D0014:  BNE             loc_CFFF0
D0016:  CMP.W           R8, #1
D001A:  MOV             R0, R8
D001C:  IT NE
D001E:  MOVNE           R0, #0
D0020:  STR             R0, [R6,#0x50]
D0022:  BLT.W           loc_D03FE
D0026:  LDR.W           R12, [R6,#0x74]
D002A:  ADD.W           R5, R6, #0x88
D002E:  MOVS            R1, #0
D0030:  MOV.W           R9, #0
D0034:  STR             R1, [R6,#0x78]
D0036:  MOV.W           R1, #0xFFFFFFFF
D003A:  MOVS            R2, #0
D003C:  LDR.W           R3, [R5,R2,LSL#2]
D0040:  EOR.W           R4, R3, R3,ASR#31
D0044:  SUB.W           R3, R4, R3,ASR#31
D0048:  CMP             R3, R1
D004A:  ITT GT
D004C:  MOVGT           R9, R2
D004E:  MOVGT           R1, R3
D0050:  ADDS            R2, #1
D0052:  CMP             R8, R2
D0054:  BNE             loc_D003C
D0056:  MOVW            R0, #0xFBE8
D005A:  MOV.W           R11, R1,ASR#4
D005E:  MOVT            R0, #0x3F ; '?'
D0062:  CMP             R11, R0
D0064:  BLT.W           loc_D03B0
D0068:  CMP.W           R8, #2
D006C:  BLT             loc_D0096
D006E:  ADD.W           R0, R6, #0x80
D0072:  LDR             R1, [R6,#0x6C]
D0074:  LDR             R2, [R6,#0x4C]
D0076:  LDR             R4, [R0,#8]
D0078:  LDR             R3, [R2]
D007A:  SUBS            R1, #1
D007C:  UXTH            R0, R3
D007E:  SMLABT.W        R4, R12, R3, R4
D0082:  MUL.W           R0, R0, R12
D0086:  ADD.W           R0, R4, R0,ASR#16
D008A:  STR.W           R0, [R2,#-4]
D008E:  ADD.W           R2, R2, #4
D0092:  MOV             R4, R3
D0094:  BNE             loc_D0078
D0096:  CMP.W           LR, #0
D009A:  MOV             R1, LR
D009C:  IT MI
D009E:  RSBMI.W         R1, LR, #0
D00A2:  MOVS            R5, #1
D00A4:  CLZ.W           R10, R1
D00A8:  SUB.W           R0, R10, #1
D00AC:  LSL.W           R4, LR, R0
D00B0:  MOV             R0, #0x1FFFFFFF
D00B4:  ASRS            R1, R4, #0x10
D00B6:  BLX             sub_108848
D00BA:  UXTH            R1, R4
D00BC:  SXTH            R2, R0
D00BE:  MULS            R1, R2
D00C0:  ADD.W           R3, R5, R0,ASR#15
D00C4:  ASRS            R3, R3, #1
D00C6:  ASRS            R1, R1, #0x10
D00C8:  SMLABT.W        R1, R0, R4, R1
D00CC:  NEGS            R1, R1
D00CE:  LSLS            R1, R1, #3
D00D0:  MULS            R3, R1
D00D2:  UXTH            R4, R1
D00D4:  MULS            R2, R4
D00D6:  ADD.W           R3, R3, R0,LSL#16
D00DA:  SMLATB.W        R0, R1, R0, R3
D00DE:  RSB.W           R1, R10, #0x3E ; '>'
D00E2:  CMP             R1, #0x20 ; ' '
D00E4:  ADD.W           R4, R0, R2,ASR#16
D00E8:  BGT             loc_D0118
D00EA:  RSB.W           R1, R1, #0x20 ; ' '
D00EE:  MOV             R0, #0x7FFFFFFF
D00F2:  LSR.W           R2, R0, R1
D00F6:  MOV.W           R0, #0x80000000
D00FA:  ASR.W           R3, R0, R1
D00FE:  ADD.W           R0, R6, #0x88
D0102:  CMP             R3, R2
D0104:  BLE             loc_D0132
D0106:  CMP             R4, R3
D0108:  MOV             R5, R3
D010A:  MOV.W           R10, #1
D010E:  BGT             loc_D0144
D0110:  CMP             R4, R2
D0112:  IT LT
D0114:  MOVLT           R4, R2
D0116:  B               loc_D0142
D0118:  SUB.W           R2, R1, #0x20 ; ' '
D011C:  CMP             R1, #0x40 ; '@'
D011E:  MOV.W           R12, #0
D0122:  ADD.W           R0, R6, #0x88
D0126:  IT LT
D0128:  ASRLT.W         R12, R4, R2
D012C:  MOV.W           R10, #1
D0130:  B               loc_D0148
D0132:  CMP             R4, R2
D0134:  MOV             R5, R2
D0136:  MOV.W           R10, #1
D013A:  BGT             loc_D0144
D013C:  CMP             R4, R3
D013E:  IT LT
D0140:  MOVLT           R4, R3
D0142:  MOV             R5, R4
D0144:  LSL.W           R12, R5, R1
D0148:  UXTH.W          LR, R12
D014C:  MOV.W           R2, R12,ASR#16
D0150:  MOVS            R3, #0
D0152:  LDR.W           R4, [R0,R3,LSL#2]
D0156:  SXTH            R5, R4
D0158:  MUL.W           R1, R5, LR
D015C:  SMULBB.W        R5, R5, R2
D0160:  ADD.W           R1, R5, R1,ASR#16
D0164:  ADD.W           R5, R10, R4,ASR#15
D0168:  ASRS            R5, R5, #1
D016A:  MLA.W           R1, R5, R12, R1
D016E:  STR.W           R1, [R0,R3,LSL#2]
D0172:  ADDS            R3, #1
D0174:  CMP             R8, R3
D0176:  BNE             loc_D0152
D0178:  LDR             R0, [R6,#0x78]
D017A:  MOVS            R1, #0x33 ; '3'
D017C:  MOVS            R3, #0x3330000
D0182:  SXTH            R0, R0
D0184:  SMULBB.W        R0, R0, R1
D0188:  MOV             R1, #0xFFC00419
D0190:  ADD             R1, R11
D0192:  UXTH            R2, R1
D0194:  ADD.W           R0, R3, R0,LSL#17
D0198:  ASRS            R3, R0, #0x10
D019A:  MULS            R2, R3
D019C:  ASRS            R2, R2, #0x10
D019E:  SMLATT.W        R1, R1, R0, R2
D01A2:  ADD.W           R0, R9, #1
D01A6:  MUL.W           R0, R11, R0
D01AA:  CMP             R1, #0
D01AC:  MOV             R2, R1
D01AE:  IT MI
D01B0:  NEGMI           R2, R1
D01B2:  CLZ.W           R11, R2
D01B6:  CMP             R0, #0
D01B8:  SUB.W           R2, R11, #1
D01BC:  LSL.W           R4, R1, R2
D01C0:  UXTH            R1, R4
D01C2:  STR             R1, [R6,#0x70]
D01C4:  MOV             R1, R0
D01C6:  IT MI
D01C8:  NEGMI           R1, R0
D01CA:  CLZ.W           R5, R1
D01CE:  SUBS            R1, R5, #1
D01D0:  LSL.W           R10, R0, R1
D01D4:  MOV             R0, #0x1FFFFFFF
D01D8:  MOV.W           R1, R10,ASR#16
D01DC:  BLX             sub_108848
D01E0:  LDR             R2, [R6,#0x70]
D01E2:  SXTH            R1, R0
D01E4:  MULS            R2, R1
D01E6:  ASRS            R2, R2, #0x10
D01E8:  SMLABT.W        R2, R0, R4, R2
D01EC:  SMMUL.W         R3, R2, R10
D01F0:  SUB.W           R3, R4, R3,LSL#3
D01F4:  UXTH            R4, R3
D01F6:  SMLABT.W        R0, R0, R3, R2
D01FA:  MULS            R1, R4
D01FC:  ADD.W           R0, R0, R1,ASR#16
D0200:  RSB.W           R1, R5, #7
D0204:  ADD.W           R2, R1, R11
D0208:  CMP.W           R2, #0xFFFFFFFF
D020C:  BLE             loc_D0224
D020E:  CMP             R2, #0x20 ; ' '
D0210:  MOV.W           R1, #0
D0214:  ADD.W           R11, R6, #0x80
D0218:  ADD.W           R10, R6, #0x88
D021C:  IT LT
D021E:  ASRLT.W         R1, R0, R2
D0222:  B               loc_D025E
D0224:  NEGS            R1, R2
D0226:  MOV             R2, #0x7FFFFFFF
D022A:  MOV.W           R3, #0x80000000
D022E:  ADD.W           R11, R6, #0x80
D0232:  ADD.W           R10, R6, #0x88
D0236:  LSRS            R2, R1
D0238:  ASRS            R3, R1
D023A:  CMP             R3, R2
D023C:  BLE             loc_D024C
D023E:  CMP             R0, R3
D0240:  MOV             R4, R3
D0242:  BGT             loc_D025A
D0244:  CMP             R0, R2
D0246:  IT LT
D0248:  MOVLT           R0, R2
D024A:  B               loc_D0258
D024C:  CMP             R0, R2
D024E:  MOV             R4, R2
D0250:  BGT             loc_D025A
D0252:  CMP             R0, R3
D0254:  IT LT
D0256:  MOVLT           R0, R3
D0258:  MOV             R4, R0
D025A:  LSL.W           R1, R4, R1
D025E:  MOVW            R0, #0xFD71
D0262:  SUBS            R2, R0, R1
D0264:  MOV             R0, R10
D0266:  MOV             R1, R8
D0268:  LDR             R4, [R6,#0x68]
D026A:  BLX             j_silk_bwexpander_32
D026E:  LDR             R5, [R6,#0x64]
D0270:  CMP.W           R8, #2
D0274:  BLT             loc_D0298
D0276:  LDR             R0, [R6,#0x6C]
D0278:  LDR.W           R1, [R10,R0,LSL#2]
D027C:  MOV             R0, R8
D027E:  UXTH            R3, R1
D0280:  LDR.W           R2, [R4,R0,LSL#2]
D0284:  MULS            R3, R5
D0286:  SMLABT.W        R1, R5, R1, R2
D028A:  ADD.W           R1, R1, R3,ASR#16
D028E:  STR.W           R1, [R4,R0,LSL#2]
D0292:  SUBS            R0, #1
D0294:  CMP             R0, #1
D0296:  BGT             loc_D027E
D0298:  LDR.W           R10, [R11,#8]
D029C:  LDR             R1, [R6,#0x74]
D029E:  UXTH.W          R0, R10
D02A2:  MULS            R0, R1
D02A4:  ASRS            R0, R0, #0x10
D02A6:  SMLATB.W        R0, R10, R1, R0
D02AA:  ADD.W           R1, R0, #0x1000000
D02AE:  CMP.W           R0, #0xFF000000
D02B2:  MOV             R2, R1
D02B4:  IT LE
D02B6:  RSBLE.W         R2, R0, #0xFF000000
D02BA:  CLZ.W           R5, R2
D02BE:  SUBS            R0, R5, #1
D02C0:  LSL.W           R4, R1, R0
D02C4:  MOV             R0, #0x1FFFFFFF
D02C8:  ASRS            R1, R4, #0x10
D02CA:  BLX             sub_108848
D02CE:  LDR             R2, [R6,#0x58]
D02D0:  SXTH            R1, R0
D02D2:  LDR             R3, [R6,#0x54]
D02D4:  MULS            R2, R1
D02D6:  SMULBB.W        R3, R1, R3
D02DA:  ADD.W           R2, R3, R2,ASR#16
D02DE:  SMMUL.W         R3, R4, R2
D02E2:  LDR             R4, [R6,#0x5C]
D02E4:  SUB.W           R3, R4, R3,LSL#3
D02E8:  UXTH            R4, R3
D02EA:  SMLABT.W        R0, R0, R3, R2
D02EE:  MULS            R1, R4
D02F0:  LDR             R2, [R6,#0x60]
D02F2:  ADD.W           R1, R0, R1,ASR#16
D02F6:  RSB.W           R0, R5, #1
D02FA:  ADD             R2, R0
D02FC:  CMP.W           R2, #0xFFFFFFFF
D0300:  BLE             loc_D0310
D0302:  CMP             R2, #0x20 ; ' '
D0304:  MOV.W           LR, #0
D0308:  IT LT
D030A:  ASRLT.W         LR, R1, R2
D030E:  B               loc_D0348
D0310:  RSB.W           R12, R2, #0
D0314:  MOV             R0, #0x7FFFFFFF
D0318:  LSR.W           R2, R0, R12
D031C:  MOV.W           R0, #0x80000000
D0320:  ASR.W           R3, R0, R12
D0324:  CMP             R3, R2
D0326:  BLE             loc_D0336
D0328:  CMP             R1, R3
D032A:  MOV             R0, R3
D032C:  BGT             loc_D0344
D032E:  CMP             R1, R2
D0330:  IT LT
D0332:  MOVLT           R1, R2
D0334:  B               loc_D0342
D0336:  CMP             R1, R2
D0338:  MOV             R0, R2
D033A:  BGT             loc_D0344
D033C:  CMP             R1, R3
D033E:  IT LT
D0340:  MOVLT           R1, R3
D0342:  MOV             R0, R1
D0344:  LSL.W           LR, R0, R12
D0348:  UXTH.W          R12, LR
D034C:  SXTH.W          R0, R10
D0350:  MUL.W           R0, R0, R12
D0354:  MOVS            R1, #1
D0356:  ADD.W           R2, R1, R10,ASR#15
D035A:  ASRS            R2, R2, #1
D035C:  ASRS            R0, R0, #0x10
D035E:  SMLABT.W        R0, R10, LR, R0
D0362:  MOV.W           R10, #1
D0366:  MLA.W           R0, R2, LR, R0
D036A:  STR.W           R0, [R11,#8]
D036E:  LDR             R0, [R6,#0x50]
D0370:  CBNZ            R0, loc_D039E
D0372:  LDR             R3, [R6,#0x4C]
D0374:  MOV.W           R2, LR,ASR#16
D0378:  LDR             R4, [R6,#0x6C]
D037A:  LDR             R0, [R3]
D037C:  SUBS            R4, #1
D037E:  SXTH            R5, R0
D0380:  ADD.W           R0, R10, R0,ASR#15
D0384:  MUL.W           R1, R5, R12
D0388:  MOV.W           R0, R0,ASR#1
D038C:  SMULBB.W        R5, R5, R2
D0390:  ADD.W           R1, R5, R1,ASR#16
D0394:  MLA.W           R0, R0, LR, R1
D0398:  STR.W           R0, [R3],#4
D039C:  BNE             loc_D037A
D039E:  LDR             R0, [R6,#0x78]
D03A0:  ADD.W           R5, R6, #0x88
D03A4:  LDR.W           R12, [R6,#0x74]
D03A8:  ADDS            R1, R0, #1
D03AA:  CMP             R0, #9
D03AC:  BLT.W           loc_D0034
D03B0:  LDR             R0, [R6,#0x48]
D03B2:  MOVW            R4, #0xC000
D03B6:  LDR.W           R9, [R6,#0x44]
D03BA:  MOVT            R4, #0xFFFF
D03BE:  LDR.W           R11, [R6,#0x40]
D03C2:  MOV             R12, R4
D03C4:  LDR.W           R8, [R0]
D03C8:  MOV             R4, R5
D03CA:  MOV.W           LR, #1
D03CE:  MOVW            R0, #0x7FFF
D03D2:  CMP.W           R8, #1
D03D6:  BLT             loc_D03FE
D03D8:  MOVS            R1, #0
D03DA:  LDR.W           R2, [R4,R1,LSL#2]
D03DE:  SUB.W           R5, R12, #0x4000
D03E2:  ADD.W           R2, LR, R2,ASR#10
D03E6:  ASRS            R3, R2, #1
D03E8:  CMP             R3, R5
D03EA:  IT GT
D03EC:  ASRGT           R5, R2, #1
D03EE:  CMP             R5, R0
D03F0:  IT GE
D03F2:  MOVGE           R5, R0
D03F4:  STRH.W          R5, [R9,R1,LSL#1]
D03F8:  ADDS            R1, #1
D03FA:  CMP             R1, R8
D03FC:  BLT             loc_D03DA
D03FE:  LDR.W           R10, [R6,#0x30]
D0402:  ADD.W           R11, R11, #1
D0406:  LDR.W           R0, [R10]
D040A:  CMP             R11, R0
D040C:  BLT.W           loc_CFB7C
D0410:  LDR             R3, [R6,#4]
D0412:  MOVW            R1, #0x28F6
D0416:  MOV.W           R2, #0x800
D041A:  UXTH            R0, R3
D041C:  MULS            R0, R1
D041E:  MOV             R1, #0xFFFFD70A
D0426:  SMLABT.W        R1, R1, R3, R2
D042A:  SUB.W           R0, R1, R0,LSR#16
D042E:  BLX             j_silk_log2lin
D0432:  MOV             R4, R0
D0434:  MOVW            R0, #0x828
D0438:  BLX             j_silk_log2lin
D043C:  LDR.W           R5, [R10]
D0440:  LDR.W           R8, [R6,#0x3C]
D0444:  CMP             R5, #1
D0446:  BLT             loc_D0482
D0448:  MOVS            R1, #1
D044A:  SXTH            R2, R4
D044C:  ADD.W           R1, R1, R4,ASR#15
D0450:  MOVS            R3, #0
D0452:  MOV             LR, #0x7FFFFFFF
D0456:  MOV.W           R12, R1,ASR#1
D045A:  LDR.W           R5, [R8,R3,LSL#2]
D045E:  UXTH            R4, R5
D0460:  MLA.W           R1, R5, R12, R0
D0464:  MULS            R4, R2
D0466:  SMLATB.W        R1, R5, R2, R1
D046A:  ADD.W           R1, R1, R4,ASR#16
D046E:  CMP             R1, LR
D0470:  IT CS
D0472:  MOVCS           R1, LR
D0474:  STR.W           R1, [R8,R3,LSL#2]
D0478:  ADDS            R3, #1
D047A:  LDR.W           R5, [R10]
D047E:  CMP             R3, R5
D0480:  BLT             loc_D045A
D0482:  LDR             R0, [R6,#8]
D0484:  MOV.W           R1, #0x80000000
D0488:  LDR             R2, [R6,#0x10]
D048A:  MOVW            R8, #0x11B4
D048E:  LDR             R0, [R0]
D0490:  LDR.W           R4, [R2,R8]
D0494:  EOR.W           R0, R1, R0,LSL#16
D0498:  MOV.W           R1, #0x40000
D049C:  ASRS            R0, R0, #0x14
D049E:  ADD.W           R0, R1, R0,LSL#6
D04A2:  MUL.W           R9, R0, R4
D04A6:  MOV.W           R0, #0x11E0
D04AA:  LDR             R1, [R2,R0]
D04AC:  LDR             R0, [R6,#0xC]
D04AE:  LDRB.W          R11, [R0]
D04B2:  MOV.W           R10, R9,ASR#8
D04B6:  CMP.W           R11, #2
D04BA:  BNE             loc_D0554
D04BC:  MOVW            R0, #0xCCD
D04C0:  BLX             sub_108848
D04C4:  MOV             R2, R0
D04C6:  CMP             R5, #1
D04C8:  BLT             loc_D052E
D04CA:  LDR             R0, [R6,#0x10]
D04CC:  MOVS            R5, #0
D04CE:  STR.W           R11, [R6,#0x74]
D04D2:  ADD             R0, R8
D04D4:  MOV.W           R8, R9,ASR#24
D04D8:  LDR.W           R9, [R6,#0x3C]
D04DC:  LDR.W           R11, [R6,#0x30]
D04E0:  STR             R0, [R6,#0x70]
D04E2:  UXTH.W          R0, R10
D04E6:  STR             R0, [R6,#0x78]
D04E8:  ADD.W           R4, R9, R5,LSL#2
D04EC:  MOV.W           R0, #0xC000
D04F0:  MOV             R10, R2
D04F2:  LDR             R1, [R4,#0x7C]
D04F4:  BLX             sub_108848
D04F8:  MOV             R2, R10
D04FA:  ADD             R0, R2
D04FC:  LDR             R3, [R6,#0x78]
D04FE:  ADDS            R5, #1
D0500:  SXTH            R1, R0
D0502:  MUL.W           R12, R1, R3
D0506:  RSB.W           R3, R0, #0x4000
D050A:  ADD.W           R0, R0, #0xC000
D050E:  MLS.W           R1, R1, R8, R3
D0512:  SUB.W           R1, R1, R12,LSR#16
D0516:  PKHBT.W         R0, R0, R1,LSL#16
D051A:  STR.W           R0, [R4,#0x14C]
D051E:  LDR.W           R0, [R11]
D0522:  CMP             R5, R0
D0524:  BLT             loc_D04E8
D0526:  LDR             R0, [R6,#0x70]
D0528:  LDR.W           R11, [R6,#0x74]
D052C:  LDR             R4, [R0]
D052E:  MOVW            R1, #0x999A
D0532:  SXTH            R0, R4
D0534:  MOVT            R1, #0x59 ; 'Y'
D0538:  MOVW            R12, #0xC000
D053C:  MULS            R0, R1
D053E:  MOVT            R12, #0xFFFF
D0542:  LDR.W           R9, [R6,#0x3C]
D0546:  ASRS            R0, R0, #0x10
D0548:  ADD.W           R0, R0, R0,LSL#1
D054C:  LSLS            R0, R0, #0xE
D054E:  SUB.W           R12, R12, R0,ASR#16
D0552:  B               loc_D05BC
D0554:  MOVW            R0, #0x5333
D0558:  BLX             sub_108848
D055C:  SXTH            R1, R0
D055E:  MOVW            R2, #0x999A
D0562:  MULS            R1, R2
D0564:  UXTH.W          R3, R10
D0568:  RSB.W           R2, R0, #0x4000
D056C:  MOV.W           R5, R9,ASR#24
D0570:  LDR.W           R9, [R6,#0x3C]
D0574:  ADD.W           R0, R0, #0xC000
D0578:  ASRS            R1, R1, #0x10
D057A:  MULS            R3, R1
D057C:  MLS.W           R1, R1, R5, R2
D0580:  SUB.W           R1, R1, R3,LSR#16
D0584:  PKHBT.W         R0, R0, R1,LSL#16
D0588:  STR.W           R0, [R9,#0x14C]
D058C:  LDR             R3, [R6,#0x30]
D058E:  LDR             R1, [R3]
D0590:  CMP             R1, #2
D0592:  BLT             loc_D062E
D0594:  STR.W           R0, [R9,#0x150]
D0598:  MOVW            R12, #0xC000
D059C:  LDR             R0, [R3]
D059E:  MOVT            R12, #0xFFFF
D05A2:  CMP             R0, #3
D05A4:  BLT             loc_D05BC
D05A6:  MOVS            R0, #0x55 ; 'U'
D05A8:  LDR.W           R1, [R9,#0x14C]
D05AC:  STR.W           R1, [R9,R0,LSL#2]
D05B0:  SUB.W           R1, R0, #0x52 ; 'R'
D05B4:  ADDS            R0, #1
D05B6:  LDR             R2, [R3]
D05B8:  CMP             R1, R2
D05BA:  BLT             loc_D05A8
D05BC:  LDR             R2, [R6,#0x10]
D05BE:  CMP.W           R11, #2
D05C2:  BNE             loc_D062A
D05C4:  LDR.W           R0, [R9,#0x184]
D05C8:  MOV.W           R1, #0x40000
D05CC:  LDRSH.W         R3, [R9,#0x180]
D05D0:  SUB.W           R0, R1, R0,LSL#4
D05D4:  UXTH            R1, R0
D05D6:  SMULTB.W        R0, R0, R3
D05DA:  MULS            R1, R3
D05DC:  MOVW            R3, #0x3333
D05E0:  RSB.W           R0, R0, #0x10000
D05E4:  SUB.W           R0, R0, R1,ASR#16
D05E8:  UXTH            R1, R0
D05EA:  MULS            R1, R3
D05EC:  LSRS            R1, R1, #0x10
D05EE:  SMLATB.W        R0, R0, R3, R1
D05F2:  MOVW            R1, #0x21B0
D05F6:  LDR             R1, [R2,R1]
D05F8:  MOVW            R3, #0x999A
D05FC:  LSLS            R1, R1, #0xF
D05FE:  CMP             R1, #1
D0600:  ADD.W           R8, R3, R0,LSL#1
D0604:  BLT             loc_D063C
D0606:  CLZ.W           R11, R1
D060A:  STR.W           R12, [R6,#0x78]
D060E:  RSBS.W          R5, R11, #0x18
D0612:  MOV.W           R9, R8,ASR#16
D0616:  RSB.W           R12, R5, #0
D061A:  MOV             R0, R1
D061C:  BEQ             loc_D0650
D061E:  CMP.W           R5, #0xFFFFFFFF
D0622:  BLE             loc_D0642
D0624:  ROR.W           R0, R1, R5
D0628:  B               loc_D0650
D062A:  MOVS            R1, #0
D062C:  B               loc_D06F0
D062E:  MOVW            R12, #0xC000
D0632:  MOVS            R1, #0
D0634:  LDR             R2, [R6,#0x10]
D0636:  MOVT            R12, #0xFFFF
D063A:  B               loc_D06F0
D063C:  MOVS            R3, #0
D063E:  MOVS            R0, #0
D0640:  B               loc_D06E0
D0642:  ADD.W           R4, R5, #0x20 ; ' '
D0646:  LSL.W           R0, R1, R12
D064A:  LSR.W           R4, R1, R4
D064E:  ORRS            R0, R4
D0650:  AND.W           R0, R0, #0x7F
D0654:  MOV.W           LR, #0xD50000
D0658:  TST.W           R11, #1
D065C:  MOV.W           R10, R11,LSR#1
D0660:  MUL.W           R3, R0, LR
D0664:  MOV.W           R0, #0x8000
D0668:  IT EQ
D066A:  MOVWEQ          R0, #0xB486
D066E:  MOV.W           R4, #0x8000
D0672:  LSR.W           R0, R0, R10
D0676:  CMP             R5, #0
D0678:  MOV.W           R2, R0,LSR#16
D067C:  MOV.W           R3, R3,LSR#16
D0680:  MLA.W           R2, R3, R2, R0
D0684:  UXTH            R0, R0
D0686:  MUL.W           R0, R3, R0
D068A:  ADD.W           R0, R0, R2,LSL#16
D068E:  SMULTB.W        R3, R0, R9
D0692:  LDR.W           R9, [R6,#0x3C]
D0696:  BEQ             loc_D06B4
D0698:  CMP.W           R5, #0xFFFFFFFF
D069C:  BLE             loc_D06A8
D069E:  RORS            R1, R5
D06A0:  B               loc_D06B4
D06A2:  ALIGN 4
D06A4:  DCD __stack_chk_guard_ptr - 0xCF82A
D06A8:  ADD.W           R2, R5, #0x20 ; ' '
D06AC:  LSL.W           R0, R1, R12
D06B0:  LSRS            R1, R2
D06B2:  ORRS            R1, R0
D06B4:  AND.W           R0, R1, #0x7F
D06B8:  TST.W           R11, #1
D06BC:  IT EQ
D06BE:  MOVWEQ          R4, #0xB486
D06C2:  LDR.W           R12, [R6,#0x78]
D06C6:  MUL.W           R0, R0, LR
D06CA:  LSR.W           R1, R4, R10
D06CE:  LSRS            R2, R1, #0x10
D06D0:  LSRS            R0, R0, #0x10
D06D2:  MLA.W           R2, R0, R2, R1
D06D6:  UXTH            R1, R1
D06D8:  MULS            R0, R1
D06DA:  ADD.W           R0, R0, R2,LSL#16
D06DE:  ASRS            R0, R0, #0x10
D06E0:  MOVW            R1, #0xFFFE
D06E4:  LDR             R2, [R6,#0x10]
D06E6:  AND.W           R1, R1, R8
D06EA:  MULS            R0, R1
D06EC:  ADD.W           R1, R3, R0,ASR#16
D06F0:  MOVW            R10, #0x1C0C
D06F4:  MOVW            R11, #0x6666
D06F8:  LDR.W           R3, [R2,R10]
D06FC:  MOVW            LR, #0x1C08
D0700:  LDR.W           R0, [R2,LR]
D0704:  SUB.W           R5, R12, R3
D0708:  MOV.W           R8, #1
D070C:  UXTH            R4, R5
D070E:  SMLABT.W        R5, R11, R5, R3
D0712:  MUL.W           R4, R4, R11
D0716:  ADD.W           R5, R5, R4,LSR#16
D071A:  SUBS            R4, R1, R0
D071C:  SMLABT.W        R0, R11, R4, R0
D0720:  UXTH            R4, R4
D0722:  MUL.W           R4, R4, R11
D0726:  ADD.W           R0, R0, R4,LSR#16
D072A:  STR.W           R0, [R2,LR]
D072E:  ADD.W           R0, R8, R0,ASR#1
D0732:  STR.W           R5, [R2,R10]
D0736:  MOV             R5, R1
D0738:  ASRS            R0, R0, #1
D073A:  MOV             R1, R2
D073C:  STR.W           R0, [R9,#0x16C]
D0740:  LDR.W           R0, [R1,R10]
D0744:  ADD.W           R0, R8, R0,ASR#1
D0748:  ASRS            R0, R0, #1
D074A:  STR.W           R0, [R9,#0x15C]
D074E:  LDR.W           R0, [R1,R10]
D0752:  SUB.W           R4, R12, R0
D0756:  SMLABT.W        R0, R11, R4, R0
D075A:  UXTH            R4, R4
D075C:  MUL.W           R4, R4, R11
D0760:  ADD.W           R0, R0, R4,LSR#16
D0764:  STR.W           R0, [R1,R10]
D0768:  LDR.W           R0, [R1,LR]
D076C:  SUBS            R4, R5, R0
D076E:  SMLABT.W        R0, R11, R4, R0
D0772:  UXTH            R4, R4
D0774:  MUL.W           R4, R4, R11
D0778:  ADD.W           R0, R0, R4,LSR#16
D077C:  STR.W           R0, [R1,LR]
D0780:  ADD.W           R0, R8, R0,ASR#1
D0784:  ASRS            R0, R0, #1
D0786:  STR.W           R0, [R9,#0x170]
D078A:  LDR.W           R0, [R1,R10]
D078E:  ADD.W           R0, R8, R0,ASR#1
D0792:  ASRS            R0, R0, #1
D0794:  STR.W           R0, [R9,#0x160]
D0798:  LDR.W           R0, [R1,R10]
D079C:  SUB.W           R4, R12, R0
D07A0:  SMLABT.W        R0, R11, R4, R0
D07A4:  UXTH            R4, R4
D07A6:  MUL.W           R4, R4, R11
D07AA:  ADD.W           R0, R0, R4,LSR#16
D07AE:  STR.W           R0, [R1,R10]
D07B2:  LDR.W           R0, [R1,LR]
D07B6:  SUBS            R4, R5, R0
D07B8:  SMLABT.W        R0, R11, R4, R0
D07BC:  UXTH            R4, R4
D07BE:  MUL.W           R4, R4, R11
D07C2:  ADD.W           R0, R0, R4,LSR#16
D07C6:  STR.W           R0, [R1,LR]
D07CA:  ADD.W           R0, R8, R0,ASR#1
D07CE:  ASRS            R0, R0, #1
D07D0:  STR.W           R0, [R9,#0x174]
D07D4:  LDR.W           R0, [R1,R10]
D07D8:  ADD.W           R0, R8, R0,ASR#1
D07DC:  ASRS            R0, R0, #1
D07DE:  STR.W           R0, [R9,#0x164]
D07E2:  LDR.W           R3, [R1,LR]
D07E6:  LDR.W           R0, [R1,R10]
D07EA:  SUBS            R5, R5, R3
D07EC:  SUB.W           R4, R12, R0
D07F0:  SMLABT.W        R3, R11, R5, R3
D07F4:  UXTH            R5, R5
D07F6:  MUL.W           R5, R5, R11
D07FA:  SMLABT.W        R0, R11, R4, R0
D07FE:  ADD.W           R3, R3, R5,LSR#16
D0802:  UXTH            R5, R4
D0804:  MUL.W           R2, R5, R11
D0808:  STR.W           R3, [R1,LR]
D080C:  ADD.W           R0, R0, R2,LSR#16
D0810:  STR.W           R0, [R1,R10]
D0814:  ADD.W           R0, R8, R3,ASR#1
D0818:  ASRS            R0, R0, #1
D081A:  STR.W           R0, [R9,#0x178]
D081E:  LDR.W           R0, [R1,R10]
D0822:  ADD.W           R0, R8, R0,ASR#1
D0826:  ASRS            R0, R0, #1
D0828:  STR.W           R0, [R9,#0x168]
D082C:  LDR             R0, =(__stack_chk_guard_ptr - 0xD0834)
D082E:  LDR             R1, [R6,#0x7C]
D0830:  ADD             R0, PC; __stack_chk_guard_ptr
D0832:  LDR             R0, [R0]; __stack_chk_guard
D0834:  LDR             R0, [R0]
D0836:  SUBS            R0, R0, R1
D0838:  ITTTT EQ
D083A:  SUBEQ.W         R4, R7, #-var_1C
D083E:  MOVEQ           SP, R4
D0840:  POPEQ.W         {R8-R11}
D0844:  POPEQ           {R4-R7,PC}
D0846:  BLX             __stack_chk_fail
