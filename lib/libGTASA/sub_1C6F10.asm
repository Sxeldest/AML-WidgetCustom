; =========================================================
; Game Engine Function: sub_1C6F10
; Address            : 0x1C6F10 - 0x1C6F2C
; =========================================================

1C6F10:  PUSH            {R7,LR}
1C6F12:  MOV             R7, SP
1C6F14:  SUB             SP, SP, #8
1C6F16:  LDR             R1, =(dword_6B724C - 0x1C6F1C)
1C6F18:  ADD             R1, PC; dword_6B724C
1C6F1A:  LDR             R1, [R1]
1C6F1C:  LDR             R1, [R2,R1]
1C6F1E:  MOVS            R2, #4
1C6F20:  STR             R1, [SP,#0x10+var_C]
1C6F22:  ADD             R1, SP, #0x10+var_C
1C6F24:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C6F28:  ADD             SP, SP, #8
1C6F2A:  POP             {R7,PC}
