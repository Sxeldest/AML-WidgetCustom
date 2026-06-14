; =========================================================
; Game Engine Function: sub_111E56
; Address            : 0x111E56 - 0x111E80
; =========================================================

111E56:  PUSH            {R4-R7,LR}
111E58:  ADD             R7, SP, #0xC
111E5A:  PUSH.W          {R11}
111E5E:  MOV             R4, R0
111E60:  MOVS            R0, #0x10; unsigned int
111E62:  MOV             R6, R1
111E64:  BLX             j__Znwj; operator new(uint)
111E68:  MOVS            R1, #1
111E6A:  MOV             R5, R0
111E6C:  STR.W           R1, [R0],#4
111E70:  MOV             R1, R6
111E72:  BL              sub_111EC2
111E76:  STR             R5, [R4]
111E78:  MOV             R0, R4
111E7A:  POP.W           {R11}
111E7E:  POP             {R4-R7,PC}
