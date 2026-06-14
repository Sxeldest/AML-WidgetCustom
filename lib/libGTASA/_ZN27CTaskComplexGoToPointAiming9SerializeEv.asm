; =========================================================
; Game Engine Function: _ZN27CTaskComplexGoToPointAiming9SerializeEv
; Address            : 0x52782C - 0x5279E0
; =========================================================

52782C:  PUSH            {R4-R7,LR}
52782E:  ADD             R7, SP, #0xC
527830:  PUSH.W          {R11}
527834:  MOV             R4, R0
527836:  LDR             R0, [R4]
527838:  LDR             R1, [R0,#0x14]
52783A:  MOV             R0, R4
52783C:  BLX             R1
52783E:  MOV             R5, R0
527840:  LDR             R0, =(UseDataFence_ptr - 0x527846)
527842:  ADD             R0, PC; UseDataFence_ptr
527844:  LDR             R0, [R0]; UseDataFence
527846:  LDRB            R0, [R0]
527848:  CMP             R0, #0
52784A:  IT NE
52784C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527850:  MOVS            R0, #4; byte_count
527852:  BLX             malloc
527856:  MOV             R6, R0
527858:  MOVS            R1, #byte_4; void *
52785A:  STR             R5, [R6]
52785C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527860:  MOV             R0, R6; p
527862:  BLX             free
527866:  LDR             R0, [R4]
527868:  LDR             R1, [R0,#0x14]
52786A:  MOV             R0, R4
52786C:  BLX             R1
52786E:  CMP.W           R0, #0x39C
527872:  BNE             loc_5278F2
527874:  LDR             R0, =(UseDataFence_ptr - 0x52787A)
527876:  ADD             R0, PC; UseDataFence_ptr
527878:  LDR             R0, [R0]; UseDataFence
52787A:  LDRB            R0, [R0]
52787C:  CMP             R0, #0
52787E:  IT NE
527880:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527884:  MOVS            R0, #4; byte_count
527886:  BLX             malloc
52788A:  MOV             R5, R0
52788C:  LDR             R0, [R4,#0xC]
52788E:  STR             R0, [R5]
527890:  MOV             R0, R5; this
527892:  MOVS            R1, #byte_4; void *
527894:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527898:  MOV             R0, R5; p
52789A:  BLX             free
52789E:  LDR             R0, [R4,#0x10]
5278A0:  CBZ             R0, loc_52790C
5278A2:  LDR             R1, =(UseDataFence_ptr - 0x5278AC)
5278A4:  LDRB.W          R0, [R0,#0x3A]
5278A8:  ADD             R1, PC; UseDataFence_ptr
5278AA:  AND.W           R6, R0, #7
5278AE:  LDR             R1, [R1]; UseDataFence
5278B0:  LDRB            R1, [R1]
5278B2:  CMP             R1, #0
5278B4:  IT NE
5278B6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5278BA:  MOVS            R0, #4; byte_count
5278BC:  BLX             malloc
5278C0:  MOV             R5, R0
5278C2:  MOVS            R1, #byte_4; void *
5278C4:  STR             R6, [R5]
5278C6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5278CA:  MOV             R0, R5; p
5278CC:  BLX             free
5278D0:  LDR             R0, [R4,#0x10]; CObject *
5278D2:  LDRB.W          R1, [R0,#0x3A]
5278D6:  AND.W           R1, R1, #7
5278DA:  CMP             R1, #2
5278DC:  BEQ             loc_527934
5278DE:  CMP             R1, #4
5278E0:  BEQ             loc_527940
5278E2:  CMP             R1, #3
5278E4:  BNE             loc_52796C
5278E6:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
5278EA:  MOV             R5, R0
5278EC:  LDR             R0, =(UseDataFence_ptr - 0x5278F2)
5278EE:  ADD             R0, PC; UseDataFence_ptr
5278F0:  B               loc_52794A
5278F2:  LDR             R0, [R4]
5278F4:  LDR             R1, [R0,#0x14]
5278F6:  MOV             R0, R4
5278F8:  BLX             R1
5278FA:  MOV             R1, R0; int
5278FC:  MOV.W           R0, #0x39C; int
527900:  POP.W           {R11}
527904:  POP.W           {R4-R7,LR}
527908:  B.W             sub_1941D4
52790C:  LDR             R0, =(UseDataFence_ptr - 0x527912)
52790E:  ADD             R0, PC; UseDataFence_ptr
527910:  LDR             R0, [R0]; UseDataFence
527912:  LDRB            R0, [R0]
527914:  CMP             R0, #0
527916:  IT NE
527918:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
52791C:  MOVS            R0, #4; byte_count
52791E:  BLX             malloc
527922:  MOV             R5, R0
527924:  MOVS            R0, #0
527926:  STR             R0, [R5]
527928:  MOV             R0, R5; this
52792A:  MOVS            R1, #byte_4; void *
52792C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527930:  MOV             R0, R5
527932:  B               loc_527968
527934:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
527938:  MOV             R5, R0
52793A:  LDR             R0, =(UseDataFence_ptr - 0x527940)
52793C:  ADD             R0, PC; UseDataFence_ptr
52793E:  B               loc_52794A
527940:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
527944:  MOV             R5, R0
527946:  LDR             R0, =(UseDataFence_ptr - 0x52794C)
527948:  ADD             R0, PC; UseDataFence_ptr
52794A:  LDR             R0, [R0]; UseDataFence
52794C:  LDRB            R0, [R0]
52794E:  CMP             R0, #0
527950:  IT NE
527952:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527956:  MOVS            R0, #4; byte_count
527958:  BLX             malloc
52795C:  MOV             R6, R0
52795E:  MOVS            R1, #byte_4; void *
527960:  STR             R5, [R6]
527962:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527966:  MOV             R0, R6; p
527968:  BLX             free
52796C:  LDR             R0, =(UseDataFence_ptr - 0x527972)
52796E:  ADD             R0, PC; UseDataFence_ptr
527970:  LDR             R0, [R0]; UseDataFence
527972:  LDRB            R0, [R0]
527974:  CMP             R0, #0
527976:  IT NE
527978:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
52797C:  MOVS            R0, #0xC; byte_count
52797E:  BLX             malloc
527982:  ADD.W           R1, R4, #0x14
527986:  MOV             R5, R0
527988:  LDR             R0, [R4,#0x1C]
52798A:  VLD1.8          {D16}, [R1]
52798E:  MOVS            R1, #(byte_9+3); void *
527990:  STR             R0, [R5,#8]
527992:  MOV             R0, R5; this
527994:  VST1.8          {D16}, [R5]
527998:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
52799C:  MOV             R0, R5; p
52799E:  BLX             free
5279A2:  LDR             R0, =(UseDataFence_ptr - 0x5279A8)
5279A4:  ADD             R0, PC; UseDataFence_ptr
5279A6:  LDR             R0, [R0]; UseDataFence
5279A8:  LDRB            R0, [R0]
5279AA:  CMP             R0, #0
5279AC:  IT NE
5279AE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5279B2:  MOVS            R0, #0xC; byte_count
5279B4:  BLX             malloc
5279B8:  ADD.W           R1, R4, #0x20 ; ' '
5279BC:  MOV             R5, R0
5279BE:  LDR             R0, [R4,#0x28]
5279C0:  VLD1.8          {D16}, [R1]
5279C4:  MOVS            R1, #(byte_9+3); void *
5279C6:  STR             R0, [R5,#8]
5279C8:  MOV             R0, R5; this
5279CA:  VST1.8          {D16}, [R5]
5279CE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5279D2:  MOV             R0, R5; p
5279D4:  POP.W           {R11}
5279D8:  POP.W           {R4-R7,LR}
5279DC:  B.W             j_free
