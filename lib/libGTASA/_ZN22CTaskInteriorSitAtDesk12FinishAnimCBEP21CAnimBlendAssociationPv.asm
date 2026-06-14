; =========================================================
; Game Engine Function: _ZN22CTaskInteriorSitAtDesk12FinishAnimCBEP21CAnimBlendAssociationPv
; Address            : 0x52ADE4 - 0x52AE22
; =========================================================

52ADE4:  LDRSH.W         R2, [R0,#0x2C]
52ADE8:  MOVW            R3, #0x149
52ADEC:  STR             R2, [R1,#0x18]
52ADEE:  CMP             R2, R3
52ADF0:  BNE             loc_52AE00
52ADF2:  MOVS            R2, #0xC47A0000
52ADF8:  STR             R2, [R0,#0x1C]
52ADFA:  MOVS            R2, #1
52ADFC:  STRB.W          R2, [R1,#0x35]
52AE00:  LDRB.W          R2, [R1,#0x36]
52AE04:  CBZ             R2, loc_52AE1C
52AE06:  LDR             R2, [R1,#0x18]
52AE08:  CMP.W           R2, #0x148
52AE0C:  BNE             loc_52AE1C
52AE0E:  MOVS            R2, #0xC47A0000
52AE14:  STR             R2, [R0,#0x1C]
52AE16:  MOVS            R0, #1
52AE18:  STRB.W          R0, [R1,#0x35]
52AE1C:  MOVS            R0, #0
52AE1E:  STR             R0, [R1,#0x14]
52AE20:  BX              LR
