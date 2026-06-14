; =========================================================
; Game Engine Function: _ZN30CTaskComplexPlayHandSignalAnim9SerializeEv
; Address            : 0x4D85E4 - 0x4D86A2
; =========================================================

4D85E4:  PUSH            {R4-R7,LR}
4D85E6:  ADD             R7, SP, #0xC
4D85E8:  PUSH.W          {R11}
4D85EC:  MOV             R4, R0
4D85EE:  LDR             R0, [R4]
4D85F0:  LDR             R1, [R0,#0x14]
4D85F2:  MOV             R0, R4
4D85F4:  BLX             R1
4D85F6:  MOV             R5, R0
4D85F8:  LDR             R0, =(UseDataFence_ptr - 0x4D85FE)
4D85FA:  ADD             R0, PC; UseDataFence_ptr
4D85FC:  LDR             R0, [R0]; UseDataFence
4D85FE:  LDRB            R0, [R0]
4D8600:  CMP             R0, #0
4D8602:  IT NE
4D8604:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4D8608:  MOVS            R0, #4; byte_count
4D860A:  BLX             malloc
4D860E:  MOV             R6, R0
4D8610:  MOVS            R1, #byte_4; void *
4D8612:  STR             R5, [R6]
4D8614:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4D8618:  MOV             R0, R6; p
4D861A:  BLX             free
4D861E:  LDR             R0, [R4]
4D8620:  LDR             R1, [R0,#0x14]
4D8622:  MOV             R0, R4
4D8624:  BLX             R1
4D8626:  CMP.W           R0, #0x1AA
4D862A:  BNE             loc_4D8688
4D862C:  LDR             R0, =(UseDataFence_ptr - 0x4D8632)
4D862E:  ADD             R0, PC; UseDataFence_ptr
4D8630:  LDR             R0, [R0]; UseDataFence
4D8632:  LDRB            R0, [R0]
4D8634:  CMP             R0, #0
4D8636:  IT NE
4D8638:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4D863C:  MOVS            R0, #4; byte_count
4D863E:  BLX             malloc
4D8642:  MOV             R5, R0
4D8644:  LDR             R0, [R4,#0xC]
4D8646:  STR             R0, [R5]
4D8648:  MOV             R0, R5; this
4D864A:  MOVS            R1, #byte_4; void *
4D864C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4D8650:  MOV             R0, R5; p
4D8652:  BLX             free
4D8656:  LDR             R0, =(UseDataFence_ptr - 0x4D865C)
4D8658:  ADD             R0, PC; UseDataFence_ptr
4D865A:  LDR             R0, [R0]; UseDataFence
4D865C:  LDRB            R0, [R0]
4D865E:  CMP             R0, #0
4D8660:  IT NE
4D8662:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4D8666:  MOVS            R0, #4; byte_count
4D8668:  BLX             malloc
4D866C:  MOV             R5, R0
4D866E:  LDR             R0, [R4,#0x10]
4D8670:  STR             R0, [R5]
4D8672:  MOV             R0, R5; this
4D8674:  MOVS            R1, #byte_4; void *
4D8676:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4D867A:  MOV             R0, R5; p
4D867C:  POP.W           {R11}
4D8680:  POP.W           {R4-R7,LR}
4D8684:  B.W             j_free
4D8688:  LDR             R0, [R4]
4D868A:  LDR             R1, [R0,#0x14]
4D868C:  MOV             R0, R4
4D868E:  BLX             R1
4D8690:  MOV             R1, R0; int
4D8692:  MOV.W           R0, #0x1AA; int
4D8696:  POP.W           {R11}
4D869A:  POP.W           {R4-R7,LR}
4D869E:  B.W             sub_1941D4
