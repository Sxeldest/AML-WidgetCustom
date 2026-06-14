; =========================================================
; Game Engine Function: INT123_frame_offset
; Address            : 0x226608 - 0x2266E8
; =========================================================

226608:  PUSH            {R4,R5,R7,LR}
22660A:  ADD             R7, SP, #8
22660C:  MOVW            R2, #0x92D0
226610:  LDR             R2, [R0,R2]
226612:  CMP             R2, #3
226614:  BCS             loc_22662A
226616:  MOVW            R3, #0x92D8
22661A:  LDR             R3, [R0,R3]
22661C:  CMP             R3, #1
22661E:  BEQ             loc_22669C
226620:  CMP             R3, #2
226622:  BNE             loc_2266A2
226624:  MOV.W           R0, #0x480
226628:  B               loc_2266C2
22662A:  BNE             loc_2266D0
22662C:  CMP             R1, #1
22662E:  BLT             loc_2266E4
226630:  MOVW            R2, #0x9190
226634:  MOVW            R3, #0x92D8
226638:  LDR             R2, [R0,R2]
22663A:  MOVW            R5, #0x92CC
22663E:  LDR             R3, [R0,R3]
226640:  ADD.W           R12, R0, R5
226644:  MOVW            R5, #0x92C8
226648:  ADD.W           LR, R0, R5
22664C:  MOV.W           R4, #0x4000
226650:  MOVS            R0, #0
226652:  CMP             R3, #1
226654:  BNE             loc_226666
226656:  B               loc_226670
226658:  ASRS            R5, R5, #0xF
22665A:  SUBS            R1, R1, R5
22665C:  SUB.W           R4, R4, R5,LSL#15
226660:  ADDS            R0, #1
226662:  CMP             R3, #1
226664:  BEQ             loc_226670
226666:  CMP             R3, #2
226668:  BNE             loc_226676
22666A:  MOV.W           R5, #0x480
22666E:  B               loc_22668A
226670:  MOV.W           R5, #0x180
226674:  B               loc_22668A
226676:  LDR.W           R5, [LR]
22667A:  CMP             R5, #0
22667C:  ITT EQ
22667E:  LDREQ.W         R5, [R12]
226682:  CMPEQ           R5, #0
226684:  BEQ             loc_22666A
226686:  MOV.W           R5, #0x240
22668A:  MLA.W           R4, R5, R2, R4
22668E:  ASRS            R5, R4, #0x1F
226690:  ADD.W           R5, R4, R5,LSR#17
226694:  CMP.W           R1, R5,ASR#15
226698:  BGE             loc_226658
22669A:  POP             {R4,R5,R7,PC}
22669C:  MOV.W           R0, #0x180
2266A0:  B               loc_2266C2
2266A2:  MOVW            R3, #0x92C8
2266A6:  LDR             R3, [R0,R3]
2266A8:  CBZ             R3, loc_2266B0
2266AA:  MOV.W           R0, #0x240
2266AE:  B               loc_2266C2
2266B0:  MOVW            R3, #0x92CC
2266B4:  LDR             R3, [R0,R3]
2266B6:  MOV.W           R0, #0x480
2266BA:  CMP             R3, #0
2266BC:  IT NE
2266BE:  MOVNE.W         R0, #0x240
2266C2:  LSR.W           R2, R0, R2
2266C6:  MOV             R0, R1
2266C8:  MOV             R1, R2
2266CA:  BLX             __aeabi_idiv
2266CE:  POP             {R4,R5,R7,PC}
2266D0:  LDR             R0, =(off_677664 - 0x2266DC)
2266D2:  MOVW            R2, #0x312
2266D6:  LDR             R1, =(aCProjectsOswra_6 - 0x2266DE); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2266D8:  ADD             R0, PC; off_677664
2266DA:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
2266DC:  LDR             R0, [R0]
2266DE:  LDR             R0, [R0]; stream
2266E0:  BLX             fprintf
2266E4:  MOVS            R0, #0
2266E6:  POP             {R4,R5,R7,PC}
