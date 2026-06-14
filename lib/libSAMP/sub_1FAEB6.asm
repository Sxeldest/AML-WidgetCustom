; =========================================================
; Game Engine Function: sub_1FAEB6
; Address            : 0x1FAEB6 - 0x1FAEC8
; =========================================================

1FAEB6:  PUSH            {R7,LR}
1FAEB8:  MOV             R7, SP
1FAEBA:  MOV             R2, R0
1FAEBC:  LDR             R0, [R0]
1FAEBE:  STR             R1, [R2]
1FAEC0:  CBZ             R0, locret_1FAEC6
1FAEC2:  LDR             R1, [R2,#4]
1FAEC4:  BLX             R1
1FAEC6:  POP             {R7,PC}
