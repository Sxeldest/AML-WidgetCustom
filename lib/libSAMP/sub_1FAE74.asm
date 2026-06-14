; =========================================================
; Game Engine Function: sub_1FAE74
; Address            : 0x1FAE74 - 0x1FAE86
; =========================================================

1FAE74:  PUSH            {R7,LR}
1FAE76:  MOV             R7, SP
1FAE78:  MOV             R2, R0
1FAE7A:  LDR             R0, [R0]
1FAE7C:  STR             R1, [R2]
1FAE7E:  CBZ             R0, locret_1FAE84
1FAE80:  LDR             R1, [R2,#4]
1FAE82:  BLX             R1
1FAE84:  POP             {R7,PC}
