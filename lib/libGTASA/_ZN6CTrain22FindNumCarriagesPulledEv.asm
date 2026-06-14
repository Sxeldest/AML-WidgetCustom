; =========================================================
; Game Engine Function: _ZN6CTrain22FindNumCarriagesPulledEv
; Address            : 0x57E604 - 0x57E616
; =========================================================

57E604:  MOV             R1, R0
57E606:  MOV.W           R0, #0xFFFFFFFF
57E60A:  LDR.W           R1, [R1,#0x5E8]
57E60E:  ADDS            R0, #1
57E610:  CMP             R1, #0
57E612:  BNE             loc_57E60A
57E614:  BX              LR
