; =========================================================
; Game Engine Function: _Z38RtAnimInterpolatorBlendSubInterpolatorP18RtAnimInterpolatorS0_S0_f
; Address            : 0x1EB9EC - 0x1EBB8E
; =========================================================

1EB9EC:  PUSH            {R4-R7,LR}
1EB9EE:  ADD             R7, SP, #0xC
1EB9F0:  PUSH.W          {R8-R11}
1EB9F4:  SUB             SP, SP, #0x1C
1EB9F6:  MOV             R8, R0
1EB9F8:  MOV             R6, R3
1EB9FA:  LDR.W           R0, [R8,#0x30]
1EB9FE:  MOV             R11, R2
1EBA00:  STR             R1, [SP,#0x38+var_20]
1EBA02:  CBZ             R0, loc_1EBA80
1EBA04:  LDR.W           R0, [R8,#0x2C]
1EBA08:  STR.W           R11, [SP,#0x38+var_24]
1EBA0C:  CMP             R0, #1
1EBA0E:  BLT.W           loc_1EBB84
1EBA12:  LDR             R3, [SP,#0x38+var_24]
1EBA14:  ADD.W           R11, R1, #0x4C ; 'L'
1EBA18:  LDR.W           R5, [R8,#0x34]
1EBA1C:  ADD.W           R9, R8, #0x4C ; 'L'
1EBA20:  LDR             R2, [R1,#0x34]
1EBA22:  MOV.W           R10, #0
1EBA26:  LDR             R0, [R3,#0x34]
1EBA28:  SUBS            R0, R5, R0
1EBA2A:  STRD.W          R0, R5, [SP,#0x38+var_2C]
1EBA2E:  SUBS            R0, R5, R2
1EBA30:  STR             R0, [SP,#0x38+var_30]
1EBA32:  ADD.W           R0, R3, #0x4C ; 'L'
1EBA36:  STR             R0, [SP,#0x38+var_34]
1EBA38:  LDR             R2, [SP,#0x38+var_30]
1EBA3A:  MOV             R4, R6
1EBA3C:  LDR.W           R0, [R8,#0x24]
1EBA40:  ADD.W           R6, R2, R10
1EBA44:  LDR             R2, [R1,#0x24]
1EBA46:  LDR             R1, [SP,#0x38+var_24]
1EBA48:  MLA.W           R0, R0, R10, R9
1EBA4C:  LDR.W           R5, [R8,#0x40]
1EBA50:  LDR             R3, [R1,#0x24]
1EBA52:  MLA.W           R1, R2, R6, R11
1EBA56:  LDR             R2, [SP,#0x38+var_2C]
1EBA58:  MOV             R6, R4
1EBA5A:  LDR             R4, [SP,#0x38+var_34]
1EBA5C:  ADD             R2, R10
1EBA5E:  MLA.W           R2, R3, R2, R4
1EBA62:  MOV             R3, R6
1EBA64:  BLX             R5
1EBA66:  LDR.W           R0, [R8,#0x2C]
1EBA6A:  ADD.W           R10, R10, #1
1EBA6E:  LDR             R2, [SP,#0x38+var_28]
1EBA70:  LDR.W           R3, [R8,#0x34]
1EBA74:  LDR             R1, [SP,#0x38+var_20]
1EBA76:  ADD             R2, R10
1EBA78:  ADD             R0, R3
1EBA7A:  CMP             R2, R0
1EBA7C:  BLT             loc_1EBA38
1EBA7E:  B               loc_1EBB84
1EBA80:  LDR             R0, [R1,#0x30]
1EBA82:  ADD.W           R10, R8, #0x4C ; 'L'
1EBA86:  LDR.W           R5, [R8,#0x24]
1EBA8A:  CBZ             R0, loc_1EBAE8
1EBA8C:  LDR             R0, [R1,#0x34]
1EBA8E:  ADD.W           R4, R11, #0x4C ; 'L'
1EBA92:  MOV             R1, R4; void *
1EBA94:  MUL.W           R2, R0, R5; size_t
1EBA98:  MOV             R0, R10; void *
1EBA9A:  BLX             memcpy_1
1EBA9E:  LDR             R2, [SP,#0x38+var_20]
1EBAA0:  LDR             R0, [R2,#0x2C]
1EBAA2:  LDR             R1, [R2,#0x34]
1EBAA4:  CMP             R0, #1
1EBAA6:  BLT             loc_1EBB54
1EBAA8:  ADD.W           R9, R2, #0x4C ; 'L'
1EBAAC:  STR             R4, [SP,#0x38+var_24]
1EBAAE:  MOV             R4, R6
1EBAB0:  MOV             R6, R1
1EBAB2:  LDR             R3, [SP,#0x38+var_20]
1EBAB4:  SUBS            R1, R6, R1
1EBAB6:  LDR.W           R2, [R11,#0x24]
1EBABA:  MLA.W           R0, R5, R6, R10
1EBABE:  LDR             R5, [SP,#0x38+var_24]
1EBAC0:  LDR             R3, [R3,#0x24]
1EBAC2:  MLA.W           R2, R2, R6, R5
1EBAC6:  LDR.W           R5, [R8,#0x40]
1EBACA:  MLA.W           R1, R3, R1, R9
1EBACE:  MOV             R3, R4
1EBAD0:  BLX             R5
1EBAD2:  LDR             R1, [SP,#0x38+var_20]
1EBAD4:  ADDS            R6, #1
1EBAD6:  LDR.W           R5, [R8,#0x24]
1EBADA:  LDR             R0, [R1,#0x2C]
1EBADC:  LDR             R1, [R1,#0x34]
1EBADE:  ADDS            R2, R0, R1
1EBAE0:  CMP             R6, R2
1EBAE2:  BLT             loc_1EBAB2
1EBAE4:  LDR             R4, [SP,#0x38+var_24]
1EBAE6:  B               loc_1EBB56
1EBAE8:  LDR.W           R0, [R11,#0x34]
1EBAEC:  ADD.W           R9, R1, #0x4C ; 'L'
1EBAF0:  MOV             R1, R9; void *
1EBAF2:  MUL.W           R2, R0, R5; size_t
1EBAF6:  MOV             R0, R10; void *
1EBAF8:  BLX             memcpy_1
1EBAFC:  LDR.W           R0, [R11,#0x2C]
1EBB00:  LDR.W           R2, [R11,#0x34]
1EBB04:  CMP             R0, #1
1EBB06:  BLT             loc_1EBB6A
1EBB08:  ADD.W           R0, R11, #0x4C ; 'L'
1EBB0C:  STRD.W          R0, R10, [SP,#0x38+var_28]
1EBB10:  LDR.W           R10, [SP,#0x38+var_20]
1EBB14:  MOV             R4, R6
1EBB16:  MOV             R6, R2
1EBB18:  LDR.W           R1, [R10,#0x24]
1EBB1C:  SUBS            R2, R6, R2
1EBB1E:  LDR.W           R3, [R11,#0x24]
1EBB22:  LDR             R0, [SP,#0x38+var_24]
1EBB24:  MLA.W           R0, R5, R6, R0
1EBB28:  LDR             R5, [SP,#0x38+var_28]
1EBB2A:  MLA.W           R2, R3, R2, R5
1EBB2E:  LDR.W           R5, [R8,#0x40]
1EBB32:  MOV             R3, R4
1EBB34:  MLA.W           R1, R1, R6, R9
1EBB38:  BLX             R5
1EBB3A:  LDR.W           R0, [R11,#0x2C]
1EBB3E:  ADDS            R6, #1
1EBB40:  LDR.W           R2, [R11,#0x34]
1EBB44:  LDR.W           R5, [R8,#0x24]
1EBB48:  ADDS            R3, R0, R2
1EBB4A:  CMP             R6, R3
1EBB4C:  BLT             loc_1EBB18
1EBB4E:  LDR.W           R10, [SP,#0x38+var_24]
1EBB52:  B               loc_1EBB6C
1EBB54:  ADDS            R2, R0, R1
1EBB56:  LDR.W           R1, [R11,#0x24]
1EBB5A:  MLA.W           R0, R5, R2, R10
1EBB5E:  LDR.W           R3, [R8,#0x2C]
1EBB62:  MLA.W           R1, R1, R2, R4
1EBB66:  SUBS            R2, R3, R2
1EBB68:  B               loc_1EBB7E
1EBB6A:  ADDS            R3, R0, R2
1EBB6C:  LDR             R0, [SP,#0x38+var_20]
1EBB6E:  LDR.W           R2, [R8,#0x2C]
1EBB72:  LDR             R1, [R0,#0x24]
1EBB74:  MLA.W           R0, R5, R3, R10; void *
1EBB78:  SUBS            R2, R2, R3
1EBB7A:  MLA.W           R1, R1, R3, R9; void *
1EBB7E:  MULS            R2, R5; size_t
1EBB80:  BLX             memcpy_1
1EBB84:  MOVS            R0, #1
1EBB86:  ADD             SP, SP, #0x1C
1EBB88:  POP.W           {R8-R11}
1EBB8C:  POP             {R4-R7,PC}
