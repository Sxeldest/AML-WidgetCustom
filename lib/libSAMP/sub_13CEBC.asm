; =========================================================
; Game Engine Function: sub_13CEBC
; Address            : 0x13CEBC - 0x13CF00
; =========================================================

13CEBC:  PUSH            {R4-R7,LR}
13CEBE:  ADD             R7, SP, #0xC
13CEC0:  PUSH.W          {R11}
13CEC4:  SUB             SP, SP, #0x10
13CEC6:  MOV             R4, R0
13CEC8:  LDRB            R0, [R1]
13CECA:  ADD             R6, SP, #0x20+var_1C
13CECC:  MOV             R5, R2
13CECE:  LDR             R2, [R1,#8]
13CED0:  LSLS            R0, R0, #0x1F
13CED2:  IT EQ
13CED4:  ADDEQ           R2, R1, #1
13CED6:  MOV             R0, R6; int
13CED8:  MOV             R1, R2; s
13CEDA:  BL              sub_DC6DC
13CEDE:  MOV             R0, R4
13CEE0:  MOV             R1, R6
13CEE2:  MOV             R2, R5
13CEE4:  BL              sub_13CE34
13CEE8:  LDRB.W          R0, [SP,#0x20+var_1C]
13CEEC:  LSLS            R0, R0, #0x1F
13CEEE:  ITT NE
13CEF0:  LDRNE           R0, [SP,#0x20+var_14]; void *
13CEF2:  BLXNE           j__ZdlPv; operator delete(void *)
13CEF6:  MOV             R0, R4
13CEF8:  ADD             SP, SP, #0x10
13CEFA:  POP.W           {R11}
13CEFE:  POP             {R4-R7,PC}
