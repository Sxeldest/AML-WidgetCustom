; =========================================================
; Game Engine Function: sub_130FE8
; Address            : 0x130FE8 - 0x13102E
; =========================================================

130FE8:  PUSH            {R4-R7,LR}
130FEA:  ADD             R7, SP, #0xC
130FEC:  PUSH.W          {R11}
130FF0:  SUB             SP, SP, #0x10
130FF2:  MOV             R5, R0
130FF4:  LDRB            R0, [R1]
130FF6:  ADD             R6, SP, #0x20+var_1C
130FF8:  MOV             R4, R2
130FFA:  LDR             R2, [R1,#8]
130FFC:  LSLS            R0, R0, #0x1F
130FFE:  IT EQ
131000:  ADDEQ           R2, R1, #1
131002:  MOV             R0, R6; int
131004:  MOV             R1, R2; s
131006:  BL              sub_DC6DC
13100A:  MOV             R0, R5
13100C:  MOV             R1, R6
13100E:  MOV             R2, R4
131010:  BL              sub_12FF60
131014:  MOV             R4, R0
131016:  LDRB.W          R0, [SP,#0x20+var_1C]
13101A:  LSLS            R0, R0, #0x1F
13101C:  ITT NE
13101E:  LDRNE           R0, [SP,#0x20+var_14]; void *
131020:  BLXNE           j__ZdlPv; operator delete(void *)
131024:  MOV             R0, R4
131026:  ADD             SP, SP, #0x10
131028:  POP.W           {R11}
13102C:  POP             {R4-R7,PC}
