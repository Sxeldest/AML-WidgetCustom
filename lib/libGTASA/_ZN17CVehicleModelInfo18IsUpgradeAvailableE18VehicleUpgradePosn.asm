; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo18IsUpgradeAvailableE18VehicleUpgradePosn
; Address            : 0x388868 - 0x38887E
; =========================================================

388868:  LDR             R0, [R0,#0x74]
38886A:  ADD.W           R0, R0, R1,LSL#5
38886E:  LDR.W           R1, [R0,#0xD0]
388872:  MOVS            R0, #0
388874:  CMP.W           R1, #0xFFFFFFFF
388878:  IT GT
38887A:  MOVGT           R0, #1
38887C:  BX              LR
