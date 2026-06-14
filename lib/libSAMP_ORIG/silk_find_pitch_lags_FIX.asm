; =========================================================
; Game Engine Function: silk_find_pitch_lags_FIX
; Address            : 0xCDB8C - 0xCDEF6
; =========================================================

CDB8C:  PUSH            {R4-R7,LR}
CDB8E:  ADD             R7, SP, #0xC
CDB90:  PUSH.W          {R8-R11}
CDB94:  SUB             SP, SP, #0xE4
CDB96:  MOV             R10, R0
CDB98:  LDR             R0, =(__stack_chk_guard_ptr - 0xCDBA6)
CDB9A:  STRD.W          R2, R1, [R7,#var_F4]
CDB9E:  MOVW            R4, #0x11F4
CDBA2:  ADD             R0, PC; __stack_chk_guard_ptr
CDBA4:  MOV             R5, R3
CDBA6:  MOVW            R1, #0x11F0
CDBAA:  MOVW            R2, #0x11C4
CDBAE:  LDR             R0, [R0]; __stack_chk_guard
CDBB0:  MOV             R6, SP
CDBB2:  LDR             R0, [R0]
CDBB4:  STR.W           R0, [R7,#var_24]
CDBB8:  MOVW            R0, #0x11E8
CDBBC:  LDR.W           R3, [R10,R4]
CDBC0:  LDR.W           R0, [R10,R0]
CDBC4:  LDR.W           R1, [R10,R1]
CDBC8:  ADD             R0, R3
CDBCA:  LDR.W           R2, [R10,R2]
CDBCE:  ADD             R0, R1
CDBD0:  STRD.W          R0, R5, [R7,#var_FC]
CDBD4:  ADD.W           R0, R5, R0,LSL#1
CDBD8:  SUB.W           R8, R0, R2,LSL#1
CDBDC:  MOVS            R0, #7
CDBDE:  ADD.W           R0, R0, R2,LSL#1
CDBE2:  BIC.W           R0, R0, #7
CDBE6:  SUB.W           R11, SP, R0
CDBEA:  MOV             SP, R11
CDBEC:  MOV             R0, R11
CDBEE:  MOV             R1, R8
CDBF0:  MOVS            R2, #1
CDBF2:  BLX             j_silk_apply_sine_window
CDBF6:  LDR.W           R9, [R10,R4]
CDBFA:  MOVW            R0, #0x11C4
CDBFE:  LDR.W           R0, [R10,R0]
CDC02:  ADD.W           R8, R8, R9,LSL#1
CDC06:  SUB.W           R4, R0, R9,LSL#1
CDC0A:  ADD.W           R5, R11, R9,LSL#1
CDC0E:  LSLS            R2, R4, #1; n
CDC10:  MOV             R1, R8; src
CDC12:  MOV             R0, R5; dest
CDC14:  BLX             j_memcpy
CDC18:  ADD.W           R0, R5, R4,LSL#1
CDC1C:  ADD.W           R1, R8, R4,LSL#1
CDC20:  MOVS            R2, #2
CDC22:  MOV             R3, R9
CDC24:  BLX             j_silk_apply_sine_window
CDC28:  MOVW            R0, #0x11C4
CDC2C:  MOVW            R8, #0x1228
CDC30:  LDR.W           R3, [R10,R0]; int
CDC34:  LDR.W           R0, [R10,R8]
CDC38:  LDR             R1, [R7,#arg_0]
CDC3A:  SUB             SP, SP, #8
CDC3C:  SUB.W           R4, R7, #-var_68
CDC40:  ADDS            R0, #1
CDC42:  STRD.W          R0, R1, [SP,#0x108+var_108]; int
CDC46:  SUB.W           R1, R7, #-var_EC; int
CDC4A:  MOV             R2, R11; src
CDC4C:  MOV             R0, R4; int
CDC4E:  MOV             R11, R10
CDC50:  BLX             j_silk_autocorr
CDC54:  ADD             SP, SP, #8
CDC56:  LDR.W           R0, [R7,#var_68]
CDC5A:  ASRS            R1, R0, #0x10
CDC5C:  UXTH            R2, R0
CDC5E:  ADD.W           R1, R1, R1,LSL#5
CDC62:  LSLS            R2, R2, #5
CDC64:  ADD.W           R1, R0, R1,LSL#1
CDC68:  UXTAH.W         R0, R2, R0
CDC6C:  LSLS            R0, R0, #1
CDC6E:  ADD.W           R0, R1, R0,LSR#16
CDC72:  MOV             R1, R4
CDC74:  ADDS            R0, #1
CDC76:  STR.W           R0, [R7,#var_68]
CDC7A:  LDR.W           R2, [R11,R8]
CDC7E:  SUB.W           R0, R7, #-var_88
CDC82:  BLX             j_silk_schur
CDC86:  MOVS            R1, #1
CDC88:  CMP             R0, #1
CDC8A:  IT GT
CDC8C:  MOVGT           R1, R0
CDC8E:  CMP             R1, #0
CDC90:  MOV             R0, R1
CDC92:  IT MI
CDC94:  NEGMI           R0, R1
CDC96:  CLZ.W           R9, R0
CDC9A:  SUB.W           R0, R9, #1
CDC9E:  LSL.W           R5, R1, R0
CDCA2:  MOV             R0, #0x1FFFFFFF
CDCA6:  ASRS            R1, R5, #0x10
CDCA8:  BLX             sub_108848
CDCAC:  LDR.W           R1, [R7,#var_68]
CDCB0:  ADD             R8, R11
CDCB2:  CMP             R1, #0
CDCB4:  MOV             R2, R1
CDCB6:  IT MI
CDCB8:  NEGMI           R2, R1
CDCBA:  LDR.W           R10, [R7,#var_F0]
CDCBE:  CLZ.W           R2, R2
CDCC2:  SUBS            R3, R2, #1
CDCC4:  LSLS            R1, R3
CDCC6:  SXTH            R3, R0
CDCC8:  UXTH            R4, R1
CDCCA:  MULS            R4, R3
CDCCC:  ASRS            R4, R4, #0x10
CDCCE:  SMLATB.W        R4, R1, R0, R4
CDCD2:  SMMUL.W         R5, R4, R5
CDCD6:  SUB.W           R1, R1, R5,LSL#3
CDCDA:  UXTH            R5, R1
CDCDC:  SMLABT.W        R0, R0, R1, R4
CDCE0:  MULS            R3, R5
CDCE2:  RSB.W           R1, R9, #1
CDCE6:  ADD             R1, R2
CDCE8:  ADD.W           R2, R1, #0x1C
CDCEC:  CMP             R2, #0xF
CDCEE:  ADD.W           R0, R0, R3,ASR#16
CDCF2:  BGT             loc_CDD16
CDCF4:  RSB.W           R1, R2, #0x10
CDCF8:  MOV             R2, #0x7FFFFFFF
CDCFC:  MOV.W           R3, #0x80000000
CDD00:  LSRS            R2, R1
CDD02:  ASRS            R3, R1
CDD04:  CMP             R3, R2
CDD06:  BLE             loc_CDD26
CDD08:  CMP             R0, R3
CDD0A:  MOV             R5, R3
CDD0C:  BGT             loc_CDD34
CDD0E:  CMP             R0, R2
CDD10:  IT LT
CDD12:  MOVLT           R0, R2
CDD14:  B               loc_CDD32
CDD16:  SUB.W           R3, R2, #0x10
CDD1A:  MOVS            R1, #0
CDD1C:  CMP             R2, #0x30 ; '0'
CDD1E:  IT LT
CDD20:  ASRLT.W         R1, R0, R3
CDD24:  B               loc_CDD38
CDD26:  CMP             R0, R2
CDD28:  MOV             R5, R2
CDD2A:  BGT             loc_CDD34
CDD2C:  CMP             R0, R3
CDD2E:  IT LT
CDD30:  MOVLT           R0, R3
CDD32:  MOV             R5, R0
CDD34:  LSL.W           R1, R5, R1
CDD38:  STR.W           R1, [R10,#0x188]
CDD3C:  SUB.W           R9, R7, #-var_C8
CDD40:  LDR.W           R2, [R8]
CDD44:  SUB.W           R1, R7, #-var_88
CDD48:  MOVW            R4, #0x8000
CDD4C:  MOV             R0, R9
CDD4E:  MOVT            R4, #0xFFFF
CDD52:  BLX             j_silk_k2a
CDD56:  LDR.W           R1, [R8]
CDD5A:  CMP             R1, #1
CDD5C:  BLT             loc_CDD86
CDD5E:  SUB.W           R12, R7, #-var_E8
CDD62:  MOVS            R0, #0
CDD64:  MOVW            R2, #0x7FFF
CDD68:  LDR.W           R5, [R9,R0,LSL#2]
CDD6C:  ASRS            R3, R5, #0xC
CDD6E:  CMP             R3, R4
CDD70:  MOV             R3, R4
CDD72:  IT GT
CDD74:  ASRGT           R3, R5, #0xC
CDD76:  CMP             R3, R2
CDD78:  IT GE
CDD7A:  MOVGE           R3, R2
CDD7C:  STRH.W          R3, [R12,R0,LSL#1]
CDD80:  ADDS            R0, #1
CDD82:  CMP             R0, R1
CDD84:  BLT             loc_CDD68
CDD86:  SUB.W           R5, R7, #-var_E8
CDD8A:  MOVW            R2, #0xFD71
CDD8E:  MOV             R0, R5
CDD90:  BLX             j_silk_bwexpander
CDD94:  MOVW            R9, #0x13E4
CDD98:  LDR.W           R1, [R8]
CDD9C:  LDR.W           R0, [R11,R9]
CDDA0:  STRD.W          R1, R0, [SP,#0x100+var_108]!
CDDA4:  LDRD.W          R1, R0, [R7,#var_F8]
CDDA8:  MOV             R2, R5
CDDAA:  LDR.W           R3, [R7,#var_FC]
CDDAE:  BLX             j_silk_LPC_analysis_filter
CDDB2:  ADD             SP, SP, #8
CDDB4:  MOVW            R0, #0x129D
CDDB8:  LDRB.W          R1, [R11,R0]
CDDBC:  CBZ             R1, loc_CDDC8
CDDBE:  MOVW            R1, #0x1238
CDDC2:  LDR.W           R1, [R11,R1]
CDDC6:  CBZ             R1, loc_CDDEC
CDDC8:  MOVS            R0, #0
CDDCA:  MOVW            R1, #0x129C
CDDCE:  STRD.W          R0, R0, [R10,#0x7C]
CDDD2:  STRD.W          R0, R0, [R10,#0x84]
CDDD6:  STRB.W          R0, [R11,R1]
CDDDA:  MOVW            R1, #0x129A
CDDDE:  STRH.W          R0, [R11,R1]
CDDE2:  MOVW            R1, #0x21B0
CDDE6:  STR.W           R0, [R11,R1]
CDDEA:  B               loc_CDED6
CDDEC:  ADD             R0, R11
CDDEE:  STR.W           R0, [R7,#var_F8]
CDDF2:  MOVW            R1, #0x122C
CDDF6:  ADD.W           R12, R11, R9
CDDFA:  MOV.W           R0, #0x11C0
CDDFE:  LDR.W           LR, [R11,R1]
CDE02:  MOVW            R1, #0x11BD
CDE06:  LDRSB.W         R9, [R11,R1]
CDE0A:  MOVW            R1, #0x1268
CDE0E:  MOV.W           R2, #0x11E0
CDE12:  MOVW            R3, #0x1224
CDE16:  MOVW            R5, #0x11E4
CDE1A:  LDR.W           R10, [R11,R0]
CDE1E:  MOVW            R0, #0x11B4
CDE22:  LDRSH.W         R1, [R11,R1]
CDE26:  LDR.W           R0, [R11,R0]
CDE2A:  LDR.W           R2, [R11,R2]
CDE2E:  LDR.W           R3, [R11,R3]
CDE32:  LDR.W           R5, [R11,R5]
CDE36:  LDR.W           R8, [R8]
CDE3A:  LDR.W           R12, [R12]
CDE3E:  SUB             SP, SP, #0x20 ; ' '
CDE40:  STR.W           R12, [SP,#0x120+var_104]
CDE44:  STR             R5, [SP,#0x120+var_108]
CDE46:  MOVW            R5, #0xFB34
CDE4A:  STR             R3, [SP,#0x120+var_10C]
CDE4C:  MOVS            R3, #0
CDE4E:  STR             R2, [SP,#0x120+var_110]
CDE50:  MOV.W           R2, R8,LSL#16
CDE54:  SUB.W           R2, R3, R2,ASR#11
CDE58:  LSLS            R3, R0, #0x10
CDE5A:  SUB.W           R2, R2, R3,ASR#14
CDE5E:  SXTH            R0, R0
CDE60:  MOVW            R3, #0xCCCE
CDE64:  MOVT            R5, #0xFFFF
CDE68:  MULS            R0, R3
CDE6A:  MOV.W           R3, R9,ASR#1
CDE6E:  STRD.W          R10, LR, [SP,#0x120+var_11C]
CDE72:  ADD.W           R0, R2, R0,ASR#16
CDE76:  MOVW            R2, #0xF99B
CDE7A:  MULS            R2, R1
CDE7C:  SMLABB.W        R0, R3, R5, R0
CDE80:  MOVW            R3, #0x21B0
CDE84:  ADD             R3, R11
CDE86:  STR             R3, [SP,#0x120+var_120]
CDE88:  RSB.W           R1, R1, R2,ASR#16
CDE8C:  ADD             R0, R1
CDE8E:  MOVW            R1, #0x1333
CDE92:  ADD             R0, R1
CDE94:  CMP             R0, R4
CDE96:  IT GT
CDE98:  MOVGT           R4, R0
CDE9A:  MOVW            R0, #0x7FFF
CDE9E:  CMP             R4, R0
CDEA0:  IT GE
CDEA2:  MOVGE           R4, R0
CDEA4:  MOVW            R0, #0x129A
CDEA8:  ADD.W           R2, R11, R0
CDEAC:  MOVW            R0, #0x129C
CDEB0:  ADD.W           R3, R11, R0
CDEB4:  LDR.W           R0, [R7,#var_F0]
CDEB8:  STR             R4, [SP,#0x120+var_114]
CDEBA:  ADD.W           R1, R0, #0x7C ; '|'
CDEBE:  LDR.W           R0, [R7,#var_F4]
CDEC2:  BLX             j_silk_pitch_analysis_core
CDEC6:  ADD             SP, SP, #0x20 ; ' '
CDEC8:  MOVS            R1, #1
CDECA:  CMP             R0, #0
CDECC:  IT EQ
CDECE:  MOVEQ           R1, #2
CDED0:  LDR.W           R0, [R7,#var_F8]
CDED4:  STRB            R1, [R0]
CDED6:  LDR             R0, =(__stack_chk_guard_ptr - 0xCDEE0)
CDED8:  LDR.W           R1, [R7,#var_24]
CDEDC:  ADD             R0, PC; __stack_chk_guard_ptr
CDEDE:  LDR             R0, [R0]; __stack_chk_guard
CDEE0:  LDR             R0, [R0]
CDEE2:  SUBS            R0, R0, R1
CDEE4:  ITTTT EQ
CDEE6:  SUBEQ.W         R4, R7, #-var_1C
CDEEA:  MOVEQ           SP, R4
CDEEC:  POPEQ.W         {R8-R11}
CDEF0:  POPEQ           {R4-R7,PC}
CDEF2:  BLX             __stack_chk_fail
