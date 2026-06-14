; =========================================================
; Game Engine Function: ALCdevice_IncRef
; Address            : 0x248C90 - 0x248CD4
; =========================================================

248C90:  MOV             R12, R0
248C92:  DMB.W           ISH
248C96:  LDREX.W         R0, [R12]
248C9A:  ADDS            R3, R0, #1
248C9C:  STREX.W         R0, R3, [R12]
248CA0:  CMP             R0, #0
248CA2:  BNE             loc_248C96
248CA4:  LDR             R0, =(LogLevel_ptr - 0x248CAE)
248CA6:  DMB.W           ISH
248CAA:  ADD             R0, PC; LogLevel_ptr
248CAC:  LDR             R0, [R0]; LogLevel
248CAE:  LDR             R0, [R0]
248CB0:  CMP             R0, #4
248CB2:  IT CC
248CB4:  BXCC            LR
248CB6:  PUSH            {R7,LR}
248CB8:  MOV             R7, SP
248CBA:  SUB             SP, SP, #8
248CBC:  LDR             R0, =(asc_5F59DF - 0x248CC6); "(--)"
248CBE:  LDR             R1, =(aAlcdeviceIncre_0 - 0x248CC8); "ALCdevice_IncRef"
248CC0:  LDR             R2, =(aPIncreasingRef - 0x248CCC); "%p increasing refcount to %u\n"
248CC2:  ADD             R0, PC; "(--)"
248CC4:  ADD             R1, PC; "ALCdevice_IncRef"
248CC6:  STR             R3, [SP,#0x10+var_10]
248CC8:  ADD             R2, PC; "%p increasing refcount to %u\n"
248CCA:  MOV             R3, R12
248CCC:  BLX             j_al_print
248CD0:  ADD             SP, SP, #8
248CD2:  POP             {R7,PC}
