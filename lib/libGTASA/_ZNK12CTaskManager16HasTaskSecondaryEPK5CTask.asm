; =========================================================
; Game Engine Function: _ZNK12CTaskManager16HasTaskSecondaryEPK5CTask
; Address            : 0x533CDE - 0x533D0C
; =========================================================

533CDE:  LDR             R2, [R0,#0x14]
533CE0:  CMP             R2, R1
533CE2:  BEQ             loc_533D08
533CE4:  LDR             R2, [R0,#0x18]
533CE6:  CMP             R2, R1
533CE8:  ITT NE
533CEA:  LDRNE           R2, [R0,#0x1C]
533CEC:  CMPNE           R2, R1
533CEE:  BEQ             loc_533D08
533CF0:  LDR             R2, [R0,#0x20]
533CF2:  CMP             R2, R1
533CF4:  ITT NE
533CF6:  LDRNE           R2, [R0,#0x24]
533CF8:  CMPNE           R2, R1
533CFA:  BEQ             loc_533D08
533CFC:  LDR             R2, [R0,#0x28]
533CFE:  MOVS            R0, #0
533D00:  CMP             R2, R1
533D02:  IT EQ
533D04:  MOVEQ           R0, #1
533D06:  BX              LR
533D08:  MOVS            R0, #1
533D0A:  BX              LR
