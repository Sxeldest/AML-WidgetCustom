; =========================================================
; Game Engine Function: _ZN7CObject12CanBeDeletedEv
; Address            : 0x453794 - 0x4537B0
; =========================================================

453794:  LDRB.W          R0, [R0,#0x140]
453798:  SUBS            R1, R0, #2; switch 5 cases
45379A:  MOVS            R0, #1
45379C:  CMP             R1, #4
45379E:  IT HI
4537A0:  BXHI            LR
4537A2:  TBB.W           [PC,R1]; switch jump
4537A6:  DCB 3; jump table for switch statement
4537A7:  DCB 4
4537A8:  DCB 3
4537A9:  DCB 3
4537AA:  DCB 3
4537AB:  ALIGN 2
4537AC:  MOVS            R0, #0; jumptable 004537A2 cases 2,4-6
4537AE:  BX              LR; jumptable 004537A2 case 3
