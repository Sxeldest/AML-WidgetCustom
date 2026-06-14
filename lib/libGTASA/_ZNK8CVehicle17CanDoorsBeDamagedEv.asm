; =========================================================
; Game Engine Function: _ZNK8CVehicle17CanDoorsBeDamagedEv
; Address            : 0x584DAC - 0x584DC8
; =========================================================

584DAC:  LDR.W           R1, [R0,#0x508]
584DB0:  CMP             R1, #7
584DB2:  BHI             loc_584DC4
584DB4:  MOVS            R0, #1
584DB6:  LSL.W           R1, R0, R1
584DBA:  TST.W           R1, #0x83
584DBE:  IT EQ
584DC0:  MOVEQ           R0, #0
584DC2:  BX              LR
584DC4:  MOVS            R0, #0
584DC6:  BX              LR
