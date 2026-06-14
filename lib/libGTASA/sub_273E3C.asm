; =========================================================
; Game Engine Function: sub_273E3C
; Address            : 0x273E3C - 0x273E54
; =========================================================

273E3C:  PUSH            {R7,LR}
273E3E:  MOV             R7, SP
273E40:  SUB             SP, SP, #0x18
273E42:  MOVS            R0, #6
273E44:  STR             R2, [SP,#0x20+var_1C]
273E46:  STR             R0, [SP,#0x20+var_20]
273E48:  MOV             R0, SP
273E4A:  STR             R3, [SP,#0x20+var_18]
273E4C:  BL              sub_27C4F0
273E50:  ADD             SP, SP, #0x18
273E52:  POP             {R7,PC}
