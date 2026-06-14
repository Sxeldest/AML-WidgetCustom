; =========================================================
; Game Engine Function: sub_10BDA0
; Address            : 0x10BDA0 - 0x10BDBA
; =========================================================

10BDA0:  PUSH            {R4,R5,R7,LR}
10BDA2:  ADD             R7, SP, #8
10BDA4:  MOV             R5, R0
10BDA6:  LDR             R0, =(off_23496C - 0x10BDAE)
10BDA8:  MOV             R4, R1
10BDAA:  ADD             R0, PC; off_23496C
10BDAC:  LDR             R0, [R0]; dword_23DEF4
10BDAE:  LDR             R0, [R0]
10BDB0:  BL              sub_14469C
10BDB4:  STRB.W          R4, [R5,#0x5C]
10BDB8:  POP             {R4,R5,R7,PC}
