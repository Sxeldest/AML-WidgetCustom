; =========================================================
; Game Engine Function: _ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea
; Address            : 0x5E4298 - 0x5E42C4
; =========================================================

5E4298:  CMP             R1, #3; switch 4 cases
5E429A:  BHI             def_5E429C; jumptable 005E429C default case
5E429C:  TBB.W           [PC,R1]; switch jump
5E42A0:  DCB 2; jump table for switch statement
5E42A1:  DCB 9
5E42A2:  DCB 6
5E42A3:  DCB 8
5E42A4:  ADDS            R0, #0x19; jumptable 005E429C case 0
5E42A6:  B               loc_5E42B2; jumptable 005E429C case 1
5E42A8:  MOVS            R0, #0x2F ; '/'; jumptable 005E429C default case
5E42AA:  B               loc_5E42B2; jumptable 005E429C case 1
5E42AC:  ADDS            R0, #0x24 ; '$'; jumptable 005E429C case 2
5E42AE:  B               loc_5E42B2; jumptable 005E429C case 1
5E42B0:  ADDS            R0, #0x2F ; '/'; jumptable 005E429C case 3
5E42B2:  LDR             R1, =(aWeaponInfo_ptr - 0x5E42BE); jumptable 005E429C case 1
5E42B4:  SXTH            R0, R0
5E42B6:  RSB.W           R0, R0, R0,LSL#3
5E42BA:  ADD             R1, PC; aWeaponInfo_ptr
5E42BC:  LDR             R1, [R1]; aWeaponInfo
5E42BE:  ADD.W           R0, R1, R0,LSL#4
5E42C2:  BX              LR
