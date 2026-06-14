; =========================================================
; Game Engine Function: _ZN28CTaskSimpleHitByGunFromFront9SerializeEv
; Address            : 0x4978F0 - 0x4979B4
; =========================================================

4978F0:  PUSH            {R4-R7,LR}
4978F2:  ADD             R7, SP, #0xC
4978F4:  PUSH.W          {R8-R10}
4978F8:  SUB             SP, SP, #0x88
4978FA:  MOV             R4, R0
4978FC:  LDR             R0, =(__stack_chk_guard_ptr - 0x497902)
4978FE:  ADD             R0, PC; __stack_chk_guard_ptr
497900:  LDR             R0, [R0]; __stack_chk_guard
497902:  LDR             R0, [R0]
497904:  STR             R0, [SP,#0xA0+var_1C]
497906:  LDR             R0, [R4]
497908:  LDR             R1, [R0,#0x14]
49790A:  MOV             R0, R4
49790C:  BLX             R1
49790E:  MOV             R8, R0
497910:  LDR             R0, =(UseDataFence_ptr - 0x497916)
497912:  ADD             R0, PC; UseDataFence_ptr
497914:  LDR             R0, [R0]; UseDataFence
497916:  LDRB            R5, [R0]
497918:  CBZ             R5, loc_49795C
49791A:  LDR             R0, =(currentSaveFenceCount_ptr - 0x497926)
49791C:  MOVS            R3, #0
49791E:  LDR             R1, =(UseDataFence_ptr - 0x497928)
497920:  LDR             R2, =(DataFence_ptr - 0x49792A)
497922:  ADD             R0, PC; currentSaveFenceCount_ptr
497924:  ADD             R1, PC; UseDataFence_ptr
497926:  ADD             R2, PC; DataFence_ptr
497928:  LDR             R0, [R0]; currentSaveFenceCount
49792A:  LDR.W           R9, [R1]; UseDataFence
49792E:  LDR             R1, [R2]; DataFence
497930:  LDR             R2, [R0]
497932:  STRB.W          R3, [R9]
497936:  LDRH            R1, [R1]
497938:  ADDS            R3, R2, #1
49793A:  STR             R3, [R0]
49793C:  MOVS            R0, #2; byte_count
49793E:  ADD.W           R10, R2, R1
497942:  BLX             malloc
497946:  MOV             R6, R0
497948:  MOVS            R1, #(stderr+2); void *
49794A:  STRH.W          R10, [R6]
49794E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497952:  MOV             R0, R6; p
497954:  BLX             free
497958:  STRB.W          R5, [R9]
49795C:  MOVS            R0, #4; byte_count
49795E:  BLX             malloc
497962:  MOV             R6, R0
497964:  MOVS            R1, #byte_4; void *
497966:  STR.W           R8, [R6]
49796A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49796E:  MOV             R0, R6; p
497970:  BLX             free
497974:  LDR             R0, [R4]
497976:  LDR             R1, [R0,#0x14]
497978:  MOV             R0, R4
49797A:  BLX             R1
49797C:  CMP.W           R0, #0x198
497980:  BEQ             loc_49799A
497982:  LDR             R0, [R4]
497984:  LDR             R1, [R0,#0x14]
497986:  MOV             R0, R4
497988:  BLX             R1
49798A:  LDR             R1, =(aErrorClassDIsN - 0x497998); "ERROR - class %d is not type %d seriali"...
49798C:  MOV             R2, R0
49798E:  ADD             R0, SP, #0xA0+var_9C
497990:  MOV.W           R3, #0x198
497994:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
497996:  BL              sub_5E6BC0
49799A:  LDR             R0, =(__stack_chk_guard_ptr - 0x4979A2)
49799C:  LDR             R1, [SP,#0xA0+var_1C]
49799E:  ADD             R0, PC; __stack_chk_guard_ptr
4979A0:  LDR             R0, [R0]; __stack_chk_guard
4979A2:  LDR             R0, [R0]
4979A4:  SUBS            R0, R0, R1
4979A6:  ITTT EQ
4979A8:  ADDEQ           SP, SP, #0x88
4979AA:  POPEQ.W         {R8-R10}
4979AE:  POPEQ           {R4-R7,PC}
4979B0:  BLX             __stack_chk_fail
