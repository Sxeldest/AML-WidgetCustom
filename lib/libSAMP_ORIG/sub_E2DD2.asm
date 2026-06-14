; =========================================================
; Game Engine Function: sub_E2DD2
; Address            : 0xE2DD2 - 0xE2DE4
; =========================================================

E2DD2:  PUSH            {R7,LR}
E2DD4:  MOV             R7, SP
E2DD6:  MOV             R2, R0
E2DD8:  LDR             R0, [R0]
E2DDA:  STR             R1, [R2]
E2DDC:  CBZ             R0, locret_E2DE2
E2DDE:  LDR             R1, [R2,#4]
E2DE0:  BLX             R1
E2DE2:  POP             {R7,PC}
