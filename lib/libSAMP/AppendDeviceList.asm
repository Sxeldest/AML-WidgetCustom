; =========================================================
; Game Engine Function: AppendDeviceList
; Address            : 0x1BA998 - 0x1BAA48
; =========================================================

1BA998:  PUSH            {R4-R8,R10,R11,LR}
1BA99C:  ADD             R11, SP, #0x18
1BA9A0:  MOV             R4, R0
1BA9A4:  BL              strlen
1BA9A8:  MOV             R5, R0
1BA9AC:  CMP             R5, #0
1BA9B0:  BEQ             locret_1BAA14
1BA9B4:  LDR             R0, =(dword_38281C - 0x1BA9C4)
1BA9B8:  LDR             R1, =(dword_382818 - 0x1BA9C8)
1BA9BC:  LDR             R2, [PC,R0]; dword_38281C
1BA9C0:  LDR             R0, [PC,R1]; dword_382818 ; ptr
1BA9C4:  ADD             R1, R5, R2
1BA9C8:  ADD             R1, R1, #2; size
1BA9CC:  BL              realloc
1BA9D0:  MOV             R6, R0
1BA9D4:  CMP             R6, #0
1BA9D8:  BEQ             loc_1BAA18
1BA9DC:  LDR             R0, =(dword_38281C - 0x1BA9F0)
1BA9E0:  ADD             R5, R5, #1
1BA9E4:  LDR             R1, =(dword_382818 - 0x1BA9FC)
1BA9E8:  ADD             R8, PC, R0; dword_38281C
1BA9EC:  MOV             R2, R5; n
1BA9F0:  LDR             R7, [R8]
1BA9F4:  STR             R6, [PC,R1]; dword_382818
1BA9F8:  MOV             R1, R4; src
1BA9FC:  ADD             R0, R6, R7; dest
1BAA00:  BL              j_memcpy
1BAA04:  ADD             R0, R7, R5
1BAA08:  MOV             R1, #0
1BAA0C:  STR             R0, [R8]
1BAA10:  STRB            R1, [R6,R0]
1BAA14:  POP             {R4-R8,R10,R11,PC}
1BAA18:  LDR             R0, =(LogLevel_ptr - 0x1BAA24)
1BAA1C:  LDR             R0, [PC,R0]; LogLevel
1BAA20:  LDR             R0, [R0]
1BAA24:  CMP             R0, #0
1BAA28:  BEQ             locret_1BAA14
1BAA2C:  LDR             R0, =(aAppendlist - 0x1BAA40); "AppendList" ...
1BAA30:  MOV             R2, R4
1BAA34:  LDR             R1, =(aReallocFailedT_0 - 0x1BAA44); "Realloc failed to add %s!\n" ...
1BAA38:  ADD             R0, PC, R0; "AppendList"
1BAA3C:  ADD             R1, PC, R1; "Realloc failed to add %s!\n"
1BAA40:  POP             {R4-R8,R10,R11,LR}
1BAA44:  B               j_al_print
