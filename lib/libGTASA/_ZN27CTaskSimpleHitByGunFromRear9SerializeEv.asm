; =========================================================
; Game Engine Function: _ZN27CTaskSimpleHitByGunFromRear9SerializeEv
; Address            : 0x4977B8 - 0x49787E
; =========================================================

4977B8:  PUSH            {R4-R7,LR}
4977BA:  ADD             R7, SP, #0xC
4977BC:  PUSH.W          {R8-R10}
4977C0:  SUB             SP, SP, #0x88
4977C2:  MOV             R4, R0
4977C4:  LDR             R0, =(__stack_chk_guard_ptr - 0x4977CA)
4977C6:  ADD             R0, PC; __stack_chk_guard_ptr
4977C8:  LDR             R0, [R0]; __stack_chk_guard
4977CA:  LDR             R0, [R0]
4977CC:  STR             R0, [SP,#0xA0+var_1C]
4977CE:  LDR             R0, [R4]
4977D0:  LDR             R1, [R0,#0x14]
4977D2:  MOV             R0, R4
4977D4:  BLX             R1
4977D6:  MOV             R8, R0
4977D8:  LDR             R0, =(UseDataFence_ptr - 0x4977DE)
4977DA:  ADD             R0, PC; UseDataFence_ptr
4977DC:  LDR             R0, [R0]; UseDataFence
4977DE:  LDRB            R5, [R0]
4977E0:  CBZ             R5, loc_497824
4977E2:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4977EE)
4977E4:  MOVS            R3, #0
4977E6:  LDR             R1, =(UseDataFence_ptr - 0x4977F0)
4977E8:  LDR             R2, =(DataFence_ptr - 0x4977F2)
4977EA:  ADD             R0, PC; currentSaveFenceCount_ptr
4977EC:  ADD             R1, PC; UseDataFence_ptr
4977EE:  ADD             R2, PC; DataFence_ptr
4977F0:  LDR             R0, [R0]; currentSaveFenceCount
4977F2:  LDR.W           R9, [R1]; UseDataFence
4977F6:  LDR             R1, [R2]; DataFence
4977F8:  LDR             R2, [R0]
4977FA:  STRB.W          R3, [R9]
4977FE:  LDRH            R1, [R1]
497800:  ADDS            R3, R2, #1
497802:  STR             R3, [R0]
497804:  MOVS            R0, #2; byte_count
497806:  ADD.W           R10, R2, R1
49780A:  BLX             malloc
49780E:  MOV             R6, R0
497810:  MOVS            R1, #(stderr+2); void *
497812:  STRH.W          R10, [R6]
497816:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49781A:  MOV             R0, R6; p
49781C:  BLX             free
497820:  STRB.W          R5, [R9]
497824:  MOVS            R0, #4; byte_count
497826:  BLX             malloc
49782A:  MOV             R6, R0
49782C:  MOVS            R1, #byte_4; void *
49782E:  STR.W           R8, [R6]
497832:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497836:  MOV             R0, R6; p
497838:  BLX             free
49783C:  LDR             R0, [R4]
49783E:  LDR             R1, [R0,#0x14]
497840:  MOV             R0, R4
497842:  BLX             R1
497844:  MOVW            R1, #0x197
497848:  CMP             R0, R1
49784A:  BEQ             loc_497864
49784C:  LDR             R0, [R4]
49784E:  LDR             R1, [R0,#0x14]
497850:  MOV             R0, R4
497852:  BLX             R1
497854:  LDR             R1, =(aErrorClassDIsN - 0x497862); "ERROR - class %d is not type %d seriali"...
497856:  MOV             R2, R0
497858:  ADD             R0, SP, #0xA0+var_9C
49785A:  MOVW            R3, #0x197
49785E:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
497860:  BL              sub_5E6BC0
497864:  LDR             R0, =(__stack_chk_guard_ptr - 0x49786C)
497866:  LDR             R1, [SP,#0xA0+var_1C]
497868:  ADD             R0, PC; __stack_chk_guard_ptr
49786A:  LDR             R0, [R0]; __stack_chk_guard
49786C:  LDR             R0, [R0]
49786E:  SUBS            R0, R0, R1
497870:  ITTT EQ
497872:  ADDEQ           SP, SP, #0x88
497874:  POPEQ.W         {R8-R10}
497878:  POPEQ           {R4-R7,PC}
49787A:  BLX             __stack_chk_fail
