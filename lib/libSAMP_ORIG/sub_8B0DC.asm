; =========================================================
; Game Engine Function: sub_8B0DC
; Address            : 0x8B0DC - 0x8B100
; =========================================================

8B0DC:  LDR             R0, =(dword_1ACF68 - 0x8B0EA)
8B0DE:  MOVW            R1, #0x19AC
8B0E2:  MOVW            R3, #0x101
8B0E6:  ADD             R0, PC; dword_1ACF68
8B0E8:  LDR             R0, [R0]
8B0EA:  LDR             R2, [R0,R1]
8B0EC:  ADD             R0, R1
8B0EE:  LDR.W           R1, [R2,#0x10C]
8B0F2:  STRH.W          R3, [R0,#0x33]
8B0F6:  ORR.W           R0, R1, #4
8B0FA:  STR.W           R0, [R2,#0x10C]
8B0FE:  BX              LR
