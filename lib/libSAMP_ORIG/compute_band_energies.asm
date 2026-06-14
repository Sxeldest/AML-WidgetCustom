; =========================================================
; Game Engine Function: compute_band_energies
; Address            : 0xBDB68 - 0xBDCB8
; =========================================================

BDB68:  PUSH            {R4-R7,LR}
BDB6A:  ADD             R7, SP, #0xC
BDB6C:  PUSH.W          {R8-R11}
BDB70:  SUB             SP, SP, #0x2C
BDB72:  MOV             R12, R0
BDB74:  MOV             R0, R3
BDB76:  CMP             R3, #1
BDB78:  STR             R2, [SP,#0x48+var_28]
BDB7A:  STR             R1, [SP,#0x48+var_34]
BDB7C:  STR             R0, [SP,#0x48+var_24]
BDB7E:  BLT.W           loc_BDCB0
BDB82:  LDR.W           R0, [R12,#0x18]
BDB86:  STR             R0, [SP,#0x48+var_2C]
BDB88:  LDR.W           LR, [R7,#arg_4]
BDB8C:  LDR.W           R0, [R12,#0x24]
BDB90:  ADD.W           R1, LR, #1
BDB94:  LSL.W           R0, R0, LR
BDB98:  STRD.W          R0, R1, [SP,#0x48+var_40]
BDB9C:  LSLS            R0, R0, #2
BDB9E:  LDR.W           R11, [SP,#0x48+var_34]
BDBA2:  STR             R0, [SP,#0x48+var_44]
BDBA4:  MOVS            R0, #0
BDBA6:  STR             R0, [SP,#0x48+var_30]
BDBA8:  MOVS            R0, #0
BDBAA:  STR             R0, [SP,#0x48+var_20]
BDBAC:  STR.W           R12, [SP,#0x48+var_38]
BDBB0:  MOV.W           R9, #0
BDBB4:  LDR             R0, [SP,#0x48+var_2C]
BDBB6:  ADD.W           R10, R9, #1
BDBBA:  LDRSH.W         R1, [R0,R9,LSL#1]
BDBBE:  LDRSH.W         R0, [R0,R10,LSL#1]
BDBC2:  SUBS            R2, R0, R1
BDBC4:  LSL.W           R1, R1, LR
BDBC8:  LSL.W           R2, R2, LR
BDBCC:  CMP             R2, #1
BDBCE:  BLT             loc_BDBF4
BDBD0:  LDR             R3, [SP,#0x48+var_30]
BDBD2:  MOVS            R4, #0
BDBD4:  LDR             R6, [SP,#0x48+var_34]
BDBD6:  ADD             R3, R1
BDBD8:  ADD.W           R6, R6, R3,LSL#2
BDBDC:  MOVS            R3, #0
BDBDE:  LDR.W           R5, [R6],#4
BDBE2:  CMP             R4, R5
BDBE4:  IT GE
BDBE6:  MOVGE           R4, R5
BDBE8:  CMP             R3, R5
BDBEA:  IT LE
BDBEC:  MOVLE           R3, R5
BDBEE:  SUBS            R2, #1
BDBF0:  BNE             loc_BDBDE
BDBF2:  B               loc_BDBF8
BDBF4:  MOVS            R3, #0
BDBF6:  MOVS            R4, #0
BDBF8:  NEGS            R2, R4
BDBFA:  CMP             R3, R2
BDBFC:  IT GT
BDBFE:  MOVGT           R2, R3
BDC00:  CMP             R2, #1
BDC02:  BLT             loc_BDC42
BDC04:  LDR.W           R3, [R12,#0x30]
BDC08:  CLZ.W           R2, R2
BDC0C:  LDR             R6, [SP,#0x48+var_3C]
BDC0E:  RSB.W           R2, R2, #0x11
BDC12:  LDRSH.W         R3, [R3,R9,LSL#1]
BDC16:  ADD.W           R3, R6, R3,ASR#3
BDC1A:  ADD.W           R8, R2, R3,ASR#1
BDC1E:  LSL.W           R2, R0, LR
BDC22:  CMP.W           R8, #0
BDC26:  BLE             loc_BDC46
BDC28:  MOVS            R0, #0
BDC2A:  LDR.W           R3, [R11,R1,LSL#2]
BDC2E:  ADDS            R1, #1
BDC30:  CMP             R1, R2
BDC32:  ASR.W           R3, R3, R8
BDC36:  SMLABB.W        R0, R3, R3, R0
BDC3A:  BLT             loc_BDC2A
BDC3C:  RSB.W           R4, R8, #0
BDC40:  B               loc_BDC5E
BDC42:  MOVS            R0, #1
BDC44:  B               loc_BDC7A
BDC46:  RSB.W           R4, R8, #0
BDC4A:  MOVS            R0, #0
BDC4C:  LDR.W           R3, [R11,R1,LSL#2]
BDC50:  ADDS            R1, #1
BDC52:  CMP             R1, R2
BDC54:  LSL.W           R3, R3, R4
BDC58:  SMLABB.W        R0, R3, R3, R0
BDC5C:  BLT             loc_BDC4C
BDC5E:  BLX             j_celt_sqrt
BDC62:  LSL.W           R1, R0, R8
BDC66:  CMP.W           R8, #0
BDC6A:  IT LT
BDC6C:  ASRLT.W         R1, R0, R4
BDC70:  LDR.W           R12, [SP,#0x48+var_38]
BDC74:  LDR.W           LR, [R7,#arg_4]
BDC78:  ADDS            R0, R1, #1
BDC7A:  LDR.W           R1, [R12,#8]
BDC7E:  LDR             R2, [SP,#0x48+var_20]
BDC80:  MLA.W           R1, R1, R2, R9
BDC84:  LDR             R2, [SP,#0x48+var_28]
BDC86:  MOV             R9, R10
BDC88:  STR.W           R0, [R2,R1,LSL#2]
BDC8C:  LDR             R0, [SP,#0x48+var_24]
BDC8E:  CMP             R10, R0
BDC90:  BNE             loc_BDBB4
BDC92:  LDR             R0, [SP,#0x48+var_44]
BDC94:  LDR             R1, [SP,#0x48+var_30]
BDC96:  ADD             R11, R0
BDC98:  LDR             R0, [SP,#0x48+var_40]
BDC9A:  ADD             R1, R0
BDC9C:  LDR             R0, [SP,#0x48+var_20]
BDC9E:  STR             R1, [SP,#0x48+var_30]
BDCA0:  MOV             R2, R0
BDCA2:  LDR             R0, [R7,#arg_0]
BDCA4:  ADDS            R2, #1
BDCA6:  CMP             R2, R0
BDCA8:  MOV             R1, R2
BDCAA:  STR             R1, [SP,#0x48+var_20]
BDCAC:  BLT.W           loc_BDBB0
BDCB0:  ADD             SP, SP, #0x2C ; ','
BDCB2:  POP.W           {R8-R11}
BDCB6:  POP             {R4-R7,PC}
