; =========================================================
; Game Engine Function: _ZNK16CEventStuckInAir10AffectsPedEP4CPed
; Address            : 0x376DAC - 0x376DC8
; =========================================================

376DAC:  LDRB.W          R0, [R1,#0x484]
376DB0:  LSLS            R0, R0, #0x1F
376DB2:  ITT NE
376DB4:  MOVNE           R0, #0
376DB6:  BXNE            LR
376DB8:  LDR.W           R0, [R1,#0x440]
376DBC:  LDRH.W          R0, [R0,#0x276]
376DC0:  CMP             R0, #0
376DC2:  IT NE
376DC4:  MOVNE           R0, #1
376DC6:  BX              LR
