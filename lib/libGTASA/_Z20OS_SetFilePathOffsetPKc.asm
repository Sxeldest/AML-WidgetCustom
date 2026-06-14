; =========================================================
; Game Engine Function: _Z20OS_SetFilePathOffsetPKc
; Address            : 0x2669D8 - 0x2669FE
; =========================================================

2669D8:  PUSH            {R4,R6,R7,LR}
2669DA:  ADD             R7, SP, #8
2669DC:  MOV             R4, R0
2669DE:  LDR             R0, =(BasePath_ptr - 0x2669E4)
2669E0:  ADD             R0, PC; BasePath_ptr
2669E2:  LDR             R0, [R0]; BasePath
2669E4:  LDR             R0, [R0]; p
2669E6:  CMP             R0, #0
2669E8:  IT NE
2669EA:  BLXNE           free
2669EE:  MOV             R0, R4; char *
2669F0:  BLX             j_strdup
2669F4:  LDR             R1, =(BasePath_ptr - 0x2669FA)
2669F6:  ADD             R1, PC; BasePath_ptr
2669F8:  LDR             R1, [R1]; BasePath
2669FA:  STR             R0, [R1]
2669FC:  POP             {R4,R6,R7,PC}
