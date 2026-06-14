; =========================================================
; Game Engine Function: _ZNK8CVehicle13CanPedLeanOutEP4CPed
; Address            : 0x591C1C - 0x591C6C
; =========================================================

591C1C:  LDR.W           R2, [R0,#0x388]
591C20:  LDRB.W          R2, [R2,#0xDE]
591C24:  SUB.W           R3, R2, #0xE
591C28:  CMP             R3, #5
591C2A:  ITT CC
591C2C:  MOVCC           R0, #0
591C2E:  BXCC            LR
591C30:  CMP             R2, #0xD
591C32:  BNE             loc_591C4E
591C34:  LDR.W           R2, [R0,#0x468]
591C38:  CMP             R2, R1
591C3A:  ITT EQ
591C3C:  MOVEQ           R0, #1
591C3E:  BXEQ            LR
591C40:  LDR.W           R2, [R0,#0x464]
591C44:  MOVS            R0, #0
591C46:  CMP             R2, R1
591C48:  IT EQ
591C4A:  MOVEQ           R0, #1
591C4C:  BX              LR
591C4E:  LDR.W           R1, [R0,#0x5A4]
591C52:  MOVS            R0, #0
591C54:  CMP             R1, #6
591C56:  BHI             loc_591C64
591C58:  MOVS            R2, #1
591C5A:  LSLS            R2, R1
591C5C:  TST.W           R2, #0x58
591C60:  IT NE
591C62:  BXNE            LR
591C64:  CMP             R1, #5
591C66:  IT NE
591C68:  MOVNE           R0, #1
591C6A:  BX              LR
