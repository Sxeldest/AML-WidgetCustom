; =========================================================
; Game Engine Function: sub_15CA02
; Address            : 0x15CA02 - 0x15CA26
; =========================================================

15CA02:  PUSH            {R4,R6,R7,LR}
15CA04:  ADD             R7, SP, #8
15CA06:  SUB             SP, SP, #0x10
15CA08:  MOV             R2, R1
15CA0A:  MOV             R1, R0
15CA0C:  ADD             R0, SP, #0x18+var_14
15CA0E:  LDR             R4, [R2]
15CA10:  BL              sub_15CA26
15CA14:  LDR             R0, [SP,#0x18+var_14]; void *
15CA16:  MOVS            R1, #0
15CA18:  STR             R1, [SP,#0x18+var_14]
15CA1A:  CBZ             R0, loc_15CA20
15CA1C:  BLX             j__ZdlPv; operator delete(void *)
15CA20:  MOV             R0, R4
15CA22:  ADD             SP, SP, #0x10
15CA24:  POP             {R4,R6,R7,PC}
