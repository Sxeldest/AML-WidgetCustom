; =========================================================
; Game Engine Function: sub_10EBD0
; Address            : 0x10EBD0 - 0x10EC10
; =========================================================

10EBD0:  PUSH            {R4-R7,LR}
10EBD2:  ADD             R7, SP, #0xC
10EBD4:  PUSH.W          {R8}
10EBD8:  SUB             SP, SP, #0x10
10EBDA:  MOV             R4, R1
10EBDC:  LDR             R1, =(aAnimBuilding - 0x10EBE8); "anim_building" ...
10EBDE:  ADD.W           R8, SP, #0x20+var_1C
10EBE2:  MOV             R5, R0
10EBE4:  ADD             R1, PC; "anim_building"
10EBE6:  LDR             R6, [R0,#0x1C]
10EBE8:  MOV             R0, R8; int
10EBEA:  BL              sub_DC6DC
10EBEE:  MOV             R0, R5
10EBF0:  MOV             R1, R4
10EBF2:  MOV             R2, R6
10EBF4:  MOV             R3, R8
10EBF6:  BL              sub_10EE00
10EBFA:  LDRB.W          R0, [SP,#0x20+var_1C]
10EBFE:  LSLS            R0, R0, #0x1F
10EC00:  ITT NE
10EC02:  LDRNE           R0, [SP,#0x20+var_14]; void *
10EC04:  BLXNE           j__ZdlPv; operator delete(void *)
10EC08:  ADD             SP, SP, #0x10
10EC0A:  POP.W           {R8}
10EC0E:  POP             {R4-R7,PC}
