; =========================================================
; Game Engine Function: sub_FCFF0
; Address            : 0xFCFF0 - 0xFD036
; =========================================================

FCFF0:  PUSH            {R4-R7,LR}
FCFF2:  ADD             R7, SP, #0xC
FCFF4:  PUSH.W          {R11}
FCFF8:  SUB             SP, SP, #8
FCFFA:  MOV             R5, R2
FCFFC:  MOV             R6, R1
FCFFE:  MOV             R4, R0
FD000:  BL              sub_120334
FD004:  MOVS            R1, #0x14
FD006:  MOVS            R2, #0x65 ; 'e'
FD008:  STR             R1, [SP,#0x18+var_18]
FD00A:  MOVS            R1, #2
FD00C:  MOVS            R3, #0x73 ; 's'
FD00E:  BL              sub_12034C
FD012:  LDR             R0, =(off_23496C - 0xFD01C)
FD014:  MOV             R1, R6
FD016:  MOV             R2, R5
FD018:  ADD             R0, PC; off_23496C
FD01A:  LDR             R0, [R0]; dword_23DEF4
FD01C:  LDR             R0, [R0]
FD01E:  BL              sub_144A80
FD022:  LDR             R0, =(dword_2474F4 - 0xFD02A)
FD024:  LDR             R1, [R4]
FD026:  ADD             R0, PC; dword_2474F4
FD028:  ADD.W           R1, R1, #0x3E8
FD02C:  STR             R1, [R0]
FD02E:  ADD             SP, SP, #8
FD030:  POP.W           {R11}
FD034:  POP             {R4-R7,PC}
