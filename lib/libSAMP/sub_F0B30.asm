; =========================================================
; Game Engine Function: sub_F0B30
; Address            : 0xF0B30 - 0xF0B60
; =========================================================

F0B30:  PUSH            {R7,LR}
F0B32:  MOV             R7, SP
F0B34:  SUB             SP, SP, #8
F0B36:  MOV             R0, SP; tv
F0B38:  MOVS            R1, #0; tz
F0B3A:  BLX             gettimeofday
F0B3E:  MOVW            R2, #0x4DD3
F0B42:  LDRD.W          R0, R1, [SP,#0x10+var_10]
F0B46:  MOVT            R2, #0x1062
F0B4A:  SMMUL.W         R1, R1, R2
F0B4E:  ASRS            R2, R1, #6
F0B50:  ADD.W           R1, R2, R1,LSR#31
F0B54:  MOV.W           R2, #0x3E8
F0B58:  MLA.W           R0, R0, R2, R1
F0B5C:  ADD             SP, SP, #8
F0B5E:  POP             {R7,PC}
