; =========================================================
; Game Engine Function: _ZN16CTaskSimpleCower9SerializeEv
; Address            : 0x357698 - 0x357700
; =========================================================

357698:  PUSH            {R4-R7,LR}
35769A:  ADD             R7, SP, #0xC
35769C:  PUSH.W          {R11}
3576A0:  MOV             R4, R0
3576A2:  LDR             R0, [R4]
3576A4:  LDR             R1, [R0,#0x14]
3576A6:  MOV             R0, R4
3576A8:  BLX             R1
3576AA:  MOV             R5, R0
3576AC:  LDR             R0, =(UseDataFence_ptr - 0x3576B2)
3576AE:  ADD             R0, PC; UseDataFence_ptr
3576B0:  LDR             R0, [R0]; UseDataFence
3576B2:  LDRB            R0, [R0]
3576B4:  CMP             R0, #0
3576B6:  IT NE
3576B8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
3576BC:  MOVS            R0, #4; byte_count
3576BE:  BLX             malloc
3576C2:  MOV             R6, R0
3576C4:  MOVS            R1, #byte_4; void *
3576C6:  STR             R5, [R6]
3576C8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
3576CC:  MOV             R0, R6; p
3576CE:  BLX             free
3576D2:  LDR             R0, [R4]
3576D4:  LDR             R1, [R0,#0x14]
3576D6:  MOV             R0, R4
3576D8:  BLX             R1
3576DA:  CMP.W           R0, #0x19C
3576DE:  ITT EQ
3576E0:  POPEQ.W         {R11}
3576E4:  POPEQ           {R4-R7,PC}
3576E6:  LDR             R0, [R4]
3576E8:  LDR             R1, [R0,#0x14]
3576EA:  MOV             R0, R4
3576EC:  BLX             R1
3576EE:  MOV             R1, R0; int
3576F0:  MOV.W           R0, #0x19C; int
3576F4:  POP.W           {R11}
3576F8:  POP.W           {R4-R7,LR}
3576FC:  B.W             sub_1941D4
