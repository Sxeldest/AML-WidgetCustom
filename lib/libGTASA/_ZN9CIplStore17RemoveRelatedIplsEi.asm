; =========================================================
; Game Engine Function: _ZN9CIplStore17RemoveRelatedIplsEi
; Address            : 0x281630 - 0x28168A
; =========================================================

281630:  PUSH            {R4-R7,LR}
281632:  ADD             R7, SP, #0xC
281634:  PUSH.W          {R8,R9,R11}
281638:  MOV             R4, R0
28163A:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x281640)
28163C:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
28163E:  LDR             R0, [R0]; CIplStore::ms_pPool ...
281640:  LDR             R0, [R0]; CIplStore::ms_pPool
281642:  LDR             R1, [R0,#8]
281644:  CMP             R1, #1
281646:  BLT             loc_281684
281648:  LDR             R1, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x281656)
28164A:  MOVS            R5, #0
28164C:  MOVS            R6, #0x2A ; '*'
28164E:  MOVW            R8, #0x62A7
281652:  ADD             R1, PC; _ZN9CIplStore8ms_pPoolE_ptr
281654:  LDR.W           R9, [R1]; CIplStore::ms_pPool ...
281658:  LDR             R1, [R0,#4]
28165A:  LDRSB           R1, [R1,R5]
28165C:  CMP             R1, #0
28165E:  BLT             loc_28167A
281660:  LDR             R1, [R0]
281662:  ADDS            R2, R1, R6
281664:  CMP             R2, #0x2A ; '*'
281666:  BEQ             loc_28167A
281668:  LDRSH           R1, [R1,R6]; int
28166A:  CMP             R1, R4
28166C:  BNE             loc_28167A
28166E:  ADD.W           R0, R5, R8; this
281672:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
281676:  LDR.W           R0, [R9]; CIplStore::ms_pPool
28167A:  LDR             R1, [R0,#8]
28167C:  ADDS            R5, #1
28167E:  ADDS            R6, #0x34 ; '4'
281680:  CMP             R5, R1
281682:  BLT             loc_281658
281684:  POP.W           {R8,R9,R11}
281688:  POP             {R4-R7,PC}
