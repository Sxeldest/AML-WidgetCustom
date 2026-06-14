; =========================================================
; Game Engine Function: _ZN8CVehicle15GetPlaneNumGunsEv
; Address            : 0x58F4CC - 0x58F534
; =========================================================

58F4CC:  LDRSH.W         R1, [R0,#0x26]
58F4D0:  MOVS            R0, #1
58F4D2:  CMP.W           R1, #0x208
58F4D6:  BGE             loc_58F50A
58F4D8:  SUB.W           R2, R1, #0x1D0; switch 34 cases
58F4DC:  CMP             R2, #0x21 ; '!'
58F4DE:  BHI             def_58F4E0; jumptable 0058F4E0 default case
58F4E0:  TBB.W           [PC,R2]; switch jump
58F4E4:  DCB 0x25; jump table for switch statement
58F4E5:  DCB 0x26
58F4E6:  DCB 0x26
58F4E7:  DCB 0x26
58F4E8:  DCB 0x26
58F4E9:  DCB 0x26
58F4EA:  DCB 0x26
58F4EB:  DCB 0x26
58F4EC:  DCB 0x26
58F4ED:  DCB 0x26
58F4EE:  DCB 0x26
58F4EF:  DCB 0x26
58F4F0:  DCB 0x11
58F4F1:  DCB 0x26
58F4F2:  DCB 0x26
58F4F3:  DCB 0x26
58F4F4:  DCB 0x26
58F4F5:  DCB 0x26
58F4F6:  DCB 0x26
58F4F7:  DCB 0x26
58F4F8:  DCB 0x26
58F4F9:  DCB 0x26
58F4FA:  DCB 0x26
58F4FB:  DCB 0x25
58F4FC:  DCB 0x26
58F4FD:  DCB 0x26
58F4FE:  DCB 0x26
58F4FF:  DCB 0x26
58F500:  DCB 0x26
58F501:  DCB 0x26
58F502:  DCB 0x26
58F503:  DCB 0x26
58F504:  DCB 0x26
58F505:  DCB 0x25
58F506:  MOVS            R0, #6; jumptable 0058F4E0 case 476
58F508:  BX              LR
58F50A:  BEQ             loc_58F51A
58F50C:  CMP.W           R1, #0x224
58F510:  IT EQ
58F512:  BXEQ            LR
58F514:  CMP.W           R1, #0x240
58F518:  BNE             loc_58F530; jumptable 0058F4E0 cases 465-475,477-486,488-496
58F51A:  MOVS            R0, #2
58F51C:  BX              LR
58F51E:  MOVW            R2, #0x1A9; jumptable 0058F4E0 default case
58F522:  CMP             R1, R2
58F524:  ITT NE
58F526:  MOVWNE          R2, #0x1BF
58F52A:  CMPNE           R1, R2
58F52C:  BNE             loc_58F530; jumptable 0058F4E0 cases 465-475,477-486,488-496
58F52E:  BX              LR; jumptable 0058F4E0 cases 464,487,497
58F530:  MOVS            R0, #0; jumptable 0058F4E0 cases 465-475,477-486,488-496
58F532:  BX              LR
