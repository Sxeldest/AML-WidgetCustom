; =========================================================
; Game Engine Function: denormalise_bands
; Address            : 0x19BB5C - 0x19BD10
; =========================================================

19BB5C:  PUSH            {R4-R7,LR}
19BB5E:  ADD             R7, SP, #0xC
19BB60:  PUSH.W          {R8-R11}
19BB64:  SUB             SP, SP, #0x1C
19BB66:  STR             R3, [SP,#0x38+var_28]
19BB68:  MOV             R10, R1
19BB6A:  LDR             R1, [R7,#arg_4]
19BB6C:  MOV             R6, R2
19BB6E:  LDR             R2, [R0,#0x18]
19BB70:  LDR             R0, [R0,#0x24]
19BB72:  STRD.W          R2, R1, [SP,#0x38+var_24]
19BB76:  LDRSH.W         R1, [R2,R1,LSL#1]
19BB7A:  LDR             R3, [R7,#arg_8]
19BB7C:  LDR.W           R9, [R7,#arg_0]
19BB80:  MUL.W           R4, R1, R3
19BB84:  LDRD.W          R1, R8, [R7,#arg_C]
19BB88:  MUL.W           R5, R0, R3
19BB8C:  CMP             R1, #1
19BB8E:  BEQ             loc_19BB9C
19BB90:  MOV             R0, R5
19BB92:  BLX             sub_220A40
19BB96:  CMP             R4, R0
19BB98:  IT GE
19BB9A:  MOVGE           R4, R0
19BB9C:  MOVS            R0, #0
19BB9E:  CMP.W           R8, #0
19BBA2:  STR             R5, [SP,#0x38+var_30]
19BBA4:  IT NE
19BBA6:  MOVNE           R9, R0
19BBA8:  LDR             R1, [SP,#0x38+var_24]
19BBAA:  LDR             R2, [R7,#arg_8]
19BBAC:  LDRSH.W         R1, [R1,R9,LSL#1]
19BBB0:  MUL.W           R5, R1, R2
19BBB4:  LDR             R1, [SP,#0x38+var_20]
19BBB6:  IT NE
19BBB8:  MOVNE           R1, R0
19BBBA:  STR             R1, [SP,#0x38+var_20]
19BBBC:  IT NE
19BBBE:  MOVNE           R4, R0
19BBC0:  MOV             R0, R6
19BBC2:  STR             R4, [SP,#0x38+var_34]
19BBC4:  CMP             R5, #1
19BBC6:  BLT             loc_19BBDC
19BBC8:  LSLS            R1, R5, #2; n
19BBCA:  MOV             R0, R6; int
19BBCC:  BLX             sub_22178C
19BBD0:  MOVS            R1, #0
19BBD2:  MOV             R0, R6
19BBD4:  ADDS            R1, #1
19BBD6:  ADDS            R0, #4
19BBD8:  CMP             R1, R5
19BBDA:  BLT             loc_19BBD4
19BBDC:  LDR             R1, [SP,#0x38+var_20]
19BBDE:  STR             R6, [SP,#0x38+var_2C]
19BBE0:  CMP             R9, R1
19BBE2:  BGE.W           loc_19BCF6
19BBE6:  LDR             R3, =(eMeans_ptr - 0x19BBF2)
19BBE8:  ADD.W           R1, R10, R5,LSL#1
19BBEC:  LDR             R2, [SP,#0x38+var_24]
19BBEE:  ADD             R3, PC; eMeans_ptr
19BBF0:  LDRH.W          LR, [R2,R9,LSL#1]
19BBF4:  LDR             R3, [R3]; eMeans
19BBF6:  B               loc_19BC26
19BBF8:  ADDS.W          R2, R11, #1
19BBFC:  MOV.W           R4, #0x4000
19BC00:  IT EQ
19BC02:  ASREQ           R4, R6, #0x10
19BC04:  MOV.W           R6, #2
19BC08:  IT EQ
19BC0A:  MOVEQ           R6, #1
19BC0C:  LDRSH.W         R2, [R1],#2
19BC10:  ADD.W           R8, R8, #1
19BC14:  CMP             R8, R12
19BC16:  MUL.W           R2, R4, R2
19BC1A:  LSL.W           R2, R2, R6
19BC1E:  STR.W           R2, [R0],#4
19BC22:  BLT             loc_19BC0C
19BC24:  B               loc_19BCF0
19BC26:  LDR             R2, [SP,#0x38+var_24]
19BC28:  MOV             R6, R9
19BC2A:  ADD.W           R9, R6, #1
19BC2E:  LDRSB           R4, [R3,R6]
19BC30:  LDR             R5, [R7,#arg_8]
19BC32:  LDRSH.W         R10, [R2,R9,LSL#1]
19BC36:  LDR             R2, [SP,#0x38+var_28]
19BC38:  LDRSH.W         R6, [R2,R6,LSL#1]
19BC3C:  SXTH.W          R2, LR
19BC40:  MUL.W           R8, R2, R5
19BC44:  MOVW            R2, #0x8000
19BC48:  ADD.W           R4, R6, R4,LSL#6
19BC4C:  MOVT            R2, #0xFFFF
19BC50:  CMP             R4, R2
19BC52:  MUL.W           R12, R10, R5
19BC56:  IT LE
19BC58:  MOVLE           R4, R2
19BC5A:  MOVW            R2, #0x7FFF
19BC5E:  CMP             R4, R2
19BC60:  MOV.W           R6, #0x10
19BC64:  IT GE
19BC66:  MOVGE           R4, R2
19BC68:  UXTH.W          LR, R10
19BC6C:  LSLS            R2, R4, #0x10
19BC6E:  SUB.W           R11, R6, R2,ASR#26
19BC72:  CMP.W           R11, #0x20 ; ' '
19BC76:  BLT             loc_19BC80
19BC78:  MOV.W           R11, #0
19BC7C:  MOVS            R6, #0
19BC7E:  B               loc_19BCD6
19BC80:  MOVW            R2, #0x3FF0
19BC84:  MOVW            R5, #0x4FB8
19BC88:  AND.W           R2, R2, R4,LSL#4
19BC8C:  MOVS            R4, #0x39E30000
19BC92:  CMP.W           R11, #0xFFFFFFFF
19BC96:  SMLABB.W        R4, R2, R5, R4
19BC9A:  MOV             R5, #0x7FFF0000
19BCA2:  MOV.W           R4, R4,LSR#16
19BCA6:  SMULBB.W        R4, R4, R2
19BCAA:  AND.W           R4, R5, R4,LSL#1
19BCAE:  MOV             R5, #0x59140000
19BCB6:  ADD             R4, R5
19BCB8:  SMULTB.W        R2, R4, R2
19BCBC:  MOVW            R4, #0xFFFF
19BCC0:  MOV.W           R2, R2,LSL#1
19BCC4:  BIC.W           R2, R2, R4
19BCC8:  MOV             R4, #0x3FFF0000
19BCD0:  ADD.W           R6, R2, R4
19BCD4:  BLE             loc_19BBF8
19BCD6:  ASRS            R4, R6, #0x10
19BCD8:  LDRSH.W         R2, [R1],#2
19BCDC:  ADD.W           R8, R8, #1
19BCE0:  CMP             R8, R12
19BCE2:  SMULBB.W        R2, R4, R2
19BCE6:  ASR.W           R2, R2, R11
19BCEA:  STR.W           R2, [R0],#4
19BCEE:  BLT             loc_19BCD8
19BCF0:  LDR             R2, [SP,#0x38+var_20]
19BCF2:  CMP             R9, R2
19BCF4:  BNE             loc_19BC26
19BCF6:  LDR             R2, [SP,#0x38+var_34]
19BCF8:  LDR             R1, [SP,#0x38+var_30]
19BCFA:  LDR             R0, [SP,#0x38+var_2C]
19BCFC:  SUBS            R1, R1, R2
19BCFE:  ADD.W           R0, R0, R2,LSL#2; int
19BD02:  LSLS            R1, R1, #2; n
19BD04:  BLX             sub_22178C
19BD08:  ADD             SP, SP, #0x1C
19BD0A:  POP.W           {R8-R11}
19BD0E:  POP             {R4-R7,PC}
