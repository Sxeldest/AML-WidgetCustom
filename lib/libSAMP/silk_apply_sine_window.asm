; =========================================================
; Game Engine Function: silk_apply_sine_window
; Address            : 0x1ABCC0 - 0x1ABDD4
; =========================================================

1ABCC0:  PUSH            {R4-R7,LR}
1ABCC2:  ADD             R7, SP, #0xC
1ABCC4:  PUSH.W          {R8-R11}
1ABCC8:  SUB             SP, SP, #8
1ABCCA:  LDR             R6, =(unk_C3C8C - 0x1ABCD4)
1ABCCC:  ASRS            R5, R3, #2
1ABCCE:  CMP             R2, #1
1ABCD0:  ADD             R6, PC; unk_C3C8C
1ABCD2:  ADD.W           R6, R6, R5,LSL#1
1ABCD6:  LDRSH.W         R6, [R6,#-8]
1ABCDA:  RSB.W           R4, R6, #0
1ABCDE:  UXTH.W          R12, R6
1ABCE2:  SXTH            R5, R4
1ABCE4:  MUL.W           R5, R5, R12
1ABCE8:  MOV.W           R5, R5,ASR#16
1ABCEC:  SMLABT.W        R5, R4, R6, R5
1ABCF0:  BNE             loc_1ABCFC
1ABCF2:  ASRS            R4, R3, #3
1ABCF4:  MOVS            R2, #0
1ABCF6:  CMP             R3, #1
1ABCF8:  BGE             loc_1ABD0A
1ABCFA:  B               loc_1ABDCC
1ABCFC:  MOV.W           R2, #0x10000
1ABD00:  ADD.W           R4, R2, R5,ASR#1
1ABD04:  ASRS            R6, R3, #4
1ABD06:  CMP             R3, #1
1ABD08:  BLT             loc_1ABDCC
1ABD0A:  SXTH            R5, R5
1ABD0C:  ADD             R6, R4
1ABD0E:  STR             R5, [SP,#0x24+var_24]
1ABD10:  MOV.W           LR, #0
1ABD14:  LDR.W           R9, [SP,#0x24+var_24]
1ABD18:  MOV.W           R12, #0
1ABD1C:  ADDS            R5, R6, R2
1ABD1E:  LDRSH.W         R10, [R1,LR]
1ABD22:  ADD.W           R11, R1, LR
1ABD26:  UBFX.W          R4, R5, #1, #0x10
1ABD2A:  ASRS            R5, R5, #0x11
1ABD2C:  SMULBB.W        R5, R5, R10
1ABD30:  RSB.W           R2, R2, #1
1ABD34:  MUL.W           R4, R4, R10
1ABD38:  ADD.W           R10, R2, R6,LSL#1
1ABD3C:  UXTH            R2, R6
1ABD3E:  SMLATB.W        R10, R6, R9, R10
1ABD42:  ADD.W           R12, R12, #4
1ABD46:  ADD.W           R4, R5, R4,LSR#16
1ABD4A:  STRH.W          R4, [R0,LR]
1ABD4E:  LDRSH.W         R5, [R11,#2]
1ABD52:  MUL.W           R4, R2, R5
1ABD56:  MUL.W           R2, R2, R9
1ABD5A:  LSRS            R4, R4, #0x10
1ABD5C:  SMLATB.W        R4, R6, R5, R4
1ABD60:  ADD.W           R5, R0, LR
1ABD64:  ADD.W           R2, R10, R2,ASR#16
1ABD68:  MOV             R10, R3
1ABD6A:  CMP.W           R2, #0x10000
1ABD6E:  ADD.W           LR, LR, #8
1ABD72:  STRH            R4, [R5,#2]
1ABD74:  MOV.W           R4, #0x10000
1ABD78:  IT GE
1ABD7A:  MOVGE           R2, R4
1ABD7C:  RSB.W           R4, R6, R2,LSL#1
1ABD80:  ADD             R6, R2
1ABD82:  SMLATB.W        R4, R2, R9, R4
1ABD86:  STR             R4, [SP,#0x24+var_20]
1ABD88:  LDRSH.W         R4, [R11,#4]
1ABD8C:  UBFX.W          R8, R6, #1, #0x10
1ABD90:  ASRS            R6, R6, #0x11
1ABD92:  MUL.W           R3, R8, R4
1ABD96:  SMULBB.W        R4, R6, R4
1ABD9A:  ADD.W           R3, R4, R3,LSR#16
1ABD9E:  STRH            R3, [R5,#4]
1ABDA0:  LDRSH.W         R6, [R11,#6]
1ABDA4:  UXTH            R3, R2
1ABDA6:  MUL.W           R4, R3, R9
1ABDAA:  MULS            R3, R6
1ABDAC:  LSRS            R3, R3, #0x10
1ABDAE:  SMLATB.W        R3, R2, R6, R3
1ABDB2:  STRH            R3, [R5,#6]
1ABDB4:  MOV             R3, R10
1ABDB6:  LDR             R5, [SP,#0x24+var_20]
1ABDB8:  ADD.W           R6, R5, R4,ASR#16
1ABDBC:  MOV.W           R4, #0x10000
1ABDC0:  CMP.W           R6, #0x10000
1ABDC4:  IT GE
1ABDC6:  MOVGE           R6, R4
1ABDC8:  CMP             R12, R3
1ABDCA:  BLT             loc_1ABD1C
1ABDCC:  ADD             SP, SP, #8
1ABDCE:  POP.W           {R8-R11}
1ABDD2:  POP             {R4-R7,PC}
