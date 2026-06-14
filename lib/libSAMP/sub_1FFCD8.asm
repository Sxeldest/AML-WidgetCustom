; =========================================================
; Game Engine Function: sub_1FFCD8
; Address            : 0x1FFCD8 - 0x1FFCEA
; =========================================================

1FFCD8:  PUSH            {R7,LR}
1FFCDA:  MOV             R7, SP
1FFCDC:  MOV             R2, R0
1FFCDE:  LDR             R0, [R0]
1FFCE0:  STR             R1, [R2]
1FFCE2:  CBZ             R0, locret_1FFCE8
1FFCE4:  LDR             R1, [R2,#4]
1FFCE6:  BLX             R1
1FFCE8:  POP             {R7,PC}
