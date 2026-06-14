; =========================================================
; Game Engine Function: _ZN13CCarEnterExit17CarHasDoorToCloseERK8CVehiclei
; Address            : 0x50871A - 0x508746
; =========================================================

50871A:  PUSH            {R4,R5,R7,LR}
50871C:  ADD             R7, SP, #8
50871E:  MOV             R5, R0
508720:  MOV             R4, R1
508722:  LDR             R0, [R5]
508724:  LDR.W           R2, [R0,#0x9C]
508728:  MOV             R0, R5
50872A:  BLX             R2
50872C:  CMP             R0, #0
50872E:  ITT NE
508730:  MOVNE           R0, #0
508732:  POPNE           {R4,R5,R7,PC}
508734:  LDR             R0, [R5]
508736:  MOV             R1, R4
508738:  LDR.W           R2, [R0,#0x98]
50873C:  MOV             R0, R5
50873E:  BLX             R2
508740:  EOR.W           R0, R0, #1
508744:  POP             {R4,R5,R7,PC}
