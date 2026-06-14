; =========================================================
; Game Engine Function: sub_677BC
; Address            : 0x677BC - 0x67814
; =========================================================

677BC:  PUSH            {R4,R6,R7,LR}
677BE:  ADD             R7, SP, #8
677C0:  LDRB            R1, [R0,#0x16]
677C2:  CBZ             R1, locret_67812
677C4:  MOVS            R2, #0x11
677C6:  MOV             R3, R0
677C8:  VMOV.I8         Q9, #0x5A ; 'Z'
677CC:  VLD1.8          {D16-D17}, [R3],R2
677D0:  EOR.W           R1, R1, #0x5A ; 'Z'
677D4:  LDRB            R2, [R0,#0x12]
677D6:  VEOR            Q8, Q8, Q9
677DA:  LDRB.W          R12, [R0,#0x13]
677DE:  STRB            R1, [R0,#0x16]
677E0:  EOR.W           R1, R2, #0x5A ; 'Z'
677E4:  LDRB            R4, [R0,#0x15]
677E6:  LDRB.W          LR, [R0,#0x14]
677EA:  STRB            R1, [R0,#0x12]
677EC:  EOR.W           R1, R12, #0x5A ; 'Z'
677F0:  STRB            R1, [R0,#0x13]
677F2:  EOR.W           R1, LR, #0x5A ; 'Z'
677F6:  STRB            R1, [R0,#0x14]
677F8:  EOR.W           R2, R4, #0x5A ; 'Z'
677FC:  STRB            R2, [R0,#0x15]
677FE:  VST1.8          {D16-D17}, [R0]!
67802:  LDRB            R1, [R3]
67804:  LDRB            R2, [R0]
67806:  EOR.W           R1, R1, #0x5A ; 'Z'
6780A:  STRB            R1, [R3]
6780C:  EOR.W           R1, R2, #0x5A ; 'Z'
67810:  STRB            R1, [R0]
67812:  POP             {R4,R6,R7,PC}
