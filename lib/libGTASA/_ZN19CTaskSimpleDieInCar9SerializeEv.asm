; =========================================================
; Game Engine Function: _ZN19CTaskSimpleDieInCar9SerializeEv
; Address            : 0x4F2690 - 0x4F2746
; =========================================================

4F2690:  PUSH            {R4-R7,LR}
4F2692:  ADD             R7, SP, #0xC
4F2694:  PUSH.W          {R11}
4F2698:  MOV             R4, R0
4F269A:  LDR             R0, [R4]
4F269C:  LDR             R1, [R0,#0x14]
4F269E:  MOV             R0, R4
4F26A0:  BLX             R1
4F26A2:  MOV             R5, R0
4F26A4:  LDR             R0, =(UseDataFence_ptr - 0x4F26AA)
4F26A6:  ADD             R0, PC; UseDataFence_ptr
4F26A8:  LDR             R0, [R0]; UseDataFence
4F26AA:  LDRB            R0, [R0]
4F26AC:  CMP             R0, #0
4F26AE:  IT NE
4F26B0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F26B4:  MOVS            R0, #4; byte_count
4F26B6:  BLX             malloc
4F26BA:  MOV             R6, R0
4F26BC:  MOVS            R1, #byte_4; void *
4F26BE:  STR             R5, [R6]
4F26C0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F26C4:  MOV             R0, R6; p
4F26C6:  BLX             free
4F26CA:  LDR             R0, [R4]
4F26CC:  LDR             R1, [R0,#0x14]
4F26CE:  MOV             R0, R4
4F26D0:  BLX             R1
4F26D2:  CMP             R0, #0xD6
4F26D4:  BNE             loc_4F272E
4F26D6:  LDR             R0, =(UseDataFence_ptr - 0x4F26DE)
4F26D8:  LDR             R6, [R4,#8]
4F26DA:  ADD             R0, PC; UseDataFence_ptr
4F26DC:  LDR             R0, [R0]; UseDataFence
4F26DE:  LDRB            R0, [R0]
4F26E0:  CMP             R0, #0
4F26E2:  IT NE
4F26E4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F26E8:  MOVS            R0, #4; byte_count
4F26EA:  BLX             malloc
4F26EE:  MOV             R5, R0
4F26F0:  MOVS            R1, #byte_4; void *
4F26F2:  STR             R6, [R5]
4F26F4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F26F8:  MOV             R0, R5; p
4F26FA:  BLX             free
4F26FE:  LDR             R0, =(UseDataFence_ptr - 0x4F2706)
4F2700:  LDR             R5, [R4,#0xC]
4F2702:  ADD             R0, PC; UseDataFence_ptr
4F2704:  LDR             R0, [R0]; UseDataFence
4F2706:  LDRB            R0, [R0]
4F2708:  CMP             R0, #0
4F270A:  IT NE
4F270C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F2710:  MOVS            R0, #4; byte_count
4F2712:  BLX             malloc
4F2716:  MOV             R4, R0
4F2718:  MOVS            R1, #byte_4; void *
4F271A:  STR             R5, [R4]
4F271C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F2720:  MOV             R0, R4; p
4F2722:  POP.W           {R11}
4F2726:  POP.W           {R4-R7,LR}
4F272A:  B.W             j_free
4F272E:  LDR             R0, [R4]
4F2730:  LDR             R1, [R0,#0x14]
4F2732:  MOV             R0, R4
4F2734:  BLX             R1
4F2736:  MOV             R1, R0; int
4F2738:  MOVS            R0, #0xD6; int
4F273A:  POP.W           {R11}
4F273E:  POP.W           {R4-R7,LR}
4F2742:  B.W             sub_1941D4
