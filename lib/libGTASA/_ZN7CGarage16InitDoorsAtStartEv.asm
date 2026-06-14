; =========================================================
; Game Engine Function: _ZN7CGarage16InitDoorsAtStartEv
; Address            : 0x30E670 - 0x30E6DC
; =========================================================

30E670:  LDRB.W          R2, [R0,#0x4E]
30E674:  MOVS            R3, #0
30E676:  LDRB.W          R1, [R0,#0x4C]
30E67A:  AND.W           R2, R2, #0x39 ; '9'
30E67E:  STR             R3, [R0,#0x3C]
30E680:  ORR.W           R2, R2, #0x40 ; '@'
30E684:  STRB.W          R3, [R0,#0x4D]
30E688:  STRB.W          R2, [R0,#0x4E]
30E68C:  SUBS            R2, R1, #1; switch 45 cases
30E68E:  CMP             R2, #0x2C ; ','
30E690:  IT HI
30E692:  BXHI            LR
30E694:  VMOV.F32        S0, #1.0
30E698:  MOVS            R1, #1
30E69A:  TBB.W           [PC,R2]; switch jump
30E69E:  DCB 0x17; jump table for switch statement
30E69F:  DCB 0x1A
30E6A0:  DCB 0x1A
30E6A1:  DCB 0x1A
30E6A2:  DCB 0x1A
30E6A3:  DCB 0x17
30E6A4:  DCB 0x17
30E6A5:  DCB 0x17
30E6A6:  DCB 0x17
30E6A7:  DCB 0x17
30E6A8:  DCB 0x17
30E6A9:  DCB 0x17
30E6AA:  DCB 0x1E
30E6AB:  DCB 0x17
30E6AC:  DCB 0x17
30E6AD:  DCB 0x17
30E6AE:  DCB 0x17
30E6AF:  DCB 0x17
30E6B0:  DCB 0x17
30E6B1:  DCB 0x17
30E6B2:  DCB 0x17
30E6B3:  DCB 0x17
30E6B4:  DCB 0x17
30E6B5:  DCB 0x17
30E6B6:  DCB 0x17
30E6B7:  DCB 0x17
30E6B8:  DCB 0x17
30E6B9:  DCB 0x17
30E6BA:  DCB 0x17
30E6BB:  DCB 0x17
30E6BC:  DCB 0x17
30E6BD:  DCB 0x17
30E6BE:  DCB 0x17
30E6BF:  DCB 0x17
30E6C0:  DCB 0x17
30E6C1:  DCB 0x17
30E6C2:  DCB 0x17
30E6C3:  DCB 0x17
30E6C4:  DCB 0x17
30E6C5:  DCB 0x17
30E6C6:  DCB 0x17
30E6C7:  DCB 0x17
30E6C8:  DCB 0x17
30E6C9:  DCB 0x17
30E6CA:  DCB 0x17
30E6CB:  ALIGN 2
30E6CC:  VLDR            S0, =0.0; jumptable 0030E69A cases 1,6-12,14-45
30E6D0:  MOVS            R1, #0
30E6D2:  VSTR            S0, [R0,#0x38]; jumptable 0030E69A cases 2-5
30E6D6:  STRB.W          R1, [R0,#0x4D]
30E6DA:  BX              LR; jumptable 0030E69A case 13
