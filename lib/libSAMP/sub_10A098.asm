; =========================================================
; Game Engine Function: sub_10A098
; Address            : 0x10A098 - 0x10A0B2
; =========================================================

10A098:  LDR             R0, [R0,#0xC]
10A09A:  CBZ             R0, locret_10A0B0
10A09C:  LDR             R2, =(off_23494C - 0x10A0AA)
10A09E:  MOV             R3, #0x58C5D5
10A0A6:  ADD             R2, PC; off_23494C
10A0A8:  LDR             R2, [R2]; dword_23DF24
10A0AA:  LDR             R2, [R2]
10A0AC:  ADD             R2, R3
10A0AE:  BX              R2
10A0B0:  BX              LR
