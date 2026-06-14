; =========================================================
; Game Engine Function: sub_1F33B0
; Address            : 0x1F33B0 - 0x1F33C2
; =========================================================

1F33B0:  PUSH            {R7,LR}
1F33B2:  MOV             R7, SP
1F33B4:  MOV             R2, R0
1F33B6:  LDR             R0, [R0]
1F33B8:  STR             R1, [R2]
1F33BA:  CBZ             R0, locret_1F33C0
1F33BC:  LDR             R1, [R2,#4]
1F33BE:  BLX             R1
1F33C0:  POP             {R7,PC}
