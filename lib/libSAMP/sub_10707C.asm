; =========================================================
; Game Engine Function: sub_10707C
; Address            : 0x10707C - 0x10708E
; =========================================================

10707C:  LDR             R2, =(_ZTSZN10CPlayerPed14SetArmedWeaponEhbE3$_3 - 0x107086); type descriptor name
10707E:  LDR             R3, [R1,#4]
107080:  MOVS            R1, #0
107082:  ADD             R2, PC; type descriptor name
107084:  CMP             R3, R2
107086:  IT EQ
107088:  ADDEQ           R1, R0, #4
10708A:  MOV             R0, R1
10708C:  BX              LR
