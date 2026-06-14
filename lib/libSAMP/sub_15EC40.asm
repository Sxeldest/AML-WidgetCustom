; =========================================================
; Game Engine Function: sub_15EC40
; Address            : 0x15EC40 - 0x15EC66
; =========================================================

15EC40:  PUSH            {R4,R5,R7,LR}
15EC42:  ADD             R7, SP, #8
15EC44:  SUB             SP, SP, #8
15EC46:  MOV             R5, R0
15EC48:  LDR             R0, [R0]
15EC4A:  CBZ             R0, loc_15EC62
15EC4C:  MOV             R4, R1
15EC4E:  STR             R1, [SP,#0x10+var_10]
15EC50:  MOV             R1, SP
15EC52:  BL              sub_15FAE4
15EC56:  CBZ             R0, loc_15EC62
15EC58:  LDR             R0, [R5]
15EC5A:  ADD             R1, SP, #0x10+var_C
15EC5C:  STR             R4, [SP,#0x10+var_C]
15EC5E:  BL              sub_15FBB6
15EC62:  ADD             SP, SP, #8
15EC64:  POP             {R4,R5,R7,PC}
