; =========================================================
; Game Engine Function: _Z9NVLogFilePKc
; Address            : 0x276FC8 - 0x276FF6
; =========================================================

276FC8:  PUSH            {R4,R6,R7,LR}
276FCA:  ADD             R7, SP, #8
276FCC:  MOV             R4, R0
276FCE:  LDR             R0, =(g_NVLogFile_ptr - 0x276FD4)
276FD0:  ADD             R0, PC; g_NVLogFile_ptr
276FD2:  LDR             R0, [R0]; g_NVLogFile
276FD4:  LDR             R0, [R0]; stream
276FD6:  CMP             R0, #0
276FD8:  IT NE
276FDA:  BLXNE           fclose
276FDE:  CMP             R4, #0
276FE0:  IT EQ
276FE2:  POPEQ           {R4,R6,R7,PC}
276FE4:  ADR             R1, dword_276FFC; modes
276FE6:  MOV             R0, R4; filename
276FE8:  BLX             fopen
276FEC:  LDR             R1, =(g_NVLogFile_ptr - 0x276FF2)
276FEE:  ADD             R1, PC; g_NVLogFile_ptr
276FF0:  LDR             R1, [R1]; g_NVLogFile
276FF2:  STR             R0, [R1]
276FF4:  POP             {R4,R6,R7,PC}
