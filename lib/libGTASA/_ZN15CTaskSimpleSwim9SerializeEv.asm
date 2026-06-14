; =========================================================
; Game Engine Function: _ZN15CTaskSimpleSwim9SerializeEv
; Address            : 0x53C7EC - 0x53C8E6
; =========================================================

53C7EC:  PUSH            {R4-R7,LR}
53C7EE:  ADD             R7, SP, #0xC
53C7F0:  PUSH.W          {R11}
53C7F4:  MOV             R4, R0
53C7F6:  LDR             R0, [R4]
53C7F8:  LDR             R1, [R0,#0x14]
53C7FA:  MOV             R0, R4
53C7FC:  BLX             R1
53C7FE:  MOV             R5, R0
53C800:  LDR             R0, =(UseDataFence_ptr - 0x53C806)
53C802:  ADD             R0, PC; UseDataFence_ptr
53C804:  LDR             R0, [R0]; UseDataFence
53C806:  LDRB            R0, [R0]
53C808:  CMP             R0, #0
53C80A:  IT NE
53C80C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
53C810:  MOVS            R0, #4; byte_count
53C812:  BLX             malloc
53C816:  MOV             R6, R0
53C818:  MOVS            R1, #byte_4; void *
53C81A:  STR             R5, [R6]
53C81C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
53C820:  MOV             R0, R6; p
53C822:  BLX             free
53C826:  LDR             R0, [R4]
53C828:  LDR             R1, [R0,#0x14]
53C82A:  MOV             R0, R4
53C82C:  BLX             R1
53C82E:  CMP.W           R0, #0x518
53C832:  BNE             loc_53C862
53C834:  LDR             R0, [R4,#0x20]; CPed *
53C836:  CBZ             R0, loc_53C87C
53C838:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
53C83C:  MOV             R5, R0
53C83E:  LDR             R0, =(UseDataFence_ptr - 0x53C844)
53C840:  ADD             R0, PC; UseDataFence_ptr
53C842:  LDR             R0, [R0]; UseDataFence
53C844:  LDRB            R0, [R0]
53C846:  CMP             R0, #0
53C848:  IT NE
53C84A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
53C84E:  MOVS            R0, #4; byte_count
53C850:  BLX             malloc
53C854:  MOV             R6, R0
53C856:  MOVS            R1, #byte_4; void *
53C858:  STR             R5, [R6]
53C85A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
53C85E:  MOV             R0, R6
53C860:  B               loc_53C8A4
53C862:  LDR             R0, [R4]
53C864:  LDR             R1, [R0,#0x14]
53C866:  MOV             R0, R4
53C868:  BLX             R1
53C86A:  MOV             R1, R0; int
53C86C:  MOV.W           R0, #0x518; int
53C870:  POP.W           {R11}
53C874:  POP.W           {R4-R7,LR}
53C878:  B.W             sub_1941D4
53C87C:  LDR             R0, =(UseDataFence_ptr - 0x53C882)
53C87E:  ADD             R0, PC; UseDataFence_ptr
53C880:  LDR             R0, [R0]; UseDataFence
53C882:  LDRB            R0, [R0]
53C884:  CMP             R0, #0
53C886:  IT NE
53C888:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
53C88C:  MOVS            R0, #4; byte_count
53C88E:  BLX             malloc
53C892:  MOV             R5, R0
53C894:  MOV.W           R0, #0xFFFFFFFF
53C898:  STR             R0, [R5]
53C89A:  MOV             R0, R5; this
53C89C:  MOVS            R1, #byte_4; void *
53C89E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
53C8A2:  MOV             R0, R5; p
53C8A4:  BLX             free
53C8A8:  LDR             R0, =(UseDataFence_ptr - 0x53C8AE)
53C8AA:  ADD             R0, PC; UseDataFence_ptr
53C8AC:  LDR             R0, [R0]; UseDataFence
53C8AE:  LDRB            R0, [R0]
53C8B0:  CMP             R0, #0
53C8B2:  IT NE
53C8B4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
53C8B8:  MOVS            R0, #0xC; byte_count
53C8BA:  BLX             malloc
53C8BE:  ADD.W           R1, R4, #0x14
53C8C2:  MOV             R5, R0
53C8C4:  LDR             R0, [R4,#0x1C]
53C8C6:  VLD1.8          {D16}, [R1]
53C8CA:  MOVS            R1, #(byte_9+3); void *
53C8CC:  STR             R0, [R5,#8]
53C8CE:  MOV             R0, R5; this
53C8D0:  VST1.8          {D16}, [R5]
53C8D4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
53C8D8:  MOV             R0, R5; p
53C8DA:  POP.W           {R11}
53C8DE:  POP.W           {R4-R7,LR}
53C8E2:  B.W             j_free
