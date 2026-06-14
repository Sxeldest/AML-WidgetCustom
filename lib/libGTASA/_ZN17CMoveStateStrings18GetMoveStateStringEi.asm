; =========================================================
; Game Engine Function: _ZN17CMoveStateStrings18GetMoveStateStringEi
; Address            : 0x4AC988 - 0x4AC9C0
; =========================================================

4AC988:  CMP             R1, #7; switch 8 cases
4AC98A:  BHI             def_4AC98C; jumptable 004AC98C default case, cases 0,5
4AC98C:  TBB.W           [PC,R1]; switch jump
4AC990:  DCB 4; jump table for switch statement
4AC991:  DCB 6
4AC992:  DCB 9
4AC993:  DCB 0xC
4AC994:  DCB 0x15
4AC995:  DCB 4
4AC996:  DCB 0xF
4AC997:  DCB 0x12
4AC998:  LDR             R0, [R0]; jumptable 004AC98C default case, cases 0,5
4AC99A:  BX              LR
4AC99C:  ADDS            R0, #4; jumptable 004AC98C case 1
4AC99E:  LDR             R0, [R0]
4AC9A0:  BX              LR
4AC9A2:  ADDS            R0, #8; jumptable 004AC98C case 2
4AC9A4:  LDR             R0, [R0]
4AC9A6:  BX              LR
4AC9A8:  ADDS            R0, #0xC; jumptable 004AC98C case 3
4AC9AA:  LDR             R0, [R0]
4AC9AC:  BX              LR
4AC9AE:  ADDS            R0, #0x14; jumptable 004AC98C case 6
4AC9B0:  LDR             R0, [R0]
4AC9B2:  BX              LR
4AC9B4:  ADDS            R0, #0x18; jumptable 004AC98C case 7
4AC9B6:  LDR             R0, [R0]
4AC9B8:  BX              LR
4AC9BA:  ADDS            R0, #0x10; jumptable 004AC98C case 4
4AC9BC:  LDR             R0, [R0]
4AC9BE:  BX              LR
