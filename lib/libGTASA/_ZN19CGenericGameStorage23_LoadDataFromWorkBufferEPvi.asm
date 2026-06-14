; =========================================================
; Game Engine Function: _ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi
; Address            : 0x4836D4 - 0x483790
; =========================================================

4836D4:  PUSH            {R4-R7,LR}
4836D6:  ADD             R7, SP, #0xC
4836D8:  PUSH.W          {R8,R9,R11}
4836DC:  MOV             R4, R1
4836DE:  LDR             R1, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x4836E8)
4836E0:  MOV             R5, R0
4836E2:  LDR             R0, =(TotalLoadSize_ptr - 0x4836EA)
4836E4:  ADD             R1, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
4836E6:  ADD             R0, PC; TotalLoadSize_ptr
4836E8:  LDR             R1, [R1]; CGenericGameStorage::ms_bFailed ...
4836EA:  LDR             R0, [R0]; TotalLoadSize
4836EC:  LDRB            R1, [R1]; CGenericGameStorage::ms_bFailed
4836EE:  LDR             R2, [R0]
4836F0:  CMP             R1, #0
4836F2:  ADD             R2, R4
4836F4:  STR             R2, [R0]
4836F6:  BEQ             loc_4836FC
4836F8:  MOVS            R6, #0
4836FA:  B               loc_483788
4836FC:  LDR             R0, =(UseDataFence_ptr - 0x483702)
4836FE:  ADD             R0, PC; UseDataFence_ptr
483700:  LDR             R0, [R0]; UseDataFence
483702:  LDRB            R0, [R0]
483704:  CMP             R0, #0
483706:  IT NE
483708:  BLXNE           j__Z13ReadDataFencev; ReadDataFence(void)
48370C:  CMP             R4, #1
48370E:  BLT             loc_483786
483710:  LDR             R0, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x483718)
483712:  LDR             R1, =(_ZN19CGenericGameStorage17ms_WorkBufferSizeE_ptr - 0x48371A)
483714:  ADD             R0, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
483716:  ADD             R1, PC; _ZN19CGenericGameStorage17ms_WorkBufferSizeE_ptr
483718:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos ...
48371A:  LDR             R1, [R1]; CGenericGameStorage::ms_WorkBufferSize ...
48371C:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos
48371E:  LDR             R1, [R1]; CGenericGameStorage::ms_WorkBufferSize
483720:  ADDS            R2, R0, R4; int
483722:  CMP             R2, R1
483724:  BLS             loc_483768
483726:  LDR             R1, =(UseDataFence_ptr - 0x48372E)
483728:  MOVS            R6, #0
48372A:  ADD             R1, PC; UseDataFence_ptr
48372C:  LDR             R1, [R1]; UseDataFence
48372E:  LDRB.W          R9, [R1]
483732:  STRB            R6, [R1]
483734:  MOVW            R1, #0xFDE8
483738:  SUB.W           R8, R1, R0
48373C:  MOV             R0, R5; this
48373E:  MOV             R1, R8; void *
483740:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
483744:  CMP             R0, #1
483746:  BNE             loc_483788
483748:  LDR             R0, =(UseDataFence_ptr - 0x48374E)
48374A:  ADD             R0, PC; UseDataFence_ptr
48374C:  LDR             R0, [R0]; UseDataFence ; this
48374E:  STRB.W          R9, [R0]
483752:  BLX             j__ZN19CGenericGameStorage14LoadWorkBufferEv; CGenericGameStorage::LoadWorkBuffer(void)
483756:  CMP             R0, #1
483758:  BNE             loc_4836F8
48375A:  LDR             R0, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x483766)
48375C:  SUB.W           R4, R4, R8
483760:  ADD             R5, R8
483762:  ADD             R0, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
483764:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos ...
483766:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos
483768:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x483770)
48376A:  MOV             R2, R4; size_t
48376C:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
48376E:  LDR             R1, [R1]; CGenericGameStorage::_ms_WorkBuffer ...
483770:  LDR             R1, [R1]; CGenericGameStorage::_ms_WorkBuffer
483772:  ADD             R1, R0; void *
483774:  MOV             R0, R5; void *
483776:  BLX             memcpy_1
48377A:  LDR             R0, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x483780)
48377C:  ADD             R0, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
48377E:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos ...
483780:  LDR             R1, [R0]; CGenericGameStorage::ms_WorkBufferPos
483782:  ADD             R1, R4
483784:  STR             R1, [R0]; CGenericGameStorage::ms_WorkBufferPos
483786:  MOVS            R6, #1
483788:  MOV             R0, R6
48378A:  POP.W           {R8,R9,R11}
48378E:  POP             {R4-R7,PC}
