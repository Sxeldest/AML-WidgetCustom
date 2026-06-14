; =========================================================
; Game Engine Function: silk_schur
; Address            : 0x1ABE04 - 0x1ABFB2
; =========================================================

1ABE04:  PUSH            {R4-R7,LR}
1ABE06:  ADD             R7, SP, #0xC
1ABE08:  PUSH.W          {R8-R11}
1ABE0C:  SUB             SP, SP, #0xD4
1ABE0E:  STR             R0, [SP,#0xF0+var_F0]
1ABE10:  LDR             R0, =(__stack_chk_guard_ptr - 0x1ABE16)
1ABE12:  ADD             R0, PC; __stack_chk_guard_ptr
1ABE14:  LDR             R0, [R0]; __stack_chk_guard
1ABE16:  LDR             R0, [R0]
1ABE18:  STR             R0, [SP,#0xF0+var_20]
1ABE1A:  LDR             R3, [R1]
1ABE1C:  CLZ.W           R0, R3
1ABE20:  CMP             R0, #1
1ABE22:  BHI             loc_1ABE4C
1ABE24:  ASRS            R0, R3, #1
1ABE26:  CMP             R2, #1
1ABE28:  STRD.W          R0, R0, [SP,#0xF0+var_E8]
1ABE2C:  BLT             loc_1ABE9C
1ABE2E:  ADDS            R0, R1, #4
1ABE30:  ADD             R5, SP, #0xF0+var_E8
1ABE32:  MOVS            R1, #0
1ABE34:  LDR.W           R3, [R0,R1,LSL#2]
1ABE38:  ADD.W           R6, R5, R1,LSL#3
1ABE3C:  ADDS            R1, #1
1ABE3E:  CMP             R1, R2
1ABE40:  MOV.W           R3, R3,ASR#1
1ABE44:  STRD.W          R3, R3, [R6,#8]
1ABE48:  BLT             loc_1ABE34
1ABE4A:  B               loc_1ABE9C
1ABE4C:  CMP             R0, #2
1ABE4E:  BNE             loc_1ABE72
1ABE50:  CMP             R2, #1
1ABE52:  STRD.W          R3, R3, [SP,#0xF0+var_E8]
1ABE56:  BLT             loc_1ABE9C
1ABE58:  ADDS            R0, R1, #4
1ABE5A:  ADD             R5, SP, #0xF0+var_E8
1ABE5C:  MOVS            R1, #0
1ABE5E:  LDR.W           R3, [R0,R1,LSL#2]
1ABE62:  ADD.W           R6, R5, R1,LSL#3
1ABE66:  ADDS            R1, #1
1ABE68:  CMP             R1, R2
1ABE6A:  STRD.W          R3, R3, [R6,#8]
1ABE6E:  BLT             loc_1ABE5E
1ABE70:  B               loc_1ABE9C
1ABE72:  SUBS            R0, #2
1ABE74:  CMP             R2, #1
1ABE76:  LSL.W           R3, R3, R0
1ABE7A:  STRD.W          R3, R3, [SP,#0xF0+var_E8]
1ABE7E:  BLT             loc_1ABE9C
1ABE80:  ADDS            R1, #4
1ABE82:  ADD             R3, SP, #0xF0+var_E8
1ABE84:  MOVS            R4, #0
1ABE86:  LDR.W           R6, [R1,R4,LSL#2]
1ABE8A:  ADD.W           R5, R3, R4,LSL#3
1ABE8E:  ADDS            R4, #1
1ABE90:  CMP             R4, R2
1ABE92:  LSL.W           R6, R6, R0
1ABE96:  STRD.W          R6, R6, [R5,#8]
1ABE9A:  BLT             loc_1ABE86
1ABE9C:  MOVS            R3, #0
1ABE9E:  CMP             R2, #1
1ABEA0:  BLT             loc_1ABF62
1ABEA2:  ADD.W           R9, SP, #0xF0+var_E8
1ABEA6:  MOV.W           R11, #8
1ABEAA:  MOV             R10, R2
1ABEAC:  MOV             R5, R11
1ABEAE:  MOV             R11, R3
1ABEB0:  ADD.W           R3, R11, #1
1ABEB4:  LDR.W           R8, [SP,#0xF0+var_E4]
1ABEB8:  LDR.W           R0, [R9,R3,LSL#3]
1ABEBC:  EOR.W           R1, R0, R0,ASR#31
1ABEC0:  SUB.W           R1, R1, R0,ASR#31
1ABEC4:  CMP             R1, R8
1ABEC6:  BGE             loc_1ABF96
1ABEC8:  MOV.W           R1, R8,ASR#15
1ABECC:  CMP             R1, #1
1ABECE:  MOV.W           R1, #1
1ABED2:  STR             R3, [SP,#0xF0+var_EC]
1ABED4:  IT GT
1ABED6:  MOVGT.W         R1, R8,ASR#15
1ABEDA:  MOV             R4, R2
1ABEDC:  BLX             sub_220A40
1ABEE0:  MOVW            R1, #0x8000
1ABEE4:  NEGS            R3, R0
1ABEE6:  CMN.W           R3, #0x8000
1ABEEA:  MOVT            R1, #0xFFFF
1ABEEE:  IT LE
1ABEF0:  MOVLE           R3, R1
1ABEF2:  ADDS            R1, #1
1ABEF4:  CMP             R0, R1
1ABEF6:  MOV             R2, R4
1ABEF8:  IT LT
1ABEFA:  MOVWLT          R3, #0x7FFF
1ABEFE:  LDR             R0, [SP,#0xF0+var_F0]
1ABF00:  CMP             R11, R2
1ABF02:  STRH.W          R3, [R0,R11,LSL#1]
1ABF06:  MOV             R11, R5
1ABF08:  BGE             loc_1ABF54
1ABF0A:  ADD.W           LR, R9, R11
1ABF0E:  SUB.W           R12, R10, #1
1ABF12:  SXTH            R0, R3
1ABF14:  MOVS            R3, #0
1ABF16:  B               loc_1ABF1E
1ABF18:  ADDS            R3, #1
1ABF1A:  LDR.W           R8, [R5,#0xC]
1ABF1E:  LDR.W           R5, [LR,R3,LSL#3]
1ABF22:  MOV.W           R1, R8,LSL#1
1ABF26:  CMP             R12, R3
1ABF28:  MOV.W           R6, R5,LSL#1
1ABF2C:  SMLABT.W        R5, R0, R1, R5
1ABF30:  UXTH            R1, R1
1ABF32:  UXTH            R4, R6
1ABF34:  MUL.W           R1, R0, R1
1ABF38:  MUL.W           R4, R0, R4
1ABF3C:  SMLABT.W        R6, R0, R6, R8
1ABF40:  ADD.W           R1, R5, R1,ASR#16
1ABF44:  ADD.W           R5, R9, R3,LSL#3
1ABF48:  STR.W           R1, [LR,R3,LSL#3]
1ABF4C:  ADD.W           R1, R6, R4,ASR#16
1ABF50:  STR             R1, [R5,#4]
1ABF52:  BNE             loc_1ABF18
1ABF54:  LDR             R3, [SP,#0xF0+var_EC]
1ABF56:  ADD.W           R11, R11, #8
1ABF5A:  SUB.W           R10, R10, #1
1ABF5E:  CMP             R3, R2
1ABF60:  BLT             loc_1ABEAC
1ABF62:  CMP             R3, R2
1ABF64:  BGE             loc_1ABF74
1ABF66:  LDR             R0, [SP,#0xF0+var_F0]
1ABF68:  SUBS            R1, R2, R3
1ABF6A:  ADD.W           R0, R0, R3,LSL#1; int
1ABF6E:  LSLS            R1, R1, #1; n
1ABF70:  BLX             sub_22178C
1ABF74:  LDR             R1, =(__stack_chk_guard_ptr - 0x1ABF7C)
1ABF76:  LDR             R0, [SP,#0xF0+var_E4]
1ABF78:  ADD             R1, PC; __stack_chk_guard_ptr
1ABF7A:  CMP             R0, #1
1ABF7C:  LDR             R1, [R1]; __stack_chk_guard
1ABF7E:  IT LE
1ABF80:  MOVLE           R0, #1
1ABF82:  LDR             R2, [SP,#0xF0+var_20]
1ABF84:  LDR             R1, [R1]
1ABF86:  SUBS            R1, R1, R2
1ABF88:  ITTT EQ
1ABF8A:  ADDEQ           SP, SP, #0xD4
1ABF8C:  POPEQ.W         {R8-R11}
1ABF90:  POPEQ           {R4-R7,PC}
1ABF92:  BLX             __stack_chk_fail
1ABF96:  MOVW            R1, #0x7EB8
1ABF9A:  CMP             R0, #0
1ABF9C:  ITT GT
1ABF9E:  MOVWGT          R1, #0x8148
1ABFA2:  MOVTGT          R1, #0xFFFF
1ABFA6:  LDR             R0, [SP,#0xF0+var_F0]
1ABFA8:  STRH.W          R1, [R0,R11,LSL#1]
1ABFAC:  CMP             R3, R2
1ABFAE:  BLT             loc_1ABF66
1ABFB0:  B               loc_1ABF74
