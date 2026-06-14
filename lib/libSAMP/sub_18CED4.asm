; =========================================================
; Game Engine Function: sub_18CED4
; Address            : 0x18CED4 - 0x18CF14
; =========================================================

18CED4:  PUSH            {R4,R5,R7,LR}
18CED6:  ADD             R7, SP, #8
18CED8:  SUB             SP, SP, #8
18CEDA:  MOV             R4, R0
18CEDC:  MOVS            R0, #0
18CEDE:  STRB            R0, [R4,#0x14]
18CEE0:  STRD.W          R0, R0, [R4]
18CEE4:  STR             R0, [R4,#8]
18CEE6:  MOVW            R0, #0x804; unsigned int
18CEEA:  BLX             j__Znwj; operator new(uint)
18CEEE:  MOV             R5, R0
18CEF0:  BL              sub_17DAD8
18CEF4:  LDR             R1, =(unk_2390B8 - 0x18CEFC)
18CEF6:  STR             R5, [SP,#0x10+var_C]
18CEF8:  ADD             R1, PC; unk_2390B8
18CEFA:  MOV             R0, R5
18CEFC:  BL              sub_17DC88
18CF00:  MOVS            R0, #0
18CF02:  STR             R0, [SP,#0x10+var_10]
18CF04:  ADD             R2, SP, #0x10+var_C
18CF06:  MOV             R1, SP
18CF08:  MOV             R0, R4
18CF0A:  BL              sub_18CF2C
18CF0E:  MOV             R0, R4
18CF10:  ADD             SP, SP, #8
18CF12:  POP             {R4,R5,R7,PC}
