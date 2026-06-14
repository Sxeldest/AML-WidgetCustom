; =========================================================
; Game Engine Function: AppendAllDeviceList
; Address            : 0x1BAA64 - 0x1BAB14
; =========================================================

1BAA64:  PUSH            {R4-R8,R10,R11,LR}
1BAA68:  ADD             R11, SP, #0x18
1BAA6C:  MOV             R4, R0
1BAA70:  BL              strlen
1BAA74:  MOV             R5, R0
1BAA78:  CMP             R5, #0
1BAA7C:  BEQ             locret_1BAAE0
1BAA80:  LDR             R0, =(dword_382824 - 0x1BAA90)
1BAA84:  LDR             R1, =(dword_382820 - 0x1BAA94)
1BAA88:  LDR             R2, [PC,R0]; dword_382824
1BAA8C:  LDR             R0, [PC,R1]; dword_382820 ; ptr
1BAA90:  ADD             R1, R5, R2
1BAA94:  ADD             R1, R1, #2; size
1BAA98:  BL              realloc
1BAA9C:  MOV             R6, R0
1BAAA0:  CMP             R6, #0
1BAAA4:  BEQ             loc_1BAAE4
1BAAA8:  LDR             R0, =(dword_382824 - 0x1BAABC)
1BAAAC:  ADD             R5, R5, #1
1BAAB0:  LDR             R1, =(dword_382820 - 0x1BAAC8)
1BAAB4:  ADD             R8, PC, R0; dword_382824
1BAAB8:  MOV             R2, R5; n
1BAABC:  LDR             R7, [R8]
1BAAC0:  STR             R6, [PC,R1]; dword_382820
1BAAC4:  MOV             R1, R4; src
1BAAC8:  ADD             R0, R6, R7; dest
1BAACC:  BL              j_memcpy
1BAAD0:  ADD             R0, R7, R5
1BAAD4:  MOV             R1, #0
1BAAD8:  STR             R0, [R8]
1BAADC:  STRB            R1, [R6,R0]
1BAAE0:  POP             {R4-R8,R10,R11,PC}
1BAAE4:  LDR             R0, =(LogLevel_ptr - 0x1BAAF0)
1BAAE8:  LDR             R0, [PC,R0]; LogLevel
1BAAEC:  LDR             R0, [R0]
1BAAF0:  CMP             R0, #0
1BAAF4:  BEQ             locret_1BAAE0
1BAAF8:  LDR             R0, =(aAppendlist - 0x1BAB0C); "AppendList" ...
1BAAFC:  MOV             R2, R4
1BAB00:  LDR             R1, =(aReallocFailedT_0 - 0x1BAB10); "Realloc failed to add %s!\n" ...
1BAB04:  ADD             R0, PC, R0; "AppendList"
1BAB08:  ADD             R1, PC, R1; "Realloc failed to add %s!\n"
1BAB0C:  POP             {R4-R8,R10,R11,LR}
1BAB10:  B               j_al_print
