; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo19GetNumWheelUpgradesEi
; Address            : 0x388D94 - 0x388DA0
; =========================================================

388D94:  LDR             R1, =(_ZN17CVehicleModelInfo19ms_numWheelUpgradesE_ptr - 0x388D9A)
388D96:  ADD             R1, PC; _ZN17CVehicleModelInfo19ms_numWheelUpgradesE_ptr
388D98:  LDR             R1, [R1]; CVehicleModelInfo::ms_numWheelUpgrades ...
388D9A:  LDRSH.W         R0, [R1,R0,LSL#1]
388D9E:  BX              LR
