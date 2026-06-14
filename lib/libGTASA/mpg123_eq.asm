; =========================================================
; Game Engine Function: mpg123_eq
; Address            : 0x22F55A - 0x22F5C0
; =========================================================

22F55A:  CMP             R0, #0
22F55C:  ITT EQ
22F55E:  MOVEQ.W         R0, #0xFFFFFFFF
22F562:  BXEQ            LR
22F564:  CMP             R2, #0x20 ; ' '
22F566:  BCC             loc_22F570
22F568:  MOVW            R1, #0xB468
22F56C:  MOVS            R2, #0x10
22F56E:  B               loc_22F5B8
22F570:  VLDR            D16, [SP,#arg_0]
22F574:  CMP             R1, #1
22F576:  BEQ             loc_22F58E
22F578:  CMP             R1, #2
22F57A:  BEQ             loc_22F592
22F57C:  CMP             R1, #3
22F57E:  BNE             loc_22F5B2
22F580:  ADD.W           R1, R0, R2,LSL#3
22F584:  MOVW            R3, #0x4950
22F588:  ADD             R1, R3
22F58A:  VSTR            D16, [R1]
22F58E:  MOVS            R1, #0
22F590:  B               loc_22F594
22F592:  MOVS            R1, #1
22F594:  ADD.W           R1, R0, R1,LSL#8
22F598:  ADD.W           R1, R1, R2,LSL#3
22F59C:  MOVW            R2, #0x4850
22F5A0:  ADD             R1, R2
22F5A2:  MOVS            R2, #1
22F5A4:  VSTR            D16, [R1]
22F5A8:  MOVW            R1, #0x4848
22F5AC:  STR             R2, [R0,R1]
22F5AE:  MOVS            R0, #0
22F5B0:  BX              LR
22F5B2:  MOVW            R1, #0xB468
22F5B6:  MOVS            R2, #2
22F5B8:  STR             R2, [R0,R1]
22F5BA:  MOV.W           R0, #0xFFFFFFFF
22F5BE:  BX              LR
