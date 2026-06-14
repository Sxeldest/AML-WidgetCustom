; =========================================================
; Game Engine Function: _ZN17CVehicleAnimGroup24ComputeCriticalBlendTimeEi
; Address            : 0x591DC4 - 0x591E18
; =========================================================

591DC4:  SUBW            R2, R1, #0x15F; switch 38 cases
591DC8:  VLDR            S0, =0.0
591DCC:  CMP             R2, #0x25 ; '%'
591DCE:  BHI             def_591DD2; jumptable 00591DD2 default case, cases 364-372,377,380-383,386
591DD0:  MOVS            R1, #0
591DD2:  TBB.W           [PC,R2]; switch jump
591DD6:  DCB 0x1A; jump table for switch statement
591DD7:  DCB 0x1A
591DD8:  DCB 0x1A
591DD9:  DCB 0x1A
591DDA:  DCB 0x1A
591DDB:  DCB 0x1A
591DDC:  DCB 0x1A
591DDD:  DCB 0x1A
591DDE:  DCB 0x1A
591DDF:  DCB 0x1A
591DE0:  DCB 0x1A
591DE1:  DCB 0x1A
591DE2:  DCB 0x1A
591DE3:  DCB 0x1E
591DE4:  DCB 0x1E
591DE5:  DCB 0x1E
591DE6:  DCB 0x1E
591DE7:  DCB 0x1E
591DE8:  DCB 0x1E
591DE9:  DCB 0x1E
591DEA:  DCB 0x1E
591DEB:  DCB 0x1E
591DEC:  DCB 0x13
591DED:  DCB 0x13
591DEE:  DCB 0x13
591DEF:  DCB 0x13
591DF0:  DCB 0x1E
591DF1:  DCB 0x15
591DF2:  DCB 0x15
591DF3:  DCB 0x1E
591DF4:  DCB 0x1E
591DF5:  DCB 0x1E
591DF6:  DCB 0x1E
591DF7:  DCB 0x17
591DF8:  DCB 0x17
591DF9:  DCB 0x1E
591DFA:  DCB 0x19
591DFB:  DCB 0x19
591DFC:  MOVS            R1, #2; jumptable 00591DD2 cases 373-376
591DFE:  B               loc_591E0A; jumptable 00591DD2 cases 351-363
591E00:  MOVS            R1, #3; jumptable 00591DD2 cases 378,379
591E02:  B               loc_591E0A; jumptable 00591DD2 cases 351-363
591E04:  MOVS            R1, #1; jumptable 00591DD2 cases 384,385
591E06:  B               loc_591E0A; jumptable 00591DD2 cases 351-363
591E08:  MOVS            R1, #4; jumptable 00591DD2 cases 387,388
591E0A:  ADD.W           R0, R0, R1,LSL#2; jumptable 00591DD2 cases 351-363
591E0E:  VLDR            S0, [R0,#0xC]
591E12:  VMOV            R0, S0; jumptable 00591DD2 default case, cases 364-372,377,380-383,386
591E16:  BX              LR
