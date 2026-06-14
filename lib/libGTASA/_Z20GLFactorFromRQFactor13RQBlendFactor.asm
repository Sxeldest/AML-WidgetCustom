; =========================================================
; Game Engine Function: _Z20GLFactorFromRQFactor13RQBlendFactor
; Address            : 0x1CFA80 - 0x1CFA92
; =========================================================

1CFA80:  CMP             R0, #9
1CFA82:  ITT HI
1CFA84:  MOVHI           R0, #0
1CFA86:  BXHI            LR
1CFA88:  LDR             R1, =(unk_5EC7F0 - 0x1CFA8E)
1CFA8A:  ADD             R1, PC; unk_5EC7F0
1CFA8C:  LDR.W           R0, [R1,R0,LSL#2]
1CFA90:  BX              LR
