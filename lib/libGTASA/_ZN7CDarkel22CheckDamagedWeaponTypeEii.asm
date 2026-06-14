; =========================================================
; Game Engine Function: _ZN7CDarkel22CheckDamagedWeaponTypeEii
; Address            : 0x304274 - 0x3042EC
; =========================================================

304274:  ADDS            R2, R0, #1
304276:  BEQ.W           def_3042A2; jumptable 003042A2 default case, cases 46-50,53-58
30427A:  CMP             R1, #0x39 ; '9'
30427C:  BEQ             loc_30429C
30427E:  CMP             R1, #0x38 ; '8'
304280:  BNE.W           def_3042A2; jumptable 003042A2 default case, cases 46-50,53-58
304284:  SUB.W           R1, R0, #0x10
304288:  CMP             R1, #0x28 ; '('
30428A:  BCC.W           def_3042A2; jumptable 003042A2 default case, cases 46-50,53-58
30428E:  CMP             R0, #0x10
304290:  ITTT CC
304292:  MOVCC           R1, #1
304294:  MOVCC           R0, R1
304296:  BXCC            LR
304298:  CMP             R0, #0x3A ; ':'
30429A:  B               def_3042A2; jumptable 003042A2 default case, cases 46-50,53-58
30429C:  CMP             R0, #0x3A ; ':'; switch 59 cases
30429E:  BHI             def_3042A2; jumptable 003042A2 default case, cases 46-50,53-58
3042A0:  MOVS            R1, #1
3042A2:  TBB.W           [PC,R0]; switch jump
3042A6:  DCB 0x1E; jump table for switch statement
3042A7:  DCB 0x1E
3042A8:  DCB 0x1E
3042A9:  DCB 0x1E
3042AA:  DCB 0x1E
3042AB:  DCB 0x1E
3042AC:  DCB 0x1E
3042AD:  DCB 0x1E
3042AE:  DCB 0x1E
3042AF:  DCB 0x1E
3042B0:  DCB 0x1E
3042B1:  DCB 0x1E
3042B2:  DCB 0x1E
3042B3:  DCB 0x1E
3042B4:  DCB 0x1E
3042B5:  DCB 0x1E
3042B6:  DCB 0x1E
3042B7:  DCB 0x1E
3042B8:  DCB 0x1E
3042B9:  DCB 0x1E
3042BA:  DCB 0x1E
3042BB:  DCB 0x1E
3042BC:  DCB 0x1E
3042BD:  DCB 0x1E
3042BE:  DCB 0x1E
3042BF:  DCB 0x1E
3042C0:  DCB 0x1E
3042C1:  DCB 0x1E
3042C2:  DCB 0x1E
3042C3:  DCB 0x1E
3042C4:  DCB 0x1E
3042C5:  DCB 0x1E
3042C6:  DCB 0x1E
3042C7:  DCB 0x1E
3042C8:  DCB 0x1E
3042C9:  DCB 0x1E
3042CA:  DCB 0x1E
3042CB:  DCB 0x1E
3042CC:  DCB 0x1E
3042CD:  DCB 0x1E
3042CE:  DCB 0x1E
3042CF:  DCB 0x1E
3042D0:  DCB 0x1E
3042D1:  DCB 0x1E
3042D2:  DCB 0x1E
3042D3:  DCB 0x1E
3042D4:  DCB 0x20
3042D5:  DCB 0x20
3042D6:  DCB 0x20
3042D7:  DCB 0x20
3042D8:  DCB 0x20
3042D9:  DCB 0x1E
3042DA:  DCB 0x1E
3042DB:  DCB 0x20
3042DC:  DCB 0x20
3042DD:  DCB 0x20
3042DE:  DCB 0x20
3042DF:  DCB 0x20
3042E0:  DCB 0x20
3042E1:  ALIGN 2
3042E2:  MOV             R0, R1; jumptable 003042A2 cases 0-45,51,52
3042E4:  BX              LR
3042E6:  MOVS            R1, #0; jumptable 003042A2 default case, cases 46-50,53-58
3042E8:  MOV             R0, R1
3042EA:  BX              LR
