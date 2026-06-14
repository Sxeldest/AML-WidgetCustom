; =========================================================
; Game Engine Function: sub_20E6AC
; Address            : 0x20E6AC - 0x20E6C4
; =========================================================

20E6AC:  CMP             R0, R1
20E6AE:  BEQ             locret_20E6C2
20E6B0:  SUBS            R1, #4
20E6B2:  CMP             R0, R1
20E6B4:  BCS             locret_20E6C2
20E6B6:  LDR             R3, [R1]
20E6B8:  LDR             R2, [R0]
20E6BA:  STM             R0!, {R3}
20E6BC:  STR.W           R2, [R1],#-4
20E6C0:  B               loc_20E6B2
20E6C2:  BX              LR
