; =========================================================
; Game Engine Function: _ZN4CPed17GetPedStateStringEv
; Address            : 0x4A84F8 - 0x4A850E
; =========================================================

4A84F8:  LDR.W           R0, [R0,#0x44C]
4A84FC:  CMP             R0, #0x40 ; '@'
4A84FE:  ITT HI
4A8500:  ADRHI           R0, aUnknownState; "UNKNOWN STATE"
4A8502:  BXHI            LR
4A8504:  LDR             R1, =(off_668CE0 - 0x4A850A); "PED_NONE" ...
4A8506:  ADD             R1, PC; off_668CE0
4A8508:  LDR.W           R0, [R1,R0,LSL#2]
4A850C:  BX              LR
