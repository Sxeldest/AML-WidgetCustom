; =========================================================
; Game Engine Function: sub_1FAE8A
; Address            : 0x1FAE8A - 0x1FAE9C
; =========================================================

1FAE8A:  PUSH            {R7,LR}
1FAE8C:  MOV             R7, SP
1FAE8E:  MOV             R2, R0
1FAE90:  LDR             R0, [R0]
1FAE92:  STR             R1, [R2]
1FAE94:  CBZ             R0, locret_1FAE9A
1FAE96:  LDR             R1, [R2,#4]
1FAE98:  BLX             R1
1FAE9A:  POP             {R7,PC}
