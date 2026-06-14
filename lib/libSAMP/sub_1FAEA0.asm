; =========================================================
; Game Engine Function: sub_1FAEA0
; Address            : 0x1FAEA0 - 0x1FAEB2
; =========================================================

1FAEA0:  PUSH            {R7,LR}
1FAEA2:  MOV             R7, SP
1FAEA4:  MOV             R2, R0
1FAEA6:  LDR             R0, [R0]
1FAEA8:  STR             R1, [R2]
1FAEAA:  CBZ             R0, locret_1FAEB0
1FAEAC:  LDR             R1, [R2,#4]
1FAEAE:  BLX             R1
1FAEB0:  POP             {R7,PC}
