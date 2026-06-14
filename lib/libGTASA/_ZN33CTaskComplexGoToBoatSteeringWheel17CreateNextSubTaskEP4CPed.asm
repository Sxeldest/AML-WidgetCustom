; =========================================================
; Game Engine Function: _ZN33CTaskComplexGoToBoatSteeringWheel17CreateNextSubTaskEP4CPed
; Address            : 0x505DD0 - 0x505DEE
; =========================================================

505DD0:  PUSH            {R4,R6,R7,LR}
505DD2:  ADD             R7, SP, #8
505DD4:  MOV             R4, R0
505DD6:  LDR             R0, [R4,#8]
505DD8:  LDR             R1, [R0]
505DDA:  LDR             R1, [R1,#0x14]
505DDC:  BLX             R1
505DDE:  MOVW            R1, #0x387
505DE2:  CMP             R0, R1
505DE4:  ITT EQ
505DE6:  MOVEQ           R0, #1
505DE8:  STRBEQ          R0, [R4,#0x1C]
505DEA:  MOVS            R0, #0
505DEC:  POP             {R4,R6,R7,PC}
