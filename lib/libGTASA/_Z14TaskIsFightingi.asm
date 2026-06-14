; =========================================================
; Game Engine Function: _Z14TaskIsFightingi
; Address            : 0x549A18 - 0x549A48
; =========================================================

549A18:  MOV             R1, R0
549A1A:  SUB.W           R2, R1, #0x3FC
549A1E:  MOVS            R0, #1
549A20:  CMP             R2, #9
549A22:  BHI             loc_549A32
549A24:  LSL.W           R2, R0, R2
549A28:  MOVW            R3, #0x35D
549A2C:  TST             R2, R3
549A2E:  IT NE
549A30:  BXNE            LR
549A32:  MOVW            R2, #0x44D
549A36:  CMP             R1, R2
549A38:  ITT NE
549A3A:  MOVWNE          R2, #0x5DE
549A3E:  CMPNE           R1, R2
549A40:  BNE             loc_549A44
549A42:  BX              LR
549A44:  MOVS            R0, #0
549A46:  BX              LR
