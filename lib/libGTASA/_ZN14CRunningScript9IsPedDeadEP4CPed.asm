; =========================================================
; Game Engine Function: _ZN14CRunningScript9IsPedDeadEP4CPed
; Address            : 0x32B4C0 - 0x32B4DA
; =========================================================

32B4C0:  LDR.W           R1, [R1,#0x44C]
32B4C4:  BIC.W           R0, R1, #1
32B4C8:  CMP             R0, #0x36 ; '6'
32B4CA:  ITT EQ
32B4CC:  MOVEQ           R0, #1
32B4CE:  BXEQ            LR
32B4D0:  MOVS            R0, #0
32B4D2:  CMP             R1, #0x38 ; '8'
32B4D4:  IT EQ
32B4D6:  MOVEQ           R0, #1
32B4D8:  BX              LR
