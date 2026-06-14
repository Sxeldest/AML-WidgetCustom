; =========================================================
; Game Engine Function: sub_150F3C
; Address            : 0x150F3C - 0x150F66
; =========================================================

150F3C:  SUB             SP, SP, #4
150F3E:  PUSH            {R7,LR}
150F40:  MOV             R7, SP
150F42:  SUB             SP, SP, #0xC
150F44:  ADD.W           R1, R7, #8
150F48:  MOV             R12, R2
150F4A:  STR             R3, [R7,#8]
150F4C:  MOVW            R2, #0x7FF
150F50:  STR             R1, [SP,#0x18+var_10]
150F52:  MOV             R3, R12
150F54:  STR             R1, [SP,#0x18+var_18]
150F56:  MOVS            R1, #0
150F58:  BLX             __vsprintf_chk
150F5C:  ADD             SP, SP, #0xC
150F5E:  POP.W           {R7,LR}
150F62:  ADD             SP, SP, #4
150F64:  BX              LR
