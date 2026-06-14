; =========================================================
; Game Engine Function: sub_105F98
; Address            : 0x105F98 - 0x105FC0
; =========================================================

105F98:  PUSH            {R4,R5,R7,LR}
105F9A:  ADD             R7, SP, #8
105F9C:  MOV             R5, R0
105F9E:  LDR             R0, [R0,#8]
105FA0:  MOV             R4, R1
105FA2:  BL              sub_FE074
105FA6:  LDR             R1, =(asc_4B4F4 - 0x105FAE); " " ...
105FA8:  MOV             R0, R4
105FAA:  ADD             R1, PC; " "
105FAC:  ADDS            R2, R1, #1
105FAE:  BL              sub_FFB40
105FB2:  LDRD.W          R1, R2, [R5,#0xC]
105FB6:  MOV             R0, R4
105FB8:  POP.W           {R4,R5,R7,LR}
105FBC:  B.W             sub_FFB40
