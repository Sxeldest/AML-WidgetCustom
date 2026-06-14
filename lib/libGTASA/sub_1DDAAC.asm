; =========================================================
; Game Engine Function: sub_1DDAAC
; Address            : 0x1DDAAC - 0x1DDAB8
; =========================================================

1DDAAC:  LDR             R0, =(dword_6BCFA0 - 0x1DDAB4)
1DDAAE:  LDR             R1, [R1]
1DDAB0:  ADD             R0, PC; dword_6BCFA0
1DDAB2:  STR             R1, [R0]
1DDAB4:  MOVS            R0, #1
1DDAB6:  BX              LR
