; =========================================================
; Game Engine Function: _Z12AddDataFencev
; Address            : 0x483C60 - 0x483CAC
; =========================================================

483C60:  PUSH            {R4-R7,LR}
483C62:  ADD             R7, SP, #0xC
483C64:  PUSH.W          {R8}
483C68:  LDR             R0, =(UseDataFence_ptr - 0x483C74)
483C6A:  MOVS            R3, #0
483C6C:  LDR             R1, =(DataFence_ptr - 0x483C76)
483C6E:  LDR             R2, =(currentSaveFenceCount_ptr - 0x483C78)
483C70:  ADD             R0, PC; UseDataFence_ptr
483C72:  ADD             R1, PC; DataFence_ptr
483C74:  ADD             R2, PC; currentSaveFenceCount_ptr
483C76:  LDR             R5, [R0]; UseDataFence
483C78:  LDR             R0, [R1]; DataFence
483C7A:  LDR             R1, [R2]; currentSaveFenceCount
483C7C:  LDRB.W          R8, [R5]
483C80:  LDRH            R0, [R0]
483C82:  LDR             R2, [R1]
483C84:  STRB            R3, [R5]
483C86:  ADDS            R6, R2, R0
483C88:  MOVS            R0, #2; byte_count
483C8A:  ADDS            R3, R2, #1
483C8C:  STR             R3, [R1]
483C8E:  BLX             malloc
483C92:  MOV             R4, R0
483C94:  MOVS            R1, #(stderr+2); void *
483C96:  STRH            R6, [R4]
483C98:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
483C9C:  MOV             R0, R4; p
483C9E:  BLX             free
483CA2:  STRB.W          R8, [R5]
483CA6:  POP.W           {R8}
483CAA:  POP             {R4-R7,PC}
