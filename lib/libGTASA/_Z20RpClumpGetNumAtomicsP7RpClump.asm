; =========================================================
; Game Engine Function: _Z20RpClumpGetNumAtomicsP7RpClump
; Address            : 0x213DD2 - 0x213DE6
; =========================================================

213DD2:  ADD.W           R1, R0, #8
213DD6:  MOV.W           R0, #0xFFFFFFFF
213DDA:  MOV             R2, R1
213DDC:  LDR             R2, [R2]
213DDE:  ADDS            R0, #1
213DE0:  CMP             R2, R1
213DE2:  BNE             loc_213DDC
213DE4:  BX              LR
