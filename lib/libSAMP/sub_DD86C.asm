; =========================================================
; Game Engine Function: sub_DD86C
; Address            : 0xDD86C - 0xDD8A8
; =========================================================

DD86C:  PUSH            {R4-R7,LR}
DD86E:  ADD             R7, SP, #0xC
DD870:  PUSH.W          {R8}
DD874:  SUB             SP, SP, #8
DD876:  MOV             R5, R0
DD878:  LDRB            R0, [R0]
DD87A:  MOV             R4, R1
DD87C:  MOVS            R2, #0
DD87E:  LDR             R1, [R5,#8]
DD880:  MOV.W           R6, #0xFFFFFFFF
DD884:  MOV             R8, SP
DD886:  STR             R2, [SP,#0x18+var_14]
DD888:  LSLS            R0, R0, #0x1F
DD88A:  IT EQ
DD88C:  ADDEQ           R1, R5, #1
DD88E:  STR             R1, [SP,#0x18+var_18]
DD890:  MOV             R0, R5
DD892:  MOV             R1, R8
DD894:  BL              sub_DD93C
DD898:  ADDS            R6, #1
DD89A:  CMP             R0, R4
DD89C:  BLT             loc_DD890
DD89E:  MOV             R0, R6
DD8A0:  ADD             SP, SP, #8
DD8A2:  POP.W           {R8}
DD8A6:  POP             {R4-R7,PC}
