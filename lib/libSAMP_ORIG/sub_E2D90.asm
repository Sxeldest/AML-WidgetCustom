; =========================================================
; Game Engine Function: sub_E2D90
; Address            : 0xE2D90 - 0xE2DA2
; =========================================================

E2D90:  PUSH            {R7,LR}
E2D92:  MOV             R7, SP
E2D94:  MOV             R2, R0
E2D96:  LDR             R0, [R0]
E2D98:  STR             R1, [R2]
E2D9A:  CBZ             R0, locret_E2DA0
E2D9C:  LDR             R1, [R2,#4]
E2D9E:  BLX             R1
E2DA0:  POP             {R7,PC}
