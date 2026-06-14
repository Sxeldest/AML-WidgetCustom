; =========================================================
; Game Engine Function: sub_F683C
; Address            : 0xF683C - 0xF6854
; =========================================================

F683C:  CMP             R0, R1
F683E:  BEQ             locret_F6852
F6840:  SUBS            R1, #4
F6842:  CMP             R0, R1
F6844:  BCS             locret_F6852
F6846:  LDR             R3, [R1]
F6848:  LDR             R2, [R0]
F684A:  STM             R0!, {R3}
F684C:  STR.W           R2, [R1],#-4
F6850:  B               loc_F6842
F6852:  BX              LR
