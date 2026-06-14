; =========================================================
; Game Engine Function: _Z15HDSkipInputDataP22jpeg_decompress_structl
; Address            : 0x482118 - 0x482124
; =========================================================

482118:  LDR             R0, =(dword_9EC2B4 - 0x482120)
48211A:  MOVS            R2, #1; int
48211C:  ADD             R0, PC; dword_9EC2B4
48211E:  LDR             R0, [R0]; this
482120:  B.W             sub_1905B4
