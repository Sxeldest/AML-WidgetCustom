; =========================================================
; Game Engine Function: INT123_synth_ntom_s32_mono
; Address            : 0x23A6FE - 0x23A764
; =========================================================

23A6FE:  PUSH            {R4-R7,LR}
23A700:  ADD             R7, SP, #0xC
23A702:  PUSH.W          {R8-R10}
23A706:  SUB.W           SP, SP, #0x800
23A70A:  MOV             R4, R1
23A70C:  MOVW            R9, #0xB2A0
23A710:  MOVW            R5, #0xB2A8
23A714:  MOV             R6, SP
23A716:  MOVS            R1, #0
23A718:  LDR.W           R10, [R4,R9]
23A71C:  LDR.W           R8, [R4,R5]
23A720:  STR.W           R6, [R4,R9]
23A724:  MOV             R2, R4
23A726:  STR             R1, [R4,R5]
23A728:  MOVS            R1, #0
23A72A:  MOVS            R3, #1
23A72C:  BLX             j_INT123_synth_ntom_s32
23A730:  STR.W           R10, [R4,R9]
23A734:  ADDS            R1, R4, R5
23A736:  LDR             R2, [R4,R5]
23A738:  CMP             R2, #8
23A73A:  BCC             loc_23A754
23A73C:  ADD.W           R3, R10, R8
23A740:  MOVS            R5, #0
23A742:  LDR.W           R2, [R6,R5,LSL#3]
23A746:  STR.W           R2, [R3,R5,LSL#2]
23A74A:  ADDS            R5, #1
23A74C:  LDR             R2, [R1]
23A74E:  CMP.W           R5, R2,LSR#3
23A752:  BCC             loc_23A742
23A754:  ADD.W           R2, R8, R2,LSR#1
23A758:  STR             R2, [R1]
23A75A:  ADD.W           SP, SP, #0x800
23A75E:  POP.W           {R8-R10}
23A762:  POP             {R4-R7,PC}
