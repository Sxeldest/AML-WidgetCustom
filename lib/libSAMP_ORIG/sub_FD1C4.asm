; =========================================================
; Game Engine Function: sub_FD1C4
; Address            : 0xFD1C4 - 0xFD1E0
; =========================================================

FD1C4:  LDRD.W          R2, R3, [R0,#4]
FD1C8:  CMP             R2, R3
FD1CA:  IT CS
FD1CC:  BCS.W           sub_FD2A8
FD1D0:  LDRD.W          R3, R1, [R1]
FD1D4:  STRD.W          R3, R1, [R2]
FD1D8:  ADD.W           R1, R2, #8
FD1DC:  STR             R1, [R0,#4]
FD1DE:  BX              LR
