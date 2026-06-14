; =========================================================
; Game Engine Function: sub_67814
; Address            : 0x67814 - 0x67874
; =========================================================

67814:  PUSH            {R4,R6,R7,LR}
67816:  ADD             R7, SP, #8
67818:  LDRB            R1, [R0,#0x17]
6781A:  CBZ             R1, locret_67872
6781C:  MOVS            R2, #0x11
6781E:  MOV             R3, R0
67820:  VLD1.8          {D16-D17}, [R3],R2
67824:  VMOV.I8         Q9, #0x5A ; 'Z'
67828:  EOR.W           R1, R1, #0x5A ; 'Z'
6782C:  LDRB            R2, [R0,#0x12]
6782E:  VEOR            Q8, Q8, Q9
67832:  LDRB.W          R12, [R0,#0x13]
67836:  EOR.W           R2, R2, #0x5A ; 'Z'
6783A:  LDRB.W          LR, [R0,#0x14]
6783E:  STRB            R1, [R0,#0x17]
67840:  LDRB            R1, [R0,#0x16]
67842:  STRB            R2, [R0,#0x12]
67844:  EOR.W           R2, R12, #0x5A ; 'Z'
67848:  LDRB            R4, [R0,#0x15]
6784A:  EOR.W           R1, R1, #0x5A ; 'Z'
6784E:  STRB            R2, [R0,#0x13]
67850:  EOR.W           R2, LR, #0x5A ; 'Z'
67854:  STRB            R2, [R0,#0x14]
67856:  EOR.W           R2, R4, #0x5A ; 'Z'
6785A:  STRB            R2, [R0,#0x15]
6785C:  STRB            R1, [R0,#0x16]
6785E:  VST1.8          {D16-D17}, [R0]!
67862:  LDRB            R2, [R3]
67864:  LDRB            R1, [R0]
67866:  EOR.W           R2, R2, #0x5A ; 'Z'
6786A:  STRB            R2, [R3]
6786C:  EOR.W           R1, R1, #0x5A ; 'Z'
67870:  STRB            R1, [R0]
67872:  POP             {R4,R6,R7,PC}
