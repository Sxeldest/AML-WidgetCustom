; =========================================================
; Game Engine Function: _Z18RpClumpRemoveLightP7RpClumpP7RpLight
; Address            : 0x2147D0 - 0x2147FC
; =========================================================

2147D0:  PUSH            {R7,LR}
2147D2:  MOV             R7, SP
2147D4:  LDR             R2, =(dword_6BD594 - 0x2147DA)
2147D6:  ADD             R2, PC; dword_6BD594
2147D8:  LDR.W           LR, [R2]
2147DC:  ADD.W           R3, R1, LR
2147E0:  LDRD.W          R12, R2, [R3,#4]
2147E4:  STR.W           R12, [R2]
2147E8:  LDRD.W          R12, R2, [R3,#4]
2147EC:  STR.W           R2, [R12,#4]
2147F0:  MOVS            R2, #0
2147F2:  STR.W           R2, [R1,LR]
2147F6:  STRD.W          R2, R2, [R3,#4]
2147FA:  POP             {R7,PC}
