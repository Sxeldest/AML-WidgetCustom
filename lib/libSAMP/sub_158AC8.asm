; =========================================================
; Game Engine Function: sub_158AC8
; Address            : 0x158AC8 - 0x158B06
; =========================================================

158AC8:  PUSH            {R4,R5,R7,LR}
158ACA:  ADD             R7, SP, #8
158ACC:  LDR             R5, [R0]
158ACE:  MOV             R4, R0
158AD0:  MOVS            R0, #0
158AD2:  STR             R0, [R4]
158AD4:  CBZ             R5, loc_158B02
158AD6:  LDRB            R0, [R5,#0x14]
158AD8:  LSLS            R0, R0, #0x1F
158ADA:  ITT NE
158ADC:  LDRNE           R0, [R5,#0x1C]; void *
158ADE:  BLXNE           j__ZdlPv; operator delete(void *)
158AE2:  LDRB            R0, [R5,#8]
158AE4:  LSLS            R0, R0, #0x1F
158AE6:  ITT NE
158AE8:  LDRNE           R0, [R5,#0x10]; void *
158AEA:  BLXNE           j__ZdlPv; operator delete(void *)
158AEE:  ADDS            R0, R5, #4
158AF0:  BL              sub_1582D0
158AF4:  MOV             R0, R5
158AF6:  MOVS            R1, #0
158AF8:  BL              sub_100A1C
158AFC:  MOV             R0, R5; void *
158AFE:  BLX             j__ZdlPv; operator delete(void *)
158B02:  MOV             R0, R4
158B04:  POP             {R4,R5,R7,PC}
