; =========================================================
; Game Engine Function: sub_F2648
; Address            : 0xF2648 - 0xF2714
; =========================================================

F2648:  PUSH            {R4-R7,LR}
F264A:  ADD             R7, SP, #0xC
F264C:  PUSH.W          {R11}
F2650:  SUB             SP, SP, #8
F2652:  MOV             R6, R0
F2654:  MOVS            R0, #1
F2656:  MOV             R4, R2
F2658:  MOV             R5, R1
F265A:  CMP             R1, #0x13
F265C:  STRB.W          R0, [R7,#var_11]
F2660:  BGT             loc_F267C
F2662:  CMP             R5, #0xB; switch 12 cases
F2664:  BHI             def_F2666; jumptable 000F2666 default case, cases 1,2,4,6,7
F2666:  TBB.W           [PC,R5]; switch jump
F266A:  DCB 6; jump table for switch statement
F266B:  DCB 0x42
F266C:  DCB 0x42
F266D:  DCB 0x17
F266E:  DCB 0x42
F266F:  DCB 0x1F
F2670:  DCB 0x42
F2671:  DCB 0x42
F2672:  DCB 0x22
F2673:  DCB 0x25
F2674:  DCB 0x28
F2675:  DCB 0x30
F2676:  LDR             R0, =(dword_23FBC8 - 0xF267C); jumptable 000F2666 case 0
F2678:  ADD             R0, PC; dword_23FBC8
F267A:  B               loc_F26DE
F267C:  CMP             R5, #0x14
F267E:  BEQ             loc_F26DA
F2680:  CMP             R5, #0x16
F2682:  BEQ             loc_F2704
F2684:  CMP             R5, #0x19
F2686:  BNE             def_F2666; jumptable 000F2666 default case, cases 1,2,4,6,7
F2688:  LDR             R0, =(dword_23FCA0 - 0xF2694)
F268A:  SUB.W           R2, R7, #-var_11
F268E:  MOV             R1, R4
F2690:  ADD             R0, PC; dword_23FCA0
F2692:  BL              sub_F2916
F2696:  B               loc_F26E8
F2698:  LDR             R0, =(dword_23FBE0 - 0xF26A4); jumptable 000F2666 case 3
F269A:  SUB.W           R2, R7, #-var_11
F269E:  MOV             R1, R4
F26A0:  ADD             R0, PC; dword_23FBE0
F26A2:  BL              sub_F27EE
F26A6:  B               loc_F26E8
F26A8:  LDR             R0, =(dword_23FBF8 - 0xF26AE); jumptable 000F2666 case 5
F26AA:  ADD             R0, PC; dword_23FBF8
F26AC:  B               loc_F26DE
F26AE:  LDR             R0, =(dword_23FC10 - 0xF26B4); jumptable 000F2666 case 8
F26B0:  ADD             R0, PC; dword_23FC10
F26B2:  B               loc_F26DE
F26B4:  LDR             R0, =(dword_23FC28 - 0xF26BA); jumptable 000F2666 case 9
F26B6:  ADD             R0, PC; dword_23FC28
F26B8:  B               loc_F26DE
F26BA:  LDR             R0, =(dword_23FC40 - 0xF26C6); jumptable 000F2666 case 10
F26BC:  SUB.W           R2, R7, #-var_11
F26C0:  MOV             R1, R4
F26C2:  ADD             R0, PC; dword_23FC40
F26C4:  BL              sub_F2838
F26C8:  B               loc_F26E8
F26CA:  LDR             R0, =(dword_23FC58 - 0xF26D6); jumptable 000F2666 case 11
F26CC:  SUB.W           R2, R7, #-var_11
F26D0:  MOV             R1, R4
F26D2:  ADD             R0, PC; dword_23FC58
F26D4:  BL              sub_F2882
F26D8:  B               loc_F26E8
F26DA:  LDR             R0, =(dword_23FC70 - 0xF26E0)
F26DC:  ADD             R0, PC; dword_23FC70
F26DE:  SUB.W           R2, R7, #-var_11
F26E2:  MOV             R1, R4
F26E4:  BL              sub_F27A4
F26E8:  LDRB.W          R0, [R7,#var_11]
F26EC:  CBZ             R0, loc_F26FA
F26EE:  LDR             R2, [R6]; jumptable 000F2666 default case, cases 1,2,4,6,7
F26F0:  MOV             R0, R5
F26F2:  MOV             R1, R4
F26F4:  BLX             R2
F26F6:  MOVS            R0, #1
F26F8:  B               loc_F26FC
F26FA:  MOVS            R0, #0
F26FC:  ADD             SP, SP, #8
F26FE:  POP.W           {R11}
F2702:  POP             {R4-R7,PC}
F2704:  LDR             R0, =(dword_23FC88 - 0xF2710)
F2706:  SUB.W           R2, R7, #-var_11
F270A:  MOV             R1, R4
F270C:  ADD             R0, PC; dword_23FC88
F270E:  BL              sub_F28CC
F2712:  B               loc_F26E8
