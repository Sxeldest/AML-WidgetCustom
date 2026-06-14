; =========================================================
; Game Engine Function: sub_118CF4
; Address            : 0x118CF4 - 0x118D14
; =========================================================

118CF4:  PUSH            {R7,LR}
118CF6:  MOV             R7, SP
118CF8:  SUB             SP, SP, #0x10
118CFA:  MOV             R12, R1
118CFC:  ADD.W           R1, R7, #8
118D00:  STR             R1, [SP,#0x18+var_C]
118D02:  STRD.W          R3, R1, [SP,#0x18+var_18]
118D06:  MOV             R1, R2
118D08:  MOVS            R2, #0
118D0A:  MOV             R3, R12
118D0C:  BLX             __vsnprintf_chk
118D10:  ADD             SP, SP, #0x10
118D12:  POP             {R7,PC}
