; =========================================================
; Game Engine Function: _Z13ReadDataFencev
; Address            : 0x483CB8 - 0x483CDA
; =========================================================

483CB8:  PUSH            {R4,R5,R7,LR}
483CBA:  ADD             R7, SP, #8
483CBC:  SUB             SP, SP, #8
483CBE:  LDR             R0, =(UseDataFence_ptr - 0x483CC6)
483CC0:  MOVS            R1, #(stderr+2); void *
483CC2:  ADD             R0, PC; UseDataFence_ptr
483CC4:  LDR             R4, [R0]; UseDataFence
483CC6:  MOVS            R0, #0
483CC8:  LDRB            R5, [R4]
483CCA:  STRB            R0, [R4]
483CCC:  SUB.W           R0, R7, #-var_A; this
483CD0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
483CD4:  STRB            R5, [R4]
483CD6:  ADD             SP, SP, #8
483CD8:  POP             {R4,R5,R7,PC}
