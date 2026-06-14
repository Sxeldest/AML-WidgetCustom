; =========================================================
; Game Engine Function: _Z24SetPedAtomicVisibilityCBP8RwObjectPv
; Address            : 0x4ACED0 - 0x4ACEDA
; =========================================================

4ACED0:  CMP             R1, #0
4ACED2:  ITT EQ
4ACED4:  MOVEQ           R1, #0
4ACED6:  STRBEQ          R1, [R0,#2]
4ACED8:  BX              LR
