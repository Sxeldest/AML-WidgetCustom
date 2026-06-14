; =========================================================
; Game Engine Function: _ZN32CTaskComplexExtinguishFireOnFoot9SerializeEv
; Address            : 0x512784 - 0x512820
; =========================================================

512784:  PUSH            {R4-R7,LR}
512786:  ADD             R7, SP, #0xC
512788:  PUSH.W          {R11}
51278C:  MOV             R4, R0
51278E:  LDR             R0, [R4]
512790:  LDR             R1, [R0,#0x14]
512792:  MOV             R0, R4
512794:  BLX             R1
512796:  MOV             R5, R0
512798:  LDR             R0, =(UseDataFence_ptr - 0x51279E)
51279A:  ADD             R0, PC; UseDataFence_ptr
51279C:  LDR             R0, [R0]; UseDataFence
51279E:  LDRB            R0, [R0]
5127A0:  CMP             R0, #0
5127A2:  IT NE
5127A4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5127A8:  MOVS            R0, #4; byte_count
5127AA:  BLX             malloc
5127AE:  MOV             R6, R0
5127B0:  MOVS            R1, #byte_4; void *
5127B2:  STR             R5, [R6]
5127B4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5127B8:  MOV             R0, R6; p
5127BA:  BLX             free
5127BE:  LDR             R0, [R4]
5127C0:  LDR             R1, [R0,#0x14]
5127C2:  MOV             R0, R4
5127C4:  BLX             R1
5127C6:  CMP             R0, #0x6E ; 'n'
5127C8:  BNE             loc_512808
5127CA:  LDR             R0, =(UseDataFence_ptr - 0x5127D0)
5127CC:  ADD             R0, PC; UseDataFence_ptr
5127CE:  LDR             R0, [R0]; UseDataFence
5127D0:  LDRB            R0, [R0]
5127D2:  CMP             R0, #0
5127D4:  IT NE
5127D6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5127DA:  MOVS            R0, #0xC; byte_count
5127DC:  BLX             malloc
5127E0:  ADD.W           R1, R4, #0xC
5127E4:  MOV             R5, R0
5127E6:  LDR             R0, [R4,#0x14]
5127E8:  VLD1.8          {D16}, [R1]
5127EC:  MOVS            R1, #(byte_9+3); void *
5127EE:  STR             R0, [R5,#8]
5127F0:  MOV             R0, R5; this
5127F2:  VST1.8          {D16}, [R5]
5127F6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5127FA:  MOV             R0, R5; p
5127FC:  POP.W           {R11}
512800:  POP.W           {R4-R7,LR}
512804:  B.W             j_free
512808:  LDR             R0, [R4]
51280A:  LDR             R1, [R0,#0x14]
51280C:  MOV             R0, R4
51280E:  BLX             R1
512810:  MOV             R1, R0; int
512812:  MOVS            R0, #0x6E ; 'n'; int
512814:  POP.W           {R11}
512818:  POP.W           {R4-R7,LR}
51281C:  B.W             sub_1941D4
