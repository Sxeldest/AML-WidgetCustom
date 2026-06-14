; =========================================================
; Game Engine Function: sub_10ECD8
; Address            : 0x10ECD8 - 0x10ED18
; =========================================================

10ECD8:  PUSH            {R4-R7,LR}
10ECDA:  ADD             R7, SP, #0xC
10ECDC:  PUSH.W          {R8}
10ECE0:  SUB             SP, SP, #0x10
10ECE2:  MOV             R4, R1
10ECE4:  LDR             R1, =(aPhysical - 0x10ECF0); "physical" ...
10ECE6:  ADD.W           R8, SP, #0x20+var_1C
10ECEA:  MOV             R5, R0
10ECEC:  ADD             R1, PC; "physical"
10ECEE:  LDR             R6, [R0,#0x28]
10ECF0:  MOV             R0, R8; int
10ECF2:  BL              sub_DC6DC
10ECF6:  MOV             R0, R5
10ECF8:  MOV             R1, R4
10ECFA:  MOV             R2, R6
10ECFC:  MOV             R3, R8
10ECFE:  BL              sub_10EE00
10ED02:  LDRB.W          R0, [SP,#0x20+var_1C]
10ED06:  LSLS            R0, R0, #0x1F
10ED08:  ITT NE
10ED0A:  LDRNE           R0, [SP,#0x20+var_14]; void *
10ED0C:  BLXNE           j__ZdlPv; operator delete(void *)
10ED10:  ADD             SP, SP, #0x10
10ED12:  POP.W           {R8}
10ED16:  POP             {R4-R7,PC}
