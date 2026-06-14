; =========================================================
; Game Engine Function: _ZN23CAECutsceneTrackManager22GetCutsceneTrackStatusEv
; Address            : 0x3952D4 - 0x3952F8
; =========================================================

3952D4:  LDR             R1, [R0,#8]
3952D6:  CMP             R1, #7; switch 8 cases
3952D8:  BHI             def_3952DC; jumptable 003952DC default case
3952DA:  MOVS            R0, #1
3952DC:  TBB.W           [PC,R1]; switch jump
3952E0:  DCB 7; jump table for switch statement
3952E1:  DCB 7
3952E2:  DCB 8
3952E3:  DCB 0xA
3952E4:  DCB 4
3952E5:  DCB 4
3952E6:  DCB 4
3952E7:  DCB 4
3952E8:  MOVS            R0, #4; jumptable 003952DC cases 4-7
3952EA:  BX              LR
3952EC:  MOVS            R0, #0; jumptable 003952DC default case
3952EE:  BX              LR; jumptable 003952DC cases 0,1
3952F0:  MOVS            R0, #2; jumptable 003952DC case 2
3952F2:  BX              LR
3952F4:  MOVS            R0, #3; jumptable 003952DC case 3
3952F6:  BX              LR
