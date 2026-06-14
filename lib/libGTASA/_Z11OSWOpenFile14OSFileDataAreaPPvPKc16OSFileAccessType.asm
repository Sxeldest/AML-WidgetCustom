; =========================================================
; Game Engine Function: _Z11OSWOpenFile14OSFileDataAreaPPvPKc16OSFileAccessType
; Address            : 0x3F0C7C - 0x3F0D10
; =========================================================

3F0C7C:  PUSH            {R4-R7,LR}
3F0C7E:  ADD             R7, SP, #0xC
3F0C80:  PUSH.W          {R8,R9,R11}
3F0C84:  SUB.W           SP, SP, #0x208
3F0C88:  MOV             R6, R0
3F0C8A:  LDR             R0, =(__stack_chk_guard_ptr - 0x3F0C94)
3F0C8C:  MOV             R4, R2
3F0C8E:  MOV             R5, R1
3F0C90:  ADD             R0, PC; __stack_chk_guard_ptr
3F0C92:  MOVS            R1, #0x3A ; ':'; c
3F0C94:  MOV             R8, R3
3F0C96:  LDR             R0, [R0]; __stack_chk_guard
3F0C98:  LDR             R0, [R0]
3F0C9A:  STR             R0, [SP,#0x220+var_1C]
3F0C9C:  MOV             R0, R4; s
3F0C9E:  BLX             strchr
3F0CA2:  CBZ             R0, loc_3F0CD0
3F0CA4:  LDR             R0, =(__stack_chk_guard_ptr - 0x3F0CAC)
3F0CA6:  LDR             R1, [SP,#0x220+var_1C]
3F0CA8:  ADD             R0, PC; __stack_chk_guard_ptr
3F0CAA:  LDR             R0, [R0]; __stack_chk_guard
3F0CAC:  LDR             R0, [R0]
3F0CAE:  SUBS            R0, R0, R1
3F0CB0:  ITTTT EQ
3F0CB2:  MOVEQ           R0, R6
3F0CB4:  MOVEQ           R1, R5
3F0CB6:  MOVEQ           R2, R4
3F0CB8:  MOVEQ           R3, R8
3F0CBA:  ITTTT EQ
3F0CBC:  ADDEQ.W         SP, SP, #0x208
3F0CC0:  POPEQ.W         {R8,R9,R11}
3F0CC4:  POPEQ.W         {R4-R7,LR}
3F0CC8:  BEQ.W           j_j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; j_OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
3F0CCC:  BLX             __stack_chk_fail
3F0CD0:  LDR             R0, =(_ZN8CFileMgr10ms_dirNameE_ptr - 0x3F0CDA)
3F0CD2:  ADD.W           R9, SP, #0x220+var_21C
3F0CD6:  ADD             R0, PC; _ZN8CFileMgr10ms_dirNameE_ptr
3F0CD8:  LDR             R1, [R0]; char *
3F0CDA:  MOV             R0, R9; char *
3F0CDC:  BLX             strcpy
3F0CE0:  MOV             R0, R9; dest
3F0CE2:  MOV             R1, R4; src
3F0CE4:  BLX             strcat
3F0CE8:  MOV             R0, R6
3F0CEA:  MOV             R1, R5
3F0CEC:  MOV             R2, R9
3F0CEE:  MOV             R3, R8
3F0CF0:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
3F0CF4:  LDR             R1, =(__stack_chk_guard_ptr - 0x3F0CFC)
3F0CF6:  LDR             R2, [SP,#0x220+var_1C]
3F0CF8:  ADD             R1, PC; __stack_chk_guard_ptr
3F0CFA:  LDR             R1, [R1]; __stack_chk_guard
3F0CFC:  LDR             R1, [R1]
3F0CFE:  SUBS            R1, R1, R2
3F0D00:  ITTT EQ
3F0D02:  ADDEQ.W         SP, SP, #0x208
3F0D06:  POPEQ.W         {R8,R9,R11}
3F0D0A:  POPEQ           {R4-R7,PC}
3F0D0C:  BLX             __stack_chk_fail
