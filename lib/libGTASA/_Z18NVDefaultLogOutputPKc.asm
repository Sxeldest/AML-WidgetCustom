; =========================================================
; Game Engine Function: _Z18NVDefaultLogOutputPKc
; Address            : 0x276C98 - 0x276CC6
; =========================================================

276C98:  PUSH            {R4,R6,R7,LR}
276C9A:  ADD             R7, SP, #8
276C9C:  MOV             R4, R0
276C9E:  BL              sub_5E6B18
276CA2:  LDR             R0, =(g_NVLogFile_ptr - 0x276CA8)
276CA4:  ADD             R0, PC; g_NVLogFile_ptr
276CA6:  LDR             R0, [R0]; g_NVLogFile
276CA8:  LDR             R1, [R0]; stream
276CAA:  CMP             R1, #0
276CAC:  IT EQ
276CAE:  POPEQ           {R4,R6,R7,PC}
276CB0:  MOV             R0, R4; s
276CB2:  BLX             fputs
276CB6:  LDR             R0, =(g_NVLogFile_ptr - 0x276CBC)
276CB8:  ADD             R0, PC; g_NVLogFile_ptr
276CBA:  LDR             R0, [R0]; g_NVLogFile
276CBC:  LDR             R0, [R0]; stream
276CBE:  POP.W           {R4,R6,R7,LR}
276CC2:  B.W             sub_19D5EC
