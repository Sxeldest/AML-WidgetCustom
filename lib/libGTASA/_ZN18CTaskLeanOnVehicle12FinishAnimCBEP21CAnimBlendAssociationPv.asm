; =========================================================
; Game Engine Function: _ZN18CTaskLeanOnVehicle12FinishAnimCBEP21CAnimBlendAssociationPv
; Address            : 0x51AC98 - 0x51ACD8
; =========================================================

51AC98:  LDRSH.W         R2, [R0,#0x2C]
51AC9C:  MOVW            R3, #0x131
51ACA0:  STR             R2, [R1,#0x18]
51ACA2:  CMP             R2, R3
51ACA4:  BNE             loc_51ACB4
51ACA6:  MOVS            R2, #0xC47A0000
51ACAC:  STR             R2, [R0,#0x1C]
51ACAE:  MOVS            R2, #1
51ACB0:  STRB.W          R2, [R1,#0x28]
51ACB4:  LDRB.W          R2, [R1,#0x29]
51ACB8:  CBZ             R2, loc_51ACD2
51ACBA:  LDR             R2, [R1,#0x18]
51ACBC:  MOVW            R3, #0x12F
51ACC0:  CMP             R2, R3
51ACC2:  BNE             loc_51ACD2
51ACC4:  MOVS            R2, #0xC47A0000
51ACCA:  STR             R2, [R0,#0x1C]
51ACCC:  MOVS            R0, #1
51ACCE:  STRB.W          R0, [R1,#0x28]
51ACD2:  MOVS            R0, #0
51ACD4:  STR             R0, [R1,#0x14]
51ACD6:  BX              LR
