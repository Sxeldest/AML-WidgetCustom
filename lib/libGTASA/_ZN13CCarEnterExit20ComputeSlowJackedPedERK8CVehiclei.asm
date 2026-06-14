; =========================================================
; Game Engine Function: _ZN13CCarEnterExit20ComputeSlowJackedPedERK8CVehiclei
; Address            : 0x50889C - 0x508904
; =========================================================

50889C:  LDR.W           R2, [R0,#0x5A0]
5088A0:  CMP             R2, #9
5088A2:  BEQ             loc_5088C4
5088A4:  LDR.W           R2, [R0,#0x388]
5088A8:  LDRB.W          R2, [R2,#0xCD]
5088AC:  LSLS            R2, R2, #0x1E
5088AE:  BMI             loc_5088C4
5088B0:  SUBS            R1, #8; switch 4 cases
5088B2:  CMP             R1, #3
5088B4:  BHI             def_5088B6; jumptable 005088B6 default case
5088B6:  TBB.W           [PC,R1]; switch jump
5088BA:  DCB 0x18; jump table for switch statement
5088BB:  DCB 2
5088BC:  DCB 0x11
5088BD:  DCB 0x21
5088BE:  LDR.W           R2, [R0,#0x470]; jumptable 005088B6 case 9
5088C2:  B               loc_5088F2
5088C4:  MOVS            R2, #0
5088C6:  CMP             R1, #0x12
5088C8:  BHI             loc_5088F2
5088CA:  MOVS            R3, #1
5088CC:  LSL.W           R1, R3, R1
5088D0:  MOV             R3, #0x40500
5088D8:  TST             R1, R3
5088DA:  BEQ             loc_5088E4
5088DC:  LDR.W           R2, [R0,#0x464]; jumptable 005088B6 case 10
5088E0:  MOV             R0, R2
5088E2:  BX              LR
5088E4:  TST.W           R1, #0xA00
5088E8:  BEQ             loc_5088F2
5088EA:  LDR.W           R2, [R0,#0x468]; jumptable 005088B6 case 8
5088EE:  MOV             R0, R2
5088F0:  BX              LR
5088F2:  MOV             R0, R2
5088F4:  BX              LR
5088F6:  MOVS            R2, #0; jumptable 005088B6 default case
5088F8:  MOV             R0, R2
5088FA:  BX              LR
5088FC:  LDR.W           R2, [R0,#0x46C]; jumptable 005088B6 case 11
508900:  MOV             R0, R2
508902:  BX              LR
