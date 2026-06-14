; =========================================================
; Game Engine Function: INT123_make_decode_tables
; Address            : 0x233B48 - 0x233C5E
; =========================================================

233B48:  PUSH            {R7,LR}
233B4A:  MOV             R7, SP
233B4C:  MOVW            R1, #0x9348
233B50:  VMOV.F64        D16, #-0.5
233B54:  ADD             R1, R0
233B56:  MOVW            R2, #0xB450
233B5A:  LDR.W           R12, =(unk_5F11E4 - 0x233B68)
233B5E:  MOVS            R3, #0
233B60:  VLDR            D17, [R1]
233B64:  ADD             R12, PC; unk_5F11E4
233B66:  VCMPE.F64       D17, #0.0
233B6A:  VMRS            APSR_nzcv, FPSCR
233B6E:  IT LT
233B70:  ADDLT           R1, R0, R2
233B72:  VLDR            D17, [R1]
233B76:  MOVW            R1, #0x4844
233B7A:  ADD.W           LR, R0, R1
233B7E:  MOVS            R1, #0
233B80:  VMUL.F64        D16, D17, D16
233B84:  CMP.W           R1, #0x210
233B88:  BGE             loc_233BB2
233B8A:  ADD.W           R2, R12, R3,LSL#2
233B8E:  VLDR            S0, [R2]
233B92:  VCVT.F64.S32    D17, S0
233B96:  LDR.W           R2, [LR]
233B9A:  ADD.W           R2, R2, R1,LSL#3
233B9E:  VMUL.F64        D17, D16, D17
233BA2:  VSTR            D17, [R2]
233BA6:  LDR.W           R2, [LR]
233BAA:  ADD.W           R2, R2, R1,LSL#3
233BAE:  VSTR            D17, [R2,#0x80]
233BB2:  ASRS            R2, R3, #0x1F
233BB4:  VNEG.F64        D17, D16
233BB8:  ADD.W           R0, R3, R2,LSR#26
233BBC:  ADD.W           R2, R3, R2,LSR#27
233BC0:  BIC.W           R0, R0, #0x3F ; '?'
233BC4:  BIC.W           R2, R2, #0x1F
233BC8:  SUBS            R0, R3, R0
233BCA:  SUBS            R2, R3, R2
233BCC:  CMP             R0, #0x3F ; '?'
233BCE:  ADD.W           R3, R3, #1
233BD2:  IT EQ
233BD4:  VMOVEQ.F64      D16, D17
233BD8:  CMP             R2, #0x1F
233BDA:  IT EQ
233BDC:  SUBWEQ          R1, R1, #0x3FF
233BE0:  CMP.W           R3, #0x100
233BE4:  ADD.W           R1, R1, #0x20 ; ' '
233BE8:  BNE             loc_233B84
233BEA:  LDR             R0, =(unk_5F11E4 - 0x233BF2)
233BEC:  MOVS            R3, #0xFF
233BEE:  ADD             R0, PC; unk_5F11E4
233BF0:  ADD.W           R12, R0, #0x400
233BF4:  B               loc_233C30
233BF6:  ASRS            R0, R3, #0x1F
233BF8:  VNEG.F64        D17, D16
233BFC:  ADD.W           R2, R3, R0,LSR#27
233C00:  ADD.W           R0, R3, R0,LSR#26
233C04:  BIC.W           R2, R2, #0x1F
233C08:  BIC.W           R0, R0, #0x3F ; '?'
233C0C:  SUBS            R2, R3, R2
233C0E:  SUBS            R0, R3, R0
233C10:  CMP             R2, #0x1F
233C12:  SUB.W           R12, R12, #4
233C16:  IT EQ
233C18:  SUBWEQ          R1, R1, #0x3FF
233C1C:  CMP             R0, #0x3F ; '?'
233C1E:  IT EQ
233C20:  VMOVEQ.F64      D16, D17
233C24:  CMP.W           R3, #0x1FE
233C28:  ADD.W           R1, R1, #0x20 ; ' '
233C2C:  IT GT
233C2E:  POPGT           {R7,PC}
233C30:  ADDS            R3, #1
233C32:  CMP.W           R1, #0x210
233C36:  BGE             loc_233BF6
233C38:  VLDR            S0, [R12]
233C3C:  VCVT.F64.S32    D17, S0
233C40:  LDR.W           R0, [LR]
233C44:  ADD.W           R0, R0, R1,LSL#3
233C48:  VMUL.F64        D17, D16, D17
233C4C:  VSTR            D17, [R0]
233C50:  LDR.W           R0, [LR]
233C54:  ADD.W           R0, R0, R1,LSL#3
233C58:  VSTR            D17, [R0,#0x80]
233C5C:  B               loc_233BF6
