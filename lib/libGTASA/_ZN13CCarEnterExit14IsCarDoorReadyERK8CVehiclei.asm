; =========================================================
; Game Engine Function: _ZN13CCarEnterExit14IsCarDoorReadyERK8CVehiclei
; Address            : 0x5086C4 - 0x5086EE
; =========================================================

5086C4:  PUSH            {R4,R5,R7,LR}
5086C6:  ADD             R7, SP, #8
5086C8:  MOV             R5, R0
5086CA:  MOV             R4, R1
5086CC:  LDR             R0, [R5]
5086CE:  LDR.W           R2, [R0,#0x90]
5086D2:  MOV             R0, R5
5086D4:  BLX             R2
5086D6:  CMP             R0, #0
5086D8:  ITT NE
5086DA:  MOVNE           R0, #1
5086DC:  POPNE           {R4,R5,R7,PC}
5086DE:  LDR             R0, [R5]
5086E0:  MOV             R1, R4
5086E2:  LDR.W           R2, [R0,#0x94]
5086E6:  MOV             R0, R5
5086E8:  POP.W           {R4,R5,R7,LR}
5086EC:  BX              R2
