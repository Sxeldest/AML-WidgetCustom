; =========================================================
; Game Engine Function: INT123_synth_ntom_8bit_mono
; Address            : 0x2376D8 - 0x237760
; =========================================================

2376D8:  PUSH            {R4-R7,LR}
2376DA:  ADD             R7, SP, #0xC
2376DC:  PUSH.W          {R8-R11}
2376E0:  SUB.W           SP, SP, #0x204
2376E4:  MOV             R4, R1
2376E6:  LDR             R1, =(__stack_chk_guard_ptr - 0x2376F4)
2376E8:  MOVW            R10, #0xB2A0
2376EC:  MOVW            R11, #0xB2A8
2376F0:  ADD             R1, PC; __stack_chk_guard_ptr
2376F2:  MOV             R6, SP
2376F4:  MOVS            R5, #0
2376F6:  MOV             R2, R4
2376F8:  LDR             R1, [R1]; __stack_chk_guard
2376FA:  MOVS            R3, #1
2376FC:  LDR             R1, [R1]
2376FE:  STR             R1, [SP,#0x220+var_20]
237700:  MOVS            R1, #0
237702:  LDR.W           R9, [R4,R10]
237706:  LDR.W           R8, [R4,R11]
23770A:  STR.W           R6, [R4,R10]
23770E:  STR.W           R5, [R4,R11]
237712:  BLX             j_INT123_synth_ntom_8bit
237716:  STR.W           R9, [R4,R10]
23771A:  ADD.W           R1, R4, R11
23771E:  LDR.W           R2, [R4,R11]
237722:  CMP             R2, #2
237724:  BCC             loc_23773E
237726:  ADD.W           R2, R9, R8
23772A:  MOVS            R3, #0
23772C:  LDRB.W          R5, [R6,R3,LSL#1]
237730:  STRB            R5, [R2,R3]
237732:  ADDS            R3, #1
237734:  LDR             R5, [R1]
237736:  CMP.W           R3, R5,LSR#1
23773A:  BCC             loc_23772C
23773C:  LSRS            R5, R5, #1
23773E:  ADD.W           R2, R5, R8
237742:  STR             R2, [R1]
237744:  LDR             R1, =(__stack_chk_guard_ptr - 0x23774C)
237746:  LDR             R2, [SP,#0x220+var_20]
237748:  ADD             R1, PC; __stack_chk_guard_ptr
23774A:  LDR             R1, [R1]; __stack_chk_guard
23774C:  LDR             R1, [R1]
23774E:  SUBS            R1, R1, R2
237750:  ITTT EQ
237752:  ADDEQ.W         SP, SP, #0x204
237756:  POPEQ.W         {R8-R11}
23775A:  POPEQ           {R4-R7,PC}
23775C:  BLX             __stack_chk_fail
