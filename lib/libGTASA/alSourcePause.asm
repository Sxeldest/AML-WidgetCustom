; =========================================================
; Game Engine Function: alSourcePause
; Address            : 0x25AA2A - 0x25AA3E
; =========================================================

25AA2A:  PUSH            {R7,LR}
25AA2C:  MOV             R7, SP
25AA2E:  SUB             SP, SP, #8
25AA30:  ADD             R1, SP, #0x10+var_C
25AA32:  STR             R0, [SP,#0x10+var_C]
25AA34:  MOVS            R0, #1
25AA36:  BLX             j_alSourcePausev
25AA3A:  ADD             SP, SP, #8
25AA3C:  POP             {R7,PC}
