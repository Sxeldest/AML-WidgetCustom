; =========================================================
; Game Engine Function: _ZN5CTask9SerializeEv
; Address            : 0x48FEC0 - 0x48FF38
; =========================================================

48FEC0:  PUSH            {R4-R7,LR}
48FEC2:  ADD             R7, SP, #0xC
48FEC4:  PUSH.W          {R8,R9,R11}
48FEC8:  LDR             R1, [R0]
48FECA:  LDR             R1, [R1,#0x14]
48FECC:  BLX             R1
48FECE:  MOV             R8, R0
48FED0:  LDR             R0, =(UseDataFence_ptr - 0x48FED6)
48FED2:  ADD             R0, PC; UseDataFence_ptr
48FED4:  LDR             R0, [R0]; UseDataFence
48FED6:  LDRB            R6, [R0]
48FED8:  CBZ             R6, loc_48FF18
48FEDA:  LDR             R0, =(currentSaveFenceCount_ptr - 0x48FEE6)
48FEDC:  MOVS            R3, #0
48FEDE:  LDR             R1, =(UseDataFence_ptr - 0x48FEE8)
48FEE0:  LDR             R2, =(DataFence_ptr - 0x48FEEA)
48FEE2:  ADD             R0, PC; currentSaveFenceCount_ptr
48FEE4:  ADD             R1, PC; UseDataFence_ptr
48FEE6:  ADD             R2, PC; DataFence_ptr
48FEE8:  LDR             R0, [R0]; currentSaveFenceCount
48FEEA:  LDR.W           R9, [R1]; UseDataFence
48FEEE:  LDR             R1, [R2]; DataFence
48FEF0:  LDR             R2, [R0]
48FEF2:  STRB.W          R3, [R9]
48FEF6:  LDRH            R1, [R1]
48FEF8:  ADDS            R3, R2, #1
48FEFA:  STR             R3, [R0]
48FEFC:  MOVS            R0, #2; byte_count
48FEFE:  ADDS            R4, R2, R1
48FF00:  BLX             malloc
48FF04:  MOV             R5, R0
48FF06:  MOVS            R1, #(stderr+2); void *
48FF08:  STRH            R4, [R5]
48FF0A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48FF0E:  MOV             R0, R5; p
48FF10:  BLX             free
48FF14:  STRB.W          R6, [R9]
48FF18:  MOVS            R0, #4; byte_count
48FF1A:  BLX             malloc
48FF1E:  MOV             R5, R0
48FF20:  MOVS            R1, #byte_4; void *
48FF22:  STR.W           R8, [R5]
48FF26:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48FF2A:  MOV             R0, R5; p
48FF2C:  POP.W           {R8,R9,R11}
48FF30:  POP.W           {R4-R7,LR}
48FF34:  B.W             j_free
