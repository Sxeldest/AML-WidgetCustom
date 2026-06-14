; =========================================================
; Game Engine Function: _Z20RQ_Command_rqCleanupRPc
; Address            : 0x1CFFBC - 0x1D0000
; =========================================================

1CFFBC:  PUSH            {R4-R7,LR}
1CFFBE:  ADD             R7, SP, #0xC
1CFFC0:  PUSH.W          {R11}
1CFFC4:  LDR             R0, =(es2TexPool_ptr - 0x1CFFCC)
1CFFC6:  MOVS            R5, #0
1CFFC8:  ADD             R0, PC; es2TexPool_ptr
1CFFCA:  LDR             R0, [R0]; es2TexPool
1CFFCC:  LDR             R1, [R0,#(dword_6BCC08 - 0x6BCC00)]
1CFFCE:  STR             R5, [R0,#(dword_6BCC14 - 0x6BCC00)]
1CFFD0:  CBZ             R1, loc_1CFFF2
1CFFD2:  LDR             R0, =(es2TexPool_ptr - 0x1CFFDA)
1CFFD4:  MOVS            R6, #0
1CFFD6:  ADD             R0, PC; es2TexPool_ptr
1CFFD8:  LDR             R4, [R0]; es2TexPool
1CFFDA:  LDR             R0, [R4]
1CFFDC:  LDR             R1, [R4,#(dword_6BCC0C - 0x6BCC00)]
1CFFDE:  LDR             R2, [R0]
1CFFE0:  ADD.W           R0, R1, R6,LSL#3
1CFFE4:  LDR             R1, [R0,#4]
1CFFE6:  MOV             R0, R4
1CFFE8:  BLX             R2
1CFFEA:  LDR             R0, [R4,#(dword_6BCC08 - 0x6BCC00)]
1CFFEC:  ADDS            R6, #1
1CFFEE:  CMP             R6, R0
1CFFF0:  BCC             loc_1CFFDA
1CFFF2:  LDR             R0, =(es2TexPool_ptr - 0x1CFFF8)
1CFFF4:  ADD             R0, PC; es2TexPool_ptr
1CFFF6:  LDR             R0, [R0]; es2TexPool
1CFFF8:  STR             R5, [R0,#(dword_6BCC08 - 0x6BCC00)]
1CFFFA:  POP.W           {R11}
1CFFFE:  POP             {R4-R7,PC}
