; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo15GetWheelUpgradeEii
; Address            : 0x388DA4 - 0x388DB8
; =========================================================

388DA4:  LDR             R2, =(_ZN17CVehicleModelInfo16ms_upgradeWheelsE_ptr - 0x388DAE)
388DA6:  RSB.W           R0, R0, R0,LSL#4
388DAA:  ADD             R2, PC; _ZN17CVehicleModelInfo16ms_upgradeWheelsE_ptr
388DAC:  LDR             R2, [R2]; CVehicleModelInfo::ms_upgradeWheels ...
388DAE:  ADD.W           R0, R2, R0,LSL#1
388DB2:  LDRSH.W         R0, [R0,R1,LSL#1]
388DB6:  BX              LR
