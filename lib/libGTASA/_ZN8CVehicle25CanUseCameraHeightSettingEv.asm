; =========================================================
; Game Engine Function: _ZN8CVehicle25CanUseCameraHeightSettingEv
; Address            : 0x583B38 - 0x583BAA
; =========================================================

583B38:  LDR.W           R1, [R0,#0x5A4]
583B3C:  CMP             R1, #0
583B3E:  ITT EQ
583B40:  LDRBEQ.W        R1, [R0,#0x42D]
583B44:  MOVSEQ.W        R1, R1,LSL#29
583B48:  BEQ             loc_583B4E
583B4A:  MOVS            R0, #0
583B4C:  BX              LR
583B4E:  LDRSH.W         R0, [R0,#0x26]
583B52:  CMP.W           R0, #0x210
583B56:  BGE             loc_583B7A
583B58:  SUBW            R1, R0, #0x197
583B5C:  CMP             R1, #0x19
583B5E:  BHI             loc_583B72
583B60:  MOVS            R2, #1
583B62:  LSL.W           R1, R2, R1
583B66:  MOV             R2, #0x2100201
583B6E:  TST             R1, R2
583B70:  BNE             loc_583B4A
583B72:  CMP.W           R0, #0x1EA
583B76:  BEQ             loc_583B4A
583B78:  B               loc_583B9A
583B7A:  SUB.W           R1, R0, #0x210
583B7E:  CMP             R1, #0x10
583B80:  BHI             loc_583B92
583B82:  MOVS            R2, #1
583B84:  LSL.W           R1, R2, R1
583B88:  MOVS            R2, #0x10005
583B8E:  TST             R1, R2
583B90:  BNE             loc_583B4A
583B92:  MOVW            R1, #0x259
583B96:  CMP             R0, R1
583B98:  BEQ             loc_583B4A
583B9A:  UXTH            R1, R0
583B9C:  MOVW            R2, #0x247
583BA0:  MOVS            R0, #0
583BA2:  CMP             R1, R2
583BA4:  IT NE
583BA6:  MOVNE           R0, #1
583BA8:  BX              LR
