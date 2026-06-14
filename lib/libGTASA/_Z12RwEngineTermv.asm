; =========================================================
; Game Engine Function: _Z12RwEngineTermv
; Address            : 0x1D7ACC - 0x1D7B02
; =========================================================

1D7ACC:  PUSH            {R4,R5,R7,LR}
1D7ACE:  ADD             R7, SP, #8
1D7AD0:  LDR             R0, =(dword_6BCD3C - 0x1D7ADA)
1D7AD2:  MOVS            R4, #0
1D7AD4:  MOVS            R5, #0
1D7AD6:  ADD             R0, PC; dword_6BCD3C
1D7AD8:  LDR             R0, [R0]
1D7ADA:  CMP             R0, #0
1D7ADC:  IT EQ
1D7ADE:  MOVEQ           R4, #1
1D7AE0:  BEQ             loc_1D7AE6
1D7AE2:  MOV             R0, R4
1D7AE4:  POP             {R4,R5,R7,PC}
1D7AE6:  BLX             j__Z22_rwPluginRegistryClosev; _rwPluginRegistryClose(void)
1D7AEA:  BLX             j__Z18_rwFileSystemClosev; _rwFileSystemClose(void)
1D7AEE:  BLX             j__Z14_rwMemoryClosev; _rwMemoryClose(void)
1D7AF2:  LDR             R0, =(RwEngineInstance_ptr - 0x1D7AF8)
1D7AF4:  ADD             R0, PC; RwEngineInstance_ptr
1D7AF6:  LDR             R0, [R0]; RwEngineInstance
1D7AF8:  LDR             R0, [R0]
1D7AFA:  STR.W           R5, [R0,#0x148]
1D7AFE:  MOV             R0, R4
1D7B00:  POP             {R4,R5,R7,PC}
