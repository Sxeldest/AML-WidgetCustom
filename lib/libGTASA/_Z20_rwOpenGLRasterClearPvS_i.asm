; =========================================================
; Game Engine Function: _Z20_rwOpenGLRasterClearPvS_i
; Address            : 0x1B0DEC - 0x1B0E10
; =========================================================

1B0DEC:  PUSH            {R7,LR}
1B0DEE:  MOV             R7, SP
1B0DF0:  SUB             SP, SP, #0x10
1B0DF2:  LDR             R0, =(dword_6B3290 - 0x1B0DFA)
1B0DF4:  MOVS            R1, #0
1B0DF6:  ADD             R0, PC; dword_6B3290
1B0DF8:  LDR             R0, [R0]
1B0DFA:  STRD.W          R1, R1, [SP,#0x18+var_18]
1B0DFE:  LDRD.W          R1, R0, [R0,#0xC]; void *
1B0E02:  STRD.W          R1, R0, [SP,#0x18+var_10]
1B0E06:  MOV             R1, SP; void *
1B0E08:  BLX             j__Z24_rwOpenGLRasterClearRectPvS_i; _rwOpenGLRasterClearRect(void *,void *,int)
1B0E0C:  ADD             SP, SP, #0x10
1B0E0E:  POP             {R7,PC}
