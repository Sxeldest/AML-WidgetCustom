; =========================================================
; Game Engine Function: sub_10EC28
; Address            : 0x10EC28 - 0x10EC68
; =========================================================

10EC28:  PUSH            {R4-R7,LR}
10EC2A:  ADD             R7, SP, #0xC
10EC2C:  PUSH.W          {R8}
10EC30:  SUB             SP, SP, #0x10
10EC32:  MOV             R4, R1
10EC34:  LDR             R1, =(aDummy - 0x10EC40); "dummy" ...
10EC36:  ADD.W           R8, SP, #0x20+var_1C
10EC3A:  MOV             R5, R0
10EC3C:  ADD             R1, PC; "dummy"
10EC3E:  LDR             R6, [R0,#0x20]
10EC40:  MOV             R0, R8; int
10EC42:  BL              sub_DC6DC
10EC46:  MOV             R0, R5
10EC48:  MOV             R1, R4
10EC4A:  MOV             R2, R6
10EC4C:  MOV             R3, R8
10EC4E:  BL              sub_10EE00
10EC52:  LDRB.W          R0, [SP,#0x20+var_1C]
10EC56:  LSLS            R0, R0, #0x1F
10EC58:  ITT NE
10EC5A:  LDRNE           R0, [SP,#0x20+var_14]; void *
10EC5C:  BLXNE           j__ZdlPv; operator delete(void *)
10EC60:  ADD             SP, SP, #0x10
10EC62:  POP.W           {R8}
10EC66:  POP             {R4-R7,PC}
