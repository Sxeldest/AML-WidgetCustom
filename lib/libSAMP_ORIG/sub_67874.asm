; =========================================================
; Game Engine Function: sub_67874
; Address            : 0x67874 - 0x678FA
; =========================================================

67874:  PUSH            {R4,R5,R7,LR}
67876:  ADD             R7, SP, #8
67878:  LDRB            R1, [R0,#0x1B]
6787A:  CBZ             R1, locret_678F8
6787C:  LDRB            R1, [R0,#0x12]
6787E:  MOV.W           LR, #0x11
67882:  LDRB            R2, [R0,#0x13]
67884:  MOV             R4, R0
67886:  EOR.W           R1, R1, #0x5A ; 'Z'
6788A:  LDRB            R3, [R0,#0x14]
6788C:  STRB            R1, [R0,#0x12]
6788E:  EOR.W           R1, R2, #0x5A ; 'Z'
67892:  LDRB.W          R12, [R0,#0x15]
67896:  VMOV.I8         Q9, #0x5A ; 'Z'
6789A:  STRB            R1, [R0,#0x13]
6789C:  EOR.W           R1, R3, #0x5A ; 'Z'
678A0:  LDRB            R2, [R0,#0x16]
678A2:  VLD1.8          {D16-D17}, [R4],LR
678A6:  VEOR            Q8, Q8, Q9
678AA:  STRB            R1, [R0,#0x14]
678AC:  EOR.W           R1, R12, #0x5A ; 'Z'
678B0:  STRB            R1, [R0,#0x15]
678B2:  EOR.W           R1, R2, #0x5A ; 'Z'
678B6:  STRB            R1, [R0,#0x16]
678B8:  LDRB            R1, [R4]
678BA:  LDRB            R5, [R0,#0x17]
678BC:  EOR.W           R1, R1, #0x5A ; 'Z'
678C0:  STRB            R1, [R4]
678C2:  MOV             R1, R0
678C4:  EOR.W           R2, R5, #0x5A ; 'Z'
678C8:  VST1.8          {D16-D17}, [R1]!
678CC:  STRB            R2, [R0,#0x17]
678CE:  LDRB            R2, [R1]
678D0:  LDRB.W          LR, [R0,#0x18]
678D4:  EOR.W           R2, R2, #0x5A ; 'Z'
678D8:  STRB            R2, [R1]
678DA:  LDRB            R1, [R0,#0x19]
678DC:  EOR.W           R3, LR, #0x5A ; 'Z'
678E0:  STRB            R3, [R0,#0x18]
678E2:  EOR.W           R1, R1, #0x5A ; 'Z'
678E6:  STRB            R1, [R0,#0x19]
678E8:  LDRB            R1, [R0,#0x1A]
678EA:  EOR.W           R1, R1, #0x5A ; 'Z'
678EE:  STRB            R1, [R0,#0x1A]
678F0:  LDRB            R1, [R0,#0x1B]
678F2:  EOR.W           R1, R1, #0x5A ; 'Z'
678F6:  STRB            R1, [R0,#0x1B]
678F8:  POP             {R4,R5,R7,PC}
