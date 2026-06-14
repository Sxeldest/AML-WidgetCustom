; =========================================================
; Game Engine Function: _ZN29CTaskComplexProstituteSolicit9SerializeEv
; Address            : 0x51C6C4 - 0x51C78A
; =========================================================

51C6C4:  PUSH            {R4-R7,LR}
51C6C6:  ADD             R7, SP, #0xC
51C6C8:  PUSH.W          {R11}
51C6CC:  MOV             R4, R0
51C6CE:  LDR             R0, [R4]
51C6D0:  LDR             R1, [R0,#0x14]
51C6D2:  MOV             R0, R4
51C6D4:  BLX             R1
51C6D6:  MOV             R5, R0
51C6D8:  LDR             R0, =(UseDataFence_ptr - 0x51C6DE)
51C6DA:  ADD             R0, PC; UseDataFence_ptr
51C6DC:  LDR             R0, [R0]; UseDataFence
51C6DE:  LDRB            R0, [R0]
51C6E0:  CMP             R0, #0
51C6E2:  IT NE
51C6E4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
51C6E8:  MOVS            R0, #4; byte_count
51C6EA:  BLX             malloc
51C6EE:  MOV             R6, R0
51C6F0:  MOVS            R1, #byte_4; void *
51C6F2:  STR             R5, [R6]
51C6F4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
51C6F8:  MOV             R0, R6; p
51C6FA:  BLX             free
51C6FE:  LDR             R0, [R4]
51C700:  LDR             R1, [R0,#0x14]
51C702:  MOV             R0, R4
51C704:  BLX             R1
51C706:  MOVW            R1, #0x51D
51C70A:  CMP             R0, R1
51C70C:  BNE             loc_51C73C
51C70E:  LDR             R0, [R4,#0xC]; CPed *
51C710:  CBZ             R0, loc_51C756
51C712:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
51C716:  MOV             R4, R0
51C718:  LDR             R0, =(UseDataFence_ptr - 0x51C71E)
51C71A:  ADD             R0, PC; UseDataFence_ptr
51C71C:  LDR             R0, [R0]; UseDataFence
51C71E:  LDRB            R0, [R0]
51C720:  CMP             R0, #0
51C722:  IT NE
51C724:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
51C728:  MOVS            R0, #4; byte_count
51C72A:  BLX             malloc
51C72E:  MOV             R5, R0
51C730:  MOVS            R1, #byte_4; void *
51C732:  STR             R4, [R5]
51C734:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
51C738:  MOV             R0, R5
51C73A:  B               loc_51C77E
51C73C:  LDR             R0, [R4]
51C73E:  LDR             R1, [R0,#0x14]
51C740:  MOV             R0, R4
51C742:  BLX             R1
51C744:  MOV             R1, R0; int
51C746:  MOVW            R0, #0x51D; int
51C74A:  POP.W           {R11}
51C74E:  POP.W           {R4-R7,LR}
51C752:  B.W             sub_1941D4
51C756:  LDR             R0, =(UseDataFence_ptr - 0x51C75C)
51C758:  ADD             R0, PC; UseDataFence_ptr
51C75A:  LDR             R0, [R0]; UseDataFence
51C75C:  LDRB            R0, [R0]
51C75E:  CMP             R0, #0
51C760:  IT NE
51C762:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
51C766:  MOVS            R0, #4; byte_count
51C768:  BLX             malloc
51C76C:  MOV             R4, R0
51C76E:  MOV.W           R0, #0xFFFFFFFF
51C772:  STR             R0, [R4]
51C774:  MOV             R0, R4; this
51C776:  MOVS            R1, #byte_4; void *
51C778:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
51C77C:  MOV             R0, R4; p
51C77E:  POP.W           {R11}
51C782:  POP.W           {R4-R7,LR}
51C786:  B.W             j_free
