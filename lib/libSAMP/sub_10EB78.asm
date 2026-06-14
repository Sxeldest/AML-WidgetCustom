; =========================================================
; Game Engine Function: sub_10EB78
; Address            : 0x10EB78 - 0x10EBB8
; =========================================================

10EB78:  PUSH            {R4-R7,LR}
10EB7A:  ADD             R7, SP, #0xC
10EB7C:  PUSH.W          {R8}
10EB80:  SUB             SP, SP, #0x10
10EB82:  MOV             R4, R1
10EB84:  LDR             R1, =(aBuilding - 0x10EB90); "building" ...
10EB86:  ADD.W           R8, SP, #0x20+var_1C
10EB8A:  MOV             R5, R0
10EB8C:  ADD             R1, PC; "building"
10EB8E:  LDR             R6, [R0,#0x18]
10EB90:  MOV             R0, R8; int
10EB92:  BL              sub_DC6DC
10EB96:  MOV             R0, R5
10EB98:  MOV             R1, R4
10EB9A:  MOV             R2, R6
10EB9C:  MOV             R3, R8
10EB9E:  BL              sub_10EE00
10EBA2:  LDRB.W          R0, [SP,#0x20+var_1C]
10EBA6:  LSLS            R0, R0, #0x1F
10EBA8:  ITT NE
10EBAA:  LDRNE           R0, [SP,#0x20+var_14]; void *
10EBAC:  BLXNE           j__ZdlPv; operator delete(void *)
10EBB0:  ADD             SP, SP, #0x10
10EBB2:  POP.W           {R8}
10EBB6:  POP             {R4-R7,PC}
