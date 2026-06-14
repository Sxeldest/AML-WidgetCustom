; =========================================================
; Game Engine Function: sub_10EAE4
; Address            : 0x10EAE4 - 0x10EB24
; =========================================================

10EAE4:  PUSH            {R4-R7,LR}
10EAE6:  ADD             R7, SP, #0xC
10EAE8:  PUSH.W          {R8}
10EAEC:  SUB             SP, SP, #0x10
10EAEE:  MOV             R4, R1
10EAF0:  LDR             R1, =(byte_8F794 - 0x10EAFC)
10EAF2:  ADD.W           R8, SP, #0x20+var_1C
10EAF6:  MOV             R5, R0
10EAF8:  ADD             R1, PC; byte_8F794 ; s
10EAFA:  LDR             R6, [R0,#0x14]
10EAFC:  MOV             R0, R8; int
10EAFE:  BL              sub_DC6DC
10EB02:  MOV             R0, R5
10EB04:  MOV             R1, R4
10EB06:  MOV             R2, R6
10EB08:  MOV             R3, R8
10EB0A:  BL              sub_10EE00
10EB0E:  LDRB.W          R0, [SP,#0x20+var_1C]
10EB12:  LSLS            R0, R0, #0x1F
10EB14:  ITT NE
10EB16:  LDRNE           R0, [SP,#0x20+var_14]; void *
10EB18:  BLXNE           j__ZdlPv; operator delete(void *)
10EB1C:  ADD             SP, SP, #0x10
10EB1E:  POP.W           {R8}
10EB22:  POP             {R4-R7,PC}
