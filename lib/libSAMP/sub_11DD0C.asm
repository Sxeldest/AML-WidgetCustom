; =========================================================
; Game Engine Function: sub_11DD0C
; Address            : 0x11DD0C - 0x11DD3A
; =========================================================

11DD0C:  PUSH            {R4-R7,LR}
11DD0E:  ADD             R7, SP, #0xC
11DD10:  PUSH.W          {R8}
11DD14:  SUB             SP, SP, #8
11DD16:  MOV             R4, R3
11DD18:  MOV             R8, R2
11DD1A:  MOV             R6, R1
11DD1C:  MOV             R5, R0
11DD1E:  BL              sub_11DD40
11DD22:  LDR             R0, =(unk_2637E0 - 0x11DD2E)
11DD24:  MOV             R1, R5
11DD26:  MOV             R2, R6
11DD28:  MOV             R3, R8
11DD2A:  ADD             R0, PC; unk_2637E0
11DD2C:  STR             R4, [SP,#0x18+var_18]
11DD2E:  BL              sub_11DE0C
11DD32:  ADD             SP, SP, #8
11DD34:  POP.W           {R8}
11DD38:  POP             {R4-R7,PC}
