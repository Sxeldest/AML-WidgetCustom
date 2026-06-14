; =========================================================
; Game Engine Function: _ZN20CTaskSimpleShakeFist9SerializeEv
; Address            : 0x543948 - 0x5439B0
; =========================================================

543948:  PUSH            {R4-R7,LR}
54394A:  ADD             R7, SP, #0xC
54394C:  PUSH.W          {R11}
543950:  MOV             R4, R0
543952:  LDR             R0, [R4]
543954:  LDR             R1, [R0,#0x14]
543956:  MOV             R0, R4
543958:  BLX             R1
54395A:  MOV             R5, R0
54395C:  LDR             R0, =(UseDataFence_ptr - 0x543962)
54395E:  ADD             R0, PC; UseDataFence_ptr
543960:  LDR             R0, [R0]; UseDataFence
543962:  LDRB            R0, [R0]
543964:  CMP             R0, #0
543966:  IT NE
543968:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
54396C:  MOVS            R0, #4; byte_count
54396E:  BLX             malloc
543972:  MOV             R6, R0
543974:  MOVS            R1, #byte_4; void *
543976:  STR             R5, [R6]
543978:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
54397C:  MOV             R0, R6; p
54397E:  BLX             free
543982:  LDR             R0, [R4]
543984:  LDR             R1, [R0,#0x14]
543986:  MOV             R0, R4
543988:  BLX             R1
54398A:  CMP.W           R0, #0x12E
54398E:  ITT EQ
543990:  POPEQ.W         {R11}
543994:  POPEQ           {R4-R7,PC}
543996:  LDR             R0, [R4]
543998:  LDR             R1, [R0,#0x14]
54399A:  MOV             R0, R4
54399C:  BLX             R1
54399E:  MOV             R1, R0; int
5439A0:  MOV.W           R0, #0x12E; int
5439A4:  POP.W           {R11}
5439A8:  POP.W           {R4-R7,LR}
5439AC:  B.W             sub_1941D4
