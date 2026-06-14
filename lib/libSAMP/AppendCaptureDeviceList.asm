; =========================================================
; Game Engine Function: AppendCaptureDeviceList
; Address            : 0x1BAB30 - 0x1BABE0
; =========================================================

1BAB30:  PUSH            {R4-R8,R10,R11,LR}
1BAB34:  ADD             R11, SP, #0x18
1BAB38:  MOV             R4, R0
1BAB3C:  BL              strlen
1BAB40:  MOV             R5, R0
1BAB44:  CMP             R5, #0
1BAB48:  BEQ             locret_1BABAC
1BAB4C:  LDR             R0, =(dword_38282C - 0x1BAB5C)
1BAB50:  LDR             R1, =(dword_382828 - 0x1BAB60)
1BAB54:  LDR             R2, [PC,R0]; dword_38282C
1BAB58:  LDR             R0, [PC,R1]; dword_382828 ; ptr
1BAB5C:  ADD             R1, R5, R2
1BAB60:  ADD             R1, R1, #2; size
1BAB64:  BL              realloc
1BAB68:  MOV             R6, R0
1BAB6C:  CMP             R6, #0
1BAB70:  BEQ             loc_1BABB0
1BAB74:  LDR             R0, =(dword_38282C - 0x1BAB88)
1BAB78:  ADD             R5, R5, #1
1BAB7C:  LDR             R1, =(dword_382828 - 0x1BAB94)
1BAB80:  ADD             R8, PC, R0; dword_38282C
1BAB84:  MOV             R2, R5; n
1BAB88:  LDR             R7, [R8]
1BAB8C:  STR             R6, [PC,R1]; dword_382828
1BAB90:  MOV             R1, R4; src
1BAB94:  ADD             R0, R6, R7; dest
1BAB98:  BL              j_memcpy
1BAB9C:  ADD             R0, R7, R5
1BABA0:  MOV             R1, #0
1BABA4:  STR             R0, [R8]
1BABA8:  STRB            R1, [R6,R0]
1BABAC:  POP             {R4-R8,R10,R11,PC}
1BABB0:  LDR             R0, =(LogLevel_ptr - 0x1BABBC)
1BABB4:  LDR             R0, [PC,R0]; LogLevel
1BABB8:  LDR             R0, [R0]
1BABBC:  CMP             R0, #0
1BABC0:  BEQ             locret_1BABAC
1BABC4:  LDR             R0, =(aAppendlist - 0x1BABD8); "AppendList" ...
1BABC8:  MOV             R2, R4
1BABCC:  LDR             R1, =(aReallocFailedT_0 - 0x1BABDC); "Realloc failed to add %s!\n" ...
1BABD0:  ADD             R0, PC, R0; "AppendList"
1BABD4:  ADD             R1, PC, R1; "Realloc failed to add %s!\n"
1BABD8:  POP             {R4-R8,R10,R11,LR}
1BABDC:  B               j_al_print
