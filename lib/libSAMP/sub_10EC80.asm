; =========================================================
; Game Engine Function: sub_10EC80
; Address            : 0x10EC80 - 0x10ECC0
; =========================================================

10EC80:  PUSH            {R4-R7,LR}
10EC82:  ADD             R7, SP, #0xC
10EC84:  PUSH.W          {R8}
10EC88:  SUB             SP, SP, #0x10
10EC8A:  MOV             R4, R1
10EC8C:  LDR             R1, =(aEntity - 0x10EC98); "entity" ...
10EC8E:  ADD.W           R8, SP, #0x20+var_1C
10EC92:  MOV             R5, R0
10EC94:  ADD             R1, PC; "entity"
10EC96:  LDR             R6, [R0,#0x24]
10EC98:  MOV             R0, R8; int
10EC9A:  BL              sub_DC6DC
10EC9E:  MOV             R0, R5
10ECA0:  MOV             R1, R4
10ECA2:  MOV             R2, R6
10ECA4:  MOV             R3, R8
10ECA6:  BL              sub_10EE00
10ECAA:  LDRB.W          R0, [SP,#0x20+var_1C]
10ECAE:  LSLS            R0, R0, #0x1F
10ECB0:  ITT NE
10ECB2:  LDRNE           R0, [SP,#0x20+var_14]; void *
10ECB4:  BLXNE           j__ZdlPv; operator delete(void *)
10ECB8:  ADD             SP, SP, #0x10
10ECBA:  POP.W           {R8}
10ECBE:  POP             {R4-R7,PC}
