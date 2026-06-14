; =========================================================
; Game Engine Function: _ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi
; Address            : 0x483604 - 0x4836B2
; =========================================================

483604:  PUSH            {R4-R7,LR}
483606:  ADD             R7, SP, #0xC
483608:  PUSH.W          {R8,R9,R11}
48360C:  MOV             R5, R0
48360E:  LDR             R0, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x483616)
483610:  MOV             R4, R1
483612:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
483614:  LDR             R0, [R0]; CGenericGameStorage::ms_bFailed ...
483616:  LDRB            R0, [R0]; CGenericGameStorage::ms_bFailed
483618:  CBZ             R0, loc_48361E
48361A:  MOVS            R6, #0
48361C:  B               loc_4836AA
48361E:  LDR             R0, =(UseDataFence_ptr - 0x483624)
483620:  ADD             R0, PC; UseDataFence_ptr
483622:  LDR             R0, [R0]; UseDataFence
483624:  LDRB            R0, [R0]
483626:  CMP             R0, #0
483628:  IT NE
48362A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
48362E:  CMP             R4, #1
483630:  BLT             loc_4836A8
483632:  LDR             R0, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x48363C)
483634:  MOVW            R2, #0xFDE9; int
483638:  ADD             R0, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
48363A:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos ...
48363C:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos
48363E:  ADDS            R1, R0, R4
483640:  CMP             R1, R2
483642:  BCC             loc_48368A
483644:  LDR             R1, =(UseDataFence_ptr - 0x48364C)
483646:  MOVS            R6, #0
483648:  ADD             R1, PC; UseDataFence_ptr
48364A:  LDR             R1, [R1]; UseDataFence
48364C:  LDRB.W          R9, [R1]
483650:  STRB            R6, [R1]
483652:  MOVW            R1, #0xFDE8
483656:  SUB.W           R8, R1, R0
48365A:  MOV             R0, R5; this
48365C:  MOV             R1, R8; void *
48365E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
483662:  CMP             R0, #1
483664:  BNE             loc_4836AA
483666:  LDR             R0, =(UseDataFence_ptr - 0x48366E)
483668:  MOVS            R6, #0
48366A:  ADD             R0, PC; UseDataFence_ptr
48366C:  LDR             R0, [R0]; UseDataFence
48366E:  STRB.W          R9, [R0]
483672:  MOVS            R0, #0; this
483674:  BLX             j__ZN19CGenericGameStorage14SaveWorkBufferEb; CGenericGameStorage::SaveWorkBuffer(bool)
483678:  CMP             R0, #1
48367A:  BNE             loc_4836AA
48367C:  LDR             R0, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x483688)
48367E:  SUB.W           R4, R4, R8
483682:  ADD             R5, R8
483684:  ADD             R0, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
483686:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos ...
483688:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos
48368A:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x483692)
48368C:  MOV             R2, R4; size_t
48368E:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
483690:  LDR             R1, [R1]; CGenericGameStorage::_ms_WorkBuffer ...
483692:  LDR             R1, [R1]; CGenericGameStorage::_ms_WorkBuffer
483694:  ADD             R0, R1; void *
483696:  MOV             R1, R5; void *
483698:  BLX             memcpy_1
48369C:  LDR             R0, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x4836A2)
48369E:  ADD             R0, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
4836A0:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos ...
4836A2:  LDR             R1, [R0]; CGenericGameStorage::ms_WorkBufferPos
4836A4:  ADD             R1, R4
4836A6:  STR             R1, [R0]; CGenericGameStorage::ms_WorkBufferPos
4836A8:  MOVS            R6, #1
4836AA:  MOV             R0, R6
4836AC:  POP.W           {R8,R9,R11}
4836B0:  POP             {R4-R7,PC}
