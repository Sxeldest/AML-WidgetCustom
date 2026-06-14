; =========================================================
; Game Engine Function: sub_20F0A2
; Address            : 0x20F0A2 - 0x20F0BA
; =========================================================

20F0A2:  CMP             R0, R1
20F0A4:  BEQ             locret_20F0B8
20F0A6:  SUBS            R1, #4
20F0A8:  CMP             R0, R1
20F0AA:  BCS             locret_20F0B8
20F0AC:  LDR             R3, [R1]
20F0AE:  LDR             R2, [R0]
20F0B0:  STM             R0!, {R3}
20F0B2:  STR.W           R2, [R1],#-4
20F0B6:  B               loc_20F0A8
20F0B8:  BX              LR
