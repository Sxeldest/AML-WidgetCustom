; =========================================================
; Game Engine Function: sub_105E60
; Address            : 0x105E60 - 0x105E80
; =========================================================

105E60:  PUSH            {R4,R6,R7,LR}
105E62:  ADD             R7, SP, #8
105E64:  LDR             R0, [R0,#8]
105E66:  MOV             R4, R1
105E68:  LDR             R1, [R0]
105E6A:  LDR             R2, [R1,#0x10]
105E6C:  MOV             R1, R4
105E6E:  BLX             R2
105E70:  LDR             R1, =(asc_4B4F4 - 0x105E78); " " ...
105E72:  MOV             R0, R4
105E74:  ADD             R1, PC; " "
105E76:  ADDS            R2, R1, #1
105E78:  POP.W           {R4,R6,R7,LR}
105E7C:  B.W             sub_FFB40
