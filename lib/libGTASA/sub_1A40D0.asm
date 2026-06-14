; =========================================================
; Game Engine Function: sub_1A40D0
; Address            : 0x1A40D0 - 0x1A40DC
; =========================================================

1A40D0:  LDR             R0, =(_ZN17CVehicleModelInfo17ms_linkedUpgradesE_ptr - 0x1A40D8)
1A40D2:  MOVS            R1, #0
1A40D4:  ADD             R0, PC; _ZN17CVehicleModelInfo17ms_linkedUpgradesE_ptr
1A40D6:  LDR             R0, [R0]; CVehicleModelInfo::ms_linkedUpgrades ...
1A40D8:  STR             R1, [R0,#(dword_93186C - 0x9317F4)]
1A40DA:  BX              LR
