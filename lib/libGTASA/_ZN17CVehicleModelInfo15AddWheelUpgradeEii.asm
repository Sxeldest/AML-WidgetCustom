; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo15AddWheelUpgradeEii
; Address            : 0x388D60 - 0x388D8C
; =========================================================

388D60:  PUSH            {R7,LR}
388D62:  MOV             R7, SP
388D64:  LDR             R2, =(_ZN17CVehicleModelInfo19ms_numWheelUpgradesE_ptr - 0x388D6C)
388D66:  LDR             R3, =(_ZN17CVehicleModelInfo16ms_upgradeWheelsE_ptr - 0x388D6E)
388D68:  ADD             R2, PC; _ZN17CVehicleModelInfo19ms_numWheelUpgradesE_ptr
388D6A:  ADD             R3, PC; _ZN17CVehicleModelInfo16ms_upgradeWheelsE_ptr
388D6C:  LDR.W           LR, [R2]; CVehicleModelInfo::ms_numWheelUpgrades ...
388D70:  RSB.W           R2, R0, R0,LSL#4
388D74:  LDR.W           R12, [R3]; CVehicleModelInfo::ms_upgradeWheels ...
388D78:  LDRSH.W         R3, [LR,R0,LSL#1]
388D7C:  ADD.W           R2, R12, R2,LSL#1
388D80:  STRH.W          R1, [R2,R3,LSL#1]
388D84:  ADDS            R1, R3, #1
388D86:  STRH.W          R1, [LR,R0,LSL#1]
388D8A:  POP             {R7,PC}
