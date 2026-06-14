; =========================================================
; Game Engine Function: sub_10A078
; Address            : 0x10A078 - 0x10A092
; =========================================================

10A078:  LDR             R0, [R0,#0xC]
10A07A:  CBZ             R0, locret_10A090
10A07C:  LDR             R2, =(off_23494C - 0x10A08A)
10A07E:  MOV             R3, #0x58C5AD
10A086:  ADD             R2, PC; off_23494C
10A088:  LDR             R2, [R2]; dword_23DF24
10A08A:  LDR             R2, [R2]
10A08C:  ADD             R2, R3
10A08E:  BX              R2
10A090:  BX              LR
