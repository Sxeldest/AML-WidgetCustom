; =========================================================
; Game Engine Function: sub_161AAE
; Address            : 0x161AAE - 0x161AD8
; =========================================================

161AAE:  PUSH            {R4-R7,LR}
161AB0:  ADD             R7, SP, #0xC
161AB2:  PUSH.W          {R11}
161AB6:  SUB             SP, SP, #8
161AB8:  MOV             R4, R2
161ABA:  MOV             R5, R1
161ABC:  MOV             R6, R0
161ABE:  BLX             strlen
161AC2:  MOV             R2, R0
161AC4:  MOVS            R0, #2
161AC6:  MOV             R1, R6
161AC8:  MOV             R3, R5
161ACA:  STR             R4, [SP,#0x18+var_18]
161ACC:  BL              sub_161ED8
161AD0:  ADD             SP, SP, #8
161AD2:  POP.W           {R11}
161AD6:  POP             {R4-R7,PC}
