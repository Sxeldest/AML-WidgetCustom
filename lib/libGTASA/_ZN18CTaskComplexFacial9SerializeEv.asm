; =========================================================
; Game Engine Function: _ZN18CTaskComplexFacial9SerializeEv
; Address            : 0x543B24 - 0x543B8E
; =========================================================

543B24:  PUSH            {R4-R7,LR}
543B26:  ADD             R7, SP, #0xC
543B28:  PUSH.W          {R11}
543B2C:  MOV             R4, R0
543B2E:  LDR             R0, [R4]
543B30:  LDR             R1, [R0,#0x14]
543B32:  MOV             R0, R4
543B34:  BLX             R1
543B36:  MOV             R5, R0
543B38:  LDR             R0, =(UseDataFence_ptr - 0x543B3E)
543B3A:  ADD             R0, PC; UseDataFence_ptr
543B3C:  LDR             R0, [R0]; UseDataFence
543B3E:  LDRB            R0, [R0]
543B40:  CMP             R0, #0
543B42:  IT NE
543B44:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
543B48:  MOVS            R0, #4; byte_count
543B4A:  BLX             malloc
543B4E:  MOV             R6, R0
543B50:  MOVS            R1, #byte_4; void *
543B52:  STR             R5, [R6]
543B54:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
543B58:  MOV             R0, R6; p
543B5A:  BLX             free
543B5E:  LDR             R0, [R4]
543B60:  LDR             R1, [R0,#0x14]
543B62:  MOV             R0, R4
543B64:  BLX             R1
543B66:  MOVW            R1, #0x131
543B6A:  CMP             R0, R1
543B6C:  ITT EQ
543B6E:  POPEQ.W         {R11}
543B72:  POPEQ           {R4-R7,PC}
543B74:  LDR             R0, [R4]
543B76:  LDR             R1, [R0,#0x14]
543B78:  MOV             R0, R4
543B7A:  BLX             R1
543B7C:  MOV             R1, R0; int
543B7E:  MOVW            R0, #0x131; int
543B82:  POP.W           {R11}
543B86:  POP.W           {R4-R7,LR}
543B8A:  B.W             sub_1941D4
