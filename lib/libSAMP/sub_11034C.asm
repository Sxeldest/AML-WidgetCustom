; =========================================================
; Game Engine Function: sub_11034C
; Address            : 0x11034C - 0x11036C
; =========================================================

11034C:  PUSH            {R4,R6,R7,LR}
11034E:  ADD             R7, SP, #8
110350:  SUB             SP, SP, #0x10
110352:  MOV             R4, R0
110354:  MOVS            R0, #0
110356:  STR             R0, [R4,#0x10]
110358:  STR             R2, [SP,#0x18+var_C]
11035A:  STRD.W          R3, R1, [SP,#0x18+var_14]
11035E:  ADD             R1, SP, #0x18+var_14
110360:  MOV             R0, R4
110362:  BL              sub_1105A4
110366:  MOV             R0, R4
110368:  ADD             SP, SP, #0x10
11036A:  POP             {R4,R6,R7,PC}
