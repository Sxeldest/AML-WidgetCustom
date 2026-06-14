; =========================================================
; Game Engine Function: _ZN14CRunningScript46GetCorrectPedModelIndexForEmergencyServiceTypeEiPi
; Address            : 0x32E7A8 - 0x32E7EA
; =========================================================

32E7A8:  LDR             R0, [R2]
32E7AA:  SUB.W           R0, R0, #0x118; switch 8 cases
32E7AE:  CMP             R0, #7
32E7B0:  BHI             def_32E7B2; jumptable 0032E7B2 default case
32E7B2:  TBB.W           [PC,R0]; switch jump
32E7B6:  DCB 4; jump table for switch statement
32E7B7:  DCB 4
32E7B8:  DCB 4
32E7B9:  DCB 8
32E7BA:  DCB 4
32E7BB:  DCB 0xD
32E7BC:  DCB 0x15
32E7BD:  DCB 0x11
32E7BE:  CMP             R1, #6; jumptable 0032E7B2 cases 280-282,284
32E7C0:  BNE             def_32E7B2; jumptable 0032E7B2 default case
32E7C2:  MOVS            R0, #0
32E7C4:  B               loc_32E7E6
32E7C6:  CMP             R1, #6; jumptable 0032E7B2 case 283
32E7C8:  IT NE
32E7CA:  BXNE            LR
32E7CC:  MOVS            R0, #7
32E7CE:  B               loc_32E7E6
32E7D0:  CMP             R1, #6; jumptable 0032E7B2 case 285
32E7D2:  BNE             def_32E7B2; jumptable 0032E7B2 default case
32E7D4:  MOVS            R0, #2
32E7D6:  B               loc_32E7E6
32E7D8:  CMP             R1, #6; jumptable 0032E7B2 case 287
32E7DA:  BNE             def_32E7B2; jumptable 0032E7B2 default case
32E7DC:  MOVS            R0, #5
32E7DE:  B               loc_32E7E6
32E7E0:  CMP             R1, #6; jumptable 0032E7B2 case 286
32E7E2:  BNE             def_32E7B2; jumptable 0032E7B2 default case
32E7E4:  MOVS            R0, #4
32E7E6:  STR             R0, [R2]
32E7E8:  BX              LR; jumptable 0032E7B2 default case
