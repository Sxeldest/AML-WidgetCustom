; =========================================================
; Game Engine Function: _ZN16CTaskSimpleDrown9SerializeEv
; Address            : 0x4F2888 - 0x4F28EC
; =========================================================

4F2888:  PUSH            {R4-R7,LR}
4F288A:  ADD             R7, SP, #0xC
4F288C:  PUSH.W          {R11}
4F2890:  MOV             R4, R0
4F2892:  LDR             R0, [R4]
4F2894:  LDR             R1, [R0,#0x14]
4F2896:  MOV             R0, R4
4F2898:  BLX             R1
4F289A:  MOV             R5, R0
4F289C:  LDR             R0, =(UseDataFence_ptr - 0x4F28A2)
4F289E:  ADD             R0, PC; UseDataFence_ptr
4F28A0:  LDR             R0, [R0]; UseDataFence
4F28A2:  LDRB            R0, [R0]
4F28A4:  CMP             R0, #0
4F28A6:  IT NE
4F28A8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F28AC:  MOVS            R0, #4; byte_count
4F28AE:  BLX             malloc
4F28B2:  MOV             R6, R0
4F28B4:  MOVS            R1, #byte_4; void *
4F28B6:  STR             R5, [R6]
4F28B8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F28BC:  MOV             R0, R6; p
4F28BE:  BLX             free
4F28C2:  LDR             R0, [R4]
4F28C4:  LDR             R1, [R0,#0x14]
4F28C6:  MOV             R0, R4
4F28C8:  BLX             R1
4F28CA:  CMP             R0, #0xD5
4F28CC:  ITT EQ
4F28CE:  POPEQ.W         {R11}
4F28D2:  POPEQ           {R4-R7,PC}
4F28D4:  LDR             R0, [R4]
4F28D6:  LDR             R1, [R0,#0x14]
4F28D8:  MOV             R0, R4
4F28DA:  BLX             R1
4F28DC:  MOV             R1, R0; int
4F28DE:  MOVS            R0, #0xD5; int
4F28E0:  POP.W           {R11}
4F28E4:  POP.W           {R4-R7,LR}
4F28E8:  B.W             sub_1941D4
