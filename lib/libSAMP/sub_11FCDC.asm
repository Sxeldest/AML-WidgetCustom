; =========================================================
; Game Engine Function: sub_11FCDC
; Address            : 0x11FCDC - 0x11FCFC
; =========================================================

11FCDC:  PUSH            {R4,R6,R7,LR}
11FCDE:  ADD             R7, SP, #8
11FCE0:  SUB             SP, SP, #0x10
11FCE2:  MOV             R4, R0
11FCE4:  MOVS            R0, #0
11FCE6:  STR             R0, [R4,#0x10]
11FCE8:  STR             R2, [SP,#0x18+var_C]
11FCEA:  STRD.W          R3, R1, [SP,#0x18+var_14]
11FCEE:  ADD             R1, SP, #0x18+var_14
11FCF0:  MOV             R0, R4
11FCF2:  BL              sub_11FF48
11FCF6:  MOV             R0, R4
11FCF8:  ADD             SP, SP, #0x10
11FCFA:  POP             {R4,R6,R7,PC}
