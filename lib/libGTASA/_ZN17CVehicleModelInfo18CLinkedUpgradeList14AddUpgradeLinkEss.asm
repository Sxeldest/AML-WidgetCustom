; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo18CLinkedUpgradeList14AddUpgradeLinkEss
; Address            : 0x386D98 - 0x386DAE
; =========================================================

386D98:  LDR             R3, [R0,#0x78]
386D9A:  STRH.W          R1, [R0,R3,LSL#1]
386D9E:  LDR             R1, [R0,#0x78]
386DA0:  ADD.W           R1, R0, R1,LSL#1
386DA4:  STRH            R2, [R1,#0x3C]
386DA6:  LDR             R1, [R0,#0x78]
386DA8:  ADDS            R1, #1
386DAA:  STR             R1, [R0,#0x78]
386DAC:  BX              LR
