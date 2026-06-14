; =========================================================
; Game Engine Function: _ZN23CTaskSimpleHitFromRight9SerializeEv
; Address            : 0x497684 - 0x497748
; =========================================================

497684:  PUSH            {R4-R7,LR}
497686:  ADD             R7, SP, #0xC
497688:  PUSH.W          {R8-R10}
49768C:  SUB             SP, SP, #0x88
49768E:  MOV             R4, R0
497690:  LDR             R0, =(__stack_chk_guard_ptr - 0x497696)
497692:  ADD             R0, PC; __stack_chk_guard_ptr
497694:  LDR             R0, [R0]; __stack_chk_guard
497696:  LDR             R0, [R0]
497698:  STR             R0, [SP,#0xA0+var_1C]
49769A:  LDR             R0, [R4]
49769C:  LDR             R1, [R0,#0x14]
49769E:  MOV             R0, R4
4976A0:  BLX             R1
4976A2:  MOV             R8, R0
4976A4:  LDR             R0, =(UseDataFence_ptr - 0x4976AA)
4976A6:  ADD             R0, PC; UseDataFence_ptr
4976A8:  LDR             R0, [R0]; UseDataFence
4976AA:  LDRB            R5, [R0]
4976AC:  CBZ             R5, loc_4976F0
4976AE:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4976BA)
4976B0:  MOVS            R3, #0
4976B2:  LDR             R1, =(UseDataFence_ptr - 0x4976BC)
4976B4:  LDR             R2, =(DataFence_ptr - 0x4976BE)
4976B6:  ADD             R0, PC; currentSaveFenceCount_ptr
4976B8:  ADD             R1, PC; UseDataFence_ptr
4976BA:  ADD             R2, PC; DataFence_ptr
4976BC:  LDR             R0, [R0]; currentSaveFenceCount
4976BE:  LDR.W           R9, [R1]; UseDataFence
4976C2:  LDR             R1, [R2]; DataFence
4976C4:  LDR             R2, [R0]
4976C6:  STRB.W          R3, [R9]
4976CA:  LDRH            R1, [R1]
4976CC:  ADDS            R3, R2, #1
4976CE:  STR             R3, [R0]
4976D0:  MOVS            R0, #2; byte_count
4976D2:  ADD.W           R10, R2, R1
4976D6:  BLX             malloc
4976DA:  MOV             R6, R0
4976DC:  MOVS            R1, #(stderr+2); void *
4976DE:  STRH.W          R10, [R6]
4976E2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4976E6:  MOV             R0, R6; p
4976E8:  BLX             free
4976EC:  STRB.W          R5, [R9]
4976F0:  MOVS            R0, #4; byte_count
4976F2:  BLX             malloc
4976F6:  MOV             R6, R0
4976F8:  MOVS            R1, #byte_4; void *
4976FA:  STR.W           R8, [R6]
4976FE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497702:  MOV             R0, R6; p
497704:  BLX             free
497708:  LDR             R0, [R4]
49770A:  LDR             R1, [R0,#0x14]
49770C:  MOV             R0, R4
49770E:  BLX             R1
497710:  CMP.W           R0, #0x196
497714:  BEQ             loc_49772E
497716:  LDR             R0, [R4]
497718:  LDR             R1, [R0,#0x14]
49771A:  MOV             R0, R4
49771C:  BLX             R1
49771E:  LDR             R1, =(aErrorClassDIsN - 0x49772C); "ERROR - class %d is not type %d seriali"...
497720:  MOV             R2, R0
497722:  ADD             R0, SP, #0xA0+var_9C
497724:  MOV.W           R3, #0x196
497728:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
49772A:  BL              sub_5E6BC0
49772E:  LDR             R0, =(__stack_chk_guard_ptr - 0x497736)
497730:  LDR             R1, [SP,#0xA0+var_1C]
497732:  ADD             R0, PC; __stack_chk_guard_ptr
497734:  LDR             R0, [R0]; __stack_chk_guard
497736:  LDR             R0, [R0]
497738:  SUBS            R0, R0, R1
49773A:  ITTT EQ
49773C:  ADDEQ           SP, SP, #0x88
49773E:  POPEQ.W         {R8-R10}
497742:  POPEQ           {R4-R7,PC}
497744:  BLX             __stack_chk_fail
