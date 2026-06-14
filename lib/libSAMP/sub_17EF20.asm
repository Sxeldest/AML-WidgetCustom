; =========================================================
; Game Engine Function: sub_17EF20
; Address            : 0x17EF20 - 0x17EF56
; =========================================================

17EF20:  PUSH            {R4-R7,LR}
17EF22:  ADD             R7, SP, #0xC
17EF24:  PUSH.W          {R11}
17EF28:  SUB             SP, SP, #8
17EF2A:  MOV             R6, R0
17EF2C:  MOVS            R0, #0
17EF2E:  MOV             R4, R2
17EF30:  MOV             R5, R1
17EF32:  STR             R0, [SP,#0x18+var_18]
17EF34:  MOV             R2, R3
17EF36:  MOV             R0, R6
17EF38:  MOVS            R1, #1
17EF3A:  MOVS            R3, #0
17EF3C:  BL              sub_17FB94
17EF40:  LDR             R3, [R7,#arg_0]
17EF42:  MOV             R0, R6; int
17EF44:  MOV             R1, R5; name
17EF46:  MOV             R2, R4
17EF48:  ADD             SP, SP, #8
17EF4A:  POP.W           {R11}
17EF4E:  POP.W           {R4-R7,LR}
17EF52:  B.W             sub_181848
